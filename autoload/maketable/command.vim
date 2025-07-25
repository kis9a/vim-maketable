function! maketable#command#make_table(bang, line1, line2, ...)
  if a:bang == '!'
    call call('maketable#make_table_without_header', [a:line1, a:line2] + a:000)
  else
    call call('maketable#make_table_with_header', [a:line1, a:line2] + a:000)
  endif
endfunction

function! maketable#command#unmake_table(line1, line2, ...)
  call call('maketable#unmake_table', [a:line1, a:line2] + a:000)
endfunction