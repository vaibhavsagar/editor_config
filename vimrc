set nocompatible
filetype off " For Vundle
set rtp+=~/vimfiles/bundle/vundle/
call vundle#rc("$HOME/vimfiles/bundle")

source $VIMRUNTIME/mswin.vim

" Bundles
Bundle 'SirVer/ultisnips'
Bundle 'Yggdroot/indentLine'
Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-airline'
Bundle 'davidhalter/jedi-vim'
Bundle 'ervandew/supertab'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'gmarik/vundle'
Bundle 'godlygeek/tabular'
Bundle 'honza/vim-snippets'
Bundle 'justinmk/vim-gtfo'
Bundle 'kana/vim-textobj-indent'
Bundle 'kana/vim-textobj-user'
Bundle 'mbbill/undotree'
Bundle 'mhinz/vim-startify'
Bundle 'ntpeters/vim-better-whitespace'
Bundle 'scrooloose/syntastic'
Bundle 'tomtom/shymenu_vim'
Bundle 'tpope/vim-dispatch'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-vinegar'
Bundle 'vim-pandoc/vim-pandoc-syntax'

" Display
au GUIEnter * set vb t_vb=
colorscheme solarized
filetype plugin indent on
if has("gui_running")
    set lines=67 columns=90
    winpos 0 0
else
    set t_ut=
endif
set background=light
set colorcolumn=80
set guifont=Consolas:h10
set go=cegrL
set laststatus=2
set lazyredraw
set linespace=0
set noeb vb t_vb=
set noshowmode
set number
set numberwidth=1
set ruler
set showcmd
syntax enable

" Folding
set foldlevel=99
set foldmethod=indent

" Formatting
set autoindent
set expandtab
set linebreak
set shiftround
set shiftwidth=4
set softtabstop=4
set tabstop=4
set textwidth=0
set wrap
set wrapmargin=0

" General
set autochdir
set backspace=indent,eol,start whichwrap+=<,>,[,]
set completeopt=menuone,longest,preview
set encoding=utf-8
set fileencoding=utf-8
set hidden
set history=1000
set mouse=a
set nobackup
set noswapfile

" Search
set gdefault
set hlsearch
set incsearch
set smartcase

" Remappings
nnoremap <Down> gj
nnoremap <Up> gk
nnoremap j gj
nnoremap k gk
xnoremap < <gv
xnoremap > >gv

" Toggles
nnoremap <silent> <F3> :MBEToggle<CR>
nnoremap <silent> <F4> :IndentLinesToggle<CR>
nnoremap <silent> <F5> :UndotreeToggle<CR>

" Other
nnoremap <Leader>c  :close<CR>
nnoremap <Leader>no :nohl<CR>

" indentLine
let g:indentLine_char='│'

" Airline
let g:airline_left_sep=''
let g:airline_left_alt_sep=''
let g:airline_right_sep=''
let g:airline_right_alt_sep=''

" Jedi
let g:jedi#force_py_version=3
let g:jedi#auto_vim_configuration=0

" Startify
let g:startify_skiplist = [
    \ escape($VIMRUNTIME .'\doc', '\'),
    \ escape('AppData\Local\Temp', '\'),
    \ escape('bundle\.*\doc', '\')
    \ ]

" Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1 " Put errors on left side
let g:syntastic_auto_loc_list=2 " Only show errors when I ask
let g:syntastic_python_checkers=['flake8']

" Tabularize
nnoremap <Leader>t :Tab<Space>/
vnoremap <Leader>t :Tab<Space>/

" Ultisnips
let g:UltiSnipsUsePythonVersion=3
let g:UltiSnipsRemoveSelectModeMappings=0
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Undotree
let g:undotree_SetFocusWhenToggle=1

" AutoCmds
augroup vimrcso
  au!
  autocmd BufWritePost $MYVIMRC so $MYVIMRC
augroup END
