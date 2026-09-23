vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)


-- --## terminal color for white background
-- vim.o.background = "light"
--
-- if vim.o.background == "light" then
-- 	vim.g.terminal_color_0  = "#202020" -- black
-- 	vim.g.terminal_color_1  = "#b00000" -- red
-- 	vim.g.terminal_color_2  = "#008700" -- green
-- 	vim.g.terminal_color_3  = "#875f00" -- yellow/brown
-- 	vim.g.terminal_color_4  = "#005faf" -- blue
-- 	vim.g.terminal_color_5  = "#870087" -- magenta
-- 	vim.g.terminal_color_6  = "#008787" -- cyan
-- 	vim.g.terminal_color_7  = "#606060" -- gray
-- 	vim.g.terminal_color_8  = "#808080" -- bright gray
-- 	vim.g.terminal_color_9  = "#d70000" -- bright red
-- 	vim.g.terminal_color_10 = "#00af00" -- bright green
-- 	vim.g.terminal_color_11 = "#af8700" -- bright yellow
-- 	vim.g.terminal_color_12 = "#0087ff" -- bright blue
-- 	vim.g.terminal_color_13 = "#af00af" -- bright magenta
-- 	vim.g.terminal_color_14 = "#00afaf" -- bright cyan
-- 	vim.g.terminal_color_15 = "#303030" -- replaced white
-- end

--## terminal color end



require("lazy").setup({

    -- session remember
    
     {
        "rmagatti/auto-session",
        config = function()
            require("auto-session").setup({
                auto_restore = true,
                auto_save = true,
            })
        end,
     }, 

    -- yazi
    {
        "mikavilpas/yazi.nvim",
        event = "VeryLazy",

        keys = {
            {
                "<leader>e",
                "<cmd>Yazi<cr>",
                desc = "Open Yazi",
            },
        },

        opts = {
            open_for_directories = true,
            keymaps = {
                show_help = "~",
            },
        },
    },

    -- gitsigns
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
        end,
    },
    -- undotree

    {
        "jiaoshijie/undotree",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        keys = {
            {
                "<leader>u",
                function()
                    require("undotree").toggle()
                end,
                desc = "Toggle UndoTree",
            },
        },
        opts = {
            float_diff = true,
            layout = "left_bottom",
            position = "right",
        },
    },

    --syntax
    { "neovim/nvim-lspconfig" },

    --markdown
    {
        "OXY2DEV/markview.nvim",
        ft = { "markdown" },
    },

    -- latex
    {
      "lervag/vimtex",
      lazy = false,
    },

    -- theme

    {
      "lukas-reineke/indent-blankline.nvim",
      main = "ibl",
      opts = {},
    },

    {
      "folke/tokyonight.nvim",
      lazy = false,
      priority = 1000,
      opts = {},
    },

    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
    },

    {
      "catppuccin/nvim",
      name = "catppuccin",
      priority = 1000,
    },

    -- Telescope
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim"
        }
    },

    -- Commenting
    {
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end,
    },

    -- Autocomplete
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
        }
    },

{
    "nvim-treesitter/nvim-treesitter",

    build = ":TSUpdate",

    event = { "BufReadPre", "BufNewFile" },

    config = function()

        local ok, configs = pcall(require, "nvim-treesitter.configs")

        if not ok then
            return
        end

        configs.setup({

            ensure_installed = {
                "c",
                "cpp",
                "lua",
                "vim",
                "bash",
                "json",
            },

            sync_install = false,

            auto_install = true,

            highlight = {
                enable = true,
            },

            indent = {
                enable = true,
            },

        })

    end,
},

})


-- ## gitsigns 
-- + added lines
-- ~ modified lines
-- _ deleted lines

-- require("lazy").setup({
--     {
--         "lewis6991/gitsigns.nvim",
--         config = function()
--             require("gitsigns").setup()
--         end,
--     },
-- })

-- Navigate hunks
vim.keymap.set("n", "<leader>0", function()
    require("gitsigns").next_hunk()
end, { desc = "Next hunk" })
vim.keymap.set("n", "<leader>9", function()
    require("gitsigns").prev_hunk()
end, { desc = "Previous hunk" })
-- Preview current hunk
vim.keymap.set("n", "<leader>8", function()
    require("gitsigns").preview_hunk()
end, { desc = "Preview hunk" })
-- Git blame current line
vim.keymap.set("n", "<leader>tb", function()
    require("gitsigns").blame_line()
end, { desc = "Blame line" })
-- Stage current hunk
vim.keymap.set("n", "<leader>6", function()
    require("gitsigns").stage_hunk()
end, { desc = "Stage hunk" })
-- Stage entire file
vim.keymap.set("n", "<leader>t6", function()
    require("gitsigns").stage_buffer()
end, { desc = "Stage buffer" })
-- Reset current hunk
vim.keymap.set("n", "<leader>tr", function()
    require("gitsigns").reset_hunk()
end, { desc = "Reset hunk" })
-- Undo staged hunk
vim.keymap.set("n", "<leader>u6", function()
    require("gitsigns").undo_stage_hunk()
end, { desc = "Undo stage hunk" })
-- Diff against index
vim.keymap.set("n", "<leader>t=", function()
    require("gitsigns").diffthis()
end, { desc = "Diff this" })
-- Toggle line blame
vim.keymap.set("n", "<leader>ft", function()
    require("gitsigns").toggle_current_line_blame()
end, { desc = "Toggle line blame" })
-- ## gitsigns end 
-- # auto-session
-- Ctrl+d    Delete selected session
-- :qall   exit all buffers
vim.cmd([[
  cnoreabbrev qall qa
]])
-- dir where session stores  ls ~/.local/share/nvim/sessions 
vim.keymap.set("n", "<leader>fs", "<cmd>AutoSession search<CR>") -- telescope session find list
vim.keymap.set("n", "<leader>`", "<cmd>AutoSession save<CR>")    -- save

-- ## auto-session end 


-- ## undotree
-- nvim undo files ~/.local/state/nvim/undo//
vim.opt.undofile = false
vim.opt.undolevels = 10000

-- -- remove undotree of current file 
-- vim.keymap.set("n", "<leader>ux", function()
--     local uf = vim.fn.undofile(vim.fn.expand("%"))
--     vim.fn.delete(uf)
--     print("Persistent undo file deleted")
-- end, { desc = "Delete undo file" })

--## undotree end

--syntax 
vim.lsp.enable("clangd")


vim.keymap.set("n", "K", vim.lsp.buf.hover, {})

--## indent lines
require("ibl").setup({
    indent = {
        char = "│",
    },
})



--## intro text remove
vim.opt.shortmess:append("I")


--## theme init
vim.cmd("colorscheme gruvbox")
--vim.cmd.colorscheme("catppuccin")
--vim.cmd.colorscheme("tokyonight-day")

--## inbuit themes
--vim.cmd("colorscheme morning")

--vim.cmd("colorscheme default")
--## comment color change for default theme
-- vim.api.nvim_set_hl(0, "Comment", {
-- 	fg = "#c379f7",
-- 	italic = true
-- })

-- Autocomplete config
local cmp = require("cmp")

cmp.setup({
    mapping = cmp.mapping.preset.insert({

        ["<C-Space>"] = cmp.mapping.complete(),

        ["<CR>"] = cmp.mapping.confirm({
            select = true
        }),

        ["<C-j>"] = cmp.mapping.select_next_item(),

        ["<C-k>"] = cmp.mapping.select_prev_item(),

    }),

    sources = cmp.config.sources({
        { name = "buffer" },
        { name = "path" },
    })

})


-- telescope keybindings
local builtin = require("telescope.builtin")

require("telescope").setup({
  defaults = {
    layout_strategy = "horizontal",

    layout_config = {
      horizontal = {
        prompt_position = "top",
        preview_width = 0.75,
      },

      width = 0.98,
      height = 0.98,
    },

    sorting_strategy = "ascending",
  },
})

--## telescope buffer bindings
local actions = require("telescope.actions")
require("telescope").setup({

	pickers = {

		buffers = {

			mappings = {

				-- i = {
				-- 	["<C-v>"] = actions.select_vertical,
				-- 	["<C-o>"] = actions.select_horizontal,
				-- 	["<C-t>"] = actions.select_tab,
				-- 	["<C-d>"] = actions.delete_buffer,
				-- },

				n = {
					["v"] = actions.select_vertical,
					["o"] = actions.select_horizontal,
					["t"] = actions.select_tab,
					["d"] = actions.delete_buffer,
				},
			},
		},
	},

})

-- telescope ignore folders - not to find and grep
require("telescope").setup({
  defaults = {
    file_ignore_patterns = {
      "node_modules/",
      ".git/",
      "MDK-ARM/",
      "build/",
      "cmake-build-debug/", 
      --"dist/",
    },
  },
})

-- # for command-mode -- :find 
-- these ** made -- :find searches recursively through all subdirectories
-- for gvim -- set path+=** 
vim.opt.path:append("**") -- for neovim
-- ignore these folder in find
vim.opt.wildignore:append({
  "*/node_modules/*",
  "*/.git/*",
  "*/build/*",
  "*/dist/*",
  "*.o",
  "*.obj",
  "*.a",
})

vim.opt.wildmenu = true
vim.opt.wildoptions = "pum"
-- naviation key for menu in -- :find
-- next <Tab>
-- previous <Shift-Tab>

--# command-mode find end


--# to disable mouse click in telescope mode
--[[    -- this [[ comment the block
require("telescope").setup({
    defaults = {
        mappings = {
            i = {
                ["<LeftMouse>"]        = function() end,
                ["<2-LeftMouse>"]      = function() end,
                ["<LeftDrag>"]         = function() end,
                ["<LeftRelease>"]      = function() end,
                ["<RightMouse>"]       = function() end,
            },

            n = {
                ["<LeftMouse>"]        = function() end,
                ["<2-LeftMouse>"]      = function() end,
                ["<LeftDrag>"]         = function() end,
                ["<LeftRelease>"]      = function() end,
                ["<RightMouse>"]       = function() end,
            },
        },
    },
})
]]

-- zoom in/out ctrl+ ctrl-
vim.g.neovide_scale_factor = 1.0

local change_scale_factor = function(delta)
    vim.g.neovide_scale_factor =
        vim.g.neovide_scale_factor * delta
end

vim.keymap.set("n", "<C-=>", function()
    change_scale_factor(1.25)
end)

vim.keymap.set("n", "<C-->", function()
    change_scale_factor(1 / 1.25)
end)



--font size
vim.o.guifont = "Cascadia Mono:h10" 
--vim.o.guifont = "Fira Code:h10"
--## custom keybinding
vim.o.timeout = true
vim.o.timeoutlen = 800

-- e . browser change pwd
--vim.g.netrw_keepdir = 0

-- file_browser keys
--:e ./ -- v vertical left open file ,, o horizontal up open file


vim.keymap.set("n", "<leader>b", builtin.buffers)
vim.keymap.set("n", "<leader>ff", builtin.find_files)
vim.keymap.set("n", "<leader>g", builtin.live_grep)
vim.keymap.set("n", "<leader>m", "<cmd>Telescope marks<CR>")
vim.keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>")
vim.keymap.set("n", "<leader>fh", builtin.help_tags)

-- set clipboard
vim.opt.clipboard = "unnamedplus"
vim.keymap.set("n", "ciw", '"_ciw')


-- paste in command mode by using ctrl+v
--vim.keymap.set("c", "<C-v>", "<C-R>+", { noremap = true })
-- Ctrl+V paste in insert mode -- no need in wsl
--vim.keymap.set("i", "<C-v>", "<C-r>+", { noremap = true })

-- for block visual mode -- alt+v -- because default profile of windows terminal use ctrl+v for paste
vim.keymap.set("n", "<M-v>", "<C-v>", {silent = true,})

--:delmarks a -- delete marks
--:delmarks abc -- del multiple marks
--:delmarks! -- del all marks

vim.keymap.set("n", "]", "$", { nowait = true })
vim.keymap.set("n", "[", "0", { nowait = true })
vim.keymap.set("v", "]", "$", { nowait = true })
vim.keymap.set("v", "[", "0", { nowait = true })

vim.keymap.set("n", "{", "%")
vim.keymap.set("n", ",", "<C-u>zz", { nowait = true })
vim.keymap.set("n", ".", "<C-d>zz", { nowait = true })
vim.keymap.set("v", ",", "<C-u>zz", { nowait = true })
vim.keymap.set("v", ".", "<C-d>zz", { nowait = true })

-- searching next  /search_word  
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
-- remove serach_word highlight
vim.keymap.set("n", "<C-c>", ":nohl<CR>", { desc = "Clear search hl", silent = true })

-- paste over selection without loosing yanked
vim.keymap.set("x", "p", [["_dP]])

-- prevent x delete from registering when next paste
vim.keymap.set("n", "x", '"_xi', opts)
vim.keymap.set("v", "x", '"_x', opts)

-- for indenting 
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- leader d delete wont remember as yanked/clipboard when delete pasting
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])


-- split line or sentance
vim.keymap.set("n", "s", "<Nop>", { silent = true }) -- disable the ori keybinding
vim.keymap.set("n", "<leader>s", "i<CR><Esc>k$", { noremap = true })


-- split view file maximize
vim.keymap.set("n", "<leader>z", "<C-w>_<C-w>|")

-- split view file return to split
vim.keymap.set("n", "<leader>fz", "<C-w>=")

-- swap the spilt view
vim.keymap.set("n", "<leader>fc", "<C-w>x")

-- change horizontal view to vertical view
vim.keymap.set("n", "<leader>fv", "<C-w>H")
-- change vertical view to horizontal view
vim.keymap.set("n", "<leader>fh", "<C-w>K")

-- new vertical split
vim.keymap.set("n", "<leader>n", ":vnew ", { noremap = true })
vim.keymap.set("n", "<leader>v", ":vs<CR>", { desc = "Vertical split current file" })

-- new tab
vim.keymap.set("n", "<leader>t", ":tabnew ", { noremap = true })

-- go to command mode --key taken
--vim.keymap.set("n", "<leader>c", ":", { noremap = true })

-- o and O without insert mode
vim.keymap.set("n", "o", "o<Esc>", { noremap = true })
vim.keymap.set("n", "O", "O<Esc>", { noremap = true })

-- quickfix
vim.keymap.set("n", "<leader>.", ":cn<CR>")
vim.keymap.set("n", "<leader>,", ":cp<CR>")
vim.keymap.set("n", "<leader>q", ":copen<CR>")
vim.keymap.set("n", "<leader>w", ":cclose<CR>")

-- line numbers 
vim.opt.number = true
vim.opt.relativenumber = false


-- clang formatter
vim.opt.modeline = false

-- INDENTATION
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.softtabstop = 2
vim.opt.smartindent = true
vim.opt.autoindent = true

-- ## full file -- clang-format
vim.keymap.set("n", "<F3>", function()

	local file = vim.fn.expand("%:p")

	vim.cmd("write")

	vim.fn.system({
		"clang-format",
      "--style=file",
		"-i",
		file
	})

	-- vim.fn.system({
	-- 	"clang-format",
	-- 	"-i",
	-- 	file
	-- })
	vim.cmd("checktime")

end, { silent = true })


-- ============================================================
-- Project root detection
--
-- Looks upward from the current file for:
--
--   .git
--   .project_root
--
-- Neovim's :pwd is NOT changed.
-- ============================================================

local function get_project_root()

  -- ----------------------------------------------------------
  -- Start from current file's directory
  -- ----------------------------------------------------------

  local file = vim.fn.expand("%:p")

  local start_path

  if file ~= "" then
    start_path = vim.fs.dirname(file)
  else
    start_path = vim.fn.getcwd()
  end


  -- ----------------------------------------------------------
  -- Search upward until filesystem root
  --
  -- IMPORTANT:
  -- Do NOT set "stop" here.
  -- We want to reach the top-level project directory.
  -- ----------------------------------------------------------

  local marker = vim.fs.find(
    {
      ".project_root",
      ".git",
    },
    {
      path = start_path,
      upward = true,
    }
  )[1]


  -- ----------------------------------------------------------
  -- Project marker found
  -- ----------------------------------------------------------

  if marker then
    return vim.fs.dirname(marker)
  end

  -- ----------------------------------------------------------
  -- No project marker found
  -- ----------------------------------------------------------

  return vim.fn.getcwd()
end

-- ============================================================
-- Ripgrep argument parser
--
-- Syntax:
--   :Rg [rg-options] <pattern>
--   :Rgf [rg-options] <pattern>
--
-- Examples:
--   :Rg hello
--   :Rg Hello world
--   :Rg -F Hello(
--   :Rg -F "Hello world"
--   :Rg -i hello
--   :Rg -i -g "*.c" hello
--   :Rgf -F "Hello world"
-- ============================================================

local function parse_rg_args(args)

  local rg_options = {}
  local pattern_parts = {}

  local i = 1

  while i <= #args do

    local arg = args[i]


    -- --------------------------------------------------------
    -- Options which require a separate value
    -- --------------------------------------------------------

    if arg == "-g"
        or arg == "--glob"
        or arg == "-t"
        or arg == "--type"
        or arg == "-T"
        or arg == "--type-not"
        or arg == "-M"
        or arg == "--max-columns"
        or arg == "-j"
        or arg == "--threads"
        or arg == "-e"
        or arg == "--regexp" then

      table.insert(rg_options, arg)

      if i < #args then
        i = i + 1
        table.insert(rg_options, args[i])
      end


    -- --------------------------------------------------------
    -- --option=value
    -- --------------------------------------------------------

    elseif arg:match("^%-%-[^=]+=.*") then

      table.insert(rg_options, arg)


    -- --------------------------------------------------------
    -- Normal short/long options
    --
    -- Examples:
    --   -F
    --   -i
    --   --hidden
    --   --fixed-strings
    -- --------------------------------------------------------

    elseif arg:sub(1, 1) == "-" and arg ~= "-" then

      table.insert(rg_options, arg)


    -- --------------------------------------------------------
    -- First non-option = beginning of search pattern
    -- --------------------------------------------------------

    else

      for j = i, #args do
        table.insert(pattern_parts, args[j])
      end

      break
    end

    i = i + 1
  end

  return rg_options, table.concat(pattern_parts, " ")
end


-- ============================================================
-- Helper: parse command arguments
--
-- Handles:
--   :Rg hello
--   :Rg "hello world"
--   :Rg -i hello
--   :Rg -F "Hello("
-- ============================================================

local function parse_command_args(text)

  local parsed = {}

  local current = ""
  local quote = nil
  local escape = false


  for i = 1, #text do

    local c = text:sub(i, i)


    if escape then

      current = current .. c
      escape = false


    elseif c == "\\" then

      escape = true


    elseif quote then

      if c == quote then
        quote = nil
      else
        current = current .. c
      end


    elseif c == '"' or c == "'" then

      quote = c


    elseif c:match("%s") then

      if current ~= "" then
        table.insert(parsed, current)
        current = ""
      end


    else

      current = current .. c
    end
  end


  if current ~= "" then
    table.insert(parsed, current)
  end


  return parsed
end


-- ============================================================
-- :Rg
--
-- Search entire PROJECT recursively.
--
-- Project root is automatically detected using:
--
--   .git
--   .project_root
--
-- Neovim's :pwd is NOT changed.
-- ============================================================

vim.api.nvim_create_user_command("Rg", function(opts)

  -- ----------------------------------------------------------
  -- Parse command arguments
  -- ----------------------------------------------------------

  local parsed = parse_command_args(opts.args)

  local rg_options, pattern = parse_rg_args(parsed)


  -- ----------------------------------------------------------
  -- Check pattern
  -- ----------------------------------------------------------

  if pattern == "" then

    vim.notify(
      "Rg: search pattern is missing",
      vim.log.levels.ERROR
    )

    return
  end


  -- ----------------------------------------------------------
  -- Automatically find project root
  -- ----------------------------------------------------------

  local project_root = get_project_root()


  -- ----------------------------------------------------------
  -- Build rg command
  --
  -- The project root is passed explicitly to rg.
  --
  -- This does NOT change Neovim's :pwd.
  -- ----------------------------------------------------------

  local cmd = {
    "rg",
    "--vimgrep",
    "--smart-case",
    "--hidden",
  }


  vim.list_extend(cmd, rg_options)


  -- ----------------------------------------------------------
  -- Pattern
  -- ----------------------------------------------------------

  table.insert(cmd, pattern)


  -- ----------------------------------------------------------
  -- Search PROJECT ROOT
  --
  -- Absolute path makes quickfix results reliable even when
  -- Neovim's current directory is somewhere else.
  -- ----------------------------------------------------------

  table.insert(cmd, project_root)


  -- ----------------------------------------------------------
  -- Execute rg directly
  --
  -- vim.system() does NOT use PowerShell/CMD parsing.
  -- ----------------------------------------------------------

  local result = vim.system(cmd, {
    text = true,
  }):wait()


  -- ----------------------------------------------------------
  -- Quickfix
  -- ----------------------------------------------------------

  local lines = vim.split(
    result.stdout or "",
    "\n",
    {
      trimempty = true,
    }
  )


  vim.fn.setqflist({}, "r", {
    title = "ripgrep [" .. project_root .. "]: " .. pattern,
    lines = lines,
    efm = "%f:%l:%c:%m",
  })


  vim.cmd("copen")

end, {
  nargs = "+",
  complete = "file",
})


-- ============================================================
-- :Rgs
--
-- Ripgrep search in selected file types:
--
--   .c
--   .h
--   .txt
--
-- Syntax:
--   :Rgs <pattern>
--
-- Examples:
--   :Rgs main
--   :Rgs hello
--   :Rgs "hello world"
--
-- Equivalent to:
--
--   :Rg -i -g "*.c" -g "*.h" -g "*.txt" <pattern>
--
-- Searches the entire detected PROJECT.
-- Neovim's :pwd is NOT changed.
-- ============================================================

vim.api.nvim_create_user_command("Rgs", function(opts)

  -- ----------------------------------------------------------
  -- Parse command arguments
  -- ----------------------------------------------------------

  local parsed = parse_command_args(opts.args)

  local _, pattern = parse_rg_args(parsed)


  -- ----------------------------------------------------------
  -- Check pattern
  -- ----------------------------------------------------------

  if pattern == "" then

    vim.notify(
      "Rfs: search pattern is missing",
      vim.log.levels.ERROR
    )

    return
  end


  -- ----------------------------------------------------------
  -- Automatically find project root
  -- ----------------------------------------------------------

  local project_root = get_project_root()


  -- ----------------------------------------------------------
  -- Build rg command
  --
  -- Rfs always searches:
  --
  --   *.c
  --   *.h
  --   *.txt
  --
  -- and is always case-insensitive.
  -- ----------------------------------------------------------

  local cmd = {
    "rg",
    "--vimgrep",
    "--smart-case",
    "--hidden",

    "-i",

    "-g", "*.c",
    "-g", "*.h",
    "-g", "*.txt",
  }


  -- ----------------------------------------------------------
  -- Pattern
  -- ----------------------------------------------------------

  table.insert(cmd, pattern)


  -- ----------------------------------------------------------
  -- Search project root
  -- ----------------------------------------------------------

  table.insert(cmd, project_root)


  -- ----------------------------------------------------------
  -- Execute rg directly
  --
  -- vim.system() does NOT use PowerShell/CMD parsing.
  -- ----------------------------------------------------------

  local result = vim.system(cmd, {
    text = true,
  }):wait()


  -- ----------------------------------------------------------
  -- Quickfix
  -- ----------------------------------------------------------

  local lines = vim.split(
    result.stdout or "",
    "\n",
    {
      trimempty = true,
    }
  )


  vim.fn.setqflist({}, "r", {
    title = "ripgrep [" .. project_root .. "] (*.c, *.h, *.txt): " .. pattern,
    lines = lines,
    efm = "%f:%l:%c:%m",
  })


  vim.cmd("copen")

end, {
  nargs = "+",
  complete = "file",
})


-- ============================================================
-- :Rgf
--
-- Search CURRENT FILE only.
--
-- Project root detection does NOT affect this command.
-- ============================================================

vim.api.nvim_create_user_command("Rgf", function(opts)

  -- ----------------------------------------------------------
  -- Parse command line
  -- ----------------------------------------------------------

  local parsed = parse_command_args(opts.args)

  local rg_options, pattern = parse_rg_args(parsed)


  -- ----------------------------------------------------------
  -- Check pattern
  -- ----------------------------------------------------------

  if pattern == "" then

    vim.notify(
      "Rgf: search pattern is missing",
      vim.log.levels.ERROR
    )

    return
  end


  -- ----------------------------------------------------------
  -- Current file
  -- ----------------------------------------------------------

  local file = vim.fn.expand("%:p")


  if file == "" then

    vim.notify(
      "Rgf: no current file",
      vim.log.levels.ERROR
    )

    return
  end


  -- ----------------------------------------------------------
  -- Build rg command
  -- ----------------------------------------------------------

  local cmd = {
    "rg",
    "--vimgrep",
    "--smart-case",
  }


  vim.list_extend(cmd, rg_options)


  -- Pattern
  table.insert(cmd, pattern)


  -- Current file
  table.insert(cmd, file)


  -- ----------------------------------------------------------
  -- Execute rg directly
  -- ----------------------------------------------------------

  local result = vim.system(cmd, {
    text = true,
  }):wait()


  -- ----------------------------------------------------------
  -- Quickfix
  -- ----------------------------------------------------------

  local lines = vim.split(
    result.stdout or "",
    "\n",
    {
      trimempty = true,
    }
  )


  vim.fn.setqflist({}, "r", {
    title = "ripgrep: " .. pattern,
    lines = lines,
    efm = "%f:%l:%c:%m",
  })


  vim.cmd("copen")

end, {
  nargs = "+",
})


-- ============================================================
-- <leader>fg
--
-- Search CURRENT FILE for word / visual selection.
--
-- This intentionally remains a current-file search.
-- ============================================================

vim.keymap.set({ "n", "v" }, "<leader>fg", function()

  local text


  -- ----------------------------------------------------------
  -- Get word / visual selection
  -- ----------------------------------------------------------

  if vim.fn.mode():match("[vV]") then

    vim.cmd('normal! "zy')
    text = vim.fn.getreg("z")

  else

    text = vim.fn.expand("<cword>")
  end


  -- ----------------------------------------------------------
  -- Current file
  -- ----------------------------------------------------------

  local file = vim.fn.expand("%:p")


  if text == "" then
    return
  end


  if file == "" then
    return
  end


  -- ----------------------------------------------------------
  -- Fixed-string search
  -- ----------------------------------------------------------

  local result = vim.system({
    "rg",
    "--vimgrep",
    "--smart-case",
    "-F",
    text,
    file,
  }, {
    text = true,
  }):wait()


  -- ----------------------------------------------------------
  -- Quickfix
  -- ----------------------------------------------------------

  local lines = vim.split(
    result.stdout or "",
    "\n",
    {
      trimempty = true,
    }
  )


  vim.fn.setqflist({}, "r", {
    title = "ripgrep: " .. text,
    lines = lines,
    efm = "%f:%l:%c:%m",
  })


  vim.cmd("copen")
end)


--## quick fix marks
local function marks_to_qf(global_marks)
  local qf = {}
  local seen = {}

  local marks

  if global_marks then
    -- global marks A-Z
    marks = vim.fn.getmarklist()
  else
    -- local marks a-z from current buffer
    marks = vim.fn.getmarklist(vim.fn.bufnr())
  end

  for _, mark in ipairs(marks) do
    local mark_name = mark.mark:sub(2, 2)

    -- filter marks
    if global_marks then
      if not mark_name:match("[A-Z]") then
        goto continue
      end
    else
      if not mark_name:match("[a-z]") then
        goto continue
      end
    end

    local pos = mark.pos

    local bufnr = pos[1]
    local lnum = pos[2]
    local col = pos[3]

    if bufnr > 0 and lnum > 0 then
      local file = vim.api.nvim_buf_get_name(bufnr)

      local key = file .. ":" .. lnum .. ":" .. col .. ":" .. mark.mark

      if file ~= "" and not seen[key] then
        seen[key] = true

        table.insert(qf, {
          filename = file,
          lnum = lnum,
          col = col,
          text = "mark " .. mark.mark,
        })
      end
    end

    ::continue::
  end

  table.sort(qf, function(a, b)
    if a.filename == b.filename then
      return a.lnum < b.lnum
    end
    return a.filename < b.filename
  end)

  vim.fn.setqflist({}, "r", {
    title = global_marks and "Global Marks" or "Local Marks",
    items = qf,
  })

  vim.cmd("copen")
end

-- local marks a-z
vim.api.nvim_create_user_command("Marks", function()
  marks_to_qf(false)
end, {})

-- global marks A-Z
vim.api.nvim_create_user_command("Markss", function()
  marks_to_qf(true)
end, {})

--## quick fix marks end 

--## change to current file pwd -> :Cd 
vim.api.nvim_create_user_command("Cd", function()
  vim.cmd("cd %:p:h")
  print(vim.fn.getcwd())
end, {})


--## quick file buffer :Ls

vim.api.nvim_create_user_command("Ls", function()
  vim.fn.setqflist({})

  local buffers = vim.fn.getbufinfo({ buflisted = 1 })
  local qf = {}

  for _, buf in ipairs(buffers) do
    table.insert(qf, {
      filename = buf.name,
      lnum = 1,
      col = 1,
      text = vim.fn.fnamemodify(buf.name, ":t"),
    })
  end

  vim.fn.setqflist(qf)
  vim.cmd("copen")
end, {})


--## reload init.lua 


-- ## instead reload config , restart the vim
-- restart 
vim.keymap.set("n", "r", "<Nop>", { silent = true }) -- disable the ori keybinding
vim.keymap.set("n", "<leader>r", "<cmd>restart<cr>", {
    desc = "Restart Neovim (:restart)",
})

--## reload file -- if it change in other editor
vim.opt.autoread = true

vim.o.updatetime = 500
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
    callback = function()
        vim.cmd("checktime")
    end,
})

--## removed blank white lines in text block -- in visual mode 
vim.api.nvim_create_user_command('DelLines', '%g/^\\s*$/d', {})

--## terminal toggle F4 keybinding
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true })

-- toggle terminal , to current file pwd
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true })

-- toggle terminal , to current file pwd
local terminal_buf = nil
local terminal_win = nil
local terminal_width = 80

function ToggleTerminal()
	if terminal_win and vim.api.nvim_win_is_valid(terminal_win) then

		-- save width before closing
		terminal_width = vim.api.nvim_win_get_width(terminal_win)

		vim.api.nvim_win_close(terminal_win, true)
		terminal_win = nil

	else
		local dir = vim.fn.expand("%:p:h")

		if dir == "" then
			dir = vim.loop.cwd()
		end

		-- open vertical split on right side
		vim.cmd("botright vsplit")

		-- restore previous width
		vim.cmd("vertical resize " .. terminal_width)

		-- set local cwd
		vim.cmd("lcd " .. vim.fn.fnameescape(dir))

		if terminal_buf and vim.api.nvim_buf_is_valid(terminal_buf) then
			vim.cmd("buffer " .. terminal_buf)
		else
			vim.cmd("terminal")
			terminal_buf = vim.api.nvim_get_current_buf()
		end

		terminal_win = vim.api.nvim_get_current_win()

		vim.cmd("startinsert")
	end
end

vim.keymap.set("n", "<F4>", ToggleTerminal, { silent = true })

vim.keymap.set("t", "<F4>", function()
	vim.cmd("stopinsert")
	ToggleTerminal()
end, { silent = true })

--# -- toggel termnial end

--# keybinding preview
local function show_my_keys()
    local lines = {
        "CUSTOM KEYMAPS",
        "",
        "<leader>r    reload the config",
        "<leader>ff   telescope find files",
        "<leader>g    telescope live grep",
        ":Rg <str>    ripgrep recursively in .project_root dir and put in quickfix",
        ":Rgs <str>   for files [.c, .h , .txt] -- ripgrep recursively in .project_root dir and put in quickfix",
        ":Rgf <str>   ripgrep in current file and put in quickfix -- Rgf -F -i -w <str>",
        "<leader>fg   ripgrep the word of current file and put in quickfix",
        "<leader>b    telescope buffers",
        ":Marks       quickfix local marks a-z",
        ":Markss      quickfix global marks A-Z",
        ":delmarks a  delete marks, delmarks abc -- del multiple marks , delmarks! -- del all marks",
        ":delmarks A-Z0-9  deletes all uppercase global mark",
        ":Ls          quickfix list buffers",
        ":bd          delete buffer",
        ":%bd         delete all buffer",
        ":C-^         toggle btw current and previous buffer",
        ":gD          go to global function definition",
        ":Ex          open open explorer",
        "<leader>m    telescope marks",
        "<leader>fo    telescope oldfiles",
        "<leader>u    toggle undotree",
        "X<leader>ux  delete undotree of current file",
        "<leader>s    split line or sentance",
        "<leader>z    splitview file maximize",
        "<leader>fz   quit maximize",
        "<leader>fc   swap the splitview",
        "<leader>fv   chg hori to vert",
        "<leader>fh   chg vert to hori",
        "<leader>fk   show keybinding keys",
        "<leader>fs   telescope session list",
        "<leader>`    auto-session save",

        "<leader>n    new vsplit",
        "<leader>v    open current file in vsplit",
        "<leader>t    new tabnew",
        "",
        "quickfix",
        "<leader>.    quickfix next",
        "<leader>,    quickfix previous",
        "<leader>q    quickfix open",
        "<leader>w    quickfix exit",
        "",
        ":Gitsigns",
        "<leader>9    Next hunk",
        "<leader>0    Previous hunk",
        "<leader>8	  Preview hunk -- show what the ori text -- at hunk",
        "<leader>tr	  Reset hunk -- reset to ori text",
        "<leader>6	  Stage hunk -- pin it corr chg",
        "<leader>t6	  Stage entire file -- pin it all corr chg ",
        "<leader>tb	  Blame line -- who chg the it",
        "<leader>u6	  Undo stage hunk -- unpin ",
        "<leader>t=	  Show diff",
        ":diffoff!    to quit the diff",
        "<leader>ft	  Toggle inline blame ",
        ":Gitsigns undo_stage_hunk      removed stage hunk entire file",
        ":DelLines   removed white line of select text in visual mode",

        "",
        ":terminal  open terminal",
        ":find      file_<tab_key> , tab -- next, shift-tab -- previous",
        ":qa        close all buffer at once -- auto-session",
        "shift+k    clang hover info",
        "F4         toggle terminal",
        "F3         clang format the c_file",
        "F          join and insert one Space -- select two lines in visual mode and press J",
        "x          in normal mode act as s key, in visual mode act as delete key",
        "<          page up",
        ">          page down",
        "[          home",
        "]          end",
        ":Cd        chg vim pwd to current file pwd",
        
        "<C-v>      telescope open in vertical vsplit",   
        "<C-o>      telescope open in horizontal split",   
        "<C-t>      telescope open in tab",   
        "<C-d>      telescope delete_buffer",   
        "<C-d>      telescope delete session",   
        "<C-v>      paste in insert mode",   
        "<C-c>      remove the highlight in search_word",   
        -- add hundreds of lines if needed
    }

    local buf = vim.api.nvim_create_buf(false, true)

    vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)

    local width = math.floor(vim.o.columns * 0.7)
    local height = math.floor(vim.o.lines * 0.7)

    local win = vim.api.nvim_open_win(buf, true, {
        relative = "editor",
        width = width,
        height = height,
        row = (vim.o.lines - height) / 2,
        col = (vim.o.columns - width) / 2,
        border = "rounded",
        style = "minimal",
    })

    vim.keymap.set("n", "<Esc>", function()
        if vim.api.nvim_win_is_valid(win) then
            vim.api.nvim_win_close(win, true)
        end
    end, { buffer = buf, silent = true })
end

vim.api.nvim_create_user_command("MyKeys", show_my_keys, {})

-- # keybinding preview map key
vim.keymap.set("n", "<leader>fk", "<cmd>MyKeys<CR>", {
    desc = "My Keybindings",
})

-- <C-d>      half-page down
-- <C-u>      half-page up
-- gg / G     top/bottom
-- /          search
-- Esc        close window

--## preview end

-- 
