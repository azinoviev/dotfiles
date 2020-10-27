" vundle
set nocompatible
set nobackup
set nowritebackup
set noswapfile
set shortmess+=I
filetype off

"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
call plug#begin('~/.vim/plugged')

" general plugins
Plug 'VundleVim/Vundle.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'terryma/vim-multiple-cursors'
"Plug 'matchit.zip'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'mbbill/undotree'
Plug 'myusuf3/numbers.vim'
Plug 'editorconfig/editorconfig-vim'

" color schemes
Plug 'arcticicestudio/nord-vim'

" programming plugins
Plug 'neoclide/coc.nvim'
Plug 'w0rp/ale'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/webapi-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'majutsushi/tagbar'
Plug 'Chiel92/vim-autoformat'
Plug 'rking/ag.vim'

Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

" JavaScript
Plug 'elzr/vim-json'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'prettier/vim-prettier'
Plug 'ternjs/tern_for_vim'

" Web
"Plug 'amirh/HTML-AutoCloseTag'
Plug 'hail2u/vim-css3-syntax'

" Python plugins
"Plug 'davidhalter/jedi-vim'
"Plug 'python_match.vim'
Plug 'vim-python/python-syntax'

call plug#end()
"call vundle#end()
filetype plugin indent on

set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

let mapleader = ','

let g:vim_json_syntax_conceal = 0

" ALE
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_linters = {
      \   'javascript': ['eslint'],
      \}
let g:ale_fixers = {
    \   'python': ['isort', 'autopep8'],
    \ }
nnoremap ,sc :ALELint<CR>
nnoremap ,se :ALEEnable<CR>
nnoremap ,sd :ALEDisable<CR>

let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" JS and JSX
autocmd FileType javascript set shiftwidth=2
autocmd FileType javascript set tabstop=2
autocmd FileType javascript set softtabstop=2
"let g:jsx_ext_required = 0
"let g:syntastic_javascript_checkers = ['eslint']
let g:tern_map_keys=1
let g:prettier#exec_cmd_async = 1

set ttyfast
" no pause on leaving insert mode
set timeoutlen=1000 ttimeoutlen=0

syntax on
scriptencoding utf-8

" hybrid line numers
set norelativenumber
set number

" NerdTree
map <C-e> :NERDTreeToggle<CR>
nnoremap <Space>n :NERDTreeToggle<CR>
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>

let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=0
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0

noremap <leader>a :Autoformat<CR><CR>

" fzf
let $FZF_DEFAULT_COMMAND = 'fd --type f --hidden --follow -E .git -E node_modules -E .idea'
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>l :Lines<CR>

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Python
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#popup_on_dot = 0
"let g:syntastic_python_checkers=['python', 'pylint', 'pep8']
"let g:syntastic_python_python_exec = '~/.pyenv/versions/dev3/bin/python3'

" vim-json
let g:vim_json_syntax_conceal = 0

let g:tagbar_autofocus = 1
"let g:tagbar_compact = 1
"nnoremap ,t :TagbarToggle<CR>
nnoremap <Space>t :TagbarToggle<CR>

set nospell
au BufRead,BufNewFile * set nospell

set hidden

" airline opts
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

set t_Co=256

let g:airline_theme="nord"

" color solarized
"set background=dark
colorscheme nord
set showmode

highlight clear SignColumn
highlight clear LineNr

set nowrap
set autoindent
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4
set nojoinspaces
set splitright
set splitbelow

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <C-h> <C-W>h

" no folding
set nofoldenable

set backspace=2 " make backspace work like most other apps

" Fix for shift-tab
exe 'set t_kB=' . nr2char(27) . '[Z'

" highlight trailing whitespaces
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Buffers - next/previous
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>

"make < > shifts keep selection
vnoremap < <gv
vnoremap > >gv

imap jk <esc>
imap jj <esc>
imap ff <esc>
imap fd <esc>

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

au FileChangedShell * echo "Warning: File changed on disk"

set clipboard=unnamedplus

set diffopt=filler,vertical

