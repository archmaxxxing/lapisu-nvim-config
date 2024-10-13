vim.g.mapleader = " "

vim.keymap.set("n", "<leader>v",vim.cmd.Ex)
vim.keymap.set("n", "<A-Up>", ':m .-2<CR>==',{noremap = true, silent = true})
vim.keymap.set("n", "<A-Down>", ':m .+1<CR>==', {noremap = true, silent = true})
vim.keymap.set("v", "<leader>y", '"+yy',{noremap = true, silent = true})
vim.keymap.set("n", "<leader>p", '"+p',{noremap = true, silent = true})

vim.keymap.set("v","K", ":m '<-2<CR>gv=gv", {noremap = true, silent = true})
vim.keymap.set("v","J", ":m '>+1<CR>gv=gv", {noremap = true, silent = true})

local function ChangeLineNumbering()
    if not vim.wo.number and not vim.wo.relativenumber then
        vim.wo.number = true
        vim.wo.relativenumber = false
        print("Line numbering: ON")
    elseif vim.wo.number and not vim.wo.relativenumber then
        vim.wo.number = false
        vim.wo.relativenumber = true
        print("Line numbering: Relative ON")
    elseif vim.wo.relativenumber then
        vim.wo.number = false
        vim.wo.relativenumber = false
        print("Line numbering: OFF")
    end
end

vim.keymap.set("n", "<leader>n", ChangeLineNumbering)

 


