" Language:    CoffeeScript
" Maintainer:  Mick Koch <mick@kochm.co>
" URL:         http://github.com/kchmck/vim-coffee-script
" License:     WTFPL

autocmd BufNewFile,BufRead *.coffee set filetype=coffee
autocmd BufNewFile,BufRead *Cakefile set filetype=coffee
autocmd BufNewFile,BufRead *.coffeekup,*.ck set filetype=coffee
autocmd BufNewFile,BufRead *._coffee set filetype=coffee

function! s:DetectCoffee()
    if getline(1) =~ '^#!.*\<coffee\>'
        set filetype=coffee
    endif
endfunction

autocmd BufNewFile,BufRead * call s:DetectCoffee()
" Language:   Literate CoffeeScript
" Maintainer: Michael Smith <michael@diglumi.com>
" URL:        https://github.com/mintplant/vim-literate-coffeescript
" License:    MIT

autocmd BufNewFile,BufRead *.litcoffee set filetype=litcoffee
autocmd BufNewFile,BufRead *.coffee.md set filetype=litcoffee

autocmd BufReadPost *.fugitiveblame setfiletype fugitiveblame
" Detect syntax file.
autocmd BufNewFile,BufRead *.snip,*.snippets set filetype=neosnippet
