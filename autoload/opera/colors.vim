function! opera#colors#definitions()
  let l:result = {
        \ 'bg':                   "#323334",
        \ 'gui00':                "#323334",
        \
        \ 'gui01':                "#222224",
        \ 'gui02':                "#BCBFB4",
        \ 'gui03':                "#3F3F3F",
        \ 'gui04':                "#DFDFDF",
        \ 'gui05':                "#9F9FA2",
        \ 'gui06':                "#525252",
        \ 'gui07':                "#1E1E1E",
        \ 'gui08':                "#C16069",
        \ 'gui09':                "#727272",
        \ 'gui0A':                "#ECCC87",
        \ 'gui0B':                "#A2BF8A",
        \ 'gui0C':                "#86C0D1",
        \ 'gui0D':                "#80A0C2",
        \ 'gui0E':                "#B58DAE",
        \ 'gui0F':                "#5D80AE",
        \
        \ 'builtin':              "#8EBCBB",
        \ 'base0':                "#000000",
        \ 'base1':                "#1E1E1E",
        \ 'base2':                "#2E2E2E",
        \ 'base3':                "#262626",
        \ 'base4':                "#3F3F3F",
        \ 'base5':                "#525252",
        \ 'base6':                "#6B6B6B",
        \ 'base7':                "#979797",
        \ 'base8':                "#DFDFDF",
        \
        \ 'float_bg':             "#222224",
        \ 'float_fg':             "#525252",
        \
        \ 'fg':                   "#BCBFB4",
        \ 'fg_alt':               "#727269",
        \ 'blue':                 "#80A0C2",
        \ 'cyan':                 "#86C0D1",
        \ 'green':                "#A2BF8A",
        \ 'grey':                 "#3F3F3F",
        \ 'magenta':              "#B58DAE",
        \ 'lilac':                "#DEC1DB",
        \ 'magenta_darken':       "#AF7F9F",
        \ 'orange':               "#D2876D",
        \ 'kinguio':              "#FFA066",
        \ 'red':                  "#F36065",
        \ 'teal':                 "#8EBCBB",
        \ 'violet':               "#5D80AE",
        \ 'yellow':               "#ECCC87",
        \
        \ 'git_added':            "#A2BF8A",
        \ 'git_deleted':          "#C16069",
        \ 'git_modified':         "#D2876D",
        \ 'git_untracked':        "#86C0D1",
        \
        \ 'comment':              "#99999F",
        \ 'label':                "#D2876D",
        \ 'constant':             "#B58DAE",
        \ 'delimiter':            "#80A0C2",
        \ 'function':             "#8EBCBB",
        \ 'identifier':           "#B58DAE",
        \ 'include':              "#8EBCBB",
        \ 'keyword':              "#80A0C2",
        \ 'operator':             "#80A0C2",
        \ 'preproc':              "#80A0C2",
        \ 'special':              "#86C0D1",
        \ 'string':               "#A2BF8A",
        \ 'type':                 "#ECCC87",
        \
        \ 'ui_background':        "#323334",
        \ 'ui_cursor_bg':         "#ECEFF4",
        \ 'ui_cursor_fg':         "#1A1A2A",
        \ 'ui_diff_add':          "#A2BF8A",
        \ 'ui_diff_change':       "#86C0D1",
        \ 'ui_diff_delete':       "#C16069",
        \ 'ui_folded':            "#525252",
        \ 'ui_line_bg':           "#505050",
        \ 'ui_linenr_bg':         "#686859",
        \ 'ui_linenr_fg':         "#CACACA",
        \ 'ui_popup_menu':        "#222224",
        \ 'ui_selection':         "#5C748E",
        \ 'ui_statusline':        "#222224",
        \ 'ui_tabline':           "#525252",
        \
        \ 'md_list':              "#9A9A9A",
        \ 'md_code':              "#72A273",
        \ 'md_text':              "#818172",
        \ 'md_header':            "#BABCC0",
        \ }

  let l:result.cursor_bg = l:result.ui_cursor_bg
  let l:result.cursor_fg = l:result.ui_cursor_fg
  let l:result.normal = l:result.bg
  let l:result.buff = l:result.bg
  let l:result.fold_col = l:result.bg
  let l:result.sign_col = l:result.bg
  let l:result.folded = l:result.ui_folded

  return l:result
endfunction
