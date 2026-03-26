local wilder = require("wilder")

wilder.setup({ modes = { ":", "/", "?" } })

-- Define custom highlight groups

wilder.set_option('renderer', wilder.popupmenu_renderer(
    wilder.popupmenu_border_theme({
        min_width = '20%', -- minimum height of the popupmenu, can also be a number
        min_height = '15%', -- to set a fixed height, set max_height to the same value
        reverse = 0,        -- if 1, shows the candidates from bottom to top
        -- highlighter = wilder.basic_highlighter(),
        highlighter = wilder.lua_fzy_highlighter(),
        -- highlighter = {
            -- wilder.lua_pcre2_highlighter(), -- Requires luarocks install pcre2
            -- wilder.lua_fzy_highlighter(), -- Requires fzy-lua-native
        -- },
        highlights = {
            default = wilder.make_hl(
                "WilderPopupMenu",
                "Pmenu",
                { { a = 1 }, { a = 1 }, { background = "#1E212B" } } -- Adjust background color
            ),
            accent = wilder.make_hl(
                "WilderAccent",
                "Pmenu",
                { { a = 1 }, { a = 1 }, { foreground = "#58FFD6", background = "#1e1e2e" } }
            ),
        },
        left = { ' ', wilder.popupmenu_devicons() },
        right = { ' ', wilder.popupmenu_scrollbar() },
        -- 'single', 'double', 'rounded' or 'solid'
        -- can also be a list of 8 characters, see :h wilder#popupmenu_border_theme() for more details
        border = "single",
    })
))

wilder.set_option('pipeline', {
  wilder.branch(
    wilder.cmdline_pipeline({
      -- sets the language to use, 'vim' and 'python' are supported
      language = 'python',
      -- 0 turns off fuzzy matching
      -- 1 turns on fuzzy matching
      -- 2 partial fuzzy matching (match does not have to begin with the same first letter)
      fuzzy = 1,
    }),
    wilder.python_search_pipeline({
      -- can be set to wilder#python_fuzzy_delimiter_pattern() for stricter fuzzy matching
      pattern = wilder.python_fuzzy_pattern(),
      -- omit to get results in the order they appear in the buffer
      sorter = wilder.python_difflib_sorter(),
      -- can be set to 're2' for performance, requires pyre2 to be installed
      -- see :h wilder#python_search() for more details
      engine = 're',
    })
  ),
})


