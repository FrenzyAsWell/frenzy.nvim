local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

require("barbar").setup
{
	vim.keymap.set('n', 'zj', '<Cmd>BufferPrevious<CR>', opts),
	vim.keymap.set('n', 'zk', '<Cmd>BufferNext<CR>', opts),
	vim.keymap.set('i', "<C-,>", "<Cmd>BufferPrevious<Cr>", opts),
	vim.keymap.set('i', "<C-.>", "<Cmd>BufferNext<Cr>", opts),
	vim.keymap.set('n', 'z,', '<Cmd>BufferMovePrevious<CR>', opts),

	vim.keymap.set('n', 'z1', '<Cmd>BufferGoto 1<CR>', opts),
	vim.keymap.set('n', 'z2', '<Cmd>BufferGoto 2<CR>', opts),
	vim.keymap.set('n', 'z3', '<Cmd>BufferGoto 3<CR>', opts),
	vim.keymap.set('n', 'z4', '<Cmd>BufferGoto 4<CR>', opts),
	vim.keymap.set('n', 'z5', '<Cmd>BufferGoto 5<CR>', opts),
	vim.keymap.set('n', 'z6', '<Cmd>BufferGoto 6<CR>', opts),
	vim.keymap.set('n', 'z7', '<Cmd>BufferGoto 7<CR>', opts),
	vim.keymap.set('n', 'z8', '<Cmd>BufferGoto 8<CR>', opts),
	vim.keymap.set('n', 'z9', '<Cmd>BufferGoto 9<CR>', opts),
	vim.keymap.set('n', 'z0', '<Cmd>BufferLast<CR>', opts),
	vim.keymap.set('n', 'zp', '<Cmd>BufferPin<CR>', opts),
	vim.keymap.set('n', 'zc', '<Cmd>BufferClose<CR>', opts),
	vim.keymap.set('n', '<C-p>', '<Cmd>BufferPick<CR>', opts),

	vim.keymap.set('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts),
	vim.keymap.set('n', '<Space>bn', '<Cmd>BufferOrderByName<CR>', opts),
	vim.keymap.set('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts),
	vim.keymap.set('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts),
	vim.keymap.set('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts),

	animation = false,

  auto_hide = false,
  tabpages = true,

  clickable = true,

  focus_on_close = 'right',

  hide = {
	  extensions = false,
	  inactive = false
  },

  highlight_alternate = false,

  highlight_inactive_file_icons = false,

  highlight_visible = true,

  icons = {
    buffer_index = false,
    buffer_number = false,
    button = '',

    diagnostics = {
      [vim.diagnostic.severity.ERROR] = {enabled = false, icon = 'ﬀ'},
      [vim.diagnostic.severity.WARN] = {enabled = false},
      [vim.diagnostic.severity.INFO] = {enabled = false},
      [vim.diagnostic.severity.HINT] = {enabled = false},
    },
    gitsigns = {
      added = {enabled = true, icon = '+'},
      changed = {enabled = true, icon = '~'},
      deleted = {enabled = true, icon = '-'},
    },

    filetype = {
      custom_colors = false,
      enabled = true,
    },

	separator = {left = '▎', right = ''},
    separator_at_end = true,

    modified = {button = '●'},
    pinned = {button = '', filename = true},

    preset = 'default',

    alternate = {filetype = {enabled = false}},
    current = {buffer_index = true},
    inactive = {button = '×'},
    visible = {modified = {buffer_number = false}},
  },

  insert_at_end = false,
  insert_at_start = false,

  maximum_padding = 1,
  minimum_padding = 1,

  maximum_length = 30,
  minimum_length = 0,

  semantic_letters = true,

  sidebar_filetypes = {
    NvimTree = true,

    undotree = {
      text = 'undotree',
      align = 'center',
    },
    ['neo-tree'] = {event = 'BufWipeout'},
    Outline = {event = 'BufWinLeave', text = 'symbols-outline', align = 'right'},
  },

  letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',
  no_name_title = nil,

  sort = {
    ignore_case = true,
  },
}
