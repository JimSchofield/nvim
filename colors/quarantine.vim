"====================================================
" Theme: Quarantine
" Author: Jim Schofield
"====================================================

hi clear 

if exists("syntax_on")
  syntax reset
endif

let g:colors_name="quarantine"


function! s:Highlight(group,fg,bg,style)
    if !empty(a:fg)
        let l:fg = a:fg
    else
        let l:fg = "NONE"
    endif

    if !empty(a:bg)
        let l:bg = a:bg
    else
        let l:bg = "NONE"
    endif

    if !empty(a:style)
        let l:style = a:style
    else
        let l:style = "NONE"
    endif

    exec "hi ".a:group." guifg=".l:fg." guibg=".l:bg." gui=".l:style.""
endfun

" Greys
let s:white = '#defdef'
let s:off_white = '#cdecde'
let s:grey_100 = '#D0D0D0'
let s:grey_200= '#989898'
let s:grey_300= '#515151'
let s:black = '#222223'

" Purple
let s:purple_000 = '#f4d7e4'
let s:purple_100 = '#DD85AD'
let s:purple_200 = '#B95683'
let s:purple_300 = '#8F305B'
let s:purple_400 = '#651439'
let s:purple_500 = '#3C041D'
let s:purple_primary = s:purple_100

" Blue
let s:blue_100 = '#778BB9'
let s:blue_200 = '#4D6293'
let s:blue_300 = '#2E4272'
let s:blue_400 = '#172851'
let s:blue_500 = '#081430'
let s:blue_primary = s:blue_100

" Yellow
let s:yellow_100 = '#FFE499'
let s:yellow_200 = '#DCBC66'
let s:yellow_300 = '#AA8C39'
let s:yellow_400 = '#785F18'
let s:yellow_500 = '#473505'
let s:yellow_primary = s:yellow_100

" Green
let s:green_100 = '#56B287'

" Orange
let s:orange_100 = '#D29168'

" Red
let s:red = '#D30024'
" Cyan
let s:cyan = '#0071B4'

"====================================================
" Primary color groups from :help highlight-groups
"====================================================

call s:Highlight('Normal', s:off_white, '', '')
call s:Highlight('Constant', s:purple_200, '', '')
call s:Highlight('Identifier', s:blue_primary, '', '')
call s:Highlight('Statement', s:yellow_primary, '', '')
call s:Highlight('Type', s:purple_primary, '', '')
call s:Highlight('Comment', s:grey_200, '', '')
call s:Highlight('Special', s:orange_100, '', '')
call s:Highlight('PreProc', s:green_100, '', '')
call s:Highlight('Error', s:red, '', '')
call s:Highlight('Underlined', s:purple_200, '', 'underline')
call s:Highlight('Todo', s:grey_300, s:yellow_primary , 'bold')
call s:Highlight('Ignore', s:grey_300, s:yellow_primary , 'bold')

" HTML
call s:Highlight('htmlTag', s:grey_200, '', '')
call s:Highlight('htmlTagName', s:blue_100, '', '')
call s:Highlight('htmlEndTag', s:grey_200, '', '')
call s:Highlight('htmlH1', s:white, '', '')
call s:Highlight('attribute', s:orange_100, '', '')

" JS
call s:Highlight('jsThis', s:green_100, '', '')
call s:Highlight('jsImport', s:blue_200, '', '')
call s:Highlight('jsFrom', s:blue_200, '', '')
call s:Highlight('jsExport', s:blue_200, '', '')
call s:Highlight('jsExportDefault', s:blue_200, '', '')
call s:Highlight('jsDecorator', s:green_100, '', '')

" TS
call s:Highlight('typescriptImport', s:blue_200, '', '')
call s:Highlight('typescriptFrom', s:blue_200, '', '')
call s:Highlight('typescriptExport', s:blue_200, '', '')
call s:Highlight('typescriptExportDefault', s:blue_200, '', '')
call s:Highlight('typescriptDecorator', s:green_100, '', '')
call s:Highlight('typescriptAliasDeclaration', s:green_100, '', '')

" JSX
call s:Highlight('jsxTag', s:grey_200, '', '')
call s:Highlight('jsxTagName', s:blue_100, '', '')
call s:Highlight('jsxEndTag', s:grey_200, '', '')
call s:Highlight('jsxH1', s:white, '', '')
call s:Highlight('jsxBraces', s:purple_100, '', '')
call s:Highlight('jsxEqual', s:purple_100, '', '')

" TODO Create CSS

" System
call s:Highlight('LineNr', s:purple_200, '', '')
call s:Highlight('CursorLineNr', s:white , '', 'bold')
call s:Highlight('SignColumn', s:white , '', 'bold')
call s:Highlight('Visual', s:white , s:purple_400, '')
call s:Highlight('ErrorMsg', s:red , '', '')
call s:Highlight('WarningMsg', s:red , '', '')
call s:Highlight('VertSplit', s:yellow_primary , '', '')
call s:Highlight('NonText', s:yellow_500 , '', '')
call s:Highlight('TermCursor', s:white , s:purple_400, '')
call s:Highlight('Directory', s:blue_100 , '', '')
call s:Highlight('IncSearch', s:black , s:grey_100, '')
call s:Highlight('Search', s:white , s:purple_300, '')
call s:Highlight('MoreMsg', s:green_100 , '', 'bold')
call s:Highlight('Question', s:green_100 , '', 'bold')
call s:Highlight('PmenuSel', s:black , s:off_white, 'bold')
call s:Highlight('Pmenu', s:off_white , s:yellow_500, '')
call s:Highlight('Folded', s:off_white , s:grey_300, '')
call s:Highlight('FoldedColumn', s:white , s:grey_300, '')
call s:Highlight('Title', s:white , '', 'bold')
call s:Highlight('DiffAdd', s:green_100 , '', 'bold')
call s:Highlight('DiffChange', s:orange_100 , '', 'bold')
call s:Highlight('DiffDelete', s:red , '', 'bold')
call s:Highlight('DiffText', s:cyan, '', 'bold')

" Plugin-specific
call s:Highlight('ALEWarningSign', s:orange_100, '', 'bold')

" vim:ft=vim
