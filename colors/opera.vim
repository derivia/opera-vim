highlight clear

if version > 580
  hi clear
  if exists("on")
    syntax reset
  endif
endif

let colors_name = "opera"
let s:opera_vim_version="0.3.6"
let s:colors = opera#colors#definitions()
function! s:hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  let l:cmd = "hi " . a:group
  if a:guifg != ""
    let l:cmd .= " guifg=" . a:guifg
  endif
  if a:guibg != ""
    let l:cmd .= " guibg=" . a:guibg
  endif
  if a:ctermfg != ""
    let l:cmd .= " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    let l:cmd .= " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    let l:cmd .= " gui=" . a:attr
  endif
  if a:guisp != ""
    let l:cmd .= " guisp=" . a:guisp
  endif
  exec "silent! " . l:cmd
endfunction

" s:hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
" group -> Name
" guifg -> Foreground color
" guibg -> Background color
" ctermfg -> 16 bits foreground
" ctermbg -> 16 bits background
" attr -> Attributes like underline, bold, etc
" guisp -> Color for the attribute

" Disable default bold and italic
call s:hi("Bold", "", "", "", "", "", "")
call s:hi("Italic", "", "", "", "", "", "")
" Keep underline just `underline`
call s:hi("Underline", "", "", "", "", "underline", "")

" Diagnostics
call s:hi("Error", "NONE", "NONE", "", "", "underline", "")
call s:hi("Exception", "NONE", "NONE", "", "", "underline", "")
call s:hi("Warning", "NONE", "NONE", "", "", "underline", "")
call s:hi("Ok", s:colors.green, "", "", "", "", "")
call s:hi("healthError", s:colors.red, "", "", "", "", "")
call s:hi("healthSuccess", s:colors.green, "", "", "", "", "")
call s:hi("healthWarning", s:colors.yellow, "", "", "", "", "")

" Basic Syntax
call s:hi("Boolean", s:colors.magenta, "", "", "", "", "")
call s:hi("Character", s:colors.green, "", "", "", "", "")
call s:hi("Comment", s:colors.comment, "", "", "", "", "")
call s:hi("Constant", s:colors.magenta, "", "", "", "", "")
call s:hi("Float", s:colors.magenta, "", "", "", "", "")
call s:hi("Function", s:colors.teal, "", "", "", "", "")
call s:hi("Identifier", s:colors.magenta_darken, "", "", "", "", "")
call s:hi("Keyword", s:colors.blue, "", "", "", "", "")
call s:hi("Number", s:colors.magenta, "", "", "", "", "")
call s:hi("Operator", s:colors.blue, "", "", "", "", "")
call s:hi("String", s:colors.green, "", "", "", "", "")
call s:hi("Type", s:colors.yellow, "", "", "", "", "" )
call s:hi("@variable", s:colors.fg, "", "", "", "", "")

" Preprocessor and Special Syntax
call s:hi("Decorator", s:colors.gui0E, "", "", "", "", "")
call s:hi("Delimiter", s:colors.delimiter, "", "", "", "", "")
call s:hi("Include", s:colors.include, "", "", "", "", "" )
call s:hi("Label", s:colors.label,"", "", "", "", "")
call s:hi("Macro", s:colors.gui0E, "", "", "", "", "")
call s:hi("PreProc", s:colors.gui0E, "", "", "", "", "")
call s:hi("Special", s:colors.special, "", "", "", "", "")
call s:hi("SpecialChar", s:colors.gui0A, "", "", "", "", "")
call s:hi("SpecialComment", s:colors.comment, "", "", "", "", "")
call s:hi("StorageClass", s:colors.gui0A, "", "", "", "", "")
call s:hi("Structure", s:colors.gui0A, "", "", "", "", "" )
call s:hi("Tag", s:colors.gui0A, "", "", "", "", "")

" Status and Message
call s:hi("ErrorMsg", s:colors.red, "", "", "", "", "")
call s:hi("IncSearch", s:colors.gui0E, s:colors.gui01, "", "NONE", "", "")
call s:hi("ModeMsg", s:colors.fg_alt, "", "", "", "", "")
call s:hi("MoreMsg", s:colors.gui0C, s:colors.gui02, "", "", "", "")
call s:hi("Question", s:colors.fg_alt, "", "", "", "", "")
call s:hi("StatusLine", s:colors.gui00, s:colors.gui03, "", "", "", "")
call s:hi("StatusLineNC", s:colors.gui01, s:colors.gui00, "", "", "underline", "")
call s:hi("StatusLineTerm", s:colors.fg_alt, s:colors.gui00, "", "", "", "" )
call s:hi("StatusLineTermNC", s:colors.gui06, s:colors.gui00, "", "", "underline", "")

" Control flow and Constructs
call s:hi("Conditional", s:colors.gui0C, "", "", "", "", "")
call s:hi("Debug", "", "", "", "", "", "")
call s:hi("Repeat", s:colors.gui0A, "", "", "", "", "")
call s:hi("Statement", s:colors.gui0D, "", "", "", "", "" )
call s:hi("Todo", s:colors.gui0E, s:colors.gui01, "", "", "", "")
call s:hi("Underlined", "", "", "", "", "underline", "")

" UI Elements
call s:hi("ColorColumn", "", s:colors.gui01, "", "", "", "")
call s:hi("Conceal", s:colors.gui03, "", "", "", "", "")
call s:hi("Cursor", s:colors.ui_cursor_fg, s:colors.ui_cursor_bg, "", "NONE", "", "")
call s:hi("CursorColumn", s:colors.gui0C, s:colors.gui00, "", "", "", "")
call s:hi("CursorIM", s:colors.gui02, s:colors.gui06, "", "", "", "")
call s:hi("CursorLine", "", s:colors.line, "", "", "NONE", "")
call s:hi("CursorLineNr", s:colors.linenumber_fg, s:colors.linenumber_bg, "", "", "NONE", "")
call s:hi("EndOfBuffer", s:colors.buff, "", "", "", "", "")
call s:hi("FoldColumn", s:colors.gui06, s:colors.gui01, "", "", "", "")
call s:hi("Folded", s:colors.gui02, s:colors.folded, "", "", "", "")
call s:hi("LineNr", s:colors.gui03, s:colors.gui00, "", "", "", "")
call s:hi("MatchParen", "NONE", s:colors.gui09, "", "", "", "")
call s:hi("NonText", s:colors.fg_alt, s:colors.gui02, "", "", "", "")
call s:hi("Normal", s:colors.fg, "", "NONE", "", "", "")
call s:hi("Pmenu", s:colors.fg_alt, s:colors.gui01, "", "", "", "")
call s:hi("PmenuSbar",  s:colors.fg_alt, s:colors.gui01, "", "", "", "")
call s:hi("PmenuSel", s:colors.gui0C, s:colors.gui01, "", "", "", "")
call s:hi("PmenuThumb", s:colors.gui0C, s:colors.gui01, "", "", "", "")
call s:hi("Search", s:colors.gui0A, s:colors.gui02, "", "", "", "")
call s:hi("SignColumn", s:colors.gui0D, s:colors.sign_col, "", "", "", "")
call s:hi("SpecialKey", s:colors.gui02, "", "", "", "", "")
call s:hi("TabLine", s:colors.fg_alt, s:colors.gui00, "", "NONE", "NONE", "NONE")
call s:hi("TabLineFill", s:colors.gui0D, s:colors.gui01, "", "NONE", "NONE", "NONE")
call s:hi("TabLineSel", s:colors.gui03, s:colors.gui0F, "", "NONE", "", "NONE")
call s:hi("VertSplit", s:colors.gui04, "", "", "", "", "")
call s:hi("WildMenu", s:colors.gui0D, s:colors.gui01, "", "", "", "")
call s:hi("iCursor", s:colors.cursor_bg, s:colors.gui06, "", "", "", "")
hi! link Annotation Decorator
hi! link PreCondit PreProc
hi! link Typedef Type
hi! link Variable Identifier
hi! link Info NonText

" Visual
call s:hi("Visual", s:colors.gui01, "", "", "", "", "")
call s:hi("VisualNOS", s:colors.gui01, "", "", "", "", "")

" Git
call s:hi("diffAdded", s:colors.gui0B, "", "", "", "", "" )
call s:hi("diffRemoved", s:colors.gui08, "", "", "", "", "" )
call s:hi("gitcommitBranch", s:colors.gui0E, "", "", "", "", "")
call s:hi("gitcommitComment", s:colors.gui02, "", "", "", "", "")
call s:hi("gitcommitDiscardedFile", s:colors.gui08, "", "", "", "", "" )
call s:hi("gitcommitDiscardedType", s:colors.gui08, "", "", "", "", "")
call s:hi("gitcommitFile", s:colors.gui0E, "", "", "", "", "")
call s:hi("gitcommitHeader", s:colors.gui0B, "", "", "", "", "")
call s:hi("gitcommitOnBranch", s:colors.gui0C, "", "", "", "", "")
call s:hi("gitcommitOverflow", s:colors.gui08, "", "", "", "", "")
call s:hi("gitcommitSelectedFile", s:colors.gui0B, "", "", "", "", "" )
call s:hi("gitcommitSelectedType", s:colors.gui0B, "", "", "", "", "")
call s:hi("gitcommitSummary", s:colors.gui05, "", "", "", "", "")
call s:hi("gitcommitUnmerged", s:colors.gui0B, "", "", "", "", "")
call s:hi("gitcommitUnmergedFile", s:colors.gui0A, "", "", "", "", "")
call s:hi("gitcommitUntrackedFile", s:colors.gui0C, "", "", "", "", "" )
hi link gitcommitDiscarded gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitNoBranch gitcommitBranch
hi link gitcommitSelected gitcommitComment
hi link gitcommitSelectedArrow gitcommitSelectedFile
hi link gitcommitUnmergedArrow gitcommitUnmergedFile
hi link gitcommitUntracked gitcommitComment

if &diff
  call s:hi("CursorLine", "", "", "", "", "underline", "")
else
  call s:hi("CursorLine", "", s:colors.line, "", "", "", "" )
endif
call s:hi("Directory", s:colors.delimiter, "", "", "", "", "")
call s:hi("DiffAdd", s:colors.gui0B, s:colors.gui00, "", "", "", "")
call s:hi("DiffChange", s:colors.gui0C, s:colors.gui00, "", "", "", "")
call s:hi("DiffDelete", s:colors.gui08, s:colors.gui00, "", "", "", "")
call s:hi("DiffText", s:colors.gui0A, s:colors.gui00, "", "", "", "")

call s:hi("cIncluded", s:colors.gui0A, "", "", "", "", "")
hi! link cOperator Operator
hi! link cPreCondit PreCondit

" CSS Syntax
call s:hi("cssAttrComma", s:colors.gui0E, "", "", "", "", "" )
call s:hi("cssAttributeSelector", s:colors.gui0B, "", "", "", "", "" )
call s:hi("cssBraces", s:colors.gui0E, "", "", "", "", "" )
call s:hi("cssClassName", s:colors.gui0A, "", "", "", "", "" )
call s:hi("cssClassNameDot", s:colors.gui0A, "", "", "", "", "" )
call s:hi("cssDefinition", s:colors.gui0E, "", "", "", "", "" )
call s:hi("cssFontAttr", s:colors.gui0A, "", "", "", "", "" )
call s:hi("cssFontDescriptor", s:colors.gui0E, "", "", "", "", "" )
call s:hi("cssFunctionName", s:colors.gui0D, "", "", "", "", "" )
call s:hi("cssIdentifier", s:colors.gui0D, "", "", "", "", "" )
call s:hi("cssImportant", s:colors.gui0E, "", "", "", "", "" )
call s:hi("cssInclude", s:colors.gui05, "", "", "", "", "" )
call s:hi("cssIncludeKeyword", s:colors.blue, "", "", "", "", "" )
call s:hi("cssMediaType", s:colors.gui0A, "", "", "", "", "" )
call s:hi("cssProp", s:colors.gui05, "", "", "", "", "" )
call s:hi("cssPseudoClassId", s:colors.gui0A, "", "", "", "", "" )
call s:hi("cssSelectorOp", s:colors.gui0E, "", "", "", "", "" )
call s:hi("cssSelectorOp2", s:colors.gui0E, "", "", "", "", "" )
call s:hi("cssStringQ", s:colors.green, "", "", "", "", "")
call s:hi("cssTagName", s:colors.gui08, "", "", "", "", "" )
hi! link csPreCondit PreCondit
hi! link csType Type
hi! link csXmlTag SpecialComment
hi! link cssAttr Keyword
hi! link cssBraces Delimiter
hi! link cssClassName cssDefinition
hi! link cssColor Number
hi! link cssProp cssDefinition
hi! link cssPseudoClass cssDefinition
hi! link cssPseudoClassId cssPseudoClass
hi! link cssVendor Keyword

" Rust Syntax
call s:hi("import", s:colors.include, "", "", "", "", "")
call s:hi("rustAttribute", s:colors.gui0D, "", "", "", "", "")
call s:hi("rustEnum", s:colors.cyan, "", "", "", "", "")
call s:hi("rustMacro", s:colors.gui0C, "", "", "", "", "")
call s:hi("rustModPath", s:colors.gui0A, "", "", "", "", "")
call s:hi("rustPanic", s:colors.red, "", "", "", "", "")
call s:hi("rustTrait", s:colors.magenta, "", "", "", "", "")
hi! link rustCommentLineDoc Comment
hi! link rustDerive rustAttribute
hi! link rustEnumVariant rustEnum
hi! link rustEscape SpecialChar
hi! link rustQuestionMark Keyword
hi! link @lsp.type.macro.rust Function

" JSON Syntax
call s:hi("vimBracket", s:colors.gui0E, "", "", "", "", "")
call s:hi("vimCommentTitle", s:colors.gui0D, "", "", "", "", "")
call s:hi("vimContinue", s:colors.gui0D, "", "", "", "", "")
call s:hi("vimFuncSID", s:colors.gui0D, "", "", "", "", "")
call s:hi("vimMapModKey", s:colors.gui0D, "", "", "", "", "")
call s:hi("vimNotation", s:colors.gui0A, "", "", "", "", "")
call s:hi("vimOper", s:colors.gui0E, "", "", "", "", "")
call s:hi("vimSep", s:colors.gui08, "", "", "", "", "")
call s:hi("vimSetSep", s:colors.gui0C, "", "", "", "", "")

" Markdown Syntax
call s:hi("markdownBlockquote", s:colors.md_text, "", "", "", "", "" )
call s:hi("markdownBold", s:colors.gui0A, "", "", "", "", "")
call s:hi("markdownCode", s:colors.md_code, "", "", "", "", "")
call s:hi("markdownCodeBlock", s:colors.md_code, "", "", "", "", "")
call s:hi("markdownCodeDelimiter", s:colors.md_code, "", "", "", "", "")
call s:hi("markdownH1", s:colors.md_header, "", "", "", "", "")
call s:hi("markdownH2", s:colors.md_header, "", "", "", "", "" )
call s:hi("markdownH3", s:colors.md_header, "", "", "", "", "" )
call s:hi("markdownH4", s:colors.md_header, "", "", "", "", "" )
call s:hi("markdownH5", s:colors.md_header, "", "", "", "", "" )
call s:hi("markdownH6", s:colors.md_header, "", "", "", "", "" )
call s:hi("markdownHeadingDelimiter", s:colors.md_header, "", "", "", "", "")
call s:hi("markdownHeadingRule", s:colors.gui0C, "", "", "", "", "")
call s:hi("markdownId", s:colors.gui0E, "", "", "", "", "")
call s:hi("markdownIdDeclaration", s:colors.gui0D, "", "", "", "", "")
call s:hi("markdownIdDelimiter", s:colors.gui0E, "", "", "", "", "")
call s:hi("markdownItalic", s:colors.gui0E, "", "", "", "", "")
call s:hi("markdownLinkDelimiter", s:colors.gui0E, "", "", "", "", "")
call s:hi("markdownLinkText", s:colors.gui0D, "", "", "", "", "")
call s:hi("markdownListMarker", s:colors.md_text, "", "", "", "", "")
call s:hi("markdownOrderedListMarker", s:colors.md_text, "", "", "", "", "")
call s:hi("markdownRule", s:colors.gui0D, "", "", "", "", "")
call s:hi("markdownUrl", s:colors.gui0C, "", "", "", "undercurl", "")

" JavaScript Syntax
call s:hi("javaScriptBraces", s:colors.gui0C, "", "", "", "", "")
call s:hi("javaScriptFunction", s:colors.gui0A, "", "", "", "", "")
call s:hi("javaScriptIdentifier", s:colors.gui0A, "", "", "", "", "")
call s:hi("javaScriptNull", s:colors.gui08, "", "", "", "", "")
call s:hi("javaScriptNumber", s:colors.gui09, "", "", "", "", "")
call s:hi("javaScriptRequire", s:colors.gui0C, "", "", "", "", "")
call s:hi("javaScriptReserved", s:colors.gui0E, "", "", "", "", "" )
call s:hi("jsArrowFunction", s:colors.gui0E, "", "", "", "", "" )
call s:hi("jsClassKeyword", s:colors.gui0E, "", "", "", "", "" )
call s:hi("jsClassMethodType", s:colors.gui0E, "", "", "", "", "" )
call s:hi("jsDocParam", s:colors.gui0D, "", "", "", "", "" )
call s:hi("jsDocTags", s:colors.gui0E, "", "", "", "", "" )
call s:hi("jsExport", s:colors.gui0E, "", "", "", "", "" )
call s:hi("jsExportDefault", s:colors.gui0E, "", "", "", "", "" )
call s:hi("jsExtendsKeyword", s:colors.gui0E, "", "", "", "", "" )
call s:hi("jsFrom", s:colors.gui0E, "", "", "", "", "" )
call s:hi("jsFuncCall", s:colors.gui0D, "", "", "", "", "" )
call s:hi("jsFunction", s:colors.gui0E, "", "", "", "", "" )
call s:hi("jsGenerator", s:colors.gui0A, "", "", "", "", "" )
call s:hi("jsGlobalObjects", s:colors.gui0A, "", "", "", "", "" )
call s:hi("jsImport", s:colors.gui0E, "", "", "", "", "" )
call s:hi("jsModuleAs", s:colors.gui0E, "", "", "", "", "" )
call s:hi("jsModuleWords", s:colors.gui0E, "", "", "", "", "" )
call s:hi("jsModules", s:colors.gui0E, "", "", "", "", "" )
call s:hi("jsNull", s:colors.gui0A, "", "", "", "", "" )
call s:hi("jsOperator", s:colors.gui0E, "", "", "", "", "" )
call s:hi("jsStorageClass", s:colors.gui0E, "", "", "", "", "" )
call s:hi("jsSuper", s:colors.gui08, "", "", "", "", "" )
call s:hi("jsTemplateBraces", s:colors.gui08, "", "", "", "", "" )
call s:hi("jsTemplateVar", s:colors.gui0B, "", "", "", "", "" )
call s:hi("jsThis", s:colors.gui08, "", "", "", "", "" )
call s:hi("jsUndefined", s:colors.gui0A, "", "", "", "", "" )

" TypeScript Syntax
call s:hi("typeScriptAjaxMethods", s:colors.gui0A, "", "", "", "", "")
call s:hi("typeScriptDOMObjects", s:colors.gui0B, "", "", "", "", "")
call s:hi("typeScriptFuncKeyword", s:colors.gui08, "", "", "", "", "" )
call s:hi("typeScriptGlobalObject", s:colors.gui0A, "", "", "", "", "")
call s:hi("typeScriptIdentifier", s:colors.gui0C, "", "", "", "", "" )
call s:hi("typeScriptInterpolationDelimiter", s:colors.gui0E, "", "", "", "", "")
call s:hi("typeScriptLabel", s:colors.gui0C, "", "", "", "", "" )
call s:hi("typeScriptNull", s:colors.gui0E, "", "", "", "", "")
call s:hi("typeScriptNull", s:colors.gui0E, "", "", "", "", "")
call s:hi("typeScriptParens", s:colors.gui08, "", "", "", "", "")
call s:hi("typescriptReserved", s:colors.gui0A, "", "", "", "", "")
hi! link typeScriptDocParam Comment
hi! link typeScriptDocSeeTag Comment
hi! link typeScriptDocTags vimCommentTitle
hi! link typeScriptHtmlElemProperties Special
hi! link typeScriptLogicSymbols Boolean
hi! link typeScriptOpSymbols Boolean

" HTML
call s:hi("htmlArg", s:colors.gui0A, "", "", "", "", "")
call s:hi("htmlBold", s:colors.gui0A, "", "", "", "", "")
call s:hi("htmlEndTag", s:colors.gui0E, "", "", "", "", "")
call s:hi("htmlH1", s:colors.gui08, "", "", "", "", "")
call s:hi("htmlH2", s:colors.gui08, "", "", "", "", "")
call s:hi("htmlH3", s:colors.gui08, "", "", "", "", "")
call s:hi("htmlH4", s:colors.gui08, "", "", "", "", "")
call s:hi("htmlH5", s:colors.gui08, "", "", "", "", "")
call s:hi("htmlH6", s:colors.gui08, "", "", "", "", "")
call s:hi("htmlItalic", s:colors.gui0E, "", "", "", "", "")
call s:hi("htmlLink", s:colors.gui0C, "", "", "", "undercurl", "")
call s:hi("htmlSpecialChar", s:colors.gui0A, "", "", "", "", "")
call s:hi("htmlSpecialTagName", s:colors.gui08, "", "", "", "", "")
call s:hi("htmlTag", s:colors.gui0D, "", "", "", "", "")
call s:hi("htmlTagN", s:colors.gui08, "", "", "", "", "")
call s:hi("htmlTagName", s:colors.gui08, "", "", "", "", "")
call s:hi("htmlTitle", s:colors.gui0D, "", "", "", "", "")

" Ruby Syntax
call s:hi("rubyBlockParameter", s:colors.gui08, "", "", "", "", "")
call s:hi("rubyBlockParameterList", s:colors.gui08, "", "", "", "", "")
call s:hi("rubyClass", s:colors.gui0A, "", "", "", "", "")
call s:hi("rubyConstant", s:colors.magenta, "", "", "", "", "")
call s:hi("rubyControl", s:colors.gui0A, "", "", "", "", "")
call s:hi("rubyEscape", s:colors.gui08, "", "", "", "", "")
call s:hi("rubyFunction", s:colors.gui0D, "", "", "", "", "")
call s:hi("rubyGlobalVariable", s:colors.gui08, "", "", "", "", "")
call s:hi("rubyInclude", s:colors.gui0D, "", "", "", "", "")
call s:hi("rubyIncluderubyGlobalVariable", s:colors.gui08, "", "", "", "", "")
call s:hi("rubyInstanceVariable", s:colors.gui08, "", "", "", "", "")
call s:hi("rubyInterpolation", s:colors.gui0C, "", "", "", "", "")
call s:hi("rubyInterpolationDelimiter", s:colors.gui08, "", "", "", "", "")
call s:hi("rubyInterpolationDelimiter", s:colors.gui08, "", "", "", "", "")
call s:hi("rubyRegexp", s:colors.gui0C, "", "", "", "", "")
call s:hi("rubyRegexpDelimiter", s:colors.gui0C, "", "", "", "", "")
call s:hi("rubyStringDelimiter", s:colors.green, "", "", "", "", "")
call s:hi("rubySymbol", s:colors.gui0C, "", "", "", "", "")

let s:colors.save_cpo = &cpoptions
set cpoptions&vim
let s:colors.palette = {}
let s:colors.palette.display = { 'ctermbg': '0', 'guibg': 'gui01' }

let s:colors.bg0 = { 'ctermbg': '60', 'guibg': s:colors.gui00 }
let s:colors.palette.input = s:colors.bg0
let s:colors.palette.indicator = extend({ 'ctermfg': '238', 'guifg': s:colors.gui01 }, s:colors.bg0)
let s:colors.palette.spinner = extend({ 'ctermfg': '11', 'guifg': s:colors.gui0A, 'cterm': "", 'gui': "" }, s:colors.bg0)
let s:colors.palette.search_text = extend({ 'ctermfg': '4', 'guifg': s:colors.gui0D, 'cterm': "", 'gui': "" }, s:colors.bg0)
let s:colors.palette.preview = { 'ctermbg': '238', 'guibg': s:colors.gui00 }
let s:colors.palette.selected = { 'ctermfg': '81', 'guifg': s:colors.gui0C, 'cterm': 'bold,underline', 'gui': 'bold,underline' }
let s:colors.palette.current_selection = { 'ctermbg': '236', 'guibg': s:colors.gui01, 'cterm': "", 'gui': "" }
let s:colors.palette.selected_sign = { 'ctermfg': '196', 'guifg': s:colors.gui0A }
let s:colors.palette.current_selection_sign = s:colors.palette.selected_sign

hi ClapShadow guibg=#3b3b4d

let g:clap_fuzzy_match_hl_groups = [
  \ ['75', s:colors.gui0A],
\ ]

let g:clap#themes#opera#palette = s:colors.palette
let &cpoptions = s:colors.save_cpo
unlet s:colors.save_cpo
let g:clap_theme = 'opera'

call s:hi("GitGutterAdd", s:colors.gui0B, "", "", "", "", "")
call s:hi("GitGutterChange", s:colors.gui0D, "", "", "", "", "")
call s:hi("GitGutterDelete", s:colors.gui08, "", "", "", "", "")
call s:hi("GitGutterChangeDelete", s:colors.gui0E, "", "", "", "", "")
highlight! link GitGutterChangeDelete PurpleSign

call s:hi("Sneak", s:colors.gui09, s:colors.gui07, "", "", "", "")
call s:hi("SneakMask", s:colors.gui09, s:colors.gui07, "", "", "", "")
call s:hi("SneakLabel", s:colors.gui07, s:colors.gui07, "", "", "", "")
call s:hi("SneakScope", s:colors.gui0B, s:colors.gui07, "", "", "", "")

if has('nvim')

    call s:hi("Constructor", s:colors.gui02, "", "", "", "", "")
    call s:hi("Emphasis", s:colors.gui02, "", "", "", "", "")
    call s:hi("Field", s:colors.gui0E, "", "", "", "", "")
    call s:hi("FunctionBuiltin", s:colors.builtin, "", "", "", "", "")
    call s:hi("FuncMacro", s:colors.gui0E, "", "", "", "", "")
    call s:hi("Method", s:colors.teal, "", "", "", "", "")
    call s:hi("Parameter", s:colors.gui09, "", "", "", "", "")
    call s:hi("TypeBuiltin", s:colors.builtin, "", "", "", "", "")
    call s:hi("TSTitle", s:colors.gui09, "", "", "", "", "")
    call s:hi("TreeSitterVariable", s:colors.gui0B, "", "", "", "", "")
    hi! link TSAnnotation PreProc
    hi! link TSAttribute Decorator
    hi! link TSBoolean Boolean
    hi! link TSCharacter Character
    hi! link TSConditional Conditional
    hi! link TSConstant Constant
    hi! link TSConstBuiltin Structure
    hi! link TSConstructor Constructor
    hi! link TSEmphasis Emphasis
    hi! link TSError Error
    hi! link TSException Exception
    hi! link TSFloat Float
    hi! link TSField Field
    hi! link TSFunction Function
    hi! link TSFuncBuiltin FunctionBuiltin
    hi! link TSFuncMacro FuncMacro
    hi! link TSKeyword Keyword
    hi! link TSKeywordFunction Function
    hi! link TSKeywordOperator Operator
    hi! link TSLabel Label
    hi! link TSLiteral Constant
    hi! link TSMethod Method
    hi! link TSNamespace Directory
    hi! link TSNumber Number
    hi! link TSOperator Operator
    hi! link TSParameter Parameter
    hi! link TSPunctBracket Delimiter
    hi! link TSPunctDelimiter Delimiter
    hi! link TSPunctSpecial DelimterAlt
    hi! link TSRepeat Repeat
    hi! link TSString String
    hi! link TSStringEscape SpecialKey
    hi! link TSStringRegex String
    hi! link TSStrong Bold
    hi! link TSStructure Structure
    hi! link TSTag Keyword
    hi! link TSTagDelimiter Delimiter
    hi! link TSText String
    hi! link TSType Type
    hi! link TSTypeBuiltin TypeBuiltin
    hi! link TSUnderline Underlined
    hi! link TSURI URL
    hi! link TSVariable Variable
    hi! link TSVariableBuiltin TreeSitterVariable

    hi! link LspDiagnosticsError Error
    hi! link LspDiagnosticsWarning Warning
    hi! link LspDiagnosticsInformation Info
    hi! link LspDiagnosticsHint Label

    hi! link DiagnosticsError Error
    hi! link DiagnosticsWarning Warning
    hi! link DiagnosticsInformation Info
    hi! link DiagnosticsHint Label

    hi! link DiagnosticFloatingInfo Info
    hi! link DiagnosticFloatingHint Hint
    hi! link DiagnosticFloatingOk Ok
    hi! link DiagnosticFloatingWarning Warning
    hi! link DiagnosticFloatingError Error

    hi! link DiagnosticUnderlineInfo Info
    hi! link DiagnosticUnderlineHint Hint
    hi! link DiagnosticUnderlineOk Ok
    hi! link DiagnosticUnderlineWarning Warning
    hi! link DiagnosticUnderlineError Error

    hi! link NvimTreeSpecialFile Normal 
    hi! link LazyNormal ColorColumn
    hi! link LazyBackDrop ColorColumn
    hi! link LazyButton VertSplit
    hi! link LazyNormal ColorColumn
    hi! link LazyButton VertSplit
    hi! link LazyDir Directory
    hi! link LazySpecial Special
    hi! link LazyItalic Italic
    hi! link LazyWarning Warning
    hi! link LazyError Error
    hi! link LazyComment Comment
    hi! link LazyInfo Info
end
