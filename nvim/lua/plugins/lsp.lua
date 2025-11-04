local lspKeys = function(client, bufnr)
  local base_opts = { noremap = true, silent = true, buffer = bufnr }
  local function opts(desc) return vim.tbl_extend('error', base_opts, { desc = desc }) end

  local mappings = {
    { mode = 'n', key = '<leader>gd', fn = vim.lsp.buf.definition, desc = 'Go to definition' },
    { mode = 'n', key = '<leader>gi', fn = vim.lsp.buf.implementation, desc = 'Go to implementation' },
    { mode = 'n', key = '<leader>gr', fn = vim.lsp.buf.references, desc = 'Find references' },
    { mode = 'n', key = '<leader>K', fn = vim.lsp.buf.hover, desc = 'Hover' },
    { mode = 'n', key = '<leader>rn', fn = vim.lsp.buf.rename, desc = 'Rename symbol' },
    { mode = 'n', key = 'gdh', fn = function() vim.cmd('vsplit') vim.lsp.buf.definition() end, desc = 'Definition (vsplit)' },
    { mode = 'n', key = 'gdl', fn = function() vim.cmd('split') vim.lsp.buf.definition() end, desc = 'Definition (split)' },
    { mode = 'n', key = 'gih', fn = function() vim.cmd('vsplit') vim.lsp.buf.implementation() end, desc = 'Implementation (vsplit)' },
    { mode = 'n', key = 'gil', fn = function() vim.cmd('split') vim.lsp.buf.implementation() end, desc = 'Implementation (split)' },
  }

  for _, map in ipairs(mappings) do
    vim.keymap.set(map.mode or 'n', map.key, map.fn, opts(map.desc))
  end

  if client.supports_method('inlayHintProvider') then
    vim.keymap.set('n', '<leader>ih', function()
      vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ bufnr = bufnr }), { bufnr = bufnr })
    end, opts('Toggle inlay hints'))
  end
end

return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'SmiteshP/nvim-navic',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
  },
  lazy = false,
  config = function()
    local servers = {
      'lua_ls',
      'ts_ls',
      'html',
      'cssls',
      'jsonls',
      'pyright',
      'clangd',
      'tailwindcss',
      'rust_analyzer',
      'zls',
    }

    require('mason').setup()
    require('mason-lspconfig').setup({
      ensure_installed = servers,
    })

    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    vim.lsp.config('*', {
      capabilities = capabilities,
    })

    vim.lsp.enable(servers)

    local lsp_group = vim.api.nvim_create_augroup('UserLspAttach', { clear = true })
    vim.api.nvim_create_autocmd('LspAttach', {
      group = lsp_group,
      desc = 'Setup keymaps and navic on LSP attach',
      callback = function(args)
        local bufnr = args.buf
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if not client then return end
        lspKeys(client, bufnr)

        if client.server_capabilities.completionProvider then
          vim.bo[bufnr].omnifunc = 'v:lua.vim.lsp.omnifunc'
          vim.bo[bufnr].formatexpr = 'v:lua.vim.lsp.formatexpr()'
        end

        if client.server_capabilities.documentSymbolProvider then
          require('nvim-navic').attach(client, bufnr)
        end
      end,
    })

    -- Completion setup
    local cmp = require('cmp')
    local luasnip = require('luasnip')
    require('luasnip.loaders.from_vscode').lazy_load()

    cmp.setup({
      snippet = {
        expand = function(args) luasnip.lsp_expand(args.body) end,
      },
      mapping = cmp.mapping.preset.insert({
        ['<Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          else
            fallback()
          end
        end, { 'i', 's' }),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
      }),
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
        { name = 'path' },
      }),
    })
  end,
}
