local keymaps = require("config.keymap");
local nnoremap = keymaps.nnoremap;

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

nnoremap("<leader>a", mark.add_file)
nnoremap("<leader>i", ui.toggle_quick_menu)

nnoremap("<C-h>", function()
  ui.nav_file(1)
end)

nnoremap("<C-j>", function()
  ui.nav_file(2)
end)

nnoremap("<C-k>", function()
  ui.nav_file(3)
end)

nnoremap("<C-l>", function()
  ui.nav_file(4)
end)
