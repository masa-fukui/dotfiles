local workenv = os.getenv("WORK_ENV")
local options

if workenv == "work" then
	options = {
		theme = "nordic",
	}
else
	options = {
		theme = "auto",
	}
end

require("lualine").setup({
	options = options,
	sections = {
		lualine_c = {
			{
				"filename",
				file_status = true, -- displays file status (readonly status, modified status)
				path = 1,
			},
		},
	},
})
