colorscheme desert
"shortcut for visual cut, copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+
"no Toolbar
set guioptions-=T
"show line numbers
set nu
set lines=42
