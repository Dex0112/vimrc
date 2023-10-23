function SetColorscheme(color)
    color = color or COLORSCHEME or 'catppuccin'

    vim.cmd("colorscheme " .. color)

--    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

    COLORSCHEME = color

    local file = io.open(vim.fn.stdpath('data') .. '/colorscheme.txt', 'w')

    if file == nil then return end

    file:write(COLORSCHEME)
    file:close()
end

local file = io.open(vim.fn.stdpath('data') .. '/colorscheme.txt', 'r')
if file ~= nil then
    COLORSCHEME = file:read()
    file:close()
end

SetColorscheme()
