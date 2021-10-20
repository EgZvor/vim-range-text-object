# Range text object

Text object that allows you to specify range directly!

For introduction to text objects, see `:h 4.8`.

## Example

Press `y`, you're in the Operator-pending mode now, press : for a Range text
object and specify some range (all the usual shortcuts like `%` and `1,$`
work), press enter, you yanked the lines in range! Ok, not impressive, I see.

Here's another one. You have vim-commentary (or an alternative) installed. This
gives you a `gc` operator. Press `gc`, you're once again in the
Operator-pending mode, press `:`, select some lines (ANY lines!), press enter,
now these lines are commented!

## Demo

[![asciicast](https://asciinema.org/a/443623.svg)](https://asciinema.org/a/443623)
