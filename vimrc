" vundle
set nocompatible
set background=dark
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" general plugins
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'altercation/vim-colors-solarized'
Bundle 'spf13/vim-colors'
Bundle 'tpope/vim-surround'
Bundle 'kien/ctrlp.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'matchit.zip'
Bundle 'bling/vim-airline'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'godlygeek/csapprox'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'flazz/vim-colorschemes'
Bundle 'mbbill/undotree'
Bundle 'myusuf3/numbers.vim'
Bundle 'nathanaelkane/vim-indent-guides'

" programming plugins
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'
Bundle 'mattn/webapi-vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'godlygeek/tabular'

" python plugins
Bundle 'davidhalter/jedi-vim'

" c/c++ plugins
Bundle 'Valloric/YouCompleteMe'

syntax on
scriptencoding utf-8

" NerdTree
map <C-e> :NERDTreeToggle<CR>
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>

let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0

set nospell
au BufRead,BufNewFile * set nospell

set hidden

" airline opts
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

set term=gnome-256color

let g:solarized_termtrans=1
let g:solarized_contrast="high"
let g:solarized_visibility="high"
let g:solarized_termcolors=16
color solarized
let g:airline_theme="solarized"
let g:airline_powerline_fonts = 0
let g:airline_left_sep=''
let g:airline_right_sep=''

set showmode
set cursorline!

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

" hybrid line numers
set relativenumber
set number

" Absolute line numbers in insert mode, relative in normal mode.
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <C-h> <C-W>h

" no folding
set nofoldenable

set backspace=2 " make backspace work like most other apps

" highlight trailing whitespaces
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

let g:ycm_filetype_whitelist = { 'cpp': 1, 'c': 1 }
let g:ycm_global_ycm_extra_conf = "~/dotfiles"

" Buffers - next/previous
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>

"make < > shifts keep selection
vnoremap < <gv
vnoremap > >gv

au FileChangedShell * echo "Warning: File changed on disk"
