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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Shortcut for NERDTreeToggle
nmap ,nt :NERDTreeToggle

"Show hidden files in NerdTree
let NERDTreeShowHidden=1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Supertab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
let g:SuperTabDefaultCompletionType = '<C-X><C-O>'
"let g:SuperTabMappingTabLiteral = '<a-tab>'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pydiction
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remember to use Ctrl+n instead of Tab for code completion!
"
" Path to the python dictionary used for completion
let g:pydiction_location = "~/.vim/bundle/pydiction/complete-dict"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TEXT EDITING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use the same symbols as TextMate for tabstops and EOLs
set wildmenu
set wildmode=list:longest,full
set wildignore+=*.o,*~,.lo,*.pyc,*.bak,*.jpg,*.png,*.gif
set whichwrap=b,s,h,l,<,>,~,[,] "everything wraps
set undolevels=5000
set autoindent
set preserveindent
set nosmartindent
set smarttab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set wrap
set formatoptions=lcroqwan2vb1
set showmatch
set matchtime=5
set list
set listchars=tab:▸\ ,eol:¬,trail:-
set showbreak=…
set encoding=utf-8 fileencodings=.
set showfulltag
set completeopt=longest,menuone,preview


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" KEY MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" In addition to <esc>, jj will exit to normal mode.
inoremap jj <ESC>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme wombat256
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
