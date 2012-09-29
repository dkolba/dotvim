""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SHORTCUTS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" %        = (on parentheses) search for matching parenthesis
" <c-e>    = Expand item(s) to HTML markup via Sparkup
" <c-n>    = Next menu item
" <c-p>    = Previous menu item
" <c-n>    = Autocomplete python code (within *.py files)
" ,v       = Open vertical split window
" ,nt      = Toggle NERDTree on/off
" ,mw      = Activate EasyMotion
" ,bb      = Toggle MiniBufExpl on/off
" yy       = Add current Line to YankRing
" F3       = Toggle YankRing
" F4       = Toggle Gundo
" jj       = Exit normal mode
" ,c       = Comment/uncomment line
" ,v       = Vertical split window
" <space>  = Map the spacebar to colon
" ,<tab>   = Code completion
" <C-Up>   = Bubble line up
" <C-Down> = Bubble line down
" <C-Up>   = Bubble line up
" <C-Down> = Bubble line down
" <ESC>    = Matches will no longer be highlighted
" <C-h>    = Move to left window
" <C-j>    = Move to lower window
" <C-k>    = Move to upper window
" <C-l>    = Move to right window
" cst<p>   = Change surrounding tag to <p>
" %s/X/Y/g = Find X and replace it with Y (globally)
" %s/\s*\(\w*@\w*.\w*\)/<a href=\"mailto:\1">\1<\/a>
" .        = repeat last change
" va"      = select all text betweet (and including) quotes
" vi"      = select all text betweet quotes
" vat      = select all text betweet (and including) tags
" vit      = select all text betwwet tags
" *        = find all occurrences of the word under the curser
" <tab>    = Expand snipMate snippets
" Ve       = open file explorer in current folder
" df,      = (reverse dF,)   -- delete all characters till , on the current line.
" I        = go to beginning of the line as insert mode.
" $        = in command mode, go to end of the line.
" gg       = go to beginning of the file
" G        = go to end of the file
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PATHOGEN
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

let leader = ','
let mapleader = ','
let g:mapleader = ','
let localleader = '\'
let g:localleader = '\'
let leader = ','
let g:leader = ','
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sparkup
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:sparkup = 'sparkup'
let g:sparkupArgs = '--no-last-newline'
let g:sparkupExecuteMapping = '<c-e>'
let g:sparkupNextMapping = '<c-n>'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" netrw
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show files in netrw
" :e. open file explorer at current working directory
" :sp. open file explorer in split at current working directory
" :vs. open file explorer in vertical split at current working directory
" :E open file explorer at directory of current file
" :Se open file explorer in split at directory of current file
" :Ve open file explorer in vertical split at directory of current file
" % create a new file (in netrw)
" d create a new directory (in netrw)
" R rename the file/directory under the cursor (in netrw)
" D Delete the file/directory under the cursor (in netrw)

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
" Activate EasyMotion with '\mw'
"
" Shading text when EasyMotion is activated
let g:EasyMotion_do_shade = 1
let g:EasyMotion_leader_key = '<Leader>m'

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MINIBUFEXPL
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader>bb :TMiniBufExplorer<cr>
let g:miniBufExplSplitBelow = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DISPLAY
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ruler
set number
set showcmd
set laststatus=2
set winminheight=0
set winminwidth=0
set winheight=10
set display+=lastline

" No automatic line breaks
set textwidth=80
"set columns=90

" Automatic line breaks, ten characters from the right
"set wrapmargin=10
"set numberwidth=5

"Opens a vertical split and switches over (\v)
nnoremap <leader>v <C-w>v<C-w>l

"Split windows below the current window.
set splitbelow


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TEXT EDITING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
set tabstop=2
set softtabstop=2
set shiftwidth=2
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

"Hard-wrap paragraphs of text
nnoremap <leader>q gqip


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" KEY MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" In addition to <esc>, jj will exit to normal mode.
inoremap jj <ESC>

"Faster shortcut for commenting. Requires T-Comment plugin
map ,c <c-_><c-_>

"Saves time; maps the spacebar to colon
nmap <space> :

"Map code completion to , + tab
imap ,<tab> <C-x><C-o>

"Bubble single lines (kicks butt)
"http://vimcasts.org/episodes/bubbling-text/
nmap <C-Up> ddkP
nmap <C-Down> ddp

"Bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]

" Press ESC and matches will no longer be highlighted
nmap CTRL-v Shift-ESC :nohls CTRL-v ENTER

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"colorscheme solarized
syntax on
set background=dark
set colorcolumn=80

" Use the below highlight group when displaying bad whitespace is desired.
highlight ExtraWhitespace ctermbg=red guibg=red

match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
b

autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" full Python syntax highlighting
let python_highlight_all=1
"let g:pyflakes_use_quickfix=0


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SEARCH
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set incsearch   " do incremental searching
set ignorecase
set infercase
set smartcase
set hlsearch
set showmatch
set diffopt=filler,iwhite
nnoremap / /\v
vnoremap / /\v
set gdefault


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ABBREVIATIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iab lorem Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SPELLING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iab teh the
iab Teh The

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DISTRACTION FREE MARKDOWN EDITING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  au BufNewFile,BufRead *.{md,mdown,mkd,mkdn,markdown,mdwn} call DistractionFreeWriting()
    function! DistractionFreeWriting()
        set laststatus=0                   " don't show status line
        set noruler                        " don't show ruler
        set linebreak                      " break the lines on words
    endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Forget compatibility with Vi. Who cares.
set nocompatible

"Write the old file out when switching between files.
set autowrite

"Switch between buffers without saving
set hidden

command! Status echo "All systems are go!"
filetype plugin indent on
"filetype indent on

if has("autocmd")
    if version >= 700
        autocmd FileType python set omnifunc=pythoncomplete#Complete
        autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
    endif
endif

" Tell vim to remember certain things when we exit
"  '10 : marks will be remembered for up to 10 previously edited files
"  "100 : will save up to 100 lines for each register
"  :20 : up to 20 lines of command-line history will be remembered
"  % : saves and restores the buffer list
"  n... : where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

"when we reload, tell vim to restore the cursor to the saved position
augroup JumpCursorOnEdit
 au!
  autocmd BufReadPost *
 \ if expand("<afile>:p:h") !=? $TEMP |
 \ if line("'\"") > 1 && line("'\"") <= line("$") |
 \ let JumpCursorOnEdit_foo = line("'\"") |
 \ let b:doopenfold = 1 |
 \ if (foldlevel(JumpCursorOnEdit_foo) > foldlevel(JumpCursorOnEdit_foo - 1)) |
 \ let JumpCursorOnEdit_foo = JumpCursorOnEdit_foo - 1 |
 \ let b:doopenfold = 2 |
 \ endif |
 \ exe JumpCursorOnEdit_foo |
 \ endif |
 \ endif
" Need to postpone using "zv" until after reading the modelines.
  autocmd BufWinEnter *
 \ if exists("b:doopenfold") |
 \ exe "normal zv" |
 \ if(b:doopenfold > 1) |
 \ exe "+".1 |
 \ endif |
 \ unlet b:doopenfold |
 \ endif
augroup END
