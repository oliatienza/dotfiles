local lspconfig = require('lspconfig');

local on_attach = function(client, bufnr)
    -- vim.cmd("command! LspDef lua vim.lsp.buf.definition()")
    -- vim.cmd("command! LspFormatting lua vim.lsp.buf.formatting()")
    -- vim.cmd("command! LspCodeAction lua vim.lsp.buf.code_action()")
    -- vim.cmd("command! LspHover lua vim.lsp.buf.hover()")
    -- vim.cmd("command! LspRename lua vim.lsp.buf.rename()")
    -- vim.cmd("command! LspRefs lua vim.lsp.buf.references()")
    -- vim.cmd("command! LspTypeDef lua vim.lsp.buf.type_definition()")
    -- vim.cmd("command! LspImplementation lua vim.lsp.buf.implementation()")
    -- vim.cmd("command! LspDiagPrev lua vim.diagnostic.goto_prev()")
    -- vim.cmd("command! LspDiagNext lua vim.diagnostic.goto_next()")
    -- vim.cmd("command! LspDiagLine lua vim.diagnostic.open_float()")
    -- vim.cmd("command! LspSignatureHelp lua vim.lsp.buf.signature_help()")
    -- buf_map(bufnr, "n", "gd", ":LspDef<CR>")
    -- buf_map(bufnr, "n", "gr", ":LspRename<CR>")
    -- buf_map(bufnr, "n", "gy", ":LspTypeDef<CR>")
    -- buf_map(bufnr, "n", "K", ":LspHover<CR>")
    -- buf_map(bufnr, "n", "[a", ":LspDiagPrev<CR>")
    -- buf_map(bufnr, "n", "]a", ":LspDiagNext<CR>")
    -- buf_map(bufnr, "n", "ga", ":LspCodeAction<CR>")
    -- buf_map(bufnr, "n", "<Leader>a", ":LspDiagLine<CR>")
    -- buf_map(bufnr, "i", "<C-x><C-x>", "<cmd> LspSignatureHelp<CR>")
    -- if client.resolved_capabilities.document_formatting then
    --     vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
    -- end
end

lspconfig.graphql.setup{}

lspconfig.tsserver.setup({
    on_attach = function(client, bufnr)
        client.resolved_capabilities.document_formatting = false
        client.resolved_capabilities.document_range_formatting = false

        local ts_utils = require("nvim-lsp-ts-utils")
        ts_utils.setup({})
        ts_utils.setup_client(client)

        on_attach(client, bufnr)
    end,
})

-- require('lspconfig').sumneko_lua.setup{

-- }
-- nnoremap gD <cmd>lua vim.lsp.buf.declaration()<cr>
-- nnoremap gd <cmd>lua vim.lsp.buf.definition()<cr>
-- nnoremap gi <cmd>lua vim.lsp.buf.implementation()<cr>
-- nnoremap gr <cmd>lua vim.lsp.buf.references()<cr>
--
-- nnoremap <leader>rn <cmd>lua vim.lsp.buf.rename()<cr>
-- nnoremap K <cmd>lua vim.lsp.buf.hover()<cr>
-- nnoremap <leader>F <cmd>lua vim.lsp.buf.formatting_sync()<cr>
-- nnoremap <leader>ca <cmd>lua vim.lsp.buf.code_action()<cr>
-- nnoremap <silent> <leader>dk <cmd>lua vim.diagnostic.goto_prev()<cr>
-- nnoremap <silent> <leader>dj <cmd>lua vim.diagnostic.goto_next()<cr>
-- local buf = 'vim.lsp.buf.'
-- local map_ts = function(key, cmd)
--   map('n', 'g' .. key, buf .. cmd)
-- end

-- local map_lead = function(key, cmd)
--   mapx('n', '<leader>' .. key, buf .. cmd)
-- end

-- local map_slead = function(key, cmd)
--   mapx('n', '<silent> <leader>' .. key, buf .. cmd)
-- end

-- map_ts('D', 'declaration')
-- map_ts('d', 'definition')
-- map_ts('i', 'implementation')
-- map_ts('r', 'references')
-- map('n','K', buf .. 'hover')
-- map_lead('rn', 'rename')
-- map_lead('F', 'formatting_sync')
-- map_lead('ca', 'code_action')
-- map_slead('dk', 'goto_prev')
-- map_slead('dj', 'goto_next')
-- local bufopts = { noremap=true, silent=true, buffer=bufnr }
local bufopts = { noremap=true, silent=true}
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)

-- Go
lspconfig.gopls.setup{}
