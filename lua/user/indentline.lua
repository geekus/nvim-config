local status_ok, indent_blankline = pcall(require, "indent_blankline")
if not status_ok then
  return
end

-- which contexts to highlight -- https://github.com/lukas-reineke/indent-blankline.nvim/issues/61
vim.g.indent_blankline_context_patterns = {
  "declaration",
  "expression",
  "pattern",
  "primary_expression",
  "statement",
  "switch_body",
  "object",
  "jsx_attribute",
  "jsx_closing_element",
  "jsx_element",
  "jsx_expression",
  "jsx_fragment",
  "jsx_namespace_name",
  "jsx_opening_element",
  "jsx_self_closing_element",
}

indent_blankline.setup {
  char = "▏",
  show_trailing_blankline_indent = false,
  show_first_indent_level = true,
  use_treesitter = true,
  show_current_context = true,
  buftype_exclude = { "terminal", "nofile" },
  filetype_exclude = {
    "help",
    "packer",
    "NvimTree",
  },
}
