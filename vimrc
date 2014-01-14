" Theme
set t_Co=256
set bg=dark
colorscheme luna-term-mod
syntax enable

" Tabbing
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

" Keep swap and backup files in a central place. The trailing double slash
" enables a no-collision file naming scheme.
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

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

" Enable hybrid line numbering by enabling both types of numbering
set relativenumber
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

" jk to leave insert and visual modes
inoremap jk <esc>
vnoremap jk <esc>

" Unite mappings
nmap <Leader>b :<C-u>Unite -no-split -buffer-name=buffer -start-insert buffer<cr>
nmap <Leader>p :<C-u>Unite -no-split -buffer-name=files  -start-insert file_rec/async<cr>
nmap <Leader>g :<C-u>Unite grep:.<cr>
nmap <Leader>o :<C-u>Unite -no-split -buffer-name=outline outline<cr>
nmap <Leader>c :<C-u>Unite -no-split -buffer-name=tags -start-insert tag<cr>
nmap <Leader>t :<C-u>Unite -no-split -buffer-name=tabs tab<cr>

" order python imports. kinda fragile.
nmap <Leader>io gg<S-v>}k:sort<cr><C-o>

" If a tab-local working directory is defined, cd to it
" Usage: :let t:wd = "some/directory"
au TabEnter * if exists("t:wd") | exe "cd" t:wd | endif

" Don't show the tab bar (I use Unite to switch tabs)
set showtabline=0

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

function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()
nmap <leader>ds :DiffSaved<cr>


" snippets... sorta
nmap <leader>si oimport ipdb; ipdb.set_trace()<esc>
nmap <leader>Si Oimport ipdb; ipdb.set_trace()<esc>

" remap ex-mode to execute macro in q
nmap Q @q
