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

set colorcolumn=81
highlight ColorColumn ctermbg=0 guibg=lightgrey

filetype on
filetype indent on
filetype plugin on

if has("autocmd")
    au Filetype python source ~/.vim/ftplugin/python.vim
    " Save last cursor location
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" Vim Plugins
call plug#begin()
    Plug 'preservim/nerdtree'
    Plug 'gnattishness/cscope_maps'
    Plug 'wellle/targets.vim'
    Plug 't9md/vim-textmanip'
    Plug 'tomasr/molokai'
    Plug 'junegunn/goyo.vim'
call plug#end()

"colorscheme pablo
colorscheme molokai
let g:molokai_original = 1

" Map Ctrl-N to toggle NerdTree
map <C-n> :NERDTreeToggle<CR>
" Map Space+q to exit vim
map <Space>q :q<CR>
" Mappings to move blocks of text
xmap J <Plug>(textmanip-move-down)
xmap K <Plug>(textmanip-move-up)
xmap H <Plug>(textmanip-move-left)
xmap L <Plug>(textmanip-move-right)
