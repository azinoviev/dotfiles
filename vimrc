" vundle
set nocompatible
set nobackup
set nowritebackup
set noswapfile
set shortmess+=I
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" general plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'matchit.zip'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'easymotion/vim-easymotion'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'mbbill/undotree'
Plugin 'myusuf3/numbers.vim'
Plugin 'editorconfig/editorconfig-vim'

" color schemes
Plugin 'arcticicestudio/nord-vim'

" programming plugins
Plugin 'neoclide/coc.nvim'
Plugin 'w0rp/ale'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'mattn/webapi-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'godlygeek/tabular'
Plugin 'majutsushi/tagbar'
Plugin 'Chiel92/vim-autoformat'
Plugin 'rking/ag.vim'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" JavaScript
Plugin 'elzr/vim-json'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'prettier/vim-prettier'
Plugin 'ternjs/tern_for_vim'

" Web
"Plugin 'amirh/HTML-AutoCloseTag'
Plugin 'hail2u/vim-css3-syntax'

" Python plugins
"Plugin 'davidhalter/jedi-vim'
Plugin 'python_match.vim'
Plugin 'vim-python/python-syntax'

call vundle#end()
filetype plugin indent on

" ALE
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
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
set lazyredraw
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

" let g:NERDSpaceDelims = 1

let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=0
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0

noremap ,a :Autoformat<CR><CR>

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

let mapleader = ','

" Absolute line numbers in insert mode, relative in normal mode.
"autocmd InsertEnter * :set number
"autocmd InsertLeave * :set relativenumber

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

set clipboard=unnamed

set diffopt=filler,vertical

