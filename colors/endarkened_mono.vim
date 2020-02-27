" -----------------------------------------------------------------------------
" File: endarkened_mono.vim
" Description: Light and dark colorscheme
" Author: Connor Onweller
" Source: https://github.com/conweller/endarkened.vim
" -----------------------------------------------------------------------------
let g:colors_name = "endarkened_mono"

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
  let s:black0 = '#101010'
  let s:black1 = '#1e1e1e'
  let s:black2 = '#262626'
  let s:black3 = '#656565'
  let s:black4 = '#505050'
  let s:black5 = '#303030'

  let s:bg0 = s:black0
  let s:bg1 = s:black1
  let s:bg2 = s:black2
  let s:bg3 = s:black3
  let s:bg4 = s:black4
  let s:bg5 = s:black5

  " white
  let s:white0 = '#e0e0e0'
  let s:white1 = '#d0d0d0'
  let s:white2 = '#b5b5b5'
  let s:white3 = '#767676'
  let s:white4 = '#868686'
  let s:white5 = '#a0a0a0'

  " let s:white0 = '#DDF4FA'
  " let s:white1 = '#D4EAF0'
  " let s:white2 = '#C5D9DF'
  " let s:white3 = '#7A9096'
  " let s:white4 = '#8299A0'
  " let s:white5 = '#BEE0EA'

  let s:fg0 = s:white0
  let s:fg1 = s:white1
  let s:fg2 = s:white2
  let s:fg3 = s:white3
  let s:fg4 = s:white4
  let s:fg5 = s:white5

  " red
  let s:red0 = '#AD1332'
  let s:red1 = '#C33946'
  let s:red_hi0 = '#33080C'

  " green
  let s:green0 = '#3E8F51'
  let s:green1 = '#68AE83'
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
  let s:black3 = '#a5a5a5'
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
  let g:terminal_color_2 = s:fg4
  let g:terminal_color_3 = s:fg4
  let g:terminal_color_4 = s:fg5
  let g:terminal_color_5 = s:fg4
  let g:terminal_color_6 = s:fg1
  let g:terminal_color_7 = s:fg0
  let g:terminal_color_8 = s:bg3
  let g:terminal_color_9 = s:red1
  let g:terminal_color_10 = s:fg4
  let g:terminal_color_11 = s:fg4
  let g:terminal_color_12 = s:fg5
  let g:terminal_color_13 = s:fg4
  let g:terminal_color_14 = s:fg1
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
call s:hi("CursorLineNr", s:fg2, s:bg1, "Bold")
call s:hi("ColorColumn", "NONE" , s:bg1 , "NONE")
call s:hi("QuickFixLine", "NONE", "s:bg1" , "NONE")

call s:hi("NormalFloat", "NONE", s:bg2 , "NONE")
call s:hi("EndOfBuffer", s:bg0, s:bg0, "NONE")

call s:hi("Cursor", s:bg0, s:fg0 , "NONE")
hi! link TermCursor Cursor




call s:hi("Folded", s:bg3, s:bg1, "NONE")
call s:hi("Error", s:red1, s:red_hi0, "NONE")
call s:hi("Todo", s:bg3, "NONE", "Underline,Bold")

call s:hi("ErrorMsg", s:red1, s:red_hi0, "NONE")
hi! link WarningMsg ErrorMsg

call s:hi('MoreMsg', s:yellow1, s:yellow_hi0, "NONE")
hi! link MoreMsg MoreMsg
hi! link Question MoreMsg

call s:hi("ModeMsg", s:blue1, s:blue_hi1, "Bold")

call s:hi("MatchParen", s:black0, s:yellow0, "Bold")

call s:hi('StatusLine', s:bg5, s:bg0, "Underline")
call s:hi('StatusLineNC', s:bg5, s:bg0, "Underline")

call s:hi('TablineSel', s:fg5, s:bg0, "NONE")
call s:hi('Tabline', s:bg3, s:bg5, "NONE")
call s:hi('TablineFill', s:fg0, s:bg5, "NONE")

call s:hi('VertSplit', s:bg5, "NONE", "NONE")

call s:hi('Directory', s:fg2, "NONE", "NONE")

hi! link Title Directory


call s:hi('Visual', s:blue0, s:blue_hi1, "NONE")
hi! link VisualNOS Visual

call s:hi('Search', "NONE", s:bg5, "NONE")

call s:hi('IncSearch',s:bg0, s:orange1, "Bold")

call s:hi('WildMenu', s:blue1, s:blue_hi0, "NONE")
call s:hi("NonText", s:bg5, "NONE", "NONE")
" }}}
" Syntax: {{{
call s:hi('markdownCode', s:fg2, "NONE", 'NONE')
call s:hi("Comment", s:bg4, "NONE", "italic")
call s:hi("Conceal", s:fg3 , "NONE", "NONE")

call s:hi("Underlined", "NONE",  "NONE", "underline")

call s:hi("Keyword", s:fg2,  "NONE", "bold")
hi! link Statement Keyword
hi! link Conditional Keyword
hi! link Repeat Keyword
hi! link Label Keyword
hi! link Exception Keyword

call s:hi("Operator", s:fg5,  "NONE", "NONE")
hi! link Identifier Operator
hi! link Boolean Operator
hi! link Constant Operator
hi! link Character Operator
hi! link SpecialKey Operator

call s:hi("String", s:fg4, "NONE", "NONE")
call s:hi("htmlTagName", s:fg1, "NONE", "NONE")
call s:hi("htmlTag", s:fg1, "NONE", "NONE")
call s:hi("htmlH1", s:fg0, "NONE", "Bold")
hi! link htmlEndTag htmlTag

call s:hi("Type", s:fg5, "NONE", "NONE")
hi! link Function Type
hi! link Constant Type
hi! link Character Type

call s:hi("PreProc", s:fg4, "NONE", "NONE")
hi! link Include PreProc
hi! link Define PreProc
hi! link Macro PreProc
hi! link PreCondit PreProc
hi! link Number PreProc
hi! link Float PreProc
hi! link Special PreProc

call s:hi("StorageClass", s:fg5, "NONE", "NONE")
hi! link Structure StorageClass
hi! link Typedef StorageClass

" }}}
" Completion Menu {{{
call s:hi('Pmenu', s:fg1, s:bg5, "NONE")
call s:hi('PmenuSel', s:bg1, s:blue0, "NONE")
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

call s:hi('CocErrorSign', s:red1, s:red_hi0, 'NONE')
hi! link LspDiagnosticsError CocErrorSign

call s:hi('CocWarningSign', s:yellow1, s:yellow_hi0, 'NONE')
hi! link CocInfoSign CocWarningSign
hi! link LspDiagnosticsWarning CocWarningSign

call s:hi('CocHintSign', s:purple1, s:purple_hi0, 'NONE')
hi! link LspDiagnosticsHint CocHintSign
hi! link LspDiagnosticsInformation CocHintSign

call s:hi('CocSelectedText', s:cyan1, s:cyan_hi0, 'NONE')

call s:hi('CocCodeLens', s:bg3, "NONE", 'NONE')


hi! link mkdListItemLine cleared

highlight default link WhichKeyFloating Pmenu
call s:hi("NormalFloatBorder", s:bg5 , "NONE", "NONE")


call s:hi('mkdLineBreak', "NONE", "NONE", 'NONE')
hi! link mkdCode markdownCode

call s:hi('GitGutterAdd', s:green0, s:bg1, "NONE")
call s:hi('GitGutterDelete', s:red0, s:bg1, "NONE")
call s:hi('GitGutterChange', s:blue0, s:bg1, "NONE")
call s:hi('GitGutterChange', s:blue0, s:bg1, "NONE")

call s:hi('FindrDirPartial', s:fg5, "NONE", "Bold")
hi! link FindrBorder VertSplit

" }}}
" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
