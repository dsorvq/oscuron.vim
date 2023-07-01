scriptencoding utf-8

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name="oscuron"

" ==========================
" Highlighting Function
" ==========================
fun! <sid>hi(group, fg, bg, attr)
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" .  a:fg.cterm256
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" .  a:bg.cterm256
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfun

" ==========================
" Color Variables
" ==========================
let s:oscuron_black1 = {'gui': '#080808', 'cterm256': '232'}
let s:oscuron_black2 = {'gui': '#1c1c1c', 'cterm256': '234'}
let s:oscuron_black3 = {'gui': '#262626', 'cterm256': '235'}
let s:oscuron_gray1 = {'gui': '#3E3D32', 'cterm256': '237'}
let s:oscuron_gray2 = {'gui': '#49483E', 'cterm256': '239'}
let s:oscuron_gray3 = {'gui': '#767676', 'cterm256': '243'}
let s:oscuron_gray4 = {'gui': '#949494', 'cterm256': '246'}
let s:oscuron_gray5 = {'gui': '#B0B0B0', 'cterm256': '249'}
let s:oscuron_gray6 = {'gui': '#C6C6C6', 'cterm256': '251'}
let s:oscuron_white1 = {'gui': '#D0D0D0', 'cterm256': '252'}
let s:oscuron_white2 = {'gui': '#FFFFFF', 'cterm256': '231'}
let s:oscuron_blue = {'gui': '#5F8787', 'cterm256': '66'}
let s:oscuron_green1 = {'gui': '#008700', 'cterm256': '28'}
let s:oscuron_green2 = {'gui': '#00af5f', 'cterm256': '35'}
let s:oscuron_gold1 = {'gui': '#8E700B', 'cterm256': '136'}
let s:oscuron_gold2 = {'gui': '#D7AF00', 'cterm256': '178'}
let s:oscuron_brown1 = {'gui': '#5F5F00', 'cterm256': '58'}
let s:oscuron_brown2 = {'gui': '#AFAF00', 'cterm256': '142'}
let s:oscuron_red = {'gui': '#D70000', 'cterm256': '160'}
let s:oscuron_indian_red = {'gui': '#AF5F5F', 'cterm256': '131'}
let s:oscuron_pink = {'gui': '#FFD7FF', 'cterm256': '225'}
let s:oscuron_cian = {'gui': '#D7FFFF', 'cterm256': '195'}
let s:none = {'gui': 'NONE', 'cterm256': 'NONE'}

" ==========================
" Definitions
" ==========================
" call <sid>hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE)

" Editor
call <sid>hi('ColorColumn', s:none, s:oscuron_gray2, 'none')
call <sid>hi('Cursor', s:oscuron_black1, s:oscuron_white1, 'none')
call <sid>hi('CursorColumn', s:none, s:oscuron_black2, 'none')
call <sid>hi('CursorLine', s:none, s:oscuron_black3, 'none')
call <sid>hi('CursorLineNr', s:oscuron_white1, s:oscuron_gray1, 'none')
call <sid>hi('Directory', s:oscuron_white1, s:oscuron_black1, 'none')
call <sid>hi('FoldColumn', s:oscuron_gray6, s:oscuron_black1, 'none')
call <sid>hi('Folded', s:oscuron_gray4, s:none, 'none')
call <sid>hi('IncSearch', s:oscuron_black1, s:oscuron_gold1, 'none')
call <sid>hi('LineNr', s:oscuron_gray4, s:oscuron_black3, 'none')
call <sid>hi('MatchParen', s:oscuron_white1, s:oscuron_gray3, 'none')
call <sid>hi('Normal', s:oscuron_white1, s:oscuron_black1, 'none')
call <sid>hi('Pmenu', s:none, s:oscuron_black3, 'none')
call <sid>hi('PmenuSel', s:none, s:oscuron_gray2, 'none')
call <sid>hi('Search', s:oscuron_black1, s:oscuron_gold1, 'none')
call <sid>hi('SignColumn', s:none, s:oscuron_black2, 'none')
call <sid>hi('StatusLine', s:oscuron_black1, s:oscuron_white1, 'none')
call <sid>hi('StatusLineNC', s:oscuron_gray1, s:oscuron_gray5, 'none')
call <sid>hi('VertSplit', s:oscuron_black1, s:oscuron_gray3, 'none')
call <sid>hi('Visual', s:none, s:oscuron_gray2, 'none')

" General
" Constant
call <sid>hi('Constant', s:oscuron_blue, s:none, 'none')
" call <sid>hi('String', s:oscuron_white1, s:none, 'none')
" call <sid>hi('Character', s:oscuron_white1, s:none, 'none')
" call <sid>hi('Number', s:oscuron_white1, s:none, 'none')
" call <sid>hi('Boolean', s:oscuron_white1, s:none, 'none')
" call <sid>hi('Float', s:oscuron_white1, s:none, 'none')

call <sid>hi('Identifier', s:oscuron_white1, s:none, 'none')
call <sid>hi('Function', s:oscuron_pink, s:none, 'none')

call <sid>hi('Statement', s:oscuron_indian_red, s:none, 'none')
"call <sid>hi('Conditional', s:oscuron_white1, s:none, 'none')
"call <sid>hi('Repeat', s:oscuron_white1, s:none, 'none')
"call <sid>hi('Label', s:oscuron_white1, s:none, 'none')
"call <sid>hi('Operator', s:oscuron_white1, s:none, 'none')
"call <sid>hi('Keyword', s:oscuron_white1, s:none, 'none')
"call <sid>hi('Exception', s:oscuron_white1, s:none, 'none')

call <sid>hi('PreProc', s:oscuron_white1, s:none, 'none')
call <sid>hi('Include', s:oscuron_white1, s:none, 'none')
call <sid>hi('Define', s:oscuron_white1, s:none, 'none')
call <sid>hi('Macro', s:oscuron_white1, s:none, 'none')
call <sid>hi('PreCondit', s:oscuron_white1, s:none, 'none')

" Type
call <sid>hi('Type', s:oscuron_cian, s:none, 'none')
"call <sid>hi('StorageClass', s:oscuron_white1, s:none, 'none')
"call <sid>hi('Structure', s:oscuron_white1, s:none, 'none')
"call <sid>hi('Typedef', s:oscuron_white1, s:none, 'none')

call <sid>hi('Comment', s:oscuron_gray3, s:none, 'none')
call <sid>hi('NonText', s:oscuron_gray3, s:none, 'none')
call <sid>hi('Special', s:oscuron_white1, s:none, 'none')
call <sid>hi('SpecialKey', s:oscuron_white1, s:none, 'none')
call <sid>hi('Tag', s:oscuron_white1, s:none, 'none')
call <sid>hi('Title', s:none, s:none, 'bold')
call <sid>hi('Todo', s:oscuron_gray3, s:none, 'inverse,bold')
call <sid>hi('Underlined', s:none, s:none, 'underline')
call <sid>hi('SpellBad', s:oscuron_red, s:none, 'italic,undercurl')
call <sid>hi('SpellCap', s:oscuron_white1, s:none, 'italic,undercurl')
call <sid>hi('SpellLocal', s:oscuron_white1, s:none, 'undercurl')
call <sid>hi('WarningMsg', s:oscuron_black1, s:oscuron_gold1, 'none')
call <sid>hi('ErrorMsg', s:oscuron_white1, s:oscuron_red, 'none')

" Diff Mode
if &diff
call <sid>hi('DiffAdd', s:oscuron_black1, s:oscuron_green2, 'none')
call <sid>hi('DiffChange', s:oscuron_black1, s:oscuron_gold1, 'none')
call <sid>hi('DiffDelete', s:oscuron_red, s:oscuron_brown1, 'none')
call <sid>hi('DiffText', s:oscuron_black1, s:oscuron_blue, 'none')
else
call <sid>hi('DiffAdd', s:oscuron_green2, s:none, 'none')
call <sid>hi('DiffChange', s:oscuron_gold1, s:none, 'none')
call <sid>hi('DiffDelete', s:oscuron_red, s:none, 'none')
call <sid>hi('DiffText', s:oscuron_black1, s:oscuron_blue, 'none')
endif

