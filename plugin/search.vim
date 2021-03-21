set ignorecase					" do case insensitive search
set incsearch					" move to match as you type the search query
set hlsearch					" disable search result highlighting

if has('nvim')
	set inccommand=split		" enables interactive search and replace
endif

" Clear search highlights
map <leader>c :nohlsearch<CR>

" These mappings will make it so that going to the next one in a search will
" center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

" Next and previous error on quicklist
nnoremap <leader>o :lopen<CR>
nnoremap <leader>n :lnext<CR>zz
nnoremap <leader>p :lprevious<CR>zz

let g:fzf_layout = { 'down': '~40%' }
" search on files names
nnoremap <silent> <leader>/ :FZF<CR>
" search on files content
nnoremap <silent> <leader><leader>/ :Rg<CR>
