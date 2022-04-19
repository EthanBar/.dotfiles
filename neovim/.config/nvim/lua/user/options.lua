local options = {
    hlsearch = true,            -- highlight all matches on previous search pattern
    mouse = "a",                -- allow the mouse to be used inneovim
    pumheight = 10,             -- pop up menu height
    showmode = false,           -- we don't need to see things like -- INSERT -- anymore
    showtabline = 2,            -- always show tabs
    smartindent = true,         -- make indenting smarter again
    splitbelow = true,          -- force all horizontal splits to go below current window
    splitright = true,          -- force all vertical splits to go to the right of current window
    termguicolors = true,       -- set term gui colors (most terminals support this)
    timeoutlen = 500,           -- time to wait for a mapped sequence to complete (in milliseconds)
    undofile = true,            -- enable persistent undo
    updatetime = 300,           -- faster completion (4000ms default)
    expandtab = true,           -- convert tabs to spaces
    shiftwidth = 4,             -- the number of spaces inserted for each indentation
    tabstop = 4,                -- insert 2 spaces for a tab
    cursorline = true,          -- highlight the current line
    number = true,              -- set numbered lines
    signcolumn = "number",      -- replace the number with any signs
    scrolloff = 8,              -- always buffer cursor at least 8 lines from top or bottom
    sidescrolloff = 8,
    background = "dark",
    colorcolumn = "80",         -- show character limit line
    shortmess = "I"
}

-- Colorscheme
vim.g.ayucolor = "dark"
vim.cmd "colorscheme ayu"

-- Show indent levels, but not the first
vim.indent_blankline_show_first_indent_level = false
vim.opt.shortmess:append "c"

for k, v in pairs(options) do
    vim.opt[k] = v
end

-- Defines what a word is
vim.cmd [[set iskeyword+=-]]
-- Don't continue comments
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")
vim.cmd("autocmd BufWritePre *.js Neoformat")
