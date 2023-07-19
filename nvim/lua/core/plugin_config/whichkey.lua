vim.o.timeout = true
vim.o.timeoutlen = 300
require("which-key").setup {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below

}

local wk = require("which-key")

wk.register({
  f = {
    name = "Floaterm", -- optional group name
    c = { "<cmd>FloatermNew<cr>", "Create new floaterm"},
    n = { "<cmd>FloatermNext<cr>", "Next floaterm"},
    p = { "<cmd>FloatermPrev<cr>", "Previous floaterm"},
    t = { "<cmd>FloatermToggle<cr>", "Toggle floaterm window"},
    k = { "<cmd>FloatermKill<cr>", "Kill floaterm window"},
    b = { "<cmd>FloatermNew! --height=0.2 --width=0.98 --wintype=normal --name=terminal --position=bottom --autoclose=1 cd %:p:h<cr>", "Create button terminal"},
  },
  t = {
    name = "Telescope",
    o = { "<cmd>Telescope oldfiles<cr>", "Search in oldfiles" },
    b = { "<cmd>Telescope buffers<cr>", "Search in buffers" },
    f = { "<cmd>Telescope find_files<cr>", "Find files" },
    h = { "<cmd>Telescope command_history<cr>", "Search for command history" },
  },
  p = {
    name = "Packer",
    i = { ":PackerInstall<cr>", "Install package" },
    s = { ":PackerSync<cr>", "Packer Sync" },
    S = { ":PackerStatus<cr>", "Packer Status" },
    u = { ":PackerUpdate<cr>", "Packer update" },
  },
  l = {
    name = "LSP",
    a = { "<cmd>Lspsaga code_action<cr>", "Action"},
    k = { "<cmd>Lspsaga peek_definition<cr>", "Peek definition"},
    -- h = { "<cmd>Lspsaga hover_doc<cr>", "Hover doc"},
    t = { "<cmd>Lspsaga peek_type_definition<cr>", "Peek type definition"},
    g = { "<cmd>Lspsaga goto_type_definition<cr>", "Goto type definition"},
    R = { "<cmd>Lspsaga project_replace<cr>", "Project replace"},
    O = { "<cmd>Lspsaga outline<cr>", "Outline"},
    s = { "<cmd>Lspsaga show_workspace_diagnostics<cr>", "Workspace diagnostics"},
    d = { "<cmd>Lspsaga show_line_diagnostics<cr>", "Line diagnostics"},
    b = { "<cmd>Lspsaga show_buf_diagnostics<cr>", "Buffer diagnostics"},
    c = { "<cmd>Lspsaga show_cursor_diagnostics<cr>", "Cursor diagnostics"},
    n = { "<cmd>Lspsaga diagnostic_jump_next<cr>", "Jump to next diagnostics"},
    p = { "<cmd>Lspsaga diagnostic_jump_prev<cr>", "Jump to prev diagnostics"},
    r = { "<cmd>Lspsaga rename<cr>", "Rename"},
    e = { "<cmd>Lspsaga goto_definition<cr>", "Goto definition"},
    T = { "<cmd>Lspsaga term_toggle<cr>", "Terminal toggle"},
    i = { "<cmd>Lspsaga incoming_calls<cr>", "Incoming calls"},
    o = { "<cmd>Lspsaga outcoming_calls<cr>", "Outcoming calls"},
    f = {
      f = { "<cmd>Lspsaga finder tyd+def+ref+imp<cr>", "Finder tyd + def + ref + imp"},
      i = { "<cmd>Lspsaga finder imp<cr>", "Finder implementation"},
      r = { "<cmd>Lspsaga finder ref<cr>", "Finder reference"},
      t = { "<cmd>Lspsaga finder tyd<cr>", "Finder type definition"},
    },

    -- a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
    -- c = { "<cmd>lua require('user.lsp').server_capabilities()<cr>", "Get Capabilities" },
    F = { "<cmd>lua vim.lsp.buf.format({ async = true })<cr>", "Format" },
    -- F = { "<cmd>LspToggleAutoFormat<cr>", "Toggle Autoformat" },
    I = { "<cmd>LspInfo<cr>", "Info" },
    q = { "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", "Quickfix" },
    s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
  },
  g = {
    name = "Gitgutter",
    n = { "<cmd>GitGutterNextHunk<cr>", "next hunk" },
    p = { "<cmd>GitGutterPrevHunk<cr>", "prev hunk" },
    q = { "<cmd>GitGutterQuickFix<cr>", "Quickfix" },
    d = { "<cmd>GitGutterDiffOrig<cr>", "Diff" },
    f = { "<cmd>GitGutterFold<cr>", "fold" },
    h = { "<cmd>GitGutterLineHighlightsToggle<cr>", "Toggle Highlight" },
    e = { "<cmd>GitGutterLineNrHighlightsToggle<cr>", "Toggle Number Highlight" },
    H = { "<cmd>GitGutterStageHunk<cr>", "Stage Hunk" },
    U = { "<cmd>GitGutterUndoHunk<cr>", "Undo Hunk" },
    P = { "<cmd>GitGutterPreviewHunk<cr>", "Preview Hunk" },
    s = { "<cmd>GitGutterAll<cr>", "Update signs across all buffer" },

}, { prefix = "<Space>" })
