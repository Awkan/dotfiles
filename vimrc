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

"------------------ CTAGS MAPPING ------------------

au FileType php set tags=tags_php-src.tags,tags_php-vendor.tags
au FileType behat set tags=tags_gherkin.tags
au FileType javascript set tags=tags_js-lib.tags,tags_js-src.tags,tags_js-modules.tags
au FileType typescript set tags=tags_ts-lib.tags,tags_ts-typings.tags,tags_ts-modules.tags,tags_ts-src.tags
au FileType python set tags=tags_python.tags

"------------------ KEY MAPPING ------------------

" Unbind help on F1
:nmap <F1> <nop>

" Make CTRL+C trigger InsertLeave
inoremap <C-c> <Esc>

" Change panel focus with tab
nnoremap <tab> <c-w><c-w>

" Show next matched string at the center of the screen
nnoremap n nzz
nnoremap N Nzz

" Do a grep search on the selected text
if executable('ag')
    vmap <leader>f y:Ack! -i "<C-r>""
    nmap <leader>f :Ack! -i "<C-r><C-w>"
else
    vmap <leader>f y:grep -r "<C-r>""
    nmap <leader>f :grep -r "<C-r><C-w>"
endif

"Navigate throught words and line
nmap <C-h> b
nmap <C-j> 7j
nmap <C-k> 7k
nmap <C-l> w
vmap <C-h> b
vmap <C-j> 7j
vmap <C-k> 7k
vmap <C-l> w

"Fast split resize
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader>> :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Leader>< :exe "vertical resize " . (winwidth(0) * 2/3)<CR>

" Make :grep great again
if executable('ag')
    set grepprg=ag\ --group
endif

