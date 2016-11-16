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
autocmd BufWritePre * %s/\s\+$//e
set colorcolumn=80
highlight ColorColumn ctermbg=8
syntax enable
set background=dark
set t_Co=256
let g:solarized_termtrans=1
let g:solarized_termcolors=256
" let g:solarized_contrast="high"
" let g:solarized_visibility="high"
colorscheme monokai
nmap <leader>ne :NERDTreeToggle<cr>
set relativenumber
set number

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>
