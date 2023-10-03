<!DOCTYPE html>
<html>

<body>
<h1>Neovim-Guide</h1>

<div id="lesson1-section">
<h2>Lesson 1 SUMMARY</h2>

<ol>
  <li>The cursor is moved using either the arrow keys or the hjkl keys.</li>
  <p><code>h</code> (left)   <code>j</code> (down)   <code>k</code> (up)   <code>l</code> (right)</p>
  
  <li>To start Neovim from the shell prompt type:</li>
  <pre><code>$ nvim FILENAME</code></pre>
  
  <li>To exit Neovim type:</li>
  <pre><code>&lt;Esc&gt;</code> (normal) <code>:q!</code> (vim command mode) <code>&lt;Enter&gt;</code> (normal) to trash all changes.</pre>
  <p>OR</p>
  <pre><code>&lt;Esc&gt;</code> (normal) <code>:wq</code> (vim command mode) <code>&lt;Enter&gt;</code> (normal) to save the changes.</pre>
  
  <li>To delete the character at the cursor type:</li>
  <pre><code>x</code> (normal)</pre>
  
  <li>To insert or append text type:</li>
  <p><code>i</code> (normal) insert text <code>&lt;Esc&gt;</code> (normal) insert before the cursor.</p>
  <p><code>A</code> (normal) append text <code>&lt;Esc&gt;</code> (normal) append after the line.</p>
</ol>

<p><strong>NOTE:</strong> Pressing <code>&lt;Esc&gt;</code> (normal) will place you in Normal mode or will cancel an unwanted and partially completed command.</p>
</div>

<div id="lesson2-section">
<h2>Lesson 2 SUMMARY</h2>

<ol>
<li>To delete from the cursor up to the next word, type: <code>dw</code> (normal)</li>

<li>To delete from the cursor to the end of a line, type: <code>d$</code> (normal)</li>

<li>To delete a whole line, type: <code>dd</code> (normal)</li>

<li>To repeat a motion, prepend it with a number: <code>2w</code> (normal)</li>

<li>The format for a change command is:
    <pre><code>
operator   [number]   motion
where:
operator -   is what to do, such as [d](d) for delete
[number] -   is an optional count to repeat the motion
motion   -   moves over the text to operate on, such as:
             [w](w) (word),
             [$]($) (to the end of the line), etc.
    </code></pre></li>

<li>To move to the start of the line, use a zero: <code>0</code> (normal)</li>

<li>To undo previous actions, type: <code>u</code> (normal) (lowercase u)</li>
<p>To undo all the changes on a line, type: <code>U</code> (normal) (capital U)</p>
<p>To undo the undo's, type: <code>&lt;C-r&gt;</code> (normal)</p>
</ol>
</div>

<div id="lesson3-section">
    <h2>Lesson 3 SUMMARY</h2>

<ol>
<li>To put back text that has just been deleted, type <code>p</code> (normal). This puts the deleted text AFTER the cursor (if a line was deleted, it will go on the line below the cursor).</li>

<li>To replace the character under the cursor, type <code>r</code> (normal) and then the character you want to have there.</li>

<li>The change operator allows you to change from the cursor to where the motion takes you. Type <code>ce</code> (normal) to change from the cursor to the end of the word, <code>c$</code> (normal) to change to the end of a line, etc.</li>

<li>The format for change is:
    <pre><code>c   [number]   motion</code></pre>
</li>
</ol>
</div>

<div id="lesson4-section">
<h2>Lesson 4 SUMMARY</h2>
<ol>
  <li><code>&lt;C-g&gt;</code> (normal) displays your location and the file status.
      <p><code>G</code> (normal) moves to the end of the file.</p>
      <p>Number <code>G</code> (normal) moves to that line number.</p>
      <p><code>gg</code> (normal) moves to the first line.</p>
  </li>

  <li>Typing <code>/</code> (normal) followed by a phrase searches FORWARD for the phrase.
      <p>Typing <code>?</code> (normal) followed by a phrase searches BACKWARD for the phrase.</p>
      <p>After a search, type <code>n</code> (normal) to find the next occurrence in the same direction or <code>N</code> (normal) to search in the opposite direction.</p>
      <p><code>&lt;C-o&gt;</code> (normal) takes you back to older positions, <code>&lt;C-i&gt;</code> (normal) to newer positions.</p>
  </li>

  <li>Typing <code>%</code> (normal) while the cursor is on a (,),[,],{, or } goes to its match.</li>

  <li>To substitute new for the first old in a line, type:
      <pre><code>:s/old/new</code></pre>
      <p>To substitute new for all 'old's on a line, type:
          <pre><code>:s/old/new/g</code></pre>
      </p>
      <p>To substitute phrases between two line #'s, type:
          <pre><code>:#,#s/old/new/g</code></pre>
      </p>
      <p>To substitute all occurrences in the file, type:
          <pre><code>:%s/old/new/g</code></pre>
      </p>
      <p>To ask for confirmation each time, add 'c':
          <pre><code>:%s/old/new/gc</code></pre>
      </p>
  </li>
</ol>
</div>

<div id="lesson5-section">
<h2>Lesson 5 SUMMARY</h2>

<ol>
  <li><code>:!command</code> executes an external command.</li>
  <p>Some useful examples are:</p>
  <pre><code>:!dir</code> - shows a directory listing (Windows command prompt (CMD))</pre>
  <pre><code>:!ls</code> - shows a directory listing (Unix-like operating systems)</pre>
  <pre><code>:!rm FILENAME</code> - removes file FILENAME</pre>

  <li><code>:w FILENAME</code> writes the current Neovim file to disk with name FILENAME.</li>

  <li><code>v</code> (visual mode) <code>motion</code> <code>:w FILENAME</code> saves the visually selected lines in file FILENAME.</li>

  <li><code>:r FILENAME</code> retrieves disk file FILENAME and puts it below the cursor position.</li>

  <li><code>:r !dir</code> reads the output of the dir command and puts it below the cursor position.</li>
</ol>
</div>

<div id="lesson6-section">
<h2>Lesson 6 SUMMARY</h2>

<ol>
  <li>Type <code>o</code> (normal) to open a line BELOW the cursor and start Insert mode. Type <code>O</code> (normal) to open a line ABOVE the cursor.</li>

  <li>Type <code>a</code> (normal) to insert text AFTER the cursor. Type <code>A</code> (normal) to insert text after the end of the line.</li>

  <li>The <code>e</code> (normal) command moves to the end of a word.</li>

  <li>The <code>y</code> (normal) operator copies text, <code>p</code> (normal) pastes it.</li>

  <li>Typing a capital <code>R</code> (normal) enters Replace mode until <code>&lt;Esc&gt;</code> (normal) is pressed.</li>

  <li>Typing <code>:set xxx</code> sets the option "xxx". Some options are:
      <ul>
          <li><code>'ic'</code> or <code>'ignorecase'</code> - ignore upper/lower case when searching</li>
          <li><code>'is'</code> or <code>'incsearch'</code> - show partial matches for a search phrase</li>
          <li><code>'hls'</code> or <code>'hlsearch'</code> - highlight all matching phrases</li>
      </ul>
      <p>You can either use the long or the short option name.</p>
  </li>

  <li>Prepend "no" to switch an option off:
      <pre><code>:set noic</code></pre>
  </li>

  <li>Prepend "inv" to invert an option:
      <pre><code>:set invic</code></pre>
  </li>
</ol>
</div>

<div id="lesson7-section">
<h2>Lesson 7 SUMMARY</h2>

<ol>
  <li>Type <code>:set hls is</code> to set the options 'hls' and 'is'.
  </li>
  <pre><code>:set hls is</code></pre>

  <li>Now type the search command again and see what happens: <code>/ignore &lt;Enter&gt;</code></li>

  <li>To disable ignoring case, enter:
      <pre><code>:set noic</code></pre>
  </li>
</ol>
</div>

</body>

</html>
