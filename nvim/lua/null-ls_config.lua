local status, null_ls = pcall(require, "null-ls")
if not status then
 return
end

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.completion.spell,
        null_ls.builtins.formatting.prettier,
        -- null_ls.builtins.code_actions.eslint,
        -- null_ls.builtins.diagnostics.eslint,
    },
})
