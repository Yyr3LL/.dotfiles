call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/goyo.vim'
Plug 'ervandew/supertab'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'relastle/bluewery.vim'
" syntax
Plug 'sheerun/vim-polyglot'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'yssl/QFEnter'

call plug#end()


let g:airline#extensions#tabline#enabled = 1                    " Tabline.
"let g:airline_theme = 'deus'                                    " Statusline theme.
let g:airline_theme = 'deus'                                    " Statusline theme.
"let g:airline_theme = 'deus'                                    " Statusline theme.
let g:airline_powerline_fonts = 1

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.radonly = ''
let g:airline_symbols.linenr = ''
let g:chromatica#libclang_path='/usr/lib/libclang.so'
let g:chromatica#enable_at_startup=1
"
set splitbelow
set splitright
colorscheme ron
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
map ,p iprint()<Esc>i
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

