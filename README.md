![cover](./images/neovim-logo-300x87.png)

# Contents

- Neovim 0.9.1 config

### LSP servers

https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

### Awesome neovim

https://github.com/rockerBOO/awesome-neovim

# Hot keys

[hot keys neovim](https://gist.github.com/awidegreen/3854277)

### plugins hot keys

`leader` = ','

- `ctrl+S` = autocomplete
- `ctrl+ca` = Lsp actions to fix
- `ctrl+h` = docs
- `K` = description
- `Space + rr` = Rename
- `space+ff` = telescope
- `gr` = search all cases
- `ctrl+a` = open tree files
- `viw*` = search hightlighted word (n - bottom, N- top movement)

### replace

- `:%s/foo/bar/g` = replace 'foo' to 'bar'

## Multi

- CTRL+V, SHIFT + I, Esc

### Windows

- `ctrl+w+S` = horizontal splitting
- `ctrl+w+v` = vertical splitting
- `ctrl+w+left/right/up/down` = switch between panels

- `,tt` = toggle troubles

### Git

- `,hp` = preview git change
- `,tb` = toggle git line author

### Surround

- `cs"'` = replace " to '
- `ds` = delete surround
- `ysiW"` = "Hello world!" or <span>Hello world!</span>
- `yss` = The line

### Size

- `ctrl + w + >`
- `ctrl + w + <`
- `ctrl + w + +/-`
- `ctrl + w + =` - reset

# FZF

BurntSushi/ripgrep is required for live_grep and grep_string

- Rg: search word
- Buffers: buffer list

## Comments by plugin

### NORMAL mode

- `gcc` - Toggles the current line using linewise comment
- `gbc` - Toggles the current line using blockwise comment

### VISUAL mode

- `gc` - Toggles the region using linewise comment
- `gb` - Toggles the region using blockwise comment
- `g<` - Uncomments

## Telescope

install FZF native for telescope

# GIT

- :Commits - list commits
- :GFiles
- :Gitsigns preview_hunk - see git changes
- :Gitsigns toggle_current_line_blame - see author

## Reload config

- `:ReloadConfig` - reload config
- `:so` - reload lua file
