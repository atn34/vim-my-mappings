if exists('g:loaded_my_mappings') || &compatible
  finish
else
  let g:loaded_my_mappings = 1
endif

let mapleader=" "
let maplocalleader="\\"

" make Y consistent with D and C
nnoremap Y y$

" Reload vimrc
map <silent> <leader>v :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" swap default j k with gj gk
noremap j gj
noremap k gk
noremap gj j
noremap gk k

" reuse args when repeating last substitute command
nnoremap & :&&<CR>
xnoremap & :&&<CR>

" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>

" Quit preview window
nnoremap <leader>z <c-w>z

" Quit window on <leader>q
nnoremap <leader>q :q<CR>

" save on <leader>w
nnoremap <leader>w :w<CR>

" hide matches
nnoremap <leader>h :set invhlsearch<cr>


