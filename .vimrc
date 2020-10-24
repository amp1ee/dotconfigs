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

"colorscheme pablo
colorscheme molokai
let g:molokai_original = 1

" Map Space+q to exit vim
map <Space>q :q<CR>

" Save last cursor location
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif
