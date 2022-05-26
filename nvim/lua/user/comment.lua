local status_ok, comment = pcall(require, "nvim_comment")
if not status_ok then
  return
end
comment.setup({
  comment_empty = false,
})

