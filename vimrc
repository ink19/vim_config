call plug#begin('/usr/share/vim-plug')
    Plug 'liuchengxu/vim-which-key'
    Plug 'scrooloose/nerdtree'
    Plug 'flazz/vim-colorschemes'
    Plug 'valloric/youcompleteme'
    Plug 'majutsushi/tagbar'
    Plug 'vim-airline/vim-airline'
call plug#end()

:set number

let g:mapleader = "\<Space>"
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>

colorscheme molokai

let g:ale_linters = {
    \ 'c': ['clang']
\}

let g:which_key_map =  {}
let g:which_key_map['/'] = [ 'NERDTreeToggle'  , 'File Tree' ]
let g:which_key_map['p'] = [ 'TagbarToggle' , 'TagBar' ]

call which_key#register('<Space>', "g:which_key_map")

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']

let g:ycm_key_list_stop_completion = ['<Enter>']

set tabstop =2
set sw =2
set expandtab

