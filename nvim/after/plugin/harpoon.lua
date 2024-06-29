
local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

-- Mark o arquivo atual aberto e poe na lista
vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)

-- Abre a lista Ctrl+e
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

-- Alterna entre os que tem na lista
-- Para alterar a lista eh soh apagar o que quer e copiar de volta
-- Usar V+d para selecionar tudo e dps apagar e P para colocar 
-- na ordem que quiser
-- <M-q> eh Alt+q <M-e> eh Alt+e
vim.keymap.set("n", "<M-q>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<M-e>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
-- vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<M-n>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<M-p>", function() harpoon:list():next() end)
--vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)

-- Limpa lista do harpoon
vim.keymap.set("n", "<M-l>", function() harpoon:list():clear() end)

