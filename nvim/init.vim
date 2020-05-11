" Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if &compatible
    set nocompatible
endif

" Declare the general config group for autocommand
augroup vimrc
  autocmd!
augroup END

" +----------------+
" | install plugin |
" +----------------+

call plug#begin('~/.config/nvim/plugged')

" TEXT EDITING
" ------------
" Surrounding text objets with whatever you want (paranthesis, quotes, html tags ...)
Plug 'tpope/vim-surround'
" Easily search, substitute and abbreviate multiple version of words
Plug 'tpope/vim-abolish'
" Keystroke to comment automatically depending on the file you're in
Plug 'tpope/vim-commentary'
" Swap arguments in parenthesis
Plug 'machakann/vim-swap'
" Add new text object (can delete between comma with di, for example)
Plug 'wellle/targets.vim'

" [SEARCH] Show some information during search (Match 2 of 3, ...)
Plug 'henrik/vim-indexed-search'

" GIT
" ---
" Wrapper for git and display git diff in the left gutter
Plug 'tpope/vim-fugitive' | Plug 'mhinz/vim-signify'
" Figitive for the hub
Plug 'tpope/vim-rhubarb'
" Display commits for project / file
Plug 'junegunn/gv.vim'

" LANGAGE - MARKDOWN
" ------------------
Plug 'junegunn/goyo.vim', {'for': 'markdown'} " Distraction-free
Plug 'junegunn/limelight.vim', {'for': 'markdown'} " Hyperfocus-writing
Plug 'rhysd/vim-grammarous', {'for': 'markdown'} " show grammar mistakes
" LANGAGE - CSV
" -------------
Plug 'chrisbra/csv.vim'
" LANGAGE - NGINX
" ---------------
Plug 'chr4/nginx.vim'
" LANGAGE - PHP
" -------------
Plug 'StanAngeloff/php.vim', {'for': 'php'}
Plug 'nishigori/vim-php-dictionary', {'for': 'php'}
" Refactoring options
Plug 'adoy/vim-php-refactoring-toolbox', {'for': 'php'}
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
Plug '2072/php-indenting-for-vim', {'for': 'php'}
" LANGAGE - TWIG
" --------------
Plug 'lumiliet/vim-twig', {'for': 'twig'}
" LANGAGE - CSS
" -------------
Plug 'ap/vim-css-color' " Display the hexa colors (e.g. CSS)
" LANGAGE - JAVASCRIPT
" --------------------
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty' " JSX
Plug 'posva/vim-vue' " Vue

" DISPLAY
" -------
" Highlight briefly every yank text
Plug 'machakann/vim-highlightedyank'
" Navigate into words using camel case motion
Plug 'chaoren/vim-wordmotion'

" TOOL
" ----
" Status Bar
Plug 'itchyny/lightline.vim'
" NERDTree
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind']}
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Snippet engine + snippets
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" Align plugin
Plug 'godlygeek/tabular'
" Outliner
Plug 'majutsushi/tagbar'
Plug 'liuchengxu/vista.vim'
" Close the current buffer
Plug 'moll/vim-bbye'
" Systemd syntax and error
Plug 'wgwoods/vim-systemd-syntax'
" Emmet for html
Plug 'mattn/emmet-vim'
" Allow multisearch in current directory / multi replace as well
Plug 'wincent/ferret'

call plug#end()

" +---------------+
" | plugin config |
" +---------------+

" source every plugin configs
for file in split(glob("~/.config/nvim/pluggedconf/*.nvimrc"), '\n')
    exe 'source' file
endfor

" +-----------------+
" | general binding |
" +-----------------+

syntax on

" Weird hack for NERDTree to work
let mapleader = "\\"
map , <leader>

" surround by quotes - frequently use cases of vim-surround
map <leader>" ysiw"<cr>
map <leader>' ysiw'<cr>

" indent without kill the selection in vmode
vmap < <gv
vmap > >gv

" Toggle between absolute -> relative line number
nnoremap <C-n> :let [&nu, &rnu] = [&nu, &nu+&rnu==1]<CR>

" highlight the line which is longer than the defined margin (120 character)
highlight MaxLineChar ctermbg=red
autocmd vimrc FileType php,js,vue,go call matchadd('MaxLineChar', '\%120v', 100)

" Markdown
autocmd vimrc BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" +----------------+
" | general config |
" +----------------+

" colorscheme
" color hypnos

" set the directory where the swap file will be saved
set backupdir=~/.config/nvim/backup//
set directory=~/.config/nvim/swap//

" save undo trees in files
set undofile
set undodir=~/.config/nvim/undo//

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

