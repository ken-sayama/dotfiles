" Basic
" ------------------------------------------------------
colorscheme iceberg

syntax on

set number
set fenc=utf-8
set title
set nobackup
set noswapfile
set autoread
set showcmd
set cursorline
set cursorcolumn
set showmatch
set ambiwidth=double
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set list
set hidden
set virtualedit=block
set backspace=indent,eol,start

" auto comment off
augroup auto_comment_off
  autocmd!
  autocmd BufEnter * setlocal formatoptions-=r
  autocmd BufEnter * setlocal formatoptions-=o
augroup END

" ------------------------------------------------------
" keymap
" ------------------------------------------------------

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" -----------------------------------------------------
" search
" -----------------------------------------------------

" 検索文字列が小文字の場合は大文字小文字を区別なく検索する$
set ignorecase$
" 検索文字列に大文字が含まれている場合は区別して検索する$
set smartcase$
" 検索文字列入力時に順次対象文字列にヒットさせる$
set incsearch$
" 検索時に最後まで行ったら最初に戻る$
set wrapscan$
" 検索語をハイライト表示$
set hlsearch$
" ESC連打でハイライト解除$
nmap <Esc><Esc> :nohlsearch<CR><Esc>

