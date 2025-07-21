-- following tutorials https://vineeth.io/posts/neovim-setup and https://www.youtube.com/watch?v=w7i4amO_zaE
require("anuks_configs")

if vim.g.vscode then
    -- VSCode extension
    require("vs_code_vim")
end