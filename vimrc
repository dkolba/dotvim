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
let g:sparkupNextMapping = '<c-n>'

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
" EasyMotion
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Activate EasyMotion with '\w'
"
" Shading text when EasyMotion is activated
let g:EasyMotion_do_shade = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Gundo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Remap 'F4' as Gundo toggle key
nnoremap <F4> :GundoToggle<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YankRing
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 'yy' adds the current line to the yankring.
" '<c-p>' moves backwards through the yankring.
" '<c-n>' moves forwards through the yankring
"
" Remap 'F3' as YankRing toggle key 
nnoremap <silent> <F3> :YRShow<CR>
inoremap <silent> <F3> <ESC>:YRShow<CR>

" skip all single-letter deletes (x)
let g:yankring_min_element_length = 2

" save last 50 items in history, only show last 50 in window
let g:yankring_max_history = 50
let g:yankring_max_display = 50

" save yankring entries across vim instances
let g:yankring_persist = 1
let g:yankring_share_between_instances = 1

" don't save duplicates
let g:yankring_ignore_duplicate = 1

" use a separate vertical split window that auto-closes and is 30
" chars wide on the right side
let g:yankring_window_use_separate = 1
let g:yankring_window_use_horiz = 0
let g:yankring_window_auto_close = 1
let g:yankring_window_width = 50
let g:yankring_window_use_right = 1

" pressing <space> will increase the size of the window by 15 columns
let g:yankring_window_increment = 15

" have yankring manage Vim's numbered registers ("0-"9)
let g:yankring_manage_numbered_reg = 1

" keep the history file in the $HOME/.vim folder instead of $HOME
let g:yankring_history_dir = '$HOME/.vim'

" yankring keeps an eye on the clipboard
let g:yankring_clipboard_monitor = 1

" if something changes the default register without going through
" yankring, use the default register value rather than the top item in
" yankring's history
let g:yankring_paste_check_default_buffer = 1

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
