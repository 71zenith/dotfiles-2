local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
  return
end

local mode = {
  function()
    return " "
  end,
  padding = { left = 0, right = 0 },
  color = {},
  cond = nil,
}

local branch = {
  "branch",
  icons_enabled = true,
  icon = "",
}

local diff = {
  "diff",
  colored = true,
  symbols = { added = " ", modified = " ", removed = " " },
}

local progress = { function()
  local current_line = vim.fn.line(".")
  local total_lines = vim.fn.line("$")
  local chars = { "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }
  local line_ratio = current_line / total_lines
  local index = math.ceil(line_ratio * #chars)
  return chars[index]
end, 
  color = { bg = "#202328" , fg = "#bbc2cf" },
  padding = { left = 0, right = 0 },
}

lualine.setup({
  options = {
    icons_enabled = true,
    component_separators = '',
    section_separators = '',
    theme = auto,
  },
  sections = {
    lualine_a = { mode },
    lualine_b = { branch },
    lualine_c = { 'filename' },
    lualine_x = { diff },
    lualine_y = { 'filetype' },
    lualine_z = { progress },
  },
  extensions = { "nvim-tree" , "toggleterm" },
})
