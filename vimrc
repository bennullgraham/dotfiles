" Theme
set t_Co=256
set bg=dark
colorscheme luna-term
syntax enable

" Tabbing
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

" Check for modelines
set modeline
set modelines=5

" NeoBundle configs
so ~/.vim/neobundle

" Statusline
set laststatus=2

" Encoding
set fenc=utf-8

" comma is <leader> (default \)
let mapleader = ","

" Search/Match
set incsearch  " highlight while searching
set nohlsearch " consider switching this on for '*' only
set ignorecase " searches are case insensitive,
set smartcase  " unless there's at least one uppercase

" Show line-numbers
set number

" Lower, righter splits get focus after split
set splitright
set splitbelow

" Show trailing spaces, tabs
set list
set listchars=tab:>-,trail:-

" Allow buffers to disappear without being written
set hidden

" Maintain some context around the cursor
set scrolloff=3

" File-specific stuff
autocmd FileType puppet setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2

" Highlight the current line, only for the active window
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

" jk to leave insert mode
inoremap jk <esc>

" Unite mappings
nmap <Leader>b :<C-U>Unite -no-split -buffer-name=buffer -start-insert buffer<CR>
nmap <Leader>p :<C-u>Unite -no-split -buffer-name=files  -start-insert file_rec/async<cr>
nmap <Leader>g :<C-u>Unite grep:.<cr>

" If a tab-local working directory is defined, cd to it
" Usage: :let t:wd = "some/directory"
au TabEnter * if exists("t:wd") | exe "cd" t:wd | endif

" read buffers when they change on disk
set autoread

" hjkl split navigation
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

augroup myvimrc
    au!
    au BufWritePost .vimrc so $MYVIMRC
augroup END

" docstring insertion, works around delimitmate going berserk on python
" triple-quote strings.
nmap <leader>d o"""jko"""jkO

" next and previous errors
nmap <leader>e :lne<cr>
nmap <leader>E :lp<cr>
