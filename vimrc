set nocompatible
set shell=/bin/sh

" Theme
set t_Co=256
set bg=dark
let base16colorspace=256
let g:hybrid_use_Xresources = 1
let python_highlight_indent_errors = 1
let python_highlight_space_errors = 1
let python_hihghlight_file_headers_as_comments = 1
set background=dark
colorscheme hybrid
syntax enable

" backspace, destroyer of worlds
set backspace=indent,eol,start

" one true whitespace
set ts=4 sts=4 sw=4
set expandtab

" gvim
set guioptions=''
set guifont=DejaVu\ Sans\ Mono\ 10

" blugh
set nowrap

" Performance
set ttyfast
set synmaxcol=256
syntax sync minlines=256

" Tabbing
filetype indent on
set expandtab

"" Keep swap and backup files in a central place. The trailing double slash
"" enables a no-collision file naming scheme.
" set backupdir=~/.vim/backup//
" set directory=~/.vim/swap//
"" Actually, let's just not use them
set nobackup
set noswapfile

" Check for modelines
set modeline
set modelines=5

" NeoBundle configs
so ~/.vim/neobundle

" Statusline
set laststatus=2

" Tab completion - 'wildmenu'
set wildmenu

" pep8 hardmode engage
set tw=79

" Encoding
set fenc=utf-8

" comma is <leader> (default \)
let mapleader = " "

" Search/Match
set incsearch  " highlight while searching
set nohlsearch " consider switching this on for '*' only
set ignorecase " searches are case insensitive,
set smartcase  " unless there's at least one uppercase

" Line numbering
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
set scrolloff=10

" File-specific stuff
autocmd FileType puppet setlocal sw=2 ts=2 sts=2
autocmd FileType yaml setlocal sw=2 ts=2 sts=2
autocmd FileType html setlocal sw=4 ts=4 sts=4 noexpandtab textwidth=180
autocmd FileType htmldjango setlocal sw=4 ts=4 sts=4 noexpandtab textwidth=180
autocmd FileType javascript setlocal sw=2 ts=2 sts=2 noexpandtab

" jk to leave insert modes
inoremap jk <esc>

" Unite mappings
" extra unite things: https://github.com/unr/dotfiles/blob/master/vim/vim.symlink/plugin/unite.vim
let g:unite_source_history_yank_enable = 1
nmap <Leader>b :Buffers<cr>
nmap <Leader>p :Files<cr>
nmap <Leader>g :Ag<cr>
nmap <Leader>o :<C-u>Unite -no-split -buffer-name=unite outline<cr>
nmap <Leader>t :Tags<cr>


" toggle hlsearch
nmap <Leader>h :set hlsearch!<cr>

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

" almost-inverse of J; split current line on next comma
nmap <leader>J f,ls<cr>jkw

" next and previous errors
nmap ]e :lne<cr>
nmap [e :lp<cr>
" next and previous quicklist
nmap ]c :cn<cr>
nmap [c :cp<cr>]

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

" reveal highlight group under cursor
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
            \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
            \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" http://vim.wikia.com/wiki/Simplifying_regular_expressions_using_magic_and_no-magic
" Permanent 'very magic' mode. Makes regex chars /always/ have special
" meaning, as the universe intended.
nnoremap / /\v
vnoremap / /\v
cnoremap %s/ %smagic/
cnoremap \>s/ \>smagic/
nnoremap :g/ :g/\v
nnoremap :g// :g//

" preserve cursor position when joining lines
nnoremap J mzJ`zmz

" /s global replace by default, now /g toggles back to single.
set gdefault

function! PyImportSort()
    if executable('isort')
        delmarks z
        normal mz
        %!isort -
        normal g`z
    endif
endfunction

augroup pyisort
    au!
    au BufWritePre *.py call PyImportSort()
augroup END

set statusline=%f       "tail of the filename
set statusline+=\ [%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=\ %y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines


" Highlight the current line, only for the active window
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

" no preview windows created by the completion system plz
set completeopt-=preview

" visual mode is free like a bird
set virtualedit=block

" tab complete like shell: as much as possible then show remaining matches.
set wildmode=longest,list

" use smart quotes in proselike formats
augroup textobj_quote
    autocmd!
    autocmd FileType markdown call textobj#quote#init()
    autocmd FileType textile call textobj#quote#init()
    autocmd FileType text call textobj#quote#init({'educate': 0})
augroup END

nmap <Leader>j :%!json_pp<cr>
