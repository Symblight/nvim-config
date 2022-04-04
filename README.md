![cover](./images/neovim-logo-300x87.png)

## Contents

- vim (NeoVim) config

LSP servers
https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

# Hot keys

- ctrl+S = autocomplete
- ctrl+h = docs
- K = description
- Space + rr = Rename
- space+ff = telescope
- gr = search all cases
- ctrl+a = open tree files
- ctrl+w+S = horizontal splitting
- ctrl+w+v = vertical splitting
- ctrl+w+left/right/up/down = switch between panels

### Copilot

- Tab apply code
- :Colipot setup

## Telescope

install FZF native for telescope

## Comming Multiple lines

Follow the steps given below for commenting multiple using the terminal.

1. First, press `ESC`
2. Go to the line from which you want to start commenting. Then, press `ctrl + v`, this will enable the visual block mode.
3. use the `down arrow` to select multiple lines that you want to comment.
4. Now, press `SHIFT + I` to enable insert mode.
5. Press `#` and it will add a comment to the first line. Then press `ECS` and wait for a second, `#` will be added to all the lines.

### Uncommenting Multiple Lines

1. Press `CTRL + V` to enable visual block mode.
2. Move down and select the lines till you want to uncomment.
3. press `x` and it will uncomment all the selected lines at once.
