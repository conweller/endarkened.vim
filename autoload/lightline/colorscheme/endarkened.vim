" -----------------------------------------------------------------------------
" File: gruvbox.vim
" Description: Gruvbox colorscheme for Lightline (itchyny/lightline.vim)
" Author: gmoe <me@griffinmoe.com>
" Source: https://github.com/morhetz/gruvbox
" Last Modified: 20 Sep 2017
" -----------------------------------------------------------------------------

if exists('g:lightline')

    let s:bg0 = [ EndarkenedGetColor('bg0'), "NONE" ]
    let s:bg1 = [ EndarkenedGetColor('bg2'), "NONE" ]
    let s:bg2 = [ EndarkenedGetColor('bg5'), "NONE" ]
    let s:bg4 = [ EndarkenedGetColor('bg4'), "NONE" ]
    let s:fg1 = [ EndarkenedGetColor('fg0'), "NONE" ]
    let s:fg2 = [ EndarkenedGetColor('bg3'), "NONE" ]
    let s:fg3 = [ EndarkenedGetColor('fg4'), "NONE" ]
    let s:fg4 = [ EndarkenedGetColor('fg2'), "NONE" ]
    let s:yellow = [ EndarkenedGetColor('yellow1'), "NONE" ]
    let s:blue = [ EndarkenedGetColor('blue0'), "NONE" ]
    let s:aqua = [ EndarkenedGetColor('cyan1'), "NONE" ]
    let s:orange = [ EndarkenedGetColor('orange1'), "NONE" ]
    let s:green = [ EndarkenedGetColor('green1'), "NONE" ]

  let s:p = {'normal':{}, 'inactive':{}, 'insert':{}, 'replace':{}, 'visual':{}, 'tabline':{}, 'terminal':{}}
  let s:p.normal.left = [ [ s:fg1, s:bg1, 'bold' ], [ s:fg4, s:bg1 ] ]
  let s:p.normal.right = [ [ s:fg1, s:bg1 ], [ s:fg4, s:bg1 ] ]
  let s:p.normal.middle = [ [ s:fg3, s:bg2 ] ]
  let s:p.inactive.right = [ [ s:fg3, s:bg2 ], [ s:fg2, s:bg1 ] ]
  let s:p.inactive.left =  [ [ s:fg3, s:bg2 ], [ s:fg2, s:bg1 ] ]
  let s:p.inactive.middle = [ [ s:fg2, s:bg1 ] ]
  let s:p.insert.left = [ [ s:blue, s:bg1, 'bold' ], [ s:fg1, s:bg1 ] ]
  let s:p.insert.right = [ [ s:blue, s:bg1 ], [ s:fg1, s:bg1 ] ]
  let s:p.insert.middle = [ [ s:fg3, s:bg2 ] ]
  let s:p.terminal.left = [ [ s:green, s:bg1, 'bold' ], [ s:fg1, s:bg2 ] ]
  let s:p.terminal.right = [ [ s:green, s:bg1 ], [ s:fg1, s:bg2 ] ]
  let s:p.terminal.middle = [ [ s:fg3, s:bg2 ] ]
  let s:p.replace.left = [ [ s:aqua, s:bg1, 'bold' ], [ s:fg1, s:bg1 ] ]
  let s:p.replace.right = [ [ s:aqua, s:bg1 ], [ s:fg1, s:bg1 ] ]
  let s:p.replace.middle = [ [ s:fg3, s:bg2 ] ]
  let s:p.visual.left = [ [ s:orange, s:bg1, 'bold' ], [ s:fg4, s:bg1 ] ]
  let s:p.visual.right = [ [ s:orange, s:bg1 ], [ s:fg4, s:bg1 ] ]
  let s:p.visual.middle = [ [ s:fg3, s:bg2 ] ]
  let s:p.tabline.left = [ [ s:fg3, s:bg2 ] ]
  let s:p.tabline.tabsel = [ [ s:fg1, s:bg0 ] ]
  let s:p.tabline.middle = [ [ s:bg2, s:bg2 ] ]
  let s:p.tabline.right = [ [ s:bg0, s:orange ] ]
  let s:p.normal.error = [ [ s:bg0, s:orange ] ]
  let s:p.normal.warning = [ [ s:bg2, s:yellow ] ]

  let g:lightline#colorscheme#endarkened#palette = lightline#colorscheme#flatten(s:p)
endif
