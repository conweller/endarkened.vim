" -----------------------------------------------------------------------------
" File: gruvbox.vim
" Description: Gruvbox colorscheme for Lightline (itchyny/lightline.vim)
" Author: gmoe <me@griffinmoe.com>
" Source: https://github.com/morhetz/gruvbox
" Last Modified: 20 Sep 2017
" -----------------------------------------------------------------------------

if exists('g:lightline')

    if &bg == 'dark'
        let s:bg0  = ['#101010', "NONE"]
        let s:bg1  = ['#202020', "NONE"]
        let s:bg2  = ['#282828', "NONE"]
        let s:bg4  = ['#505050', "NONE"]
        let s:fg1  = ['#e8e8e8', "NONE"]
        let s:fg2  = ['#707070', "NONE"]
        let s:fg3  = ['#868686', "NONE"]
        let s:fg4  = ['#dfdfdf', "NONE"]

        let s:yellow =  ['#efe52b', "NONE"]
        let s:blue   =  ['#4ea3d7', "NONE"]
        let s:aqua   = ['#20c3cc', "NONE"]
        let s:orange =  ['#fd9c12', "NONE"]
        let s:green = ['#70BF92', "NONE"]

    else
        let s:bg0  = ['#f7f7f7', "NONE"]
        let s:bg1  = ['#e9e9e9', "NONE"]
        let s:bg2  = ['#e0e0e0', "NONE"]
        let s:bg4  = ['#d5d5d5', "NONE"]
        let s:fg1  = ['#303030', "NONE"]
        let s:fg2  = ['#c0c0c0', "NONE"]
        let s:fg3  = ['#909090', "NONE"]
        let s:fg4  = ['#606060', "NONE"]

        let s:yellow =  ['#afa703', "NONE"]
        let s:blue   =  ['#3e9ddd', "NONE"]
        let s:aqua   = ['#20c3cc', "NONE"]
        let s:orange =  ['#f49716', "NONE"]
        let s:green = ['#68ba89', "NONE"]
    endif

  let s:p = {'normal':{}, 'inactive':{}, 'insert':{}, 'replace':{}, 'visual':{}, 'tabline':{}, 'terminal':{}}
  let s:p.normal.left = [ [ s:bg0, s:fg1, 'bold' ], [ s:fg4, s:bg1 ] ]
  let s:p.normal.right = [ [ s:bg0, s:fg1 ], [ s:fg4, s:bg1 ] ]
  let s:p.normal.middle = [ [ s:fg3, s:bg2 ] ]
  let s:p.inactive.right = [ [ s:fg4, s:bg1 ], [ s:fg3, s:bg2 ] ]
  let s:p.inactive.left =  [ [ s:fg4, s:bg1 ], [ s:fg3, s:bg2 ] ]
  let s:p.inactive.middle = [ [ s:fg3, s:bg2 ] ]
  let s:p.insert.left = [ [ s:bg0, s:blue, 'bold' ], [ s:fg1, s:bg1 ] ]
  let s:p.insert.right = [ [ s:bg0, s:blue ], [ s:fg1, s:bg1 ] ]
  let s:p.insert.middle = [ [ s:fg3, s:bg2 ] ]
  let s:p.terminal.left = [ [ s:bg0, s:green, 'bold' ], [ s:fg1, s:bg2 ] ]
  let s:p.terminal.right = [ [ s:bg0, s:green ], [ s:fg1, s:bg2 ] ]
  let s:p.terminal.middle = [ [ s:fg3, s:bg2 ] ]
  let s:p.replace.left = [ [ s:bg0, s:aqua, 'bold' ], [ s:fg1, s:bg1 ] ]
  let s:p.replace.right = [ [ s:bg0, s:aqua ], [ s:fg1, s:bg1 ] ]
  let s:p.replace.middle = [ [ s:fg3, s:bg2 ] ]
  let s:p.visual.left = [ [ s:bg0, s:orange, 'bold' ], [ s:fg4, s:bg1 ] ]
  let s:p.visual.right = [ [ s:bg0, s:orange ], [ s:fg4, s:bg1 ] ]
  let s:p.visual.middle = [ [ s:fg3, s:bg2 ] ]
  let s:p.tabline.left = [ [ s:fg3, s:bg2 ] ]
  let s:p.tabline.tabsel = [ [ s:fg1, s:bg0 ] ]
  let s:p.tabline.middle = [ [ s:bg2, s:bg2 ] ]
  let s:p.tabline.right = [ [ s:bg0, s:orange ] ]
  let s:p.normal.error = [ [ s:bg0, s:orange ] ]
  let s:p.normal.warning = [ [ s:bg2, s:yellow ] ]

  let g:lightline#colorscheme#endarkened#palette = lightline#colorscheme#flatten(s:p)
endif
