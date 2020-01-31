" co - comment line, cu - uncomment line
nnoremap co <Esc>I# <Esc>j
nnoremap cu <Esc>I<Del><Del><Esc>j
" mb - add breakpoint on the next line
nnoremap mb odebugger<Esc>:w<CR>
" mc - add console.log("")
nnoremap mc oconsole.log("")<Esc>hi

" <INDENT>
  nnoremap <Tab> <Esc>I    <Esc>
  nnoremap <S-Tab> <Esc>04x
  set tabstop=4
  set shiftwidth=4
" </INDENT>

" <COMMANDS>
  " disable breakpoints - for FTPLUGIN only
  command! -nargs=0 Boff %s/  debugger/  # debugger/g|w
  " enable breakpoints - for FTPLUGIN only
  command! -nargs=0 Bon %s/# debugger/debugger/g|w
" </COMMANDS>
