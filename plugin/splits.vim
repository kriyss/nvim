set splitbelow
set splitright

" Creating splits
nnoremap <silent> <leader>v :vsplit<CR>
nnoremap <silent> <leader>h :split<CR>
nnoremap <silent> <leader>q :close<CR>

" Move between splits
" nnoremap <C-h> <C-w>h
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l

" Workaround to resize split vertical since <C-W> doesn't work
nnoremap <silent> = :vertical resize +5<CR>
nnoremap <silent> - :vertical resize -5<CR>
