vim.g.gitgutter_max_signs = 500
vim.g.gitgutter_max_signs = -1


vim.opt.signcolumn = 'yes'
vim.g.gitgutter_set_sign_backgrounds = 1
vim.g.gitgutter_sign_modified = 'M'

-- Customize sign colors
vim.cmd([[highlight GitGutterAdd guifg=#009900 ctermfg=2]])
vim.cmd([[highlight GitGutterChange guifg=#bbbb00 ctermfg=3]])
vim.cmd([[highlight GitGutterDelete guifg=#ff2222 ctermfg=1]])
