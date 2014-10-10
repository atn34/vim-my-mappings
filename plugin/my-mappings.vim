if exists('g:loaded_my_mappings') || &compatible
  finish
else
  let g:loaded_my_mappings = 1
endif

" make Y consistent with D and C
nnoremap <unique> Y y$

" Reload vimrc
map <unique> <silent> <leader>v :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" swap default j k with gj gk
noremap <unique> j gj
noremap <unique> k gk
noremap <unique> gj j
noremap <unique> gk k

" swag default gf with gF
nnoremap <unique> gf gF
nnoremap <unique> gF gf

" reuse args when repeating last substitute command
nnoremap <unique> & :&&<CR>
xnoremap <unique> & :&&<CR>

" Set working directory
nnoremap <unique> <leader>. :lcd %:p:h<CR>

" Quit preview window
nnoremap <unique> <leader>z <c-w>z

" Quit window on <leader>q
nnoremap <unique> <silent> <leader>q :q<CR>

" save on <leader>w
nnoremap <unique> <silent> <leader>w :w<CR>

" hide matches
nnoremap <unique> <silent> <leader>h :set hlsearch!<cr>

" Select the item in the list with enter
inoremap <unique> <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>" 

