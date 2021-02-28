set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set encoding=utf-8

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=2
set list
set foldmethod=indent
set foldlevel=99

let mapleader=" "
set relativenumber
set cursorline
set nu
set wrap
set wildmenu
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase

noremap s <nop>
noremap n nzz
noremap N Nzz
noremap <LEADER><CR> :nohlsearch<CR>

map R :source /home/ktec/.vimrc<CR>
map S :w<CR>

map sr :set splitright<CR>: vs<CR>
map sl :set nosplitright<CR>: vs<CR>
map su :set nosplitbelow<CR>: split<CR>
map sd :set splitbelow<CR>: split<CR>
map sd :set splitbelow<CR>: split<CR>
map sd :set splitbelow<CR>: split<CR>
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>
map <down> :res -5<CR>
map <up> :res +5<CR>

map <LEADER>t ;tabe<CR>
map <LEADER>tn ;-tabenext<CR>
map <LEADER>tp ;+tabenext<CR>



call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'

" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Taglist
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" Error checking
Plug 'w0rp/ale'

" Auto Complete
Plug 'Valloric/YouCompleteMe'

" Undo Tree
Plug 'mbbill/undotree/'

" Other visual enhancement
Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/vim-cursorword'

" Git
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }

" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'mattn/emmet-vim'

" Python
Plug 'vim-scripts/indentpython.vim'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'

" Bookmarks
Plug 'kshenoy/vim-signature'

" Other useful utilities
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/goyo.vim' " distraction free writing mode
Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line

" Dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'kana/vim-textobj-user'
Plug 'fadein/vim-FIGlet'


call plug#end()




au BufReadPost * if line("''\"") > 1 && line("'\"") <= line("$") | exe
