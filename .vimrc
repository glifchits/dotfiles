" Much of this was copied from Maximum Awesome, by Square
" https://github.com/square/maximum-awesome/blob/master/vimrc

" set up pathogen, https://github.com/tpope/vim-pathogen
filetype on   " without this vim emits a zero exit status, later, because of :ft off
filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

set nocompatible                                             " don't bother with vi compatibility
syntax enable                                                " enable syntax highlighting

set autoindent
set autoread                                                 " reload files when changed on disk, i.e. via `git checkout`
set backspace=2                                              " Fix broken backspace in some setups
set backupcopy=yes                                           " see :help crontab
set clipboard=unnamed                                        " yank and paste with the system clipboard
set directory-=.                                             " don't store swapfiles in the current directory
set encoding=utf-8
set expandtab                                                " expand tabs to spaces
set ignorecase                                               " case-insensitive search
set incsearch                                                " search as you type
set laststatus=2                                             " always show statusline
set list                                                     " show trailing whitespace
set listchars=tab:▸\ ,trail:▫                                " comment is to drive home that the square here is not a space
set number                                                   " show line numbers
set ruler                                                    " show where you are
set scrolloff=3                                              " show context above/below cursorline
set shiftwidth=2                                             " normal mode indentation commands use 2 spaces
set showcmd
set smartcase                                                " case-sensitive search if any caps
set softtabstop=2                                            " insert mode tab and backspace use 2 spaces
set tabstop=8                                                " actual tabs occupy 8 characters
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu                                                 " show a navigable menu for tab completion
set wildmode=longest,list,full

" keyboard shortcuts
let mapleader = ','
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <leader>l :Align
nmap <leader>a :Ack 
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>d :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>
nmap <leader>t :CtrlP<CR>
nmap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>
nmap <leader>] :TagbarToggle<CR>
nmap <leader><space> :call whitespace#strip_trailing()<CR>
nmap <leader>g :GitGutterToggle<CR>
nmap <leader>c <Plug>Kwbd
map <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>
inoremap jk <esc>
inoremap kj <esc>
inoremap JK <esc>

" plugin settings
let g:pymode_folding = 0                " python-mode folds all functions by default, disable this
let g:pymode_lint_write = 0             " python-mode runs a PyLint check on every save, disable this
let g:airline_powerline_fonts=1         " set powerline fonts
let g:gitgutter_enabled=1               " enable GitGutter

" colour scheme
set t_Co=256
set background=dark
colorscheme solarized
highlight clear SignColumn

" md is markdown
autocmd BufRead,BufNewFile *.md set filetype=markdown
" File type settings
autocmd Filetype python       setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype javascript   setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype c            setlocal ts=4 sw=4 sts=0 noexpandtab
autocmd Filetype robot        setlocal ts=8 sw=8 sts=0 noexpandtab
autocmd Filetype gitconfig    setlocal ts=8 sw=8 sts=0 noexpandtab

if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
