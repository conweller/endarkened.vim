" -----------------------------------------------------------------------------
" File: endarkened.vim
" Description: Light and dark colorscheme
" Author: Connor Onweller
" Source: https://github.com/conweller/endarkened.vim
" -----------------------------------------------------------------------------
let g:colors_name = "endarkened"

" Functions {{{
function! s:hi(group, guifg, guibg, gui)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=" . a:guibg
  endif
  if a:gui != ""
    exec "hi " . a:group . " gui=" . a:gui
  endif
endfunction
function! EndarkenedGetColor(color)
  execute 'let color = s:' . a:color
  return color
endfunction
" }}}
" Colors: {{{
" Dark: {{{
function! SetEndarkened()
  " black
  let s:black0 = '#222222'
  let s:black1 = '#292929'
  let s:black2 = '#363636'
  let s:black3 = '#727272'
  let s:black4 = '#545454'
  let s:black5 = '#404040'

  let s:bg0 = s:black0
  let s:bg1 = s:black1
  let s:bg2 = s:black2
  let s:bg3 = s:black3
  let s:bg4 = s:black4
  let s:bg5 = s:black5

  " white
  let s:white0 = '#e0e0e0'
  let s:white1 = '#d9d9d9'
  let s:white2 = '#d3d3d3'
  let s:white3 = '#767676'
  let s:white4 = '#868686'
  let s:white5 = '#c9c9c9'

  let s:fg0 = s:white0
  let s:fg1 = s:white1
  let s:fg2 = s:white2
  let s:fg3 = s:white3
  let s:fg4 = s:white4
  let s:fg5 = s:white5

  " red
  let s:red0 = '#B82C45'
  let s:red1 = '#D53E4C'
  let s:red_hi0 = '#33080C'

  " green
  let s:green0 = '#46A25C'
  let s:green1 = '#70BB8C'
  let s:green_hi0 = '#0E2A19'
  let s:green_hi1 = '#0D2112'

  " blue
  let s:blue0 = '#2E8AC6'
  let s:blue1 = '#4ea3d7'
  let s:blue_hi0 = '#0B3350'
  let s:blue_hi1 = '#05253A'

  " purple
  let s:purple0 = '#9E81E5'
  let s:purple1 = '#B493F0'
  let s:purple_hi0 = '#231945'

  " yellow
  let s:yellow0 = '#afa703'
  let s:yellow1 = '#efe52b'
  let s:yellow_hi0 = '#565102'

  " orange
  let s:orange0 = '#f46c04'
  let s:orange1 = '#fd9c12'
  let s:orange_hi0 = '#542501'

  " cyan
  let s:cyan0 = '#038f96'
  let s:cyan1 = '#20c3cc'
  let s:cyan_hi0 = '#08383C'
endfunction
" }}}
" Light: {{{
function! SetEndarkenedLight()
  " black
  let s:black0 = '#303030'
  let s:black1 = '#454545'
  let s:black2 = '#606060'
  let s:black3 = '#b0b0b0'
  let s:black4 = '#898989'
  let s:black5 = '#707070'

  let s:fg0 = s:black0
  let s:fg1 = s:black1
  let s:fg2 = s:black2
  let s:fg3 = s:black3
  let s:fg4 = s:black4
  let s:fg5 = s:black5

  " white
  let s:white0 = '#f7f7f7'
  let s:white1 = '#eeeeee'
  let s:white2 = '#e5e5e5'
  let s:white3 = '#b2b2b2'
  let s:white4 = '#c3c3c3'
  let s:white5 = '#dcdcdc'

  let s:bg0 = s:white0
  let s:bg1 = s:white1
  let s:bg2 = s:white2
  let s:bg3 = s:white3
  let s:bg4 = s:white4
  let s:bg5 = s:white5

  " red
  let s:red0 = '#fd244e'
  let s:red1 = '#DE1840'
  let s:red_hi0 = '#FAB9B7'

  " green
  let s:green0 = '#68ba89'
  let s:green1 = '#379b5f'
  let s:green_hi0 = '#bcf2d0'
  let s:green_hi1 = '#cef6dd'

  " blue
  let s:blue0 = '#3e9ddd'
  let s:blue1 = '#166faa'
  let s:blue_hi0 = '#cce6f7'
  let s:blue_hi1 = '#deecf5'

  " purple
  let s:purple0 = '#6f42c1'
  let s:purple1 = '#440ba0'
  let s:purple_hi0 = '#e4d8f6'

  " yellow
  let s:yellow0 = '#e0d728'
  let s:yellow1 = '#a69f03'
  let s:yellow_hi0 = '#f1eeaa'

  " orange
  let s:orange0 = '#f49716'
  let s:orange1 = '#d65c09'
  let s:orange_hi0 = '#f7ddc4'

  " cyan
  let s:cyan0 = '#20c3cc'
  let s:cyan1 = '#038f96'
  let s:cyan_hi0 = '#C8F3F6'
endfunction
" }}}
" Setup: {{{
if &bg == 'dark'
  call SetEndarkened()
else
  call SetEndarkenedLight()
endif
" }}}
" }}}

" Terminal: {{{
if has('nvim')
  let g:terminal_color_0 = s:bg5
  let g:terminal_color_1 = s:red1
  let g:terminal_color_2 = s:yellow1
  let g:terminal_color_3 = s:green1
  let g:terminal_color_4 = s:blue1
  let g:terminal_color_5 = s:purple0
  let g:terminal_color_6 = s:cyan1
  let g:terminal_color_7 = s:fg0
  let g:terminal_color_8 = s:bg3
  let g:terminal_color_9 = s:red0
  let g:terminal_color_10 = s:yellow0
  let g:terminal_color_11 = s:green0
  let g:terminal_color_12 = s:blue0
  let g:terminal_color_13 = s:purple1
  let g:terminal_color_14 = s:cyan0
  let g:terminal_color_15 = s:fg2
endif
" }}}
" General: {{{
call s:hi("Normal", s:fg0 , s:bg0, "NONE")
call s:hi("NormalTerm", s:fg0 , s:bg1, "NONE")

call s:hi("LineNr", s:bg4, s:bg0, "NONE")
hi! link signcolumn LineNr
hi! link foldcolumn LineNr
call s:hi("CursorLine", "NONE", s:bg1, "NONE")
hi! link CursorColumn CursorLine
call s:hi("CursorLineNr", s:fg5, s:bg2, "Bold")
hi! link CursorLineNr LineNr
call s:hi("ColorColumn", "NONE" , s:bg1 , "NONE")
call s:hi("QuickFixLine", "NONE", s:bg1 , "NONE")

call s:hi("NormalFloat", "NONE", s:bg2 , "NONE")

call s:hi("Cursor", s:bg0, s:fg0 , "NONE")
hi! link TermCursor Cursor




call s:hi("Folded", s:bg3, s:bg1, "NONE")
call s:hi("Error", s:bg0, s:red1, "bold")
call s:hi("Todo", s:yellow1, "NONE", "Underline,Bold")

call s:hi("ErrorMsg", s:red1, "NONE", "NONE")
hi! link WarningMsg ErrorMsg

hi! link MoreMsg IncSearch
hi! link MoreMsg IncSearch
hi! link Question IncSearch

call s:hi("ModeMsg", s:fg4, s:bg1, "None")

call s:hi("MatchParen", s:bg0, s:blue0, "Bold")

call s:hi('StatusLine', s:fg0, s:bg5, "Bold")
call s:hi('StatusLineNC', s:fg4, s:bg5, "None")

call s:hi('TablineSel', s:fg2, s:bg0, "Bold")
call s:hi('Tabline', s:fg4, s:bg2, "NONE")
call s:hi("TablineFill", s:bg2, s:bg5, "None")

call s:hi('VertSplit', s:bg0, s:bg5, "NONE")

call s:hi('Directory', s:blue0, "NONE", "None")

hi! link Title Directory


call s:hi('Visual', "NONE", s:bg2, "NONE")
hi! link VisualNOS Visual

call s:hi('Search', "NONE", s:bg5, "NONE")

call s:hi('IncSearch',s:bg0, s:orange1, "Bold")

call s:hi('WildMenu', s:bg0, s:blue0, "Bold")
call s:hi("NonText", s:bg5, "NONE", "NONE")
" }}}
" Syntax: {{{
call s:hi('markdownCode', s:blue1, "NONE", 'NONE')
call s:hi("Comment", s:bg3, "NONE", "italic")
call s:hi("Conceal", s:blue1, s:blue_hi1, "NONE")

call s:hi("Underlined", "NONE",  "NONE", "underline")

call s:hi("Keyword", s:blue1,  "NONE", "bold")
hi! link Statement Keyword
hi! link Conditional Keyword
hi! link Repeat Keyword
hi! link Label Keyword
hi! link Exception Keyword

call s:hi("Operator", s:red1,  "NONE", "NONE")
hi! link Identifier Operator
hi! link Boolean Operator
hi! link Constant Operator
hi! link Character Operator
hi! link SpecialKey Operator

call s:hi("String", s:green1, "NONE", "NONE")
call s:hi("htmlTagName", s:blue1, "NONE", "NONE")
call s:hi("htmlTag", s:blue1, "NONE", "NONE")
call s:hi("htmlH1", s:fg0, "NONE", "Bold")
hi! link htmlEndTag htmlTag

call s:hi("Type", s:purple0, "NONE", "NONE")
hi! link Function Type
hi! link Constant Type
hi! link Character Type

call s:hi("PreProc", s:cyan1, "NONE", "NONE")
hi! link Include PreProc
hi! link Define PreProc
hi! link Macro PreProc
hi! link PreCondit PreProc
hi! link Number PreProc
hi! link Float PreProc
hi! link Special PreProc

call s:hi("StorageClass", s:orange1, "NONE", "NONE")
hi! link Structure StorageClass
hi! link Typedef StorageClass

" }}}
" Completion Menu {{{
call s:hi('Pmenu', s:fg1, s:bg2, "NONE")
call s:hi('PmenuSel', s:bg1, s:blue0, "BOLD")
call s:hi('PmenuSbar', "NONE", s:bg3, "NONE")
call s:hi('PmenuThumb', "NONE", s:fg1, "NONE")
" }}}
" Diffs: {{{
call s:hi('DiffDelete', s:red1, s:red_hi0, "NONE")
hi! link DiffRemoved DiffDelete
call s:hi('DiffAdd', s:green1, s:green_hi0, "NONE")
hi! link DiffAdded DiffAdd
call s:hi('DiffChange', s:blue1, s:blue_hi0, "NONE")
call s:hi('DiffText', s:yellow1, s:yellow_hi0, "NONE")
" }}}
" Spell: {{{
if has("spell")
  call s:hi('SpellCap', s:yellow1, "NONE", 'undercurl')
  call s:hi('SpellLocal', s:yellow1, "NONE", 'undercurl')
  call s:hi('SpellRare', s:yellow1, "NONE", 'undercurl')
  call s:hi('SpellBad', s:red0, "NONE", 'undercurl')
endif
" }}}
" Plugin {{{
hi! CocUnderline    cterm=underline gui=underline
hi! LspDiagnosticsUnderline    cterm=underline gui=underline

call s:hi('CocErrorSign', s:red1, "NONE", 'NONE')
hi! link LspDiagnosticsError CocErrorSign

call s:hi('CocWarningSign', s:yellow1, "NONE", 'NONE')
hi! link CocInfoSign CocWarningSign
hi! link LspDiagnosticsWarning CocWarningSign

call s:hi('CocHintSign', s:purple1, "NONE", 'NONE')
hi! link LspDiagnosticsHint CocHintSign
hi! link LspDiagnosticsInformation CocHintSign

call s:hi('CocSelectedText', s:cyan1, "NONE", 'NONE')

call s:hi('CocCodeLens', s:bg3, "NONE", 'NONE')


hi! link mkdListItemLine cleared

highlight default link WhichKeyFloating Pmenu


call s:hi('mkdLineBreak', "NONE", "NONE", 'NONE')
hi! link mkdCode markdownCode

call s:hi('GitGutterAdd', s:green0, s:bg1, "NONE")
call s:hi('GitGutterDelete', s:red0, s:bg1, "NONE")
call s:hi('GitGutterChange', s:blue0, s:bg1, "NONE")
call s:hi('GitGutterChange', s:blue0, s:bg1, "NONE")

call s:hi('FindrDirPartial', s:green0, "NONE", "BOLD")
call s:hi('FindrSelected', "NONE", s:bg5, "NONE")
hi! link FindrBorder NormalFloat
hi! link FindrMatch CursorLine
hi! link FindrNormal NormalFloat
" }}}
" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
