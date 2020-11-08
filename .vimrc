" ----------------------------------------------------------------------
"                         Plugins

" -----------------------------------
"     Plugin Manager

set nocompatible              " be iMproved, required for Vundle
filetype off                  " required by Vundle

" set the runtime path to include Vundle and initialize
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'             " let Vundle manage Vundle, required by Vundle

" -----------------------------------
"     Interface and Navigation

Plugin 'vim-airline/vim-airline'          " status bar

Plugin 'scrooloose/nerdtree'              " file tree

Plugin 'ctrlpvim/ctrlp.vim'               " fuzzy search plugin

Plugin 'ntpeters/vim-better-whitespace'   " whitespace visualisation changes

" -----------------------------------
"     Version Control

Plugin 'tpope/vim-fugitive'               " git plugin

" -----------------------------------
"     Language Support

" javascript
Plugin 'mxw/vim-jsx'                      " jsx syntax highlighting

" coffeescript
Plugin 'kchmck/vim-coffee-script'         " coffeescript support for vim

" markdown
Plugin 'tpope/vim-markdown'               " markdown syntax suport

" liquid (jekyll)
Plugin 'tpope/vim-liquid'                 " liquid language sypport for jekyll development support

" ruby
Plugin 'kana/vim-textobj-user'            " allows creating on new text-objects
Plugin 'nelstrom/vim-textobj-rubyblock'   " ruby text objects added to grammar

" All of your Plugins must be added before the following line
call vundle#end()            " required by Vundle
filetype plugin indent on    " required by Vundle

" ----------------------------------------------------------------------
"                         Configuration

" required by 'vim-textobj-rubyblock'
runtime macros/matchit.vim

" syntax highlighling
syntax on

" show relative line numbers
set relativenumber

" show line numbers
set number

" disable line wrapping
set nowrap

" underline current line
set cursorline

" show the `best match so far' as search strings are typed
set incsearch

" sometimes backspace didn't delete properly, this fixed i
set backspace=2

" tab key inserts 2 spaces instead
set autoindent
set shiftwidth=2    " automatic indent column count
set softtabstop=2   " tab column count
set expandtab       " use spaces instead of tabs

" case-insensitive search
set ignorecase

" case-sensitive search if mixed-case search is used
set smartcase

" enable mouse support in visual mode
set mouse=a

" share between vim and system clipboards
set clipboard=unnamed

" show array of possibilities for command line completion
set wildmenu

" open vertical split on the right
set splitright

" open horizontal split on the bottom
set splitbelow

" ----------------------------------------------------------------------
"                     Plugin-Specific Configuration

" ctrl-p
" disable default fuzzy-find file count limmit
let ctrlp_max_files=0
" ignore files and folders
set wildignore+=*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip,.git/*     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(DS_Store|swp|ico|git|svn))$'

" ----------------------------------------------------------------------
"                           Key Mapping

" remap leader to space
let mapleader = ' '

" quicker save
map <leader>w :w<cr>
map <leader>W :wa<cr>

" quicker quit
map <leader>q :q<cr>
map <leader>Q :qa<cr>

" quicker save + quit
map <leader>x :x<cr>
map <leader>X :xa<cr>

" quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" quicker file navigation
map <leader>d :e %:p:h<cr>
map <leader>D :vsplit %:p:h<cr>

" quicker tab movement
map <leader>t :tabnew<cr>
map <leader>T :tab split<cr>
map <C-n> :tabn<cr>
map <C-b> :tabp<cr>

" format whole file with `==`
map == mzgg=G`z

" ----------------------------------------------------------------------
"                     Plugin-Specific Key Mapping

" nerdtree
map <leader>n :NERDTreeToggle<cr>           " shortcut to toggle nerdtree
