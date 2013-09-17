" copied from
" https://raw.github.com/square/maximum-awesome/master/vim/plugin/whitespace/whitespace.vim

" thanks to http://vimcasts.org/e/4
function! whitespace#strip_trailing()
  let previous_search=@/
  let previous_cursor_line=line('.')
  let previous_cursor_column=col('.')
  %s/\s\+$//e
  let @/=previous_search
  call cursor(previous_cursor_line, previous_cursor_column)
endfunction

" strip trailing whitespace on Python buffer saves
augroup whitespace
  autocmd BufWritePre *.py call whitespace#strip_trailing()
augroup END
