require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"typescript",
		"lua",
		"javascript",
		"c",
		"cpp",
		"rust",
		"make",
		"cmake",
		"toml",
		"json",
		"yaml",
	},

	sync_install = false,
	auto_install = true,
	highlight = { enable = true },
})
if vim.loop.os_uname().sysname == "Windows_NT" then
	require("nvim-treesitter.install").compilers = { "clang" }
end
