" <GENERAL>
  set nocompatible
  syntax on                    " turn on syntax highlighting
  set ruler                    " diplay cursor position in the status bar
  set nowrap                   " no line wrap 
  set textwidth=0              " to stop automatical text wraping when
  set wrapmargin=0             " typing long lines
  " ukrainian to english keys mapping so that all normal mode commands work fine for ukrainian keys
  " if required add more mappings where each pair should be as following:
  " ФA - here ukrainian Ф is mapped to english A
  set expandtab                " to insert space characters whenewer tab key is pressed
  mapclear                     " clear all mappings
  " CSS autocomplete:
  " To use it, press Ctrl + x followed by Ctrl + o while partially typing CSS
  " codes
  autocmd FileType js set omnifunc=csscomplete#CompleteCSS
  " nice autocompletion feature, for example when user is opening a
  " file with e: or tabe: and presses Tab to autocomplete instead of togling
  " available choices it will just show them all and user is able to proceed
  " more easily
  " to forcibly use it press Ctrl + d
  set wildmenu                                                                                                            
  set wildmode=longest,list,full
  " git commit - autocomplete for commit message (inserts ticket name from branch name)
  autocmd! BufReadPost COMMIT_EDITMSG :call feedkeys('A ')  | 0read !git rev-parse --abbrev-ref HEAD | sed 's/([a-zA-Z0-9-]*)//'
  au BufNewFile,BufRead *.mjs set filetype=javascript
  au BufNewFile,BufRead *.ts set filetype=javascript
  au BufNewFile,BufRead *.tsx set filetype=javascript
  au BufNewFile,BufRead *.jsx set filetype=javascript
" </GENERAL>

" <PLUGINS>
  """""""" BUILT IN + PLUGIN MANAGER
  " => pathogen - plugin manager
  " https://github.com/tpope/vim-pathogen.git
  execute pathogen#infect()
  " => netrw - default plugin
  " let g:netrw_liststyle = 3 - tree view by default
  " but its breaking Ex " ./**/filepattern* feature so reverting to 1
  let g:netrw_liststyle = 1
  let g:netrw_ftp_cmd = "ftp -p" " enable passive mode for ftp connections
  let g:netrw_sort_by = "exten"
  " => ftplugin - builtin plugin
  filetype plugin on
  filetype plugin indent on
  """"""" GIT
  " => fugitive
  " git clone git@github.com:tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive
  set diffopt+=vertical
  " => gitv
  " git clone https://github.com/gregsexton/gitv.git ~/.vim/bundle/gitv
  let g:Gitv_OpenHorizontal = 1
  let g:Gitv_OpenPreviewOnLaunch = 0
  set lazyredraw
  let g:Gitv_TruncateCommitSubjects = 1
  """"""" SYNTAX HIGHLIGHTING
  " vim-javascript
  " git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript
  let g:javascript_plugin_flow = 1
  " => vim-jsx-pretty
  " git clone https://github.com/MaxMEllon/vim-jsx-pretty.git ~/.vim/bundle/vim-jsx-pretty
  " => vim-styled-components
  " git clone https://github.com/styled-components/vim-styled-components ~/.vim/bundle/vim-styled-components
  " => html5
  " git clone https://github.com/othree/html5.vim.git ~/.vim/bundle/html5.vim
  " => nikvdp/ejs-syntax
  " git clone https://github.com/nikvdp/ejs-syntax.git ~/.vim/bundle/ejs-syntax
  " => typescript-vim
  " git clone https://github.com/leafgarland/typescript-vim.git ~/.vim/bundle/typescript-vim
  """"""" DATA BASE
  " => tpope/dadbod
  " git clone https://github.com/tpope/vim-dadbod.git ~/.vim/bundle/dadbod
  au BufEnter *.sql :DB g:mssqlprod = sqlserver://kinan:Recovery9@simplyworks.database.windows.net:1433/db-pmm
  " => simpledb
  " git clone https://github.com/ivalkeen/vim-simpledb ~/.vim/bundle/simpledb
  """"""" MISCELANEOUS
  " vim-http
  " git clone https://github.com/nicwest/vim-http.git ~/.vim/bundle/vim-http
" </PLUGINS>

" <VIMDIFF>
  :highlight DiffDelete ctermfg=black ctermbg=green
  :highlight DiffAdd ctermfg=black ctermbg=red
  :highlight DiffChange ctermfg=black ctermbg=blue
  :highlight DiffText ctermfg=black ctermbg=red
" </VIMDIFF>

" <MOTION>
  " faster up / down navigation
  nnoremap L 8
  vnoremap L 8
  nnoremap H 8
  vnoremap H 8
  " resize window
  nnoremap <c-k> :res -2<Enter>
  nnoremap <c-j> :res +2<Enter>
  nnoremap <c-h> :vertical res -4<Enter>
  nnoremap <c-l> :vertical res +4<Enter>
  " quickly switch to a window
  nnoremap k <c-w>k
  nnoremap ˚ <c-w>k
  nnoremap j <c-w>j
  nnoremap ∆ <c-w>j
  nnoremap h <c-w>h
  nnoremap ˙ <c-w>h
  nnoremap l <c-w>l
  nnoremap ¬ <c-w>l
  " quickly type a shell command
  nnoremap ! :!
  nnoremap <F3> :!./node_modules/.bin/
  " quickly open the file in separate tab
  nnoremap <F4> :tabe %<CR>
  " quickly refresh the file
  nnoremap <F5> :e<CR>
  " go to the Nth symbol in line
  nnoremap T 077lbh
  " PREV match in :Ex ./**/*.conf* filepattern matches
  nnoremap <F9> :Pexplore<CR>|:set hlsearch
  " NEXT match in :Ex ./**/*.conf* filepattern matches
  nnoremap <F10> :Nexplore<CR>|:set hlsearch
" <INDENT>
  set tabstop=2
  set shiftwidth=2
  nnoremap m :m .+1<CR>
  nnoremap µ :m .+1<CR>
  nnoremap , :m .-2<CR>
  nnoremap ≤ :m .-2<CR>
  vnoremap m :m '>+1<CR>gv
  vnoremap µ :m '>+1<CR>gv
  vnoremap , :m '<-2<CR>gv
  vnoremap ≤ :m '<-2<CR>gv
" </INDENT>

" <COMMANDS>
  comclear
  " jump to Vim and Bash configs (rc files)
  command! -nargs=0 B tabe ~/.bash/.bashrc
  command! -nargs=0 V tabe ~/.vim/.vimrc
  " project
  command! -nargs=0 Eslint w|!echo =======Eslint======; npm run eslint
  command! -nargs=0 Sasslint w|!echo =======Sasslint======; npm run sasslint
  command! -nargs=* -complete=shellcmd Rex execute "new | r! <args>"
  " open netrw windo in vertical split but not in current window
  command! -nargs=0 VEX :w|:vs|:Ex|:execute "normal! \<c-w>r"
  command! -nargs=0 HEX :w|:sp|:Ex|:execute "normal! \<c-w>r"
  " Git of my commits only
  command! -nargs=0 Gmy Gitv --author="Oleh-Matviiv"
  " run jest tests for current file
  command! -nargs=0 JEst execute ":!./node_modules/.bin/jest " . expand('%:r') . ".test." . expand('%:e')
  command! -nargs=0 Ujest execute ":!./node_modules/.bin/jest -u " . expand('%:r') . ".test." . expand('%:e')
  " translate-shell
  command! -nargs=1 TUK call TranslateToUK("uk", <f-args>)
  command! -nargs=1 TEN call TranslateToUK("en", <f-args>)
  function! TranslateToUK(targetlang, word)
    execute ":!trans --no-ansi :" . a:targetlang . " " . a:word . " > ~/trans"
    execute ":tabe ~/trans"
  endfunction
  " jq to format json inside vim
  command! -nargs=0 JQ execute ":%!jq"
" </COMMANDS>

" <SEARCH>
  set hlsearch
  " general search function
  function! Fs(searchstr, path)
    let @/ = a:searchstr . "\\c" " highlight search pattern
    " do vim grep :
    execute "tabe\|:lv /" . a:searchstr . "\\c/ " . a:path
    lw " show all search results
  endfunction


  " search for visually selected string
  function! SearchVisualSelection(file_pattern)
    let a_save = @a
    normal! gv"ay
    echo "Searching for '" . @a . "\\c' in '" . a:file_pattern . "' files."
    execute Fs(@a, a:file_pattern)
  endfunction
  " F7 - search for a string (normal and visual mode)
  nnoremap <F7> :execute Fs(expand("<cword>"), "./[sa][rp][cp]/**/*")
  vnoremap <F7> :<C-u>call SearchVisualSelection("./[sa][rp][cp]/**/*")
  " F8 - search for a string (normal and visual mode)
  nnoremap <F8> :execute Fs(expand("<cword>"), "./node_modules/?s9*/**/*")
  vnoremap <F8> :<C-u>call SearchVisualSelection("./node_modules/?s9*/**/*")
  " // (in visual) - to quickly search for highlighted text
  vnoremap // y/<C-R>"<CR>


  " quickly replace all occurances of visually selected string
  function! ReplaceVisualSelection(withthis)
    let a_save = @a
    normal! gv"ay
    execute "\%s\/" . @a . "\/" . a:withthis . "\/gc"
  endfunction
  vnoremap Ro :<C-u>call ReplaceVisualSelection("
" </SEARCH>

" <FOLD>
  setlocal foldmethod=manual
  :hi Folded ctermbg=8 ctermfg=7
  set foldtext=MyFoldText() " nice folding
  function! MyFoldText()
    let line = getline(v:foldstart)
    if match( line, '^[ \t]*\(\/\*\|\/\/\)[*/\\]*[ \t]*$' ) == 0
      let initial = substitute( line, '^\([ \t]\)*\(\/\*\|\/\/\)\(.*\)', '\1\2', '' )
      let linenum = v:foldstart + 1
      while linenum < v:foldend
        let line = getline( linenum )
        let comment_content = substitute( line, '^\([ \t\/\*]*\)\(.*\)$', '\2', 'g' )
        if comment_content != ''
          break
        endif
        let linenum = linenum + 1
      endwhile
      let sub = initial . ' ' . comment_content
    else
      let sub = line
      let startbrace = substitute( line, '^.*{[ \t]*$', '{', 'g')
      if startbrace == '{'
        let line = getline(v:foldend)
        let endbrace = substitute( line, '^[ \t]*}\(.*\)$', '}', 'g')
        if endbrace == '}'
          let sub = sub.substitute( line, '^[ \t]*}\(.*\)$', '...}\1', 'g')
        endif
      endif
    endif
    let n = v:foldend - v:foldstart + 1
    let info = " " . n . " lines"
    let sub = sub . "

    let num_w = getwinvar( 0, '&number' ) * getwinvar( 0, '&numberwidth' )
    let fold_w = getwinvar( 0, '&foldcolumn' )
    let sub = strpart( sub, 0, winwidth(0) - strlen( info ) - num_w - fold_w - 1 )
    return sub . info
  endfunction
" </FOLD>
