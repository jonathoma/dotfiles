
"********************** VUNDLE ***************************

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'terryma/vim-smooth-scroll'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"********************** SYNTAX / THEMES  ***************************

syntax enable
set background=dark

" solarized options
colorscheme solarized
let g:solarized_termtrans=1
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

highlight clear LineNr
highlight clear SignColumn

"********************** VIM SETTINGS ***************************

set nowrap        " don't wrap lines
set backspace=indent,eol,start
                    " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop

set tabstop=4 " show existing tab with 4 spaces width
set shiftwidth=4 " when indenting with '>', use 4 spaces width
set expandtab " On pressing tab, insert 4 spaces

set number " show line numbers
set ruler
set cursorline " highlight current line
set showmatch " highlights matching parentheses

set incsearch " search as characters are entered
set hlsearch " highlights matches

set ttyfast " Optimize for fast terminal connections

noremap <silent> <ScrollWheelUp> :call smooth_scroll#up(&scroll*2, 10, 4)<CR>
noremap <silent> <ScrollWheelDown> :call smooth_scroll#down(&scroll*2, 10, 4)<CR>

"********************** SYNTASTIC SETTINGS  ***************************

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_python_checkers = ['pylint']
let g:syntastic_python_pylint_args = '-E'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"********************* GITGUTTER SETTINGS ****************************
let g:gitgutter_realtime = 250
let g:gitgutter_enabled = 1


