local luasnip_status, luasnip = pcall(require, "luasnip")
if not luasnip_status then
  return
end

-- load friendly-snippets
require("luasnip/loaders/from_vscode").lazy_load()
