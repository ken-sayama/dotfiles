" colorscheme settings
colorscheme elrodeo
set background=dark

" Invalid noremap
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>


syntax on
" 行番号を表示
set number
" 文字コードをutf-8に設定
set fenc=utf-8
" タブにタイトルを設定
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
set expandtab
set smartindent
set list
set hidden
set virtualedit=block
set backspace=indent,eol,start

" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk

" 検索系
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



"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/kensayama/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/kensayama/.vim/dein')
  call dein#begin('/Users/kensayama/.vim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/kensayama/.vim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  " インデントしているコードに色をつけることができます。
  call dein#add('nathanaelkane/vim-indent-guides')
  " Rails向けのコマンドを提供する
  call dein#add('tpope/vim-rails')
  " 補完
  call dein#add('Shougo/neocomplete.vim')
  " Ruby向けにendを自動挿入してくれる
  call dein#add('tpope/vim-endwise')
  " コメントON/OFFを手軽に実行
  call dein#add('tomtom/tcomment_vim')
  " カッコを自動で閉じる
  call dein#add('Townk/vim-autoclose')
  " スニペット
  call dein#add('honza/vim-snippets')
  " 英単語の補完
  call dein#add('ujihisa/neco-look')
  " ログファイルを色づけしてくれる
  call dein#add('vim-scripts/AnsiEsc.vim')
  " 行末の半角スペースを可視化
  call dein#add('bronson/vim-trailing-whitespace')

  " ファイルオープンを便利に
  call dein#add('Shougo/unite.vim')
  " Unite.vimで最近使ったファイルを表示できるようにする
  call dein#add('Shougo/neomru.vim')

  " ファイルをtree表示してくれる
  call dein#add('scrooloose/nerdtree')

  call dein#add('mattn/emmet-vim')

  call dein#add('mattn/webapi-vim')
  call dein#add('hail2u/vim-css3-syntax')
  call dein#add('taichouchou2/html5.vim')
  call dein#add('kchmck/vim-coffee-script')
  call dein#add('marcus/rsense')
  call dein#add('scrooloose/syntastic')
  call dein#add('Townk/vim-autoclose')
  call dein#add('scrooloose/syntastic')
  call dein#add('itchyny/lightline.vim')
  call dein#add('othree/html5.vim') 



  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" http://blog.remora.cx/2010/12/vim-ref-with-unite.html
""""""""""""""""""""""""""""""
" Unit.vimの設定
""""""""""""""""""""""""""""""
" 入力モードで開始する
let g:unite_enable_start_insert=1
" バッファ一覧
noremap <C-P> :Unite buffer<CR>
" ファイル一覧
noremap <C-N> :Unite -buffer-name=file file<CR>
" 最近使ったファイルの一覧
noremap <C-Z> :Unite file_mru<CR>
" sourcesを「今開いているファイルのディレクトリ」とする
noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
" ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
" ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

" vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
let g:indent_guides_enable_on_vim_startup = 1
" コード補完
let g:rsenseUseOmniFunc = 1
" 静的解析
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['ruby'] }

" vimのステータスをリッチに
set laststatus=2
