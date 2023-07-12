vim.cmd("colorscheme nightfly")
local status, _ = pcall(vim.cmd, "colorscheme nightfly")
if not status then
  print("Colorscheme not found")
  return
end

-- gruvbox
-- vim.o.termguicolors = true
-- vim.cmd [[ colorscheme gruvbox ]]
