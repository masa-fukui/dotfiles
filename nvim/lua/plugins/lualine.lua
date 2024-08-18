local workenv = os.getenv("WORK_ENV")
local options

if workenv == "work" then
	options = {
		theme = "nordic",
        icons_enabled = true,
        disabled_filetypes = { 'neo-tree'},
	}
else
	options = {
		theme = "auto",
        icons_enabled = true,
        disabled_filetypes = { 'neo-tree'},
	}
end

require("lualine").setup({
	options = options,
	sections = {
        lualine_a = {
          {
            'mode',
            fmt = function(str)
              return ' ' .. str
            end,
          },
        },
		lualine_c = {
			{
				"filename",
				file_status = true, -- displays file status (readonly status, modified status)
				path = 1,
			},
		},
	},
})
