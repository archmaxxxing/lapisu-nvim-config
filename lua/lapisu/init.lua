require("lapisu.remap")
require("lapisu.set")
require("mason").setup()
require("mason-lspconfig").setup{
	ensure_installed = {"lua_ls","rust_analyzer","gopls","pylsp"}
}

-- After setting up mason-lspconfig you may set up servers via lspconfig
-- require("lspconfig").lua_ls.setup {}
-- require("lspconfig").rust_analyzer.setup {}
-- ...
