require('telescope').setup{
    defaults = {
        vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case',
            '--hidden',
            '--no-ignore',
            '--glob=!.git/',
            '--glob=!node_modules/',
            '--glob=!.venv/',
        },
        file_ignore_patterns = {
            "^%.git/",
            "^node_modules/",
            "^%.venv/",
        },
        layout_strategy = 'horizontal',
        layout_config = {
            horizontal = {
                prompt_position = 'top',
                preview_width = 0.55,
                results_width = 0.8,
            },
            width = 0.87,
            height = 0.80,
            preview_cutoff = 120,
        },
        sorting_strategy = 'ascending',
    },
    pickers = {
        find_files = {
            hidden = true,
            no_ignore = true,
        },
    },
}
