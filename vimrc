" vundle
set nocompatible
set nobackup
set nowritebackup
set noswapfile
set shortmess+=I
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" general plugins
Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'matchit.zip'
Plugin 'bling/vim-airline'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'mbbill/undotree'
Plugin 'myusuf3/numbers.vim'
Plugin 'nathanaelkane/vim-indent-guides'

" programming plugins
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'mattn/webapi-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'godlygeek/tabular'
Plugin 'majutsushi/tagbar'
Plugin 'Chiel92/vim-autoformat'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" JavaScript
Plugin 'elzr/vim-json'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" Web
Plugin 'amirh/HTML-AutoCloseTag'
Plugin 'hail2u/vim-css3-syntax'

" python plugins
Plugin 'davidhalter/jedi-vim'
Plugin 'python_match.vim'

" go
"Plugin 'fatih/vim-go'

" Haskell
"Plugin 'travitch/hasksyn'
"Plugin 'dag/vim2hs'
"Plugin 'Twinside/vim-haskellConceal'
"Plugin 'Twinside/vim-haskellFold'
"Plugin 'lukerandall/haskellmode-vim'
"Plugin 'eagletmt/neco-ghc'
"Plugin 'eagletmt/ghcmod-vim'
"Plugin 'Shougo/vimproc'
"Plugin 'adinapoli/cumino'
"Plugin 'bitc/vim-hdevtools'

"Plugin 'lsdr/octave.vim'
" Octave syntax
"augroup filetypedetect
  "au! BufRead,BufNewFile *.m,*.oct set filetype=octave
"augroup END

" Use keywords from Octave syntax language file for autocomplete
"if has("autocmd") && exists("+omnifunc")
  "autocmd Filetype octave if &omnifunc == "" | setlocal omnifunc=syntaxcomplete#Complete | endif
"endif

"Plugin 'Valloric/YouCompleteMe'
"let g:ycm_filetype_whitelist = { 'cpp': 1, 'c': 1 }

" Haskell
"let g:haddock_browser = "open"
"let g:haddock_browser_callformat = "%s %s"

" jsx
let g:jsx_ext_required = 0
let g:formatprg_args_expr_javascript = '"-f - -".(&expandtab ? "s ".&shiftwidth : "t").(&textwidth ? " -w ".&textwidth : "")." --e4x"'

let g:jedi#use_tabs_not_buffers = 0
let g:jedi#popup_on_dot = 0

syntax on
scriptencoding utf-8

nmap <Esc>s :w<CR>

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

" Syntastic
nnoremap ,sc :SyntasticCheck<CR>
nnoremap ,sr :SyntasticReset<CR>

noremap <F3> :Autoformat<CR><CR>

" vim-autopep8
nnoremap ,a :call Autopep8()<CR>
nnoremap ,t :TagbarToggle<CR>

set nospell
au BufRead,BufNewFile * set nospell

set hidden

" airline opts
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

set t_Co=16

"let g:solarized_termtrans=1
" let g:solarized_contrast="high"
" let g:solarized_visibility="high"
" let g:solarized_termcolors=16
let g:airline_theme="solarized"
let g:airline_powerline_fonts = 0
let g:airline_left_sep=''
let g:airline_right_sep=''

" color solarized
syntax enable
set background=dark
colorscheme solarized
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

"let g:ycm_filetype_whitelist = { 'cpp': 1, 'c': 1, 'python': 1 }
"let g:ycm_global_ycm_extra_conf = "~/dotfiles"

" Buffers - next/previous
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>

"make < > shifts keep selection
vnoremap < <gv
vnoremap > >gv

au FileChangedShell * echo "Warning: File changed on disk"

set clipboard=unnamed

" Go settings
au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4
au BufNewFile,BufRead *.go setlocal nolist

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(pyc|so|dll)$'
  \ }

set diffopt=filler,vertical
