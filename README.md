![cover](./images/neovim-logo-300x87.png)

# Contents

- Neovim 0.12 config

# Setup on a new machine

### Prerequisites

- `node` / `npm`, `go`, `rustup`
- `ripgrep` (Telescope live grep), optionally `fd`

### LSP servers

Enabled in `lua/at/lsp/`. Install the executables before the first run:

| Server          | Language                 | Executable                                                   |
| --------------- | ------------------------ | ------------------------------------------------------------ |
| `ts_ls`         | JS / TS                  | `typescript-language-server`                                 |
| `diagnosticls`  | eslint / prettier        | `diagnostic-languageserver` (+ `eslint_d`, `prettier`)       |
| `pyright`       | Python                   | `pyright-langserver`                                         |
| `rust_analyzer` | Rust                     | `rust-analyzer`                                              |
| `cssls`, `html` | CSS, HTML                | `vscode-css-language-server`, `vscode-html-language-server`  |
| `dockerls`      | Dockerfile               | `docker-langserver`                                          |
| `svelte`        | Svelte                   | `svelteserver`                                               |
| `bashls`        | Bash                     | `bash-language-server`                                       |
| `yamlls`        | YAML                     | `yaml-language-server`                                       |
| `gopls`         | Go                       | `gopls`                                                      |
| `gdscript`      | Godot                    | none, connects to a running Godot editor                     |

```sh
npm i -g typescript typescript-language-server \
  diagnostic-languageserver eslint_d prettier \
  pyright vscode-langservers-extracted dockerfile-language-server-nodejs \
  svelte-language-server bash-language-server yaml-language-server
rustup component add rust-analyzer
go install golang.org/x/tools/gopls@latest
```

Optional: `:GoInstallBinaries` for go.nvim tools.

Check with `:checkhealth vim.lsp`. Server docs:
https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md

### Awesome neovim

https://github.com/rockerBOO/awesome-neovim

# Hot keys

[hot keys neovim](https://gist.github.com/awidegreen/3854277)

### plugins hot keys

`leader` = ','

- `viw*` = search hightlighted word (n - bottom, N- top movement)
- `,<space>` = clear search highlight

### LSP

| Key         | Action                                         |
| ----------- | ---------------------------------------------- |
| `K`         | Hover info (type / docs) for word under cursor |
| `gd`        | Go to definition                               |
| `gD`        | Go to declaration                              |
| `gi`        | Go to implementation                           |
| `gr`        | List references                                |
| `Space D`   | Go to type definition                          |
| `Space rn`  | Rename symbol                                  |
| `Space ca`  | Code actions (quick fix)                       |
| `Space f`   | Format buffer                                  |
| `Space e`   | Show diagnostic of current line in a popup     |
| `[d` / `]d` | Previous / next diagnostic                     |
| `Space q`   | All diagnostics to location list               |
| `Space wa` / `Space wr` / `Space wl` | Add / remove / list workspace folders |

### Completion (insert mode)

| Key                 | Action                  |
| ------------------- | ----------------------- |
| `Ctrl-S`            | Trigger completion      |
| `Ctrl-e`            | Abort completion        |
| `Ctrl-b` / `Ctrl-f` | Scroll docs up / down   |

### Telescope

| Key        | Action                                  |
| ---------- | --------------------------------------- |
| `Space ff` | Find files (relative to current file)   |
| `Space lg` | Live grep                               |
| `Space b`  | Buffers                                 |
| `Space fb` | File browser                            |
| `Space h`  | Help tags                               |

### Move lines

- `Ctrl-j` / `Ctrl-k` = move line (or selection) down / up

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
