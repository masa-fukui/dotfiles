require("notify").setup({
    stages = "fade_in_slide_out",
    timeout = 3000,
    background_colour = "#000000",
    text_colour = "#d0d0d0",
    icons = {
        ERROR = "",
        WARN = "",
        INFO = "",
        DEBUG = "",
        TRACE = "✎",
    },
})
-- nvim-notify
vim.keymap.set("n", "<leader>sn", function()
    require("notify").history()
end, { desc = "Notify" })
