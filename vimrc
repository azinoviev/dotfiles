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
Plugin 'altercation/vim-colors-solarized' " Solarized terminal must be used
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'matchit.zip'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'easymotion/vim-easymotion'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'mbbill/undotree'
Plugin 'myusuf3/numbers.vim'
Plugin 'editorconfig/editorconfig-vim'

" programming plugins
Plugin 'scrooloose/syntastic'
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

" Web
"Plugin 'amirh/HTML-AutoCloseTag'
Plugin 'hail2u/vim-css3-syntax'

" Python plugins
Plugin 'davidhalter/jedi-vim'
Plugin 'python_match.vim'
Plugin 'vim-python/python-syntax'

call vundle#end()
filetype plugin indent on

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" JS and JSX
autocmd FileType javascript set shiftwidth=2
autocmd FileType javascript set tabstop=2
autocmd FileType javascript set softtabstop=2
let g:jsx_ext_required = 0
"let g:formatprg_args_javascript = "-f - -j -a -s 2 -w 80 -X"
"let g:formatprg_javascript = 'js-beautify'
"let g:formatprg_args_javascript_jsx = "-f - -j -a -s 2 -w 80 -X"
"let g:formatprg_javascript_jsx = 'js-beautify'
let g:syntastic_javascript_checkers = ['eslint']

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
nnoremap § :NERDTreeToggle<CR>
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>

" let g:NERDSpaceDelims = 1

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

noremap ,a :Autoformat<CR><CR>

" Python
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#popup_on_dot = 0
"let g:syntastic_python_checkers=['python', 'pylint', 'pep8']
let g:syntastic_python_python_exec = '~/.pyenv/versions/dev3/bin/python3'

"let g:ycm_server_python_interpreter = '~/.pyenv/versions/dev36/bin/python3'
"let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:ycm_filetype_specific_completion_to_disable = { 'python' : 1 }
let g:ycm_filetype_blacklist = { 'python' : 1 }

let g:tagbar_autofocus = 1
"let g:tagbar_compact = 1
nnoremap ,t :TagbarToggle<CR>
nnoremap ± :TagbarToggle<CR>

set nospell
au BufRead,BufNewFile * set nospell

set hidden

" airline opts
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

set t_Co=16

let g:solarized_termtrans=1
"let g:solarized_contrast="high"
"let g:solarized_visibility="high"
"let g:solarized_termcolors=256
let g:airline_theme="solarized"
let g:airline_powerline_fonts = 0
let g:airline_left_sep=''
let g:airline_right_sep=''

" color solarized
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

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

au FileChangedShell * echo "Warning: File changed on disk"

set clipboard=unnamed

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](node_modules)|(\.(git|hg|svn))$',
  \ 'file': '\v\.(pyc|so|dll)$'
  \ }

set diffopt=filler,vertical

" ## added by OPAM user-setup for vim / base ## 93ee63e278bdfc07d1139a748ed3fff2 ## you can edit, but keep this line
let s:opam_share_dir = system("opam config var share")
let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')

let s:opam_configuration = {}

function! OpamConfOcpIndent()
  execute "set rtp^=" . s:opam_share_dir . "/ocp-indent/vim"
endfunction
let s:opam_configuration['ocp-indent'] = function('OpamConfOcpIndent')

function! OpamConfOcpIndex()
  execute "set rtp+=" . s:opam_share_dir . "/ocp-index/vim"
endfunction
let s:opam_configuration['ocp-index'] = function('OpamConfOcpIndex')

function! OpamConfMerlin()
  let l:dir = s:opam_share_dir . "/merlin/vim"
  execute "set rtp+=" . l:dir
endfunction
let s:opam_configuration['merlin'] = function('OpamConfMerlin')

let s:opam_packages = ["ocp-indent", "ocp-index", "merlin"]
let s:opam_check_cmdline = ["opam list --installed --short --safe --color=never"] + s:opam_packages
let s:opam_available_tools = split(system(join(s:opam_check_cmdline)))
for tool in s:opam_packages
  " Respect package order (merlin should be after ocp-index)
  if count(s:opam_available_tools, tool) > 0
    call s:opam_configuration[tool]()
  endif
endfor
" ## end of OPAM user-setup addition for vim / base ## keep this line
" ## added by OPAM user-setup for vim / ocp-indent ## 67ac1cb05194bd3e2b7045e834675210 ## you can edit, but keep this line
if count(s:opam_available_tools,"ocp-indent") == 0
  source "/Users/azinoviev/.opam/system/share/vim/syntax/ocp-indent.vim"
endif
" ## end of OPAM user-setup addition for vim / ocp-indent ## keep this line

let g:syntastic_ocaml_checkers = ['merlin']
