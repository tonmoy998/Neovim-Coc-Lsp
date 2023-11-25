vim.cmd([[ 
augroup code_exec
autocmd!
autocmd FileType python nnoremap <buffer> <F5> :FloatermNew --autoclose=0 python3 % <CR> 
autocmd FileType javascript nnoremap <buffer> <F5> :FloatermNew --autoclose=0 nodejs % <CR> 
autocmd FileType bash,sh nnoremap <buffer> <F5> :FloatermNew --autoclose=0 bash % <CR> 
autocmd FileType lua nnoremap <buffer> <F5> :FloatermNew --autoclose=0 lua % <CR> 
autocmd FileType lua nnoremap <buffer> <F5> :FloatermNew --autoclose=0 love .<CR>
autocmd FileType html,css,scss,less nnoremap <buffer> <F5> :term live-server<CR>
" autocmd FileType python nnoremap <buffer> <F12> :FloatermNew --autoclose=0 python3 % <CR> 
augroup END


]])
