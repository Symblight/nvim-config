local function lua_nmap(key, cmd, opts)
  require('core.utils').keymap.buf_map( key, '' .. cmd .. '<CR>', opts)
end

return function(client)
  vim.opt.omnifunc = 'v:lua.vim.lsp.omnifunc'

  lua_nmap( 'gD', 'vim.lsp.buf.declaration()<CR>', opts)
  lua_nmap( 'gd', 'vim.lsp.buf.definition()<CR>', opts)
  lua_nmap( 'K', 'vim.lsp.buf.hover()<CR>', opts)
  lua_nmap( 'gi', 'vim.lsp.buf.implementation()<CR>', opts)
  lua_nmap( '<C-k>', 'vim.lsp.buf.signature_help()<CR>', opts)
  lua_nmap( '<space>wa', 'vim.lsp.buf.add_workspace_folder()<CR>', opts)
  lua_nmap( '<space>wr', 'vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  lua_nmap( '<space>wl', 'print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  lua_nmap( '<space>D', 'vim.lsp.buf.type_definition()<CR>', opts)
  lua_nmap( '<space>rn', 'vim.lsp.buf.rename()<CR>', opts)
  lua_nmap( '<space>ca', 'vim.lsp.buf.code_action()<CR>', opts)
  lua_nmap( 'gr', 'vim.lsp.buf.references()<CR>', opts)
  lua_nmap( '<space>e', 'vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  lua_nmap( '[d', 'vim.lsp.diagnostic.goto_prev()<CR>', opts)
  lua_nmap( ']d', 'vim.lsp.diagnostic.goto_next()<CR>', opts)
  lua_nmap( '<space>q', 'vim.lsp.diagnostic.set_loclist()<CR>', opts)
  lua_nmap( '<space>f', 'vim.lsp.buf.formatting()<CR>', opts)
  require('lsp_signature').on_attach()

  if client.name == 'typescript' then
    require('nvim-lsp-ts-utils').setup {}
  end

  -- So that the only client with format capabilities is efm
  if client.name ~= 'efm' then
    client.resolved_capabilities.document_formatting = false
  end

  if client.resolved_capabilities.document_formatting then
    vim.cmd [[
        augroup Format
          au! * <buffer>
          au BufWritePre <buffer> lua vim.lsp.buf.formatting_sync(nil, 1000)
        augroup END
      ]]
  end
end
