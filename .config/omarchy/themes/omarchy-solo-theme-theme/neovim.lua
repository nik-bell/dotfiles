return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#060606",
                bg_dark = "#060606",
                bg_highlight = "#797979",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#ffffff",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#f5fdfd",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#797979",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#5aa6ce",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#9dcde6",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#6dd3c6",
                -- green: Comments, strings, success states, git additions
                green = "#55e2d6",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#86e7ee",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#6fcae7",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#7dcfe8",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#c9edf8",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
