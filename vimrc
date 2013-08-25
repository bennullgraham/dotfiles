" Theme
set t_Co=256
set bg=dark
colorscheme molokai256
syntax enable

" Tabbing
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Check for modelines
set modeline
set modelines=5

" Commit messages are treated specially
" au FileType gitcommit set tw=72
" au FileType gitcommit colorscheme elflord

" NeoBundle configs
so ~/.vim/neobundle

" Statusline
set laststatus=2
