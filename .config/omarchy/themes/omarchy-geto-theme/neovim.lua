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
                bg = "#020102",
                bg_dark = "#020102",
                bg_highlight = "#886188",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#ffffff",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#f9f7f7",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#886188",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#c36e65",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#dfaaa4",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#c99175",
                -- green: Comments, strings, success states, git additions
                green = "#d2ad91",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#bfc0c1",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#dfdfe0",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#bca9af",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#e5dcdf",
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
