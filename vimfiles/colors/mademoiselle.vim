" Vim color file
" Maintainer:  Hideo Saito <hidex7777 at gmail dot com>
" Last Change: 2012-09-24 
" Version:  0.1
" URL:	http://hidex7777.r.ribbon.to/	

" This color scheme is optimized for "Console" (Windows console frontend).
" This should be used with "console.xml",
" which is the setting file of "Console."
" You can download "Console" from sourceforge:
" http://sourceforge.net/project/console/

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=light
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="mademoiselle"

hi Normal ctermfg=Black ctermbg=White guifg=#3C3C3C guibg=#FFFFF5

" :hi Cursor
" gives
" Cursor         xxx guifg=bg guibg=fg 
 	
hi Cursor         ctermfg=Black ctermbg=White guifg=#808080 guibg=#FFFFF5
hi CursorIM       ctermfg=Cyan ctermbg=White guifg=#808080 guibg=#FFFFF5
hi CursorLine     ctermfg=fg ctermbg=LightGray guifg=fg guibg=#DDDDDD
"hi Directory
"hi DiffAdd
"hi DiffChange
"hi DiffDelete
"hi DiffText
hi ErrorMsg       ctermfg=White ctermbg=Red guifg=#FFFFF5 guibg=#FF8C8C
"hi VertSplit
"hi Folded
"hi FoldColumn
"hi IncSearch
hi LineNr         ctermfg=LightGray ctermbg=White guifg=#DDDDDD guibg=#FFFFF5
hi ModeMsg        ctermfg=DarkGray ctermbg=White guifg=#808080 guibg=#FFFFF5
"hi MoreMsg
hi NonText        ctermfg=Magenta ctermbg=White guifg=#FADBBE guibg=#FFFFF5
"hi Question
"hi Search
hi SpecialKey     ctermfg=Magenta ctermbg=White guifg=#FADBBE guibg=#FFFFF5
hi StatusLine     ctermfg=White ctermbg=DarkYellow guibg=#FFFFF5 guifg=#808000
"hi StatusLineNC
hi Title          ctermfg=Red ctermbg=White guifg=#FF8C8C guibg=#FFFFF5
hi Visual         ctermfg=White ctermbg=LightGray guifg=#FFFFF5 guibg=#DDDDDD
"hi VisualNOS
hi WarningMsg     ctermfg=White ctermbg=Magenta guifg=#FFFFF5 guibg=#FADBBE
"hi WildMenu
"hi Menu
"hi Scrollbar
"hi Tooltip

" syntax highlighting groups
hi Comment      ctermfg=DarkGreen ctermbg=White guifg=#79B850 guibg=#FFFFF5
hi Constant     ctermfg=DarkGray ctermbg=White guifg=#808080 guibg=#FFFFF5
hi Identifier   ctermfg=DarkBlue ctermbg=White guifg=#729DD3 guibg=#FFFFF5
hi Statement    ctermfg=Blue ctermbg=White guifg=#7D7DFF guibg=#FFFFF5
hi PreProc      ctermfg=DarkCyan ctermbg=White guifg=#008080 guibg=#FFFFF5
hi Type         ctermfg=Red ctermbg=White guifg=#FF8C8C guibg=#FFFFF5
hi Special      ctermfg=Blue ctermbg=White guifg=#7D7DFF guibg=#FFFFF5
hi Underlined   ctermfg=fg ctermbg=bg guifg=fg guibg=bg
hi Error        ctermfg=DarkGray ctermbg=Yellow guifg=#808080 guibg=#FFFF00
"hi Todo

