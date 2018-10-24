if g:dein#_cache_version !=# 100 || g:dein#_init_runtimepath !=# '/Users/kensayama/.vim,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after,/Users/kensayama/.vim/after,/Users/kensayama/.vim/dein/repos/github.com/Shougo/dein.vim' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/kensayama/.vimrc'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/kensayama/.vim/dein'
let g:dein#_runtime_path = '/Users/kensayama/.vim/dein/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/Users/kensayama/.vim/dein/.cache/.vimrc'
let &runtimepath = '/Users/kensayama/.vim,/usr/share/vim/vimfiles,/Users/kensayama/.vim/dein/repos/github.com/Shougo/vimproc.vim,/Users/kensayama/.vim/dein/repos/github.com/Shougo/dein.vim,/Users/kensayama/.vim/dein/.cache/.vimrc/.dein,/usr/share/vim/vim80,/Users/kensayama/.vim/dein/.cache/.vimrc/.dein/after,/usr/share/vim/vimfiles/after,/Users/kensayama/.vim/after'
filetype off
