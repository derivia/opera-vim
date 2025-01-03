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
call s:hi("Constant", s:colors.kinguio, "", "", "", "", "")
call s:hi("Float", s:colors.lilac, "", "", "", "", "")
call s:hi("Function", s:colors.teal, "", "", "", "", "")
call s:hi("Identifier", s:colors.magenta_darken, "", "", "", "", "")
call s:hi("Keyword", s:colors.blue, "", "", "", "", "")
call s:hi("Number", s:colors.lilac, "", "", "", "", "")
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
call s:hi("MoreMsg", s:colors.fg_alt, "", "", "", "", "")
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
call s:hi("CursorLine", "", s:colors.ui_line_bg, "", "", "NONE", "")
call s:hi("CursorLineNr", s:colors.ui_linenr_fg, s:colors.ui_line_bg, "", "", "NONE", "")
call s:hi("EndOfBuffer", s:colors.buff, "", "", "", "", "")
call s:hi("FoldColumn", s:colors.gui06, s:colors.gui01, "", "", "", "")
call s:hi("Folded", s:colors.gui02, s:colors.folded, "", "", "", "")
call s:hi("LineNr", s:colors.fg, "NONE", "", "", "", "")
call s:hi("LineNrAbove", s:colors.fg_alt, "NONE", "", "", "", "")
call s:hi("LineNrBelow", s:colors.fg_alt, "NONE", "", "", "", "")
call s:hi("MatchParen", "NONE", s:colors.gui09, "", "", "", "")
call s:hi("NonText", s:colors.fg_alt, s:colors.gui02, "", "", "", "")
call s:hi("Normal", s:colors.fg, "NONE", "NONE", "", "", "")
call s:hi("Pmenu", s:colors.fg_alt, s:colors.gui01, "", "", "", "")
call s:hi("PmenuSbar",  s:colors.fg_alt, s:colors.gui01, "", "", "", "")
call s:hi("PmenuSel", s:colors.gui0C, s:colors.gui01, "", "", "", "")
call s:hi("PmenuThumb", s:colors.gui0C, s:colors.gui01, "", "", "", "")
call s:hi("Search", s:colors.fg_alt, s:colors.orange, "", "", "", "")
call s:hi("SignColumn", s:colors.gui0D, s:colors.sign_col, "", "", "", "")
call s:hi("SpecialKey", s:colors.gui02, "", "", "", "", "")
call s:hi("TabLine", s:colors.fg_alt, s:colors.gui00, "", "NONE", "NONE", "NONE")
call s:hi("TabLineFill", s:colors.gui0D, s:colors.gui01, "", "NONE", "NONE", "NONE")
call s:hi("TabLineSel", s:colors.gui03, s:colors.gui0F, "", "NONE", "", "NONE")
call s:hi("VertSplit", s:colors.gui04, "", "", "", "", "")
call s:hi("WildMenu", s:colors.gui0D, s:colors.gui01, "", "", "", "")
call s:hi("iCursor", s:colors.cursor_bg, s:colors.gui06, "", "", "", "")
call s:hi("NormalFloat", s:colors.float_fg, s:colors.float_bg, "", "", "", "")
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

call s:hi("Directory", s:colors.delimiter, "", "", "", "", "")
call s:hi("DiffAdd", s:colors.gui0B, s:colors.gui00, "", "", "", "")
call s:hi("DiffChange", s:colors.gui0C, s:colors.gui00, "", "", "", "")
call s:hi("DiffDelete", s:colors.gui08, s:colors.gui00, "", "", "", "")
call s:hi("DiffText", s:colors.gui0A, s:colors.gui00, "", "", "", "")

call s:hi("cIncluded", s:colors.gui0A, "", "", "", "", "")
hi! link cOperator Operator
hi! link cPreCondit PreCondit

" CSS Syntax
hi! link csPreCondit PreCondit
hi! link csType Type
hi! link csXmlTag SpecialComment
hi! link cssAttr Keyword
hi! link cssAttrComma Delimiter
hi! link cssAttributeSelector Function
hi! link cssBraces Delimiter
hi! link cssClassName Type
hi! link cssClassNameDot Type
hi! link cssColor Number
hi! link cssDefinition Special
hi! link cssFontAttr Keyword
hi! link cssFontDescriptor Special
hi! link cssFunctionName Function
hi! link cssIdentifier Identifier
hi! link cssImportant Special
hi! link cssInclude Include
hi! link cssIncludeKeyword Keyword
hi! link cssMediaType Type
hi! link cssProp Identifier
hi! link cssPseudoClass Special
hi! link cssPseudoClassId Type
hi! link cssSelectorOp Operator
hi! link cssSelectorOp2 Operator
hi! link cssStringQ String
hi! link cssTagName Tag
hi! link cssVendor Keyword

" Rust Syntax
hi! link import Include
hi! link rustAttribute PreProc
hi! link rustCommentLineDoc Comment
hi! link rustDerive rustAttribute
hi! link rustEnum Type
hi! link rustEnumVariant rustEnum
hi! link rustEscape SpecialChar
hi! link rustMacro Function
hi! link rustModPath Identifier
hi! link rustPanic ErrorMsg
hi! link rustQuestionMark Keyword
hi! link rustTrait Type

" Vim Syntax
hi! link vimBracket Delimiter
hi! link vimCommentTitle Title
hi! link vimContinue Special
hi! link vimFuncSID Function
hi! link vimMapModKey Special
hi! link vimNotation Special
hi! link vimOper Operator
hi! link vimSep Delimiter
hi! link vimSetSep Delimiter

" Markdown Syntax
hi! link markdownBlockquote Comment
hi! link markdownBold Bold
hi! link markdownCode PreProc
hi! link markdownCodeBlock PreProc
hi! link markdownCodeDelimiter PreProc
hi! link markdownH1 Title
hi! link markdownH2 Title
hi! link markdownH3 Title
hi! link markdownH4 Title
hi! link markdownH5 Title
hi! link markdownH6 Title
hi! link markdownHeadingDelimiter Special
hi! link markdownHeadingRule Special
hi! link markdownId Identifier
hi! link markdownIdDeclaration Identifier
hi! link markdownIdDelimiter Delimiter
hi! link markdownItalic Italic
hi! link markdownLinkDelimiter Delimiter
hi! link markdownLinkText Type
hi! link markdownListMarker Special
hi! link markdownOrderedListMarker Special
hi! link markdownRule Special
hi! link markdownUrl Underlined

" JavaScript Syntax
hi! link javaScriptBraces Delimiter
hi! link javaScriptFunction Keyword
hi! link javaScriptIdentifier Identifier
hi! link javaScriptNull Constant
hi! link javaScriptNumber Number
hi! link javaScriptRequire Special
hi! link javaScriptReserved Keyword
hi! link jsArrowFunction Keyword
hi! link jsClassKeyword Keyword
hi! link jsClassMethodType Keyword
hi! link jsDocParam Comment
hi! link jsDocTags Comment
hi! link jsExport Keyword
hi! link jsExportDefault Keyword
hi! link jsExtendsKeyword Keyword
hi! link jsFrom Keyword
hi! link jsFuncCall Function
hi! link jsFunction Keyword
hi! link jsGenerator Keyword
hi! link jsGlobalObjects Type
hi! link jsImport Keyword
hi! link jsModuleAs Keyword
hi! link jsModuleWords Keyword
hi! link jsModules Keyword
hi! link jsNull Constant
hi! link jsOperator Operator
hi! link jsStorageClass Keyword
hi! link jsSuper Constant
hi! link jsTemplateBraces Delimiter
hi! link jsTemplateVar Special
hi! link jsThis Constant
hi! link jsUndefined Constant

" TypeScript Syntax
hi! link typeScriptAjaxMethods Function
hi! link typeScriptDOMObjects Type
hi! link typeScriptFuncKeyword Keyword
hi! link typeScriptGlobalObject Type
hi! link typeScriptIdentifier Identifier
hi! link typeScriptInterpolationDelimiter Delimiter
hi! link typeScriptLabel Label
hi! link typeScriptNull Constant
hi! link typeScriptParens Delimiter
hi! link typescriptReserved Keyword
hi! link typeScriptDocParam Comment
hi! link typeScriptDocSeeTag Comment
hi! link typeScriptDocTags vimCommentTitle
hi! link typeScriptHtmlElemProperties Special
hi! link typeScriptLogicSymbols Boolean
hi! link typeScriptOpSymbols Boolean
hi! link typescriptEndColons Normal

" HTML
hi! link htmlArg Special
hi! link htmlBold Bold
hi! link htmlEndTag Delimiter
hi! link htmlH1 Title
hi! link htmlH2 Title
hi! link htmlH3 Title
hi! link htmlH4 Title
hi! link htmlH5 Title
hi! link htmlH6 Title
hi! link htmlItalic Italic
hi! link htmlLink Underlined
hi! link htmlSpecialChar Special
hi! link htmlSpecialTagName Tag
hi! link htmlTag Delimiter
hi! link htmlTagN Identifier
hi! link htmlTagName Tag
hi! link htmlTitle Title

" Ruby Syntax
hi! link rubyFunction Function
hi! link rubyConstant Constant
hi! link rubyInclude Include
hi! link rubyClass Keyword
hi! link rubyControl Keyword
hi! link rubyEscape Special
hi! link rubyGlobalVariable Identifier
hi! link rubyInclude Include
hi! link rubyInstanceVariable Identifier
hi! link rubyInterpolation Special
hi! link rubyInterpolationDelimiter Delimiter
hi! link rubyRegexp Special
hi! link rubyRegexpDelimiter Delimiter
hi! link rubyStringDelimiter Delimiter
hi! link rubySymbol Special

let s:colors.save_cpo = &cpoptions
set cpoptions&vim
let s:colors.palette = {}
let s:colors.palette.display = { 'ctermbg': '0', 'guibg': 'gui01' }

call s:hi("GitGutterAdd", s:colors.gui0B, "", "", "", "", "")
call s:hi("GitGutterChange", s:colors.gui0D, "", "", "", "", "")
call s:hi("GitGutterDelete", s:colors.gui08, "", "", "", "", "")
call s:hi("GitGutterChangeDelete", s:colors.gui0E, "", "", "", "", "")
highlight! link GitGutterChangeDelete PurpleSign

call s:hi("Sneak", s:colors.gui09, s:colors.gui07, "", "", "", "")
call s:hi("SneakMask", s:colors.gui09, s:colors.gui07, "", "", "", "")
call s:hi("SneakLabel", s:colors.gui07, s:colors.gui07, "", "", "", "")
call s:hi("SneakScope", s:colors.gui0B, s:colors.gui07, "", "", "", "")

call s:hi("TroubleIndent", "NONE", "NONE", "", "", "", "")

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

    hi! link LazyBackDrop NormalFloat
    hi! link LazyButton VertSplit
    hi! link LazyComment Comment
    hi! link LazyDir Directory
    hi! link LazyError Error
    hi! link LazyInfo Info
    hi! link LazyItalic Italic
    hi! link LazyNormal NormalFloat
    hi! link LazySpecial Special
    hi! link LazyWarning Warning

    hi! link TroubleIndentWs TroubleIndent
    hi! link TroubleIndentTop TroubleIndent
    hi! link TroubleIndentLast TroubleIndent
    hi! link TroubleIndentMiddle TroubleIndent
end
