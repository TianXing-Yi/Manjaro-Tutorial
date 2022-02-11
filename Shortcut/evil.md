## return to normal mode

```vim
ESC or <c-[>
```

## move cursor

```vim
0---head of line | w---first letter of forward word
$---end of line | b---first letter of current / backward word
gg--head of paragraph | e---last letter of current / forward word
G---end of paragraph | ge--last letter of backward word
```

## modity

```vim
.---repeat last change | u---undo last change
A---add content at end of line | a---add content before cursor
I---add content at begin of line | i---add content after cursor
O---add content at previous line | o---add content at next line
```

## delete and insert

```vim
ci(--delete all things bwtween (), insert
ciw--delete word ,insert
caw--delete word and space, insert
s----delete char at cursor, insert
S----delete line, insert
```

## delete

```vim
di(--delete all things between ()
x----delete char at cursor
X----delete char before cursor
dd---delete line
dw---delete chars from cursor to end of word, contain space
db---delete chars before cursor in word
diw--delete word at cursor
daw--delete word at cursor, contain space
dis--delete a sentence
das--delete a sentence, contain space
dip--delete a paragraph
dap--delete a paragraph, contain space
```

## visual

```vim
v----char | V----line
C-v--block | gv---redo last selection
o----change active line in selected block
```

## switch caps

```vim
guu--low line
gUU--up line
guw--low word
gUw--up word
g~---switch up and low
```

## copy and move

```vim
:t----copy
:6t.--copy line 6 to next line
:t6---copy line at cursor next to line 6
:t.---copy line at cursor and past ==yyp
:t$---copy line at cursor to end of paragraph
yiw---copy a word and past
```

## windows

```vim
C-w s split a horizontal window
C-w v split a vertical window
C-w c close active window
C-w o only remain active window
```

## jump between parentheses

```vim
%--jump bwtween () [] {} "" <>
```

## replace

```vim
r--replace a char one time
R--continue replacing a char one time

:s/target/replacement------replace in a line
:s/target/replacement/g----replace in a sentence
:%s/target/replacement/g---replace in all
:%s/target/replacement/gc--replace in all and confirm everytime
```

## sort

```vim
sort--use in a block
:g/{/ .+1, /}/-1 sort --sort in {}
```
