"------------------------------------------------------------------------------
" config file for vim_quickrun
"

let g:quickrun_config = get(g:, 'quickrun_config', {})
let g:quickrun_config._ = {
  \ 'runner'  : 'vimproc',
  \ 'runner/vimproc/updatetime' : 30,
  \ 'outputter' : 'error',
  \ 'outputter/error/success' : 'buffer',
  \ 'outputter/error/error'   : 'quickfix',
  \ 'outputter/buffer/split'  : ':rightbelow 8sp',
  \ 'outputter/buffer/close_on_empty' : 1,
  \ 'hook/time/enable'  : 1,
  \}

" Close quickfix by typing q
au FileType qf nnoremap <silent><buffer>q :quit<CR>

" Run quickrun after closing quickfix, saving a file by \r
let g:quickrun_on_default_key_mappings = 1
nnoremap \r :cclose<CR>:write<CR>:QuickRun -mode n<CR>

" Stop quickrun by <C-c>
nnoremap <expr><silent> <C-c> quickrun#is_running() ? quickrun#sweep_sessions() : "\<C-c>" 
