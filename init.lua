require("dex")

function SetColorscheme(color)
    color = color or 'catppuccin'

    vim.cmd("colorscheme " .. color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

SetColorscheme('mellow')

if vim.fn.filereadable(vim.fn.getcwd() .. "./project.godot") == 1 then
    local addr = "./godot.pipe"

    vim.fn.serverstart(addr)
end
