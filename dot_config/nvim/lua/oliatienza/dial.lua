local augend = require("dial.augend")
require("dial.config").augends:register_group{
  -- default augends used when no group name is specified
  default = {
    augend.integer.alias.decimal,   -- nonnegative decimal number (0, 1, 2, 3, ...)
    augend.integer.alias.hex,       -- nonnegative hex number  (0x01, 0x1a1f, etc.)
    augend.date.alias["%Y/%m/%d"],  -- date (2022/02/19, etc.)
    augend.constant.alias.bool,   -- nonnegative decimal number (0, 1, 2, 3, ...)
	augend.constant.new {
		elements = {"prod", "dev"},
		word = false,
		cyclic = true,
    },
	augend.constant.new {
		elements = {"mathgaps-dev-b044f", "mathgaps-56d5a"},
		word = false,
		cyclic = true,
    },
  },

  -- -- augends used when group with name `mygroup` is specified
  -- mygroup = {
  --   augend.integer.alias.decimal,
  --   augend.constant.alias.bool,    -- boolean value (true <-> false)
  --   augend.date.alias["%m/%d/%Y"], -- date (02/19/2022, etc.)
  -- }
}

vim.api.nvim_set_keymap("n", "<C-a>", require("dial.map").inc_normal(), {noremap = true})
vim.api.nvim_set_keymap("n", "<C-x>", require("dial.map").dec_normal(), {noremap = true})
vim.api.nvim_set_keymap("v", "<C-a>", require("dial.map").inc_visual(), {noremap = true})
vim.api.nvim_set_keymap("v", "<C-x>", require("dial.map").dec_visual(), {noremap = true})
vim.api.nvim_set_keymap("v", "g<C-a>", require("dial.map").inc_gvisual(), {noremap = true})
vim.api.nvim_set_keymap("v", "g<C-x>", require("dial.map").dec_gvisual(), {noremap = true})
