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
" Plugin 'tpope/vim-surround'
" Plugin 'scrooloose/syntastic'
" Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'crusoexia/vim-monokai'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'jiangmiao/auto-pairs'

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
colorscheme monokai
let g:ycm_extra_conf_globlist=['~/path/to/file/.ycm_extra_conf.py']
let g:monokai_term_italic=1
let g:monokai_gui_italic=1
let g:airline_exclude_preview=1
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
set t_Co=256
set mouse=a
set completeopt-=preview
iabbrev </ </<C-X><C-O>
map <S-j> 5j
map <S-k> 5k
nnoremap tt :tabnext<CR>
nnoremap tr :tabprev<CR>

" airline settings
let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
set laststatus=2
"let g:airline_left_sep=''
"let g:airline_right_sep=''
let g:airline#extensions#tabline#enabled=1
set guifont=Source\ Code\ Pro\ for\ Powerline "make sure to escape the spaces in the name properly

" ctrlp settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" nerdterr settings
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
