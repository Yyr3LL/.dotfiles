
call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()


let g:airline#extensions#tabline#enabled = 1                    " Tabline.
let g:airline_theme = 'deus'                                    " Statusline theme.
"let g:airline_theme = 'bubblegum'                                    " Statusline theme.
"let g:airline_theme = 'deus'                                    " Statusline theme.
let g:airline_powerline_fonts = 1


set splitbelow
set splitright
"set cursorline 
set ignorecase
set smartcase
set shiftwidth=4
set number relativenumber
set statusline+=%F
set nobackup
set noswapfile

hi MatchParen cterm=none ctermbg=green ctermfg=blue

imap jk <Esc>
syntax on
filetype indent plugin on

vnoremap <C-c> "+y
map <C-p> "+p
nmap <C-b> :NERDTreeToggle<CR>

inoremap <C-h> <C-o>h
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

nnoremap <C-o> O<Esc>
nnoremap <CR> o<Esc>
nnoremap <esc><esc> :silent! nohls<cr>
inoremap <C-v> <Esc>pi<Right>
