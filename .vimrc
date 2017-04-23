set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
"Plugin 'tpope/vim-surround'
"Plugin 'scrooloose/syntastic'
"Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'jiangmiao/auto-pairs'
"Plugin 'Yggdroot/indentLine'
"Plugin 'vim-syntastic/syntastic'
"Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'crusoexia/vim-monokai'
"Plugin 'dracula/vim'
"Plugin 'flazz/vim-colorschemes'
Plugin 'morhetz/gruvbox'

call vundle#end()            " required
filetype plugin indent on    " required

"syntax highlighting
syntax enable
set t_Co=256
set background=dark
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_invert_selection=0
let g:gruvbox_sign_column='bg0'
let g:gruvbox_number_column='bg0'
let g:gruvbox_improved_warnings=1
let g:gruvbox_invert_signs=0
"let g:monokai_term_italic=1
"let g:monokai_gui_italic=1
colorscheme gruvbox
"colorscheme monokai
"colorscheme dracula

"generic settings
set number
set tabstop=4
set shiftwidth=4
set expandtab
set ai
set smarttab
set so=7
set ruler
set hlsearch
set formatoptions-=cro
set backspace=2
set mouse=a
set ignorecase
set foldmethod=syntax
set nofoldenable
highlight Folded ctermfg=None

"YCM settings
let g:ycm_register_as_syntastic_checker=0
set completeopt-=preview "disable preview window
"let g:ycm_show_diagnostics_ui=0
let g:ycm_warning_symbol='●'
let g:ycm_error_symbol='✖'
highlight YcmErrorLine guibg=#d7ff00
map <C-a> :YcmCompleter FixIt<CR>
aug QFClose
    au!
    au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&buftype") == "quickfix"|q|endif
aug END

"shortcuts
map <S-j> 5j
map <S-k> 5k
nnoremap tt :tabnext<CR>
nnoremap tr :tabprev<CR>
" Move tabs left/right
nnoremap <silent> <s-left> :-tabmove<cr>
nnoremap <silent> <s-right> :+tabmove<cr>

"Airline settings
let g:airline_exclude_preview=1
let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
set laststatus=2
"let g:airline_left_sep=''
"let g:airline_right_sep=''
let g:airline#extensions#tabline#enabled=1
set guifont=Source\ Code\ Pro\ for\ Powerline "make sure to escape the spaces in the name properly

"ctrlp settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"nerdterr settings
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

"nerdcommenter settings
let g:NERDCompactSexyComs = 1

"gitgutter
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

