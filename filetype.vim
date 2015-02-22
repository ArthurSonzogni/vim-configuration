if exists("did_load_filetypes")
   finish
endif
augroup filetypedetect
   au! BufRead,BufNewFile *.frag,*.vert,*.geom,*.glsl       setfiletype glsl
augroup END
