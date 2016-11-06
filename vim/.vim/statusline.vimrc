" Statusline
set statusline=
set statusline+=%6*\[%n]                                   "buffernr
set statusline+=%5*\ %<%F\                                 "File+path
set statusline+=%2*\ %{fugitive#statusline()}\             "Git branch
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\              "Rownumber/total (%)
set statusline+=%9*\ col:%03c\                             "Colnr
set statusline+=%0*\ %y\                                   "FileType

function! HighlightSearch()
  if &hls
    return 'H'
  else
    return ''
  endif
endfunction

hi User1 guifg=#ffdad8  guibg=#880c0e
hi User2 guifg=#000000  guibg=#F4905C
hi User3 guifg=#292b00  guibg=#f4f597
hi User4 guifg=#112605  guibg=#aefe7B
hi User5 guifg=#051d00  guibg=#7dcc7d
hi User6 guifg=#051d00  guibg=#7dcc7d gui=bold
hi User7 guifg=#ffffff  guibg=#880c0e gui=bold
hi User8 guifg=#ffffff  guibg=#5b7fbb
hi User9 guifg=#ffffff  guibg=#810085
hi User0 guifg=#ffffff  guibg=#094afe
