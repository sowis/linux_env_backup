set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Valloric/YouCompleteMe'
Plugin 'taglist.vim'
Plugin 'mattn/emmet-vim'
Plugin 'alvan/vim-closetag'
Plugin 'ap/vim-css-color'
Plugin 'isruslan/vim-es6'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

call vundle#end()

let mapleader=","

map <Leader>n <ESC>:NERDTreeToggle<CR>

let g:ycm_server_python_interpreter = '/usr/bin/python3'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_collect_indentifiers_from_comments_and_strings=1
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_min_num_of_chars_for_completion=1
let g:ycm_collect_identifiers_from_tags_files=1

map <Leader>t <ESC>:TlistToggle<CR>
let Tlist_Ctags_Cmd="/usr/bin/ctags"
let Tlist_Inc_Winwidth=0
let Tlist_Exit_OnlyWindow=0
"let Tlist_Auto_Open=1
let Tlist_Use_Right_Window=1

let g:user_emmet_leader_key=','

let g:jsx_ext_required=0

color jellybeans
set t_Co=256

if has ("syntax")
  syntax on
endif

set nu
set title
set hlsearch
set ignorecase
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set autoindent
set smartindent
set cindent

set nobackup
set noswapfile
