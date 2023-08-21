-- function! ExecuteCmd()
--   let cmd_lua = 'vim.api.nvim_command(":ls")'
--   let result = luaeval(cmd_lua)
--   echo result
-- endfunction


-- 获取 :ls 命令的输出结果
local ls_output = vim.fn.execute(":ls")

-- 定义一个存储结果的表格（类似于 Map）
local filtered_results = {}

-- 逐行处理输出结果
for line in ls_output:gmatch("[^\r\n]+") do
    local buffer_number, flags = line:match("(%d+)%s+[%w#%+]+%s+(.+)")
    print("buffer_num", buffer_number)
    print("flags", flags)
    if buffer_number and flags then
        -- 提取前两个数据
        local first_two_chars = flags:sub(1, 2)
        -- 存储到结果表格中
        filtered_results[buffer_number] = first_two_chars
    end
end

-- 打印结果表格（可选）
for buffer_number, flags in pairs(filtered_results) do
    print(buffer_number, flags)
end

