" ctrlp settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden = 1

" NERDtree settings
let NERDTreeShowHidden = 1
autocmd StdinReadPre * let s:std_in = 1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * wincmd p
let NERDTreeStatusline = "%0*\ [%n] <NERDtree>"

" Git Gutter settings
let g:gitgutter_enabled = 1

" Multiple Cursors settings
let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_next_key = '<C-d>'
let g:multi_cursor_prev_key = '<C-y>'
let g:multi_cursor_skip_key = '<C-x>'
let g:multi_cursor_quit_key = '<Esc>'

" Buffer Tabline (buftabline)
set hidden
" set ordinal numbers for buffer tabs
let g:buftabline_numbers = 2
let g:buftabline_separators = 1