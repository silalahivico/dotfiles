local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        css = { "prettier" },
        html = { "prettier" },
        c = { "clang-format" },
        cpp = { "clang-format" },
        python = { "isort", "black" },
    },

    formatters = {
        ["clang-format"] = {
            prepend_args = {
                "-style={ \
                  IndentWidth: 4, \
                  TabWidth: 4, \
                  UseTab: Never, \
                  AccessModifierOffset: 0, \
                  IndentAccessModifiers: true, \
                  PackConstructorInitializers: Never}",
            },
        },
        ["black"] = {
            prepend_args = {
                "--fast",
                "--line-length",
                "80",
            },
        },
        ["isort"] = {
            prepend_args = {
                "--profile",
                "black",
            },
        },
    },

    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 5000,
        lsp_fallback = true,
    },
}

return options
