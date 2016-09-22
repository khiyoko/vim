"------------------------------------------------------------------------------
" config file for jedi-vim
"

autocmd FileType python setlocal omnifunc=jedi#completions
autocmd FileType python setlocal completeopt-=preview
let g:jedi#completions_enable = 0
let g:jedi#auto_vim_configuration = 0
"let g:jedi#smart_auto_mappings = 0
"let g:jedi#show_call_signatures = 0
