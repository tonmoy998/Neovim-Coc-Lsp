vim.cmd([[
augroup code_exec
autocmd!
autocmd FileType php nnoremap <buffer> <leader>r :term sudo php -S localhost:8080<CR>
autocmd FileType python nnoremap <buffer> <leader>r :FloatermNew --autoclose=0 python3 % <CR>
autocmd FileType javascript nnoremap <buffer> <leader>r :FloatermNew --autoclose=0 nodejs % <CR>
autocmd FileType bash,sh nnoremap <buffer> <leader>r :FloatermNew --autoclose=0 bash % <CR>
autocmd FileType lua nnoremap <buffer> <leader>r :FloatermNew --autoclose=0 lua % <CR>
autocmd FileType lua nnoremap <buffer> <leader>l :FloatermNew --autoclose=0 love .<CR>
autocmd FileType html,css,scss,less nnoremap <buffer> <leader>r :term live-server<CR>


autocmd FileType php nnoremap <buffer> <F5> :FloatermNew --autoclose=0 php % <CR>
autocmd FileType python nnoremap <buffer> <F5> :FloatermNew --autoclose=0 python3 % <CR>
autocmd FileType javascript nnoremap <buffer> <F5> :FloatermNew --autoclose=0 nodejs % <CR>
autocmd FileType lua nnoremap <buffer> <F5> :FloatermNew --autoclose=0 lua % <CR>

augroup END
]])
