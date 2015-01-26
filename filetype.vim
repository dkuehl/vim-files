if exists("did_load_filetypes")
 finish
 endif

 augroup filetypedetect
  au! BufRead,BufNewFile *.nuspec setf xml
 augroup END
