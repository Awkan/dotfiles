let mapleader=','                           " Use the comma as leader
let &colorcolumn=80                         " Display the column #80
set ttyfast                                 " Send more characters to the screen for drawing
set number                                  " Show line numbers
set ignorecase                              " Case-insensitive searching
set smartcase                               " But case-sensitive if expression contains a capital letter
set expandtab                               " Converts tabs to spaces
set tabstop=4                               " Number of spaces a tab count for
set softtabstop=4                           " Number of spaces a tab count for when editing
set shiftwidth=4                            " Number of spaces an autoindent count for
set incsearch                               " Highlight matches as you type
set hlsearch                                " Hightlight matches
set ttimeoutlen=0                           " Escape insert mode faster
set autoread                                " Auto reload current file if externally changed
set noswapfile                              " Use an SCM instead of swap files
set encoding=utf-8                          " Set the character encoding
set fileencoding=utf-8                      " Set the character encoding
set list                                    " Active list mode
set listchars=nbsp:¬,eol:↩,trail:…,tab:▸▸   " Strings to use in 'list' mode
set t_ut=                                   " Disable Background Color Erase (BCE)
set backupcopy=yes                          " Disable safe write

" Change gutter color in insert mode
autocmd InsertEnter * hi LineNr ctermfg=4 ctermbg=232
autocmd InsertLeave * hi LineNr ctermfg=9 ctermbg=232

