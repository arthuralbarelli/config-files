local options = {
	number = true,
	shiftwidth = 2,
	tabstop = 2,
	expandtab = true,
	clipboard = "unnamedplus",
	fileencoding = "utf-8",
	termguicolors = true
}

for k, v in pairs(options) do 
	vim.opt[k] = v
end
