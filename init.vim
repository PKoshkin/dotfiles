"dein Scripts-----------------------------
if &compatible
  set nocompatible
endif
filetype off
" append to runtime path
set rtp+=/usr/share/vim/vimfiles
" initialize dein, plugins are installed to this directory
call dein#begin(expand('~/.cache/dein'))
" add packages here, e.g:
call dein#add('morhetz/gruvbox')
call dein#add('Shougo/deoplete.nvim')
call dein#add('Shougo/echodoc.vim')
call dein#add('zchee/deoplete-clang')
call dein#add('zchee/deoplete-jedi')
" exit dein
call dein#end()
" auto-install missing packages on startup
if dein#check_install()
  call dein#install()
endif
filetype plugin on
"End dein Scripts-------------------------

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme gruvbox

set showcmd
set cmdheight=3
set background=dark
set tabstop=4
set shiftwidth=4
set expandtab
set relativenumber
set number
set completeopt-=preview
let g:gruvbox_contrast_dark="hard"
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#clang#libclang_path = "/usr/lib/libclang.so"
let g:deoplete#sources#clang#clang_header = "/usr/lib/clang"
let g:deoplete#enable_refresh_always = 1
inoremap <expr> <S-Tab>  pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
let g:echodoc_enable_at_startup = 1
