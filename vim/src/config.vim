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
set tags=tags

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

" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" ----------------------------------------------------
" statusline
" ----------------------------------------------------

" ファイル名表示
set statusline=%F
" 変更チェック表示
set statusline+=%m
" 読み込み専用かどうか表示
set statusline+=%r
" ヘルプページなら[HELP]と表示
set statusline+=%h
" プレビューウインドウなら[Prevew]と表示
set statusline+=%w
" これ以降は右寄せ表示
set statusline+=%=
" file encoding
set statusline+=[ENC=%{&fileencoding}]
" 現在行数/全行数
set statusline+=[LOW=%l/%L]
" ステータスラインを常に表示(0:表示しない、1:2つ以上ウィンドウがある時だけ表示)
set laststatus=2

" ----------------------------------------------------
" NERDTree
" ----------------------------------------------------

let g:NERDTreeDirArrows = 1
let NERDTreeWinSize=22
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'
let g:NERDTreeExactMatchHighlightColor = {}
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange
let g:NERDTreePatternMatchHighlightColor = {}
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red
