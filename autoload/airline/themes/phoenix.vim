
" vim-airline companion theme of phoenix

let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_powerline_fonts = 0
let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'c'  : 'C',
      \ 'v'  : 'V',
      \ 'V'  : 'V',
      \ '' : 'V',
      \ 's'  : 'S',
      \ 'S'  : 'S',
      \ '' : 'S',
      \ }
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = '§'
let g:airline_symbols.readonly = ''
let g:airline_symbols.branch = ''

" Normal mode
"          [ guifg, guibg, ctermfg, ctermbg, opts ]
let s:N1 = [ '#f0f0f0' , '#292929' , 255 , 235 ] " mode
let s:N2 = [ '#AAAAAA' , '#1D1D1D' , 248 , 234 ] " info
let s:N3 = [ '#BBBBBB' , '#1D1D1D' , 249 , 234 ] " statusline
let s:N4 = [ '#DEDD5A' , 011 ]                   " mode modified

" Insert mode
"          [ guifg, guibg, ctermfg, ctermbg, opts ]
let s:I1 = [ '#292929' , '#40BDFF' , 255 , 039 ] " mode
let s:I2 = [ '#6A6A6A' , '#1D1D1D' , 242 , 234 ] " info
let s:I3 = [ '#6A6A6A' , '#1D1D1D' , 242 , 234 ] " statusline
let s:I4 = [ '#DEDD5A' , 011 ]                   " mode modified

" Visual mode
"          [ guifg, guibg, ctermfg, ctermbg, opts ]
let s:V1 = [ '#292929' , '#94E42C' , 232 , 002 ] " mode
let s:V2 = [ '#6A6A6A' , '#1D1D1D' , 242 , 234 ] " info
let s:V3 = [ '#6A6A6A' , '#1D1D1D' , 242 , 234 ] " statusline
let s:V4 = [ '#DEDD5A' , 011 ]                   " mode modified

" Replace mode
let s:R1 = [ '#292929' , '#FF3D23' , 255 , 001 ] " mode
let s:R2 = [ '#6A6A6A' , '#1D1D1D' , 242 , 234 ] " info
let s:R3 = [ '#6A6A6A' , '#1D1D1D' , 242 , 234 ] " statusline
let s:R4 = [ '#DEDD5A' , 011 ]                   " mode modified

" Paste mode
let s:PA = [ '#94E42C' , 002 ]

" Info modified
let s:IM = [ '#DEDD5A' , 011 ]

" Inactive mode
let s:IA = [ '#AAAAAA' , s:N3[1] , 248 , s:N3[3] , '' ]

let g:airline#themes#phoenix#palette = {}

let g:airline#themes#phoenix#palette.accents = {
      \ 'red': [ '#C5282F' , '' , 009 , '' , '' ],
      \ }

let g:airline#themes#phoenix#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#phoenix#palette.normal_modified = {
    \ 'airline_a': [ s:N1[0] , s:N1[1] , s:N1[2] , s:N1[3] , ''     ] ,
    \ 'airline_b': [ s:IM[0] , s:N2[1] , s:N2[2] , s:N2[3] , ''     ] ,
    \ 'airline_c': [ s:N3[0] , s:N3[1] , s:N3[2] , s:N3[3] , ''     ] }


let g:airline#themes#phoenix#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#phoenix#palette.insert_modified = {
    \ 'airline_a': [ s:I1[0] , s:I1[1] , s:I1[2] , s:I1[3] , ''     ] ,
    \ 'airline_b': [ s:I2[0] , s:I2[1] , s:I2[2] , s:I2[3] , ''     ] ,
    \ 'airline_c': [ s:I3[0] , s:I3[1] , s:I3[2] , s:I3[3] , ''     ] }


let g:airline#themes#phoenix#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#phoenix#palette.visual_modified = {
    \ 'airline_a': [ s:V1[0] , s:V1[1] , s:V1[2] , s:V1[3] , ''     ] ,
    \ 'airline_b': [ s:V2[0] , s:V2[1] , s:V2[2] , s:V2[3] , ''     ] ,
    \ 'airline_c': [ s:V3[0] , s:V3[1] , s:V3[2] , s:V3[3] , ''     ] }


let g:airline#themes#phoenix#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#phoenix#palette.replace_modified = {
    \ 'airline_a': [ s:R1[0] , s:R1[1] , s:R1[2] , s:R1[3] , ''     ] ,
    \ 'airline_b': [ s:R2[0] , s:R2[1] , s:R2[2] , s:R2[3] , ''     ] ,
    \ 'airline_c': [ s:R3[0] , s:I3[1] , s:R3[2] , s:R3[3] , ''     ] }


let g:airline#themes#phoenix#palette.insert_paste = {
    \ 'airline_a': [ s:I1[0] , s:PA[0] , s:I1[2] , s:PA[1] , ''     ] ,
    \ 'airline_b': [ s:PA[0] , s:IM[0] , s:PA[1] , s:IM[1] , ''     ] ,
    \ 'airline_c': [ s:PA[0] , s:N3[1] , s:PA[1] , s:N3[3] , ''     ] }


let g:airline#themes#phoenix#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
" let g:airline#themes#phoenix#palette.inactive_modified = {
"     \ 'airline_c': [ s:N4[0] , ''      , s:N4[1] , ''      , ''     ] }
