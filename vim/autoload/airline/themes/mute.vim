let g:airline#themes#mute#palette = {}
let s:file = [ '#ffffff' , '' , 231 , '' , '' ]


let s:N1 = [ '#ffffff' , '#005252' , 231  , 36 ]
let s:N2 = [ '#ffffff' , '#003f3f' , 231 , 29 ]
let s:N3 = [ '#ffffff' , '#002b2b' , 231  , 23 ]
let g:airline#themes#mute#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#mute#palette.normal_modified = {
      \ 'airline_c': [ '#ffffff' , '#450000' , 231     , 52      , ''     ] ,
      \ }


let s:I1 = [ '#ffffff' , '#789f00' , 231 , 106 ]
let s:I2 = [ '#ffffff' , '#003f3f' , 231 , 29  ]
let s:I3 = [ '#ffffff' , '#002b2b' , 231 , 23  ]
let g:airline#themes#mute#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#mute#palette.insert_modified = {
      \ 'airline_c': [ '#ffffff' , '#005e5e' , 255     , 52      , ''     ] ,
      \ }
let g:airline#themes#mute#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#789f00' , s:I1[2] , 106     , ''     ] ,
      \ }


let g:airline#themes#mute#palette.replace = copy(g:airline#themes#mute#palette.insert)
let g:airline#themes#mute#palette.replace.airline_a = [ s:I2[0]   , '#920000' , s:I2[2] , 88     , ''     ]
let g:airline#themes#mute#palette.replace_modified = g:airline#themes#mute#palette.insert_modified

let s:V1 = [ '#ffff9a' , '#ff8036' , 222 , 208 ]
let s:V2 = [ '#ffffff' , '#003f3f' , 231 , 29 ]
let s:V3 = [ '#ffffff' , '#002b2b' , 231  , 23  ]
let g:airline#themes#mute#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#mute#palette.visual_modified = {
      \ 'airline_c': [ '#ffffff' , '#450000' , 231     , 52      , ''     ] ,
      \ }

let s:IA = [ '#4e4e4e' , '#002b2b' , 59 , 23 , '' ]
let g:airline#themes#mute#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)


let s:D1 = [ '#9e9e9e' , '#303030', 238, 233 ]
let g:airline#themes#mute#palette.inactive = airline#themes#generate_color_map(s:D1, s:D1, s:D1)
