"------------------------------------------------------------------------------
" config file for neosnippet.vim
"

" Expand snippets: jump function prioritized
"imap <silent>L     <Plug>(neosnippet_jump_or_expand)
"smap <silent>L     <Plug>(neosnippet_jump_or_expand)
" Expand snippets: expand function prioritized
" e.g. expand one snippet while expanding other snippets
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
" Diplay a list of snippets in plugins via unite
imap <C-l>         <Plug>(neosnippet_start_unite_snippet)
"xmap <silent>o     <Plug>(neosnippet_register_oneshot_snippet)


let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#enable_complete_done = 1
let g:neosnippet#expand_word_boundary = 1

let g:neosnippet#snippets_directory = '~/.vim/snippets'

inoremap <silent> (( <C-r>=noesnippet#anonymous('\left(${1}\right)${0}')<CR>
