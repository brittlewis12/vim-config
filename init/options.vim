set guifont="MonoLisa Variable":h12
" set guifont=Monaco\ for\ Powerline:h12
" set guifont=SFMono\ Nerd\ Font:h13
set t_Co=256                        " Use 256 terminal colors
set guioptions-=T                   " Remove GUI toolbar
set guioptions-=e                   " Use text tab bar, not GUI
set guioptions-=rL                  " Remove scrollbars
set guicursor=a:blinkon0            " Turn off the blinking cursor

set notimeout                       " No command timeout
set showcmd                         " Show typed command prefixes while waiting for operator
set mouse=a                         " Use mouse support in XTerm/iTerm.

set re=0                            " Use new regular expression engine
set vb t_vb=                        " disable audible bell for extraneous key strokes

set expandtab                       " Use soft tabs
set tabstop=2                       " Tab settings
set autoindent
set smarttab                        " Use shiftwidth to tab at line beginning
set shiftwidth=2                    " Width of autoindent
set number                          " Line numbers
set nowrap                          " No wrapping
set backspace=indent,eol,start      " Let backspace work over anything.
set wildignore+=tags                " Ignore tags when globbing.
set wildignore+=*/tmp               " ...Also tmp files.
set wildignore+=*/public/uploads/*  " ...Also uploads.
set wildignore+=*/private/uploads/*  " ...Also uploads.
set wildignore+=*/public/assets/*    " ...Also assets.
set wildignore+=*/public/images/*    " ...Also images.
set wildignore+=*/spec/fixtures/*    " ...Also fixtures.
set wildignore+=*/test/fixtures/*    " ...Also fixtures.
set wildignore+=*/vendor/*           " ...Also vendor.
set wildignore+=*/node_modules/*     " ...Also node_modules.
set wildmenu
if has("win16") || has("win32")
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
    set wildignore+=.git\*,.hg\*,.svn\*
endif

set list                            " Show whitespace
set listchars=trail:·

set showmatch                       " Show matching brackets
set hidden                          " Allow hidden, unsaved buffers
set splitright                      " Add new windows towards the right
set splitbelow                      " ... and bottom
set wildmode=list:longest           " Bash-like tab completion
set scrolloff=3                     " Scroll when the cursor is 3 lines from edge
set cursorline                      " Highlight current line

set laststatus=2                    " Always show statusline

set incsearch                       " Incremental search
set history=1024                    " History size
set ignorecase
set smartcase                       " Smart case-sensitivity when searching

set autoread                        " No prompt for file changes outside Vim

set swapfile                        " Keep swapfiles
set directory=~/.vim-tmp,~/tmp,/var/tmp,/tmp
set backupdir=~/.vim-tmp,~/tmp,/var/tmp,/tmp

set sessionoptions-=options

set hls                             " search with highlights by default

" Press Space to turn off highlighting and clear any message already
" displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>""

" Write all writeable buffers when changing buffers or losing focus.
" Save when doing various buffer-switching things.
set autowriteall
" Save anytime we leave a buffer or MacVim loses focus.
autocmd BufLeave,FocusLost * silent! wall

let g:sql_type_default="postgresql"

if $TERM == 'screen-256color'
  set t_RV=[>c
endif

" Turn off ri tooltips that don't work with Ruby 1.9 yet
" http://code.google.com/p/macvim/issues/detail?id=342
if has("gui_running")
  set noballooneval
  autocmd GUIEnter * set vb t_vb=
endif
