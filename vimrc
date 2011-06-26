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
"let g:sparkupNextMapping = '<c-x>'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" snipMate
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"TAB expands snipMate snippets


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Shortcut for NERDTreeToggle
nmap ,nt :NERDTreeToggle

"Show hidden files in NerdTree
let NERDTreeShowHidden=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pydiction
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remember to use Ctrl+n instead of Tab for code completion!
"
" Path to the python dictionary used for completion
let g:pydiction_location = "~/.vim/bundle/pydiction/complete-dict"


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

if has("autocmd")	
    if version >= 700
        autocmd FileType python set omnifunc=pythoncomplete#Complete
        autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
    endif
endif
