" Color Scheme
syntax on
colorscheme nord

" highlight cursor line in gutter
set cursorline
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE

" Basic settings
set encoding=utf-8
set guifont=Office\ Code\ Pro:h15
set guioptions=
set scrolloff=20
set swapfile
set dir=~/.tmp
set lines=43
set columns=90
set directory=~/.vim/swapfiles//
set shortmess+=A
set laststatus=2
set nowrap
set spr
set ea
set nocompatible
set backspace=2
set laststatus=2
set nu
set hlsearch

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" change cursor in normal and insert mode when using terminal vim
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" Remove trailing spaces on save
au BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,README.md  setf markdown

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg='#400000'
match ExtraWhitespace /\s\+$/

" trim trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e

" indent and tabs
filetype indent on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set paste

" for html/rb files, 2 spaces
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype haml setlocal ts=2 sw=2 expandtab
autocmd Filetype slim setlocal ts=2 sw=2 expandtab
autocmd Filetype css setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype elixir setlocal ts=2 sw=2 expandtab
autocmd Filetype bash setlocal ts=2 sw=2 expandtab

" for js/coffee/jade/scss files, 4 spaces
autocmd Filetype python setlocal ts=4 sw=4 expandtab
autocmd FileType scss setlocal ts=4 sw=4 sts=0 expandtab
autocmd FileType sass setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype coffeescript setlocal ts=4 sw=4 sts=0 expandtab
