if exists('g:loaded_maketable')
  finish
endif
let g:loaded_maketable = 1

command! -bang -range -nargs=? MakeTable call maketable#command#make_table("<bang>", <line1>, <line2>, <f-args>)
command! -range -nargs=? UnmakeTable call maketable#command#unmake_table(<line1>, <line2>, <f-args>)