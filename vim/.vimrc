filetype plugin indent on
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set backspace=indent,eol,start
set autoindent
set smartindent

syntax enable
set number
set ruler

set shell=kitty
set ignorecase
set smartcase

set hlsearch
set incsearch

set wildmenu
set hidden

set t_ut=


set showmatch
set cursorline

" For lightline
set laststatus=2
set noshowmode

filetype plugin indent on

autocmd BufNewFile,BufRead *.h,*.c set filetype=c.doxygen
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd FileType markdown setlocal spell spelllang=en_us
autocmd FileType markdown Goyo

call plug#begin()

Plug 'Yggdroot/indentLine'
Plug 'ayu-theme/ayu-vim'
Plug 'junegunn/goyo.vim'

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'

Plug 'frazrepo/vim-rainbow'
Plug 'wlangstroth/vim-racket'

Plug 'tpope/vim-commentary'
call plug#end()

au FileType scheme call rainbow#load()

set termguicolors
let ayucolor="dark"
colorscheme ayu

inoremap kj <esc>

" Configuration for vim-markdown
let g:vim_markdown_conceal = 2
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_math = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_autowrite = 1
let g:vim_markdown_edit_url_in = 'tab'
let g:vim_markdown_follow_anchor = 1

map <C-K> :py3file /home/ebark/Documents/configs/clang-format.py<cr>
imap <C-K> <c-o>:py3file /home/ebark/Documents/configs/clang-format.py<cr>
" set clipboard=unnamedplus
