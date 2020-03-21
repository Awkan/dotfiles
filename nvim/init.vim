" Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if &compatible
    set nocompatible
endif

" Declare the general config group for autocommand
augroup vimrc
  autocmd!
augroup END



" +-----------------+
" | general binding |
" +-----------------+

syntax on

" +----------------+
" | general config |
" +----------------+

" colorscheme
" color hypnos

" set the directory where the swap file will be saved
set backupdir=~/nvim/backup//
set directory=~/nvim/swap//

" save undo trees in files
set undofile
set undodir=~/nvim/undo//

" set line number
" set number
set number relativenumber " set relative / hybrid line number switch

" the copy goes to the clipboard
set clipboard+=unnamedplus

" use 4 spaces instead of tab (to replace existing tab use :retab)
" copy indent from current line when starting a new line
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" when at 3 spaces, and I hit > ... go to 4, not 7
set shiftround

" number of undo saved in memory
set undolevels=10000 " how many undos
set undoreload=10000 " number of lines to save for undo

" use case sensitive search, except when using capital letters
set ignorecase
set smartcase

" set list
set list listchars=tab:\┆\ ,trail:·,nbsp:±

" doesn't prompt a warning when opening a file and the current file was written but not saved
set hidden

" doesn't display the mode status
set noshowmode

" keep the cursor more in middle when scrolling down / up
set scrolloff=999

" no swap file ! this is juste annoying
set noswapfile

" write automatically when quitting buffer
set autowrite

" fold related
set foldlevelstart=0 " start with all folds closed

" set foldtext
set foldtext=general#FoldText()

" show the substitution LIVE
set inccommand=nosplit

" better ex autocompletion
set wildmenu
set wildmode=list:longest,full

" enable the mouse
" set mouse=a

