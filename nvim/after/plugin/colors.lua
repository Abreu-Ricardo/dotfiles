
function arrumaFundo(Colors)
	color = color or "sourlick-contrast"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0 , "Normal", {bg = "none"})
	vim.api.nvim_set_hl(0 , "NormalFloat", {bg = "none"})

    -- Deixa transparente ate onde n tem texo
    vim.api.nvim_set_hl(0 , "NonText" , {bg = "none"})

end

    --use ('nvim-treesitter/nvim-treesitter', run=':TSUpdate')


arrumaFundo()
