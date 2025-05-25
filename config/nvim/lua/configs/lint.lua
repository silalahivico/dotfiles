local lint = require("lint")

lint.linters_by_ft = {
    lua = { "luacheck" },
    python = { "flake8" },
}

lint.linters.luacheck.args = {
    (lint.linters.luacheck.args).unpack,
    "--globals",
    "love",
    "vim",
}

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
    callback = function()
        lint.try_lint()
    end,
})
