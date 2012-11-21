syntax on

set t_Co=256
colorscheme wombat256mod

syntax on

set cursorcolumn
set cursorline
highlight ColorColumn ctermbg=30

set number
set autochdir
set showmode             " If in Insert, Replace or Visual mode put a message on the last line.
set ruler                " show the cursor position all the time
set fileformats=unix	 " favorite fileformats
set textwidth=79             " Don't wrap words by default

" resets for rc.vim
set cmdheight=1
set noincsearch
let mapleader = '\'

call rc#Map_ex_cmd("<C-W>t", ":tabnew .")
call rc#Map_ex_cmd("<C-W>v", ":vs .")
call rc#Map_ex_cmd("<leader>s", ":w")

" netrw settings
let g:netrw_preview = 1
let g:netrw_liststyle = 1
let g:netrw_list_hide= '^.*\.pyc,^\.[^\.\s]\+' 

" mouse settings
set mouse=a
call rc#Map_ex_cmd("<leader>mr", ":set mouse=r")
call rc#Map_ex_cmd("<leader>ma", ":set mouse=a")

" disable xtemplates
let g:__XPT_VIM__ = 1
let g:__XPPUM_VIM__ = 1


" HTML (tab width 2 chr, no wrapping)
autocmd FileType html set sw=2
autocmd FileType html set ts=2
autocmd FileType html set sts=2
" CSS (tab width 2 chr, wrap at 79th char)
autocmd FileType css set sw=2
autocmd FileType css set ts=2
autocmd FileType css set sts=2
" Code (tab width 4 chr, wrap at 79th char)
autocmd FileType javascript,python,php,coffee set sw=4
autocmd FileType javascript,python,php,coffee set ts=4
autocmd FileType javascript,python,php,coffee set sts=4
autocmd FileType javascript,python,php,coffee set colorcolumn=80

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html set filetype=htmldjango

autocmd Filetype css,html,less set iskeyword+=-
autocmd FileType javascript,python,php,coffee set iskeyword-=-


 
au BufRead,BufNewFile *.pgn set filetype=pgn
au BufRead,BufNewFile *.less set filetype=css
