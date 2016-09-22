"-----------------------------------------------------------------------
" config file for neocomplete.vim
"

let g:neocomplete#disable_auto_complete = 0
" Disable AutoCompPop.
let g:acp_enableAtStartup = 0
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_camel_case = 1
let g:neocomplete#auto_complete_delay = 30

" Use fuzzy completion
let g:neocomplete#enable_fuzzy_completion = 1

" Set auto completion length
let g:neocomplete#auto_completion_start_length = 2
" Set manual completion length
let g:neocomplete#manual_completion_start_length = 0

" Set minimum syntax keyword length
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_patter = '\*ku\*'


if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"if !exists('g:neocomplete#sources#omni#functions')
"  let g:neocomplete#sources#omni#functions = {}
"endif
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_imput_patterns = {}
endif
let g:neocomplete#enable_auto_close_preview = 1

"let g:marching_enable_neocomplete = 1
" For python
"let g:neocomplete#force_omni_input_patterns.python = '\h\w*\|[^. \t]\.\w*'
let g:neocomplete#source#omni#input_patterns.python = 
  \ '[^. *\t]\.\w*\|\h\w*'

" Plugin key-mappings
inoremap <expr><C-g>  neocomplete#undo_completion()
inoremap <expr><C-l>  neocomplete#complete_common_string()

" Recommended key-mappings
" <CR>: close popup and save indent
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function() abort
  return neocomplete#smart_close_popup() . "\<CR>"
endfunction

" <TAB>: completion
inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ neocomplete#start_manual_complete()
function! s:check_back_space() abort "{{{
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~ '\s'
endfunction"}}}
" <S-TAB>: completion back
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<C-h>"

" <BS>: close popup and delete backward char
inoremap <expr><BS>   neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  noecomplete#cancel_popup()

" Close popup by <Space>
inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"
