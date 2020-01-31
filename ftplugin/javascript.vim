" comment (co), uncomment (cu)
nnoremap co <Esc>I// <Esc>j
nnoremap cu <Esc>I<Del><Del><Del><Esc>j
" mb - add breakpoint on the next line
nnoremap mb odebugger;<Esc>:w<CR>
" mc - add console.log("")
nnoremap mc oconsole.log();<Esc>1hi

" F2 for fold to next closing bracket
nnoremap <F2> $zf%

" <COMMANDS>
  " disable breakpoints - for FTPLUGIN only
  command! -nargs=0 Boff %s/  debugger/  \/\/ debugger/g|w
  " enable breakpoints - for FTPLUGIN only
  command! -nargs=0 Bon %s/\/\/ debugger/debugger/g|w
" </COMMANDS>
