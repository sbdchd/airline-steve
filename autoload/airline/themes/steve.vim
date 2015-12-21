" steve vim-airline theme
let g:airline#themes#steve#palette = {}

function! g:airline#themes#steve#refresh() abort
    "Normal
    let s:N1 = g:airline#themes#get_highlight2(['String', 'bg'],
                \ ['String', 'fg'], 'bold')
    let s:N2 = g:airline#themes#get_highlight('CursorLine')
    let s:N3 = g:airline#themes#get_highlight('PMenu')
    let g:airline#themes#steve#palette.normal =
                \ g:airline#themes#generate_color_map(s:N1, s:N2, s:N3)
    let g:airline#themes#steve#palette.normal_modified = {
                \ 'airline_c': [ '#FFAF5F', '', 215, '', '' ], 
                \ }
    let s:WI = s:N3
    let g:airline#themes#steve#palette.normal.airline_warning = [
                \ s:WI[0], s:WI[1], s:WI[2], s:WI[3]
                \ ]
    let g:airline#themes#steve#palette.normal_modified.airline_warning =
                \ g:airline#themes#steve#palette.normal.airline_warning

    "Insert
    let s:I1 = g:airline#themes#get_highlight('StatusLine')
    let s:I2 = s:N2
    let s:I3 = s:N3
    let g:airline#themes#steve#palette.insert =
                \ g:airline#themes#generate_color_map(s:I1, s:I2, s:I3)
    let g:airline#themes#steve#palette.insert_modified =
                \ g:airline#themes#steve#palette.normal_modified
    let g:airline#themes#steve#palette.insert.airline_warning =
                \ g:airline#themes#steve#palette.normal.airline_warning
    let g:airline#themes#steve#palette.insert_modified.airline_warning =
                \ g:airline#themes#steve#palette.normal.airline_warning

    "Replace
    let s:R1 = g:airline#themes#get_highlight('WildMenu', 'bold')
    let s:R2 = s:N2
    let s:R3 = s:N3
    let g:airline#themes#steve#palette.replace = 
                \ g:airline#themes#generate_color_map(s:R1, s:R2, s:R3)
    let g:airline#themes#steve#palette.replace_modified =
                \ g:airline#themes#steve#palette.normal_modified
    let g:airline#themes#steve#palette.replace.airline_warning =
                \ g:airline#themes#steve#palette.normal.airline_warning
    let g:airline#themes#steve#palette.replace_modified.airline_warning =
                \ g:airline#themes#steve#palette.normal.airline_warning

    "Visual
    let s:V1 = g:airline#themes#get_highlight2(['TabLineSel', 'bg'],
                \ ['DiffDelete', 'bg'], 'bold')
    let s:V2 = s:N2
    let s:V3 = s:N3
    let g:airline#themes#steve#palette.visual = 
                \ g:airline#themes#generate_color_map(s:V1, s:V2, s:V3)
    let g:airline#themes#steve#palette.visual_modified = 
                \ g:airline#themes#steve#palette.normal_modified
    let g:airline#themes#steve#palette.visual.airline_warning =
                \ g:airline#themes#steve#palette.normal.airline_warning
    let g:airline#themes#steve#palette.visual_modified.airline_warning =
                \ g:airline#themes#steve#palette.normal.airline_warning

    "Inactive
    let s:IA1 = [ '#4E4E4E' , '#1C1C1C' , 239 , 234 , '' ]
    let s:IA2 = [ '#4E4E4E' , '#262626' , 239 , 235 , '' ]
    let s:IA3 = [ '#4E4E4E' , '#303030' , 239 , 236 , '' ]
    let g:airline#themes#steve#palette.inactive = 
                \ g:airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
    let g:airline#themes#steve#palette.inactive_modified = 
                \ g:airline#themes#steve#palette.normal_modified

    let g:airline#themes#steve#palette.accents = {
                \ 'red': [ '#D70000' , '' , 160 , ''  ]
                \ }
endfunction

call g:airline#themes#steve#refresh()
