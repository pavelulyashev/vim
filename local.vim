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

" Key bind helper
fun! Map_ex_cmd(key, cmd) "{{{ 
execute "nmap ".a:key." " . ":".a:cmd."<CR>"
execute "cmap ".a:key." " . "<C-C>:".a:cmd."<CR>"
execute "imap ".a:key." " . "<C-O>:".a:cmd."<CR>"
execute "vmap ".a:key." " . "<Esc>:".a:cmd."<CR>gv"
endfun "}}} 


call Map_ex_cmd("<C-W>t", ":tabnew .")
call Map_ex_cmd("<C-W>v", ":vs .")
call Map_ex_cmd("<leader>s", ":w")

" netrw settings
let loaded_nerd_tree = 1
let g:netrw_preview = 1
let g:netrw_liststyle = 1
let g:netrw_list_hide= '^.*\.pyc,^\.[^\.\s]\+' 

" mouse settings
set mouse=a
call Map_ex_cmd("<leader>mr", ":set mouse=r")
call Map_ex_cmd("<leader>ma", ":set mouse=a")
 


" python-mode settings
let g:pymode_lint_hold = 0
let g:pymode_syntax_builtin_objs = 1
let g:pymode_syntax_builtin_funcs = 1
let g:pymode_rope_goto_def_newwin = 1
let g:pymode_syntax_print_as_function = 1
let g:pymode_syntax_highlight_exceptions = 1
let g:pymode_lint_jump = 1
let g:pymode_lint_ignore = 'E501,W901'


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
