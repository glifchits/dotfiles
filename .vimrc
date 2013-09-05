:syn on
:set number

let tabsize = 2
execute "set tabstop=".tabsize
execute "set shiftwidth=".tabsize
:set expandtab
:set hlsearch
:let mapleader = "-"

" :set list shows whitespace characters (http://stackoverflow.com/a/1675752)
:set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>
:inoremap <c-c> .. code-block:: c <CR><CR><Tab>
:nnoremap zz :wq<cr>
:nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
:nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
:nnoremap <leader>` viw<esc>a`<esc>hbi:method:`<esc>lel
:inoremap jk <esc>

call pathogen#infect()
let g:airline_powerline_fonts=1

:iabbrev -- —
