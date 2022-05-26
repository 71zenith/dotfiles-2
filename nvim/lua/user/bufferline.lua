local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  return
end

bufferline.setup {
  options = {
    numbers = "none",
    offsets = {{filetype = "NvimTree", text = "NvimTree" , text_align = "left" }},
    show_close_icon = false,
    always_show_bufferline = false,
    diagnostics = false,
  }
}
