require('mason').setup({
    ensure_installed = {
        'lua_ls',
        'pyright',
        'mypy',
        'ruff',
        'stylua',
        'black',
    },
    --automatic_installation = { 'black', 'mypy', 'ruff', 'stylua', },
    -- Install the desired language servers
})
