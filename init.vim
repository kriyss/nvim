set exrc " Wont open project .nvimrc without this here
let g:ale_disable_lsp = 1

" https://github.com/junegunn/vim-plug
call plug#begin('~/.local/share/nvim/plugged')

" General plugins
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/vim-peekaboo'    " Show registers on \@, \" and <C-R> in normal mode
    Plug 'tpope/vim-surround'       " Add surounding command
    Plug 'tpope/vim-fugitive'       " Support for git
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-abolish'        " add coercion
    Plug 'mbbill/undotree'
    Plug 'AndrewRadev/splitjoin.vim'

" Eye candy
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'blb78/nord-vim'                    " color sheme
    Plug 'preservim/nerdtree'

" Code
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'dense-analysis/ale'
    Plug 'vim-test/vim-test'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'

" Python
    Plug 'tpope/vim-projectionist'                            " Add alternate move
    Plug 'liuchengxu/vista.vim'                               " View and search LSP symbols, tags in Vim/NeoVim
    Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}    " Better python syntax highlight
    Plug 'jeetsukumaran/vim-pythonsense'                      " Add Python Text Objects
    Plug 'michaeljsmith/vim-indent-object'                    " Add Ident Text Objects
call plug#end()

set autowrite                            " write when switching buffers
set autowriteall                         " write on :quit
set clipboard=unnamedplus
set completeopt-=preview                 " remove the horrendous preview window
set cursorline                           " highlight the current line for the cursor
set lazyredraw
set list                                 " show trailing whitespace
set listchars=tab:\|\ ,trail:▫,space:·
set noswapfile                           " disable swapfile usage
set nowrap
set ruler
set formatoptions=tcqronj                " set vims text formatting options
set title                                " let vim set the terminal title
set number relativenumber
set updatetime=100                       " redraw the status bar often
set scrolloff=8                          " size left when scrolling
set pumheight=5                          " size of completion
set colorcolumn=120
set undodir="~/.undodir"
set undofile

" Allow vim to set a custom font or color for a word
    syntax enable
    filetype plugin indent on

" File Format
    set tabstop=4         " Number of spaces that a <Tab> in the file counts for
    set softtabstop=4     " Number of spaces that a <Tab> counts for while performing editing operations
    set shiftwidth=4      " Number of spaces to use for each step of (auto)indent<Paste>
    set expandtab         " Use tabs, not spaces
    %retab!               " Retabulate the whole file

:augroup number_toggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter    * set norelativenumber
:augroup END

:augroup number_color_toggle
    autocmd!
    autocmd InsertEnter * highlight LineNr ctermbg=green guifg=#A3BE8C
    autocmd InsertLeave * highlight LineNr ctermbg=black guifg=#4C566A
:augroup END

let mapleader = ' '

nnoremap B ^
nnoremap E $

nnoremap <C-m> :Marks<CR>
nnoremap <C-b> :Buffers<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Move code faster
    nnoremap <silent> <A-j> :m .+1<CR>==
    nnoremap <silent> <A-k> :m .-2<CR>==
    inoremap <silent> <A-j> <Esc>:m .+1<CR>==gi
    inoremap <silent> <A-k> <Esc>:m .-2<CR>==gi
    vnoremap <silent> <A-j> :m '>+1<CR>gv=gv
    vnoremap <silent> <A-k> :m '<-2<CR>gv=gv

" Going full vim
    nmap <up> <nop>
    nmap <down> <nop>
    nmap <left> <nop>
    nmap <right> <nop>
    imap <up> <nop>
    imap <down> <nop>
    imap <left> <nop>
    imap <right> <nop>
    vmap <up> <nop>
    vmap <down> <nop>
    vmap <left> <nop>
    vmap <right> <nop>

" In insert or command mode, move normally by using Ctrl
    inoremap <C-h> <Left>
    inoremap <C-j> <Down>
    inoremap <C-k> <Up>
    inoremap <C-l> <Right>
    cnoremap <C-h> <Left>
    cnoremap <C-j> <Down>
    cnoremap <C-k> <Up>
    cnoremap <C-l> <Right>

" Autosave buffers before leaving them
" autocmd BufLeave * silent! :wa
