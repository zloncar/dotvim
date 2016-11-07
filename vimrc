call pathogen#infect()
call pathogen#helptags()

set nocompatible

" no old messy files
set nobackup
set noswapfile
set nowb

" defaults
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2

autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
set colorcolumn=80
highlight ColorColumn ctermbg=8
syntax enable
set background=dark
set t_Co=256
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized
nmap <leader>ne :NERDTreeToggle<cr>
set relativenumber
