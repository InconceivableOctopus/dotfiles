set nocompatible              " be iMproved, required for Vundle
filetype off                  " required by Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'             " let Vundle manage Vundle, required by Vundle
" --------------------
Plugin 'vim-airline/vim-airline'          " status bar
" --------------------
Plugin 'ntpeters/vim-better-whitespace'   " whitespace visualisation changes
" --------------------
Plugin 'scrooloose/nerdtree'              " file tree
" --------------------
Plugin 'sirver/ultisnips'                 " snippet engine, requires python & vim >= 7.4
Plugin 'honza/vim-snippets'               " pre-made snippet\, separate from snippet engine
" --------------------
Plugin 'kana/vim-textobj-user'            " allows craeting on new text-objects
Plugin 'nelstrom/vim-textobj-rubyblock'   " ruby text objects added to grammar
" --------------------
Plugin 'tpope/vim-rails'                  " rails productivity commands from inside vim
" --------------------
Plugin 'thoughtbot/vim-rspec'             " shortcuts for running specs
" --------------------
Plugin 'pangloss/vim-javascript'          " js syntax highlightlig, required by vim-jsx
Plugin 'mxw/vim-jsx'                      " jsx syntax highlighting
" --------------------
Plugin 'kchmck/vim-coffee-script'         " coffeescript support for vim
" --------------------
Plugin 'tpope/vim-fugitive'               " git plugin
" --------------------
Plugin 'ctrlpvim/ctrlp.vim'               " git plugin

" All of your Plugins must be added before the following line
call vundle#end()            " required by Vundle
filetype plugin indent on    " required by Vundle

runtime macros/matchit.vim  " required by 'vim-textobj-rubyblock'

" Add all non-plugin stuff after this line
" ----------------------------------------------------------------------

" syntax highlighling
syntax on

" show relative line numbers
set rnu

" show line numbers
set nu

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

" highlight matches when searching
set hlsearch

" case-insensitive search
set ignorecase

" case-sensitive search if mixed-case search is used
set smartcase

" enable mouse support
set mouse=a

" ----------------------------------------------------------------------
"                           Key Mapping

" remap leader to ,
let mapleader = ','

" quicker save
map <leader>w :w<cr>
map <leader>W :wa<cr>
" quicker quit
map <leader>q :q<cr>
map <leader>Q :qa<cr>
" quicker save-quit
map <leader>x :x<cr>
map <leader>X :xa<cr>

" format whole file with ==
map == mzgg=G`z

" ----------------------------------------------------------------------
"                     Plugin-Specific Key Mapping

" nerdtree
map <leader>n :NERDTreeToggle<cr>

" vim-rspec
map <leader>S :call RunCurrentSpecFile()<cr>
map <leader>s :call RunNearestSpec()<cr>
map <leader>l :call RunLastSpec()<cr>
" map <leader>S :call RunAllSpecs()<cr>     " don't see any use in this at the moment

" vim-rails
" jump to Alternate file
map <leader>a :A<cr>
" open Alternate file in vsplit
map <leader>A :AV<cr>
" jump to Related file
map <leader>r :R<cr>
" open Related file in vsplit
map <leader>R :RV<cr>

" ultisnips
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let ctrlp_max_files=0
" Ignore stuff for ctrl p
set wildignore+=*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip,.git/*     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(DS_Store|swp|ico|git|svn))$'
