let test#strategy = "neovim"
let test#python#runner = 'djangotest'

nmap <leader>tn :TestNearest<CR>
nmap <leader>tf :TestFile<CR>
nmap <leader>ts :TestSuite<CR>
nmap <leader>tl :TestLast<CR>
nmap <leader>tv :TestVisit<CR>

" If you want to scroll through the test command output, you'll have to first switch to normal mode.
" The built-in mapping for exiting terminal insert mode is CTRL-\ CTRL-n, which is difficult to press,
" so I recommend mapping it to <C-o>:
tmap <C-o> <C-\><C-n>
