syntax on

scriptencoding utf-8
set list
set listchars=trail:·,tab:——

set mouse=a
set nu
set hlsearch
set incsearch
set t_Co=256
set tabstop=4 softtabstop=0 shiftwidth=4
set nobackup
set nowritebackup
set noswapfile
set autoindent
set smartindent
set smarttab

"colorscheme pablo
colorscheme molokai
let g:molokai_original = 1

set colorcolumn=81
highlight ColorColumn ctermbg=lightcyan guibg=lightgrey

filetype on
filetype indent on
filetype plugin on

if has("autocmd")
    au Filetype python source ~/.vim/ftplugin/python.vim
    " Save last cursor location
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

call plug#begin()
    Plug 'preservim/nerdtree'
    Plug 'gnattishness/cscope_maps'
call plug#end()

" Map Space+q to exit Vim
map <Space>q :q<CR>
" Map Ctrl+n to toggle NerdTree
map <C-n> :NERDTreeToggle<CR>
