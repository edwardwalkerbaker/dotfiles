"""" Uses vimplug
" ~/.config/nvim/init.vim

call plug#begin()

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'ambv/black'
Plug 'airblade/vim-gitgutter'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'flazz/vim-colorschemes'

call plug#end()

"""" Basic Behavior

set relativenumber        " show relative line numbers
set wrap                  " wrap lines
set encoding=utf-8        " set encoding to UTF-8 (default is "latin1")
set mouse=a               " mouse support
set wildmenu              " visual autocomplete for command menu
set lazyredraw            " redraw screen only when we need to
set showmatch             " highlight matching parentheses / brackets [{()}]
set laststatus=2          " always show statusline (even with one window)
set ruler                 " show line and column number of the cursor on the right side of the status line
set visualbell            " blink cursor on error instead of beeping


"""" Key Bindings
" move vertically by visual line
nmap j gj
nmap k gk


"""" Appearance
" put colourscheme files in ~/.config/nvim/colors/
colorscheme slate

" use filetype-based highlighting
syntax enable
filetype plugin indent on


""" Tab settings
"set tabstop=4						" number of spaces per <TAB>
"set expandtab						" convert <TAB> key-presses to spaces
"set shiftwidth=4					" set a <TAB> key-press equal to 4 spaces
"set autoindent						" copy indent from current line when starting a new line


""" Misc
" set cursorline
" set background=dark
set autoread
set smartindent						" better autoindent


"""" Lightline settings
let g:lightline = {
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \     }
  \ }


"""" Deoplete settings
let g:deoplete#enable_at_startup = 1


"""" Black
" runs black on save
autocmd BufWritePost *.py execute ':Black'


"""" Solarized
let g:solarized_termcolors=256
