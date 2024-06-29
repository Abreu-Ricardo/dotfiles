local builtin = require('telescope.builtin')

-- Remapear teclas < f> de project file, para buscar arquivos
vim.keymap.set('n', '<leader>f', builtin.find_files, {})

-- Aqui busca arquivos dentro do repo git
vim.keymap.set('n', '<C-g>', builtin.git_files, {})

-- Busca dentro do arquivo, como um Ctrl+f
vim.keymap.set('n', '<leader>s', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)







local harpoon = require('harpoon')
harpoon:setup({})

-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end

    require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
            results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
    }):find()
end

vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end,
    { desc = "Open harpoon window" })



