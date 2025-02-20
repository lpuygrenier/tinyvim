return {
    defaults = {
        sorting_strategy = "ascending",
        layout_config = {
            horizontal = { prompt_position = "top" },
        },
    },
    extensions = {
        live_grep_args = {}
    },
    config = function()
        local telescope = require("telescope")
        telescope.setup {
            defaults = {
                sorting_strategy = "ascending",
                layout_config = {
                    horizontal = { prompt_position = "top" },
                },
            },
        }
        telescope.load_extension("live_grep_args")

        -- Key mapping for live grep args
    end
}
