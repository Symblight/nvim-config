local vim,api = vim,vim.api

-- command! -nargs=* Blame call s:GitBlame()

function GitBlame()
    local filepath = vim.api.nvim_buf_get_name(0)
    local fname = vim.fn.expand('%')
    local blame = vim.fn.system(string.format("git blame -c -L %d,%d %s", line[1], line[1], fname))
    local hash = vim.split(blame, '%s')[1]

    local hash = vim.split(blame, '%s')[1]
    if hash == '00000000' then return end

    local cmd = string.format("git show %s ", hash) .. "--format=' : %an | %ar | %s'"
    local text = vim.fn.system(cmd)
    text = vim.split(text, "\n")[1]
    if text:find("fatal") then return end
end

return GitBlame
