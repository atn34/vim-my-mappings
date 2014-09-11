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

" reuse args when repeating last substitute command
nnoremap <unique> & :&&<CR>
xnoremap <unique> & :&&<CR>

" Set working directory
nnoremap <unique> <leader>. :lcd %:p:h<CR>

" Quit preview window
nnoremap <unique> <leader>z <c-w>z

" Quit window on <leader>q
nnoremap <unique> <leader>q :q<CR>

" save on <leader>w
nnoremap <unique> <leader>w :w<CR>

" hide matches
nnoremap <unique> <leader>h :set invhlsearch<cr>

" Select the item in the list with enter
inoremap <unique> <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>" 

