local options = {
	number = true,
	shiftwidth = 2,
	tabstop = 2,
	clipboard = "unnamedplus",
	fileencoding = "utf-8"
}

for k, v in pairs(options) do 
	vim.opt[k] = v
end
