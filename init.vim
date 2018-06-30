"dein Scripts-----------------------------
if &compatible
    set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')

    call dein#add('~/.cache/dein')
    call dein#add('Shougo/deoplete.nvim')
    if !has('nvim')
        call dein#add('roxma/nvim-yarp')
        call dein#add('roxma/vim-hug-neovim-rpc')
    endif

    " My pachages:
    call dein#add('morhetz/gruvbox')
    call dein#add('scrooloose/nerdtree')
    call dein#add('vim-airline/vim-airline')
    call dein#add('vim-airline/vim-airline-themes')
    call dein#add('zchee/deoplete-clang')
    call dein#add('zchee/deoplete-jedi')
    call dein#add('Shougo/echodoc.vim')
    call dein#add('majutsushi/tagbar')
    call dein#add('python-mode/python-mode')
    " end of my pachages

    call dein#end()
    call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
    call dein#install()
endif
"End dein Scripts-------------------------

" colorscheme
let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
set background=dark

" nerdtree settings
map <F2> :NERDTreeToggle<CR>

" simple settings
set showcmd
set tabstop=4
set shiftwidth=4
set foldmethod=syntax
set expandtab
set relativenumber
set number
set completeopt-=preview
set clipboard+=unnamedplus

" echodoc
let g:echodoc_enable_at_startup = 1
set cmdheight=2

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved' 
set t_Co=256
let g:airline_theme='gruvbox'

" deoplete.
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#clang#libclang_path = "/usr/lib/libclang.so"
let g:deoplete#sources#clang#clang_header = "/usr/lib/clang"
let g:deoplete#enable_refresh_always = 1

" tagbar
nmap <F3> :TagbarToggle<CR>
let g:tagbar_ctags_bin = '/bin/ctags'

"=====================================================
" Python-mode settings
"=====================================================

" turn off autocomplete, use deoplete instead
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0

" max line len
let g:pymode_options_max_line_length = 119

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

" Code checking
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_ling_message = 1

" virtualenv support
let g:pymode_virtualenv = 1

" breakpoints
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = "<C-S-b>"
let g:pymode_breakpoint_cmd = ''

" syntax highlight
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

let g:pymode_folding = 1

let g:pymode_run = 1
let g:pymode_run_bind = "<F5>"
let g:pymode_motion = 1
let g:pymode_python = 'python3'
let g:pymode_doc_bind = "<C-S-d>"
let g:pymode_options_colorcolumn = 0
let g:pymode_lint_ignore = ["W0612,W0611"]

"=====================================================
" Python-mode end settings
"=====================================================

" show if line is longer than 120
augroup vimrc_autocmds
    autocmd!
    autocmd FileType ruby,python,javascript,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType ruby,python,javascript,c,cpp match Excess /\%120v.*/
    autocmd FileType ruby,python,javascript,c,cpp set nowrap
augroup END
