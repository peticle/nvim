-- Use jj to escape insert mode
vim.keymap.set("i", "jj", "<Esc>")

-- nvim-tree
vim.keymap.set("n", "<Leader>tt", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<Leader>tf", ":NvimTreeFocus<CR>")

-- telescope.nvim
local telescope = require("telescope.builtin")
vim.keymap.set("n", "<Leader>ff", telescope.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<Leader>fg", telescope.git_files, { desc = "Telescope find Git files" })
vim.keymap.set("n", "<Leader>fs", telescope.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<Leader>fb", telescope.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<Leader>fh", telescope.help_tags, { desc = "Telescope help tags" })

-- leap.nvim
vim.keymap.set({ "n", "x", "o" }, "s", "<Plug>(leap)")
vim.keymap.set("n", "S", "<Plug>(leap-from-window)")

-- undotree
vim.keymap.set("n", "<Leader>u", vim.cmd.UndotreeToggle)

-- nvim-ufo
local ufo = require("ufo")
vim.keymap.set("n", "zR", ufo.openAllFolds)
vim.keymap.set("n", "zM", ufo.closeAllFolds)
vim.keymap.set("n", "K", function()
	local winid = ufo.peekFoldedLinesUnderCursor()
	if not winid then
		vim.lsp.buf.hover()
	end
end)

-- fugitive.vim
vim.keymap.set("n", "<Leader>gs", ":Git<CR>")
vim.keymap.set("n", "<Leader>gc", ":Git commit<CR>")
vim.keymap.set("n", "<Leader>gp", ":Git push<CR>")
vim.keymap.set("n", "<Leader>gd", ":Gdiffsplit<CR>")
vim.keymap.set("n", "<Leader>gD", ":Git diff<CR>")
vim.keymap.set("n", "<Leader>gb", ":Git blame<CR>")
vim.keymap.set("n", "<Leader>gl", ":Git log<CR>")
vim.keymap.set("n", "<Leader>ga", ":Gwrite")
vim.keymap.set("n", "<Leader>gm", ":GMove")
vim.keymap.set("n", "<Leader>gM", ":GRename")
vim.keymap.set("n", "<Leader>gr", ":GDelete<CR>")

-- nvim-neoclip
vim.keymap.set("n", "<Leader>fy", ":Telescope neoclip<CR>")

-- smart-splits.nvim
local smartsplits = require("smart-splits")
vim.keymap.set("n", "<A-h>", smartsplits.resize_left)
vim.keymap.set("n", "<A-j>", smartsplits.resize_down)
vim.keymap.set("n", "<A-k>", smartsplits.resize_up)
vim.keymap.set("n", "<A-l>", smartsplits.resize_right)

vim.keymap.set("n", "<C-h>", smartsplits.move_cursor_left)
vim.keymap.set("n", "<C-j>", smartsplits.move_cursor_down)
vim.keymap.set("n", "<C-k>", smartsplits.move_cursor_up)
vim.keymap.set("n", "<C-l>", smartsplits.move_cursor_right)
vim.keymap.set("n", "<C-\\>", smartsplits.move_cursor_previous)

vim.keymap.set("n", "<leader><leader>h", smartsplits.swap_buf_left)
vim.keymap.set("n", "<leader><leader>j", smartsplits.swap_buf_down)
vim.keymap.set("n", "<leader><leader>k", smartsplits.swap_buf_up)
vim.keymap.set("n", "<leader><leader>l", smartsplits.swap_buf_right)

-- noice.nvim
vim.keymap.set("n", "<leader>nl", function()
	require("noice").cmd("last")
end)
vim.keymap.set("n", "<leader>nh", function()
	require("noice").cmd("history")
end)
