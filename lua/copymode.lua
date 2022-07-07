local M = {}

M.cpmode = false
M.optList = nil
M.optNumber = nil
M.optRelativeNumber = nil
M.optSigncolumn = nil
M.showbreak = nil
M.wrap = nil
M.toggle = function()
    if M.cpmode == false then
        print("Copy Mode Enabled")
        M.optList = vim.opt.list._value
        vim.opt.list = false
        M.optNumber = vim.opt.number._value
        vim.opt.number = false
        M.optRelativeNumber = vim.opt.relativenumber._value
        vim.opt.relativenumber = false
        M.optSigncolumn = vim.opt.signcolumn._value
        vim.opt.signcolumn = 'no'
        M.showbreak = vim.opt.showbreak._value
        vim.opt.showbreak = ''
        M.wrap = vim.opt.wrap._value
        vim.opt.wrap = true
        M.cpmode = true
    else
        print("Copy Mode Disabled")
        vim.opt.list = M.optList
        vim.opt.number = M.optNumber
        vim.opt.relativenumber = M.optRelativeNumber
        vim.opt.signcolumn = M.optSigncolumn
        vim.opt.showbreak = M.showbreak
        vim.opt.wrap = M.wrap
        M.cpmode = false
    end
end

return M
