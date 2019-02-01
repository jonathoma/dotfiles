
"********************** VUNDLE ***************************

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'w0rp/ale'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'tpope/vim-surround'
Plugin 'rhysd/vim-clang-format'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"********************** SYNTAX / THEMES  ***************************

syntax on
colorscheme solarized

let g:solarized_contrast="high"
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

"********************** VIM SETTINGS ***************************

noremap jk <ESC>

set nowrap      " don't wrap lines
set autoindent  " always set autoindenting on
set copyindent  " copy the previous indentation on autoindenting
set number      " always show line numbers
set shiftround  " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch   " set show matching parenthesis
set smartcase   " ignore case if search pattern is all lowercase,
                "    case-sensitive otherwise
set smarttab    " insert tabs on the start of a line according to
                "    shiftwidth, not tabstop

set tabstop=4 " show existing tab with 4 spaces width
set shiftwidth=4 " when indenting with '>', use 4 spaces width
set expandtab " On pressing tab, insert 4 spaces

set incsearch " search as characters are entered
set hlsearch " highlights matches

"let g:clang_format#style_options = {
"            \ "AccessModifierOffset" : -4,
"            \ "AllowShortIfStatementsOnASingleLine" : "true",
"            \ "AlwaysBreakTemplateDeclarations" : "true",
"            \ "Standard" : "C++11"}

map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>

