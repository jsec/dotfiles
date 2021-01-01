Plug 'itchyny/lightline.vim'

let g:lightline = {
      \ "colorscheme": "nord",
      \ "active": {
      \   "left": [ [ "mode", "paste" ],
      \             [ "gitbranch", "readonly", "filename" ] ],
      \   "right": [ [ "lineinfo" ],
      \              [ "percent" ],
      \              [ "fileformat", "filencoding", "filetype" ] ]
      \ },
      \ "component_function": {
      \   "gitbranch": "FugitiveHead"
      \ },
      \ "mode_map": {
        \ "n" : "N",
        \ "i" : "I",
        \ "R" : "R",
        \ "v" : "V",
        \ "V" : "VL",
        \ "\<C-v>": "VB",
        \ "c" : "C",
        \ "s" : "S",
        \ "S" : "SL",
        \ "\<C-s>": "SB",
        \ "t": "T"
        \ }
  \ }
