if exists('g:loaded_my_mappings') || &compatible
  finish
else
  let g:loaded_my_mappings = 1
endif

" make Y consistent with D and C
nnoremap <unique> Y y$

" Reload vimrc
map <unique> <silent> <leader>v :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" when j is given a count, push cursor to jump list and execute <count>j
" otherwise, execute gj
noremap <unique> <expr> j (v:count == 0 ? 'gj' : ":<C-U> :exec ':norm! m`' . v:count . 'j'<CR>")
noremap <unique> <expr> k (v:count == 0 ? 'gk' : ":<C-U> :exec ':norm! m`' . v:count . 'k'<CR>")

" swag default gf with gF
nnoremap <unique> gf gF
nnoremap <unique> gF gf

" tab switching
nnoremap <unique> <silent> <leader>1 1gt
nnoremap <unique> <silent> <leader>2 2gt
nnoremap <unique> <silent> <leader>3 3gt
nnoremap <unique> <silent> <leader>4 4gt
nnoremap <unique> <silent> <leader>5 5gt
nnoremap <unique> <silent> <leader>6 6gt
nnoremap <unique> <silent> <leader>7 7gt
nnoremap <unique> <silent> <leader>8 8gt
nnoremap <unique> <silent> <leader>9 9gt

nnoremap <unique> <silent> <leader>t :tabnew %<CR>

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

" Toggle spelling locally
nnoremap <unique> <silent> <leader>s :setlocal spell!<cr>

" Load all occurrences of current pattern into quickfix
nnoremap <unique> <silent> <leader>/ :vimgrep // %<CR>:copen<CR>
