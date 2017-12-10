syntax on
set number
set tabstop=4
set autoindent
set smartindent
set cindent
set shiftwidth=4

noremap ş l
noremap l k
noremap k j
noremap j h

noremap <C-W>ş <C-W>l
noremap <C-W>l <C-W>k
noremap <C-W>k <C-W>j
noremap <C-W>j <C-W>h

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Disables YCM
let g:loaded_youcompleteme = 1

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'altercation/vim-colors-solarized'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'valloric/youcompleteme'
Plugin 'godlygeek/tabular'
Plugin 'auto-pairs-gentle'
Plugin 'davidhalter/jedi-vim'

call vundle#end()            " required
"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set laststatus=2
"let g:powerline_pycmd='py3'
let g:airline_theme='dark'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_quiet_messages = { "level": "warnings" }

let g:ycm_autoclose_preview_window_after_insertion = 1

"let g:jedi#completions_enabled = 0

let g:airline_exclude_preview=1

let g:AutoPairsUseInsertedCount = 1
let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`', '<':'>'}

"syntax enable
"set background=dark
"colorscheme solarized

nmap <F8> :TagbarToggle<CR>

