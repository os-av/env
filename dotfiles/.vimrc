set number
set laststatus=2
set cursorline
set shiftwidth=2
set tabstop=2
set expandtab
set ignorecase
set showcmd
set history=500
set ruler
set updatetime=300
set signcolumn=yes
set cc=80,100
set cmdheight=2
set noshowmode

syntax on

call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'yggdroot/indentline'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'NLKNguyen/papercolor-theme'
Plug 'tomasr/molokai'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

let g:onedark_termcolors=256
set background=dark
colorscheme PaperColor

let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

:map <C-n> :NERDTreeTabsToggle<CR>
:map <C-p> :CtrlP<CR>

" Mappings for CoCList
" Show all diagnostics
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<cr>
" Do default action for previous item
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<cr>
" Resume latest CoC List
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<cr>

