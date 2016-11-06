call pathogen#infect()
call pathogen#helptags()
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
set colorcolumn=80
highlight ColorColumn ctermbg=8
syntax enable
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
nmap <leader>ne :NERDTreeToggle<cr>
set relativenumber
