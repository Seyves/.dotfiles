function Color(color)
	color = color or "mellow"
	vim.cmd.colorscheme(color)
    vim.opt.background = "dark"
	vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end

Color()
