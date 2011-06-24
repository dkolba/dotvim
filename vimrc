""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PATHOGEN
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sparkup
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:sparkup = 'sparkup'
let g:sparkupArgs = '--no-last-newline'
let g:sparkupExecuteMapping = '<c-e>'
let g:sparkupNextMapping = '<c-x>'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Shortcut for NERDTreeToggle
nmap ,nt :NERDTreeToggle

"Show hidden files in NerdTree
let NERDTreeShowHidden=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Supertab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
"let g:SuperTabMappingTabLiteral = '<a-tab>'

	

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
syntax on
command! Status echo "All systems are go!"
filetype plugin indent on
"filetype indent on

"Map code completion to , + tab
imap ,<tab> <C-x><C-o>

if version >= 700
    autocmd FileType python set omnifunc=pythoncomplete#Complete
endif
