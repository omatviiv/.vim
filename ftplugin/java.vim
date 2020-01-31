" comment (co), uncomment (cu)
nnoremap co <Esc>I// <Esc>j
nnoremap cu <Esc>I<Del><Del><Del><Esc>j

" F2 for fold to next closing bracket
nnoremap <F2> $zf%

" tabulation
set tabstop=4
set shiftwidth=4
nnoremap <Tab> <Esc>I    <Esc>
nnoremap <S-Tab> <Esc>04x

" javac, java
command! -nargs=0 Jc w|!javac %
command! -nargs=0 Jchc w|!javac -cp "$(for i in ~/httpcomponents-client-4.5/lib/*.jar ; do echo -n $i: ; done)" %
command! -nargs=0 Jcp w|!javac -d ./classes/ %:p
command! -nargs=0 Jcps w|!javac -d ./WEB-INF/classes/ -cp "./WEB-INF/src/:/var/local/apache-tomcat-8.0.22/lib/servlet-api.jar" %:p
command! -nargs=0 Jr !java %:r
command! -nargs=0 Jrhc !java -cp "$(for i in ~/httpcomponents-client-4.5/lib/*.jar ; do echo -n $i: ; done)" %:r:gs/WEB-INF.src.//
command! -nargs=0 Jrp !java -cp ./WEB-INF/classes/ %:r:gs/WEB-INF.src.//
command! -nargs=0 Jrpt !java -cp ./WEB-INF/classes/ com.matviiv.htmltemplate.HTMLTemplate
