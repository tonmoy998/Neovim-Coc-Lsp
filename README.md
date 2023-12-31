# Neovim-Coc-Lsp
Front-end setup for Neovim with css claases , php support.
<h3 align="center">Neovim Coc LSP</h3>

<p align="center">
    An awesome combinations of plugins for your web development projects with html,css,bootstrap,javascript and php support.Extra support:Python,Lua 
    <br />
</p>

![Dash Board](https://github.com/tonmoy998/Neovim-Coc-Lsp/blob/main/screenshots/dashboard.png)
## ✨ Features
<p align="center">
  <a href="https://skillicons.dev">
    <img src="https://skillicons.dev/icons?i=html,css,bootstrap,javascript,php,python,lua,vim" />
  </a>
</p>

## ⚡️ Requirements

- Neovim >= **0.8.0** (needs to be built with **LuaJIT**)
- Git >= **2.19.0** (for partial clones support)
- nodejs , npm (preinstalled)
- a [Nerd Font](https://www.nerdfonts.com/) **_(optional)_**


## 📦 Installation
Give it a try.You will love it.
> **Warning**
> THIS COMMANDS ARE FOR LINUX ONLY

Linux [Debian]
```sh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/tonmoy998/Neovim-Coc-Lsp/main/neovim-installer.sh)"
```

Now you are ready to go.Enter nvim in the terminal and it will automatically install dependencies!
```sh
nvim
```
###  ⌨️ Default Mappings

Mappings are fully customizable.
Many familiar mapping patterns are set up as defaults.
C stands for 'Ctrl' key. 
S stands for 'shift' key.
<leader> stands for space key.
<c-e> stands for "Ctrl" key along with the "e" key.
| Mappings       | Action                                               |
|----------------|------------------------------------------------------|
| `<space>`      | Leader Key                                           |
| `<C-s>`        | Save File                                            |
| `<C-q>`        | Quit IDE                                             |
| `j/k`          | Next/previous lines                                  |
| `<C-t>`        | Open Terminal                                        |
| `<leader>e`    | Toggle File System                                   |
| `<C-d>`        | Delete Current Buffer                                |
|`<leader><space>`| Find Files                                          |
| `<S-k>`        | Scroll right in next buffer                          |
| `<S-j>`        | Scroll left in previous buffer                       |
| `<leader>r`    | Runs current project                                 |
| `<leader>fc`   | Live colorschemes                                    |
Happy Coding.

### 📂 File Structure
<pre>
~/.config/nvim
├── init.lua
└── lua
    ├── autocmds.lua
    ├── keymap.lua [Default Keymaps]
    ├── lazy-config.lua
    ├── noiceCon.lua
    ├── plugins.lua
    ├── telescopeConf.lua
    └── TelescopeIcon.lua
</pre>

### Screenshots 
* DashBoard
![Dash Board](https://github.com/tonmoy998/Neovim-Coc-Lsp/blob/main/screenshots/dashboard.png)
* Css
![Dash Board](https://github.com/tonmoy998/Neovim-Coc-Lsp/blob/main/screenshots/css.png)


* Color Picker
![Dash Board](https://github.com/tonmoy998/Neovim-Coc-Lsp/blob/main/screenshots/colorPicker.png)


* Bootstrap Classes
![Bootstrap Classes](https://github.com/tonmoy998/Neovim-Coc-Lsp/blob/main/screenshots/bootstrapClass.png)

* Javascript
![Dash Board](https://github.com/tonmoy998/Neovim-Coc-Lsp/blob/main/screenshots/javascript.png)

* Php
![Dash Board](https://github.com/tonmoy998/Neovim-Coc-Lsp/blob/main/screenshots/phpLSP.png)

* Dap
![Dash Board](https://github.com/tonmoy998/Neovim-Coc-Lsp/blob/main/screenshots/dap.png)

* Telescope
![Dash Board](https://github.com/tonmoy998/Neovim-Coc-Lsp/blob/main/screenshots/telescopeimg.png)

* Python
![Dash Board](https://github.com/tonmoy998/Neovim-Coc-Lsp/blob/main/screenshots/python.png)

* Code Runner
![Dash Board](https://github.com/tonmoy998/Neovim-Coc-Lsp/blob/main/screenshots/coderunner.png)

* Live Theme Changing support
![Dash Board](https://github.com/tonmoy998/Neovim-Coc-Lsp/blob/main/screenshots/live-themes.png)

## ❌ Uninstalling

To uninstall, you need the following commands :

- **data**: `rm -rf ~/.config/nvim && rm -rf ~/.local/share/nvim`
- **restore** : `mv ~/.config/nvim.bak.1 ~/.config/nvim`
### Special Thanks To All Neovim Contributers Who Made Neovim At The Top. 
Collected from Lazyvim , Nv-ide.
