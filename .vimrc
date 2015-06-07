" Gio's vimrc
" Vundle {{{
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle. Required!
Plugin 'gmarik/Vundle.vim'

" Installed Bundles 
Plugin 'scrooloose/nerdtree'
Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'

call vundle#end()
filetype plugin indent on
" }}}
" Colors {{{
colorscheme hybrid
syntax enable
let g:hybrid_use_Xdefaults=1
" enable all python syntax highlighting features
let python_highlight_all = 1
" }}}
" Spaces & Tabs {{{
set tabstop=4
set softtabstop=4
set expandtab
" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4
" indent when moving to the next line while writing code
set autoindent
" }}}
" UI Layout {{{
set number
set showcmd
set cursorline
"filetype indent on
set wildmenu
set showmatch
" }}}
" Searching {{{
set incsearch
set hlsearch
nnoremap ,<space> :nohlsearch<CR>
" }}}
" Folding {{{
set foldenable
"set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent
" }}}
" Movement {{{
nnoremap j gj
nnoremap k gk
" }}}
" Nerdtree Config {{{
map <F2> :NERDTreeToggle<CR>
" }}}
" Python-Mode Config {{{
" Deactive rope
" Keys:
" K             Show pythond docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto defenition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function
" ]]            Jump on next class or function
" [M            Jump on previous class or method
" ]M            Jump on next class or method
let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

" Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflackes,pep8"
"Auto check on save
let g:pymode_lint_write = 1

" Support virutal env
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0
" }}}

setlocal foldmethod=marker
"setlocal foldlevel=0
set modelines=1
