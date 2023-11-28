# Neovim-Coc-Lsp
Advanced front-end setup for Neovim with php support
<h3 align="center">Neovim Coc LSP</h3>

<p align="center">
    An awesome combinations of plugins for your web development projects with html,css,bootstrap,javascript and php support.Extra bonus :Python,Lua 
    <br />
    <a href=""><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="">View Demo</a>
    ·
    <a href="">Report Bug</a>
    ·
    <a href="">Request Feature</a>
</p>

![Dash Board](https://github.com/tonmoy998/Neovim-Coc-Lsp/blob/main/screenshots/dash.png)
## Features 
<p align="center">
  <a href="https://skillicons.dev">
    <img src="https://skillicons.dev/icons?i=html,css,bootstrap,javascript,php,python,lua,vim" />
  </a>
</p>

### Installation
Give it a try.You will love it.
> **Warning**
> THIS COMMANDS ARE FOR LINUX ONLY

Step 1.Save your existance neovim config
  ```sh
mv ~/.config/nvim/ ~/.config/nvim.bak.1
  ```
Step 2.Clone this project
 ```sh
git clone https://github.com/tonmoy998/Neovim-Coc-Lsp
  ```
Step 3.Move to your config path 
 ```sh
cd Neovim-Coc-Lsp && mv nvim ~/.config/
  ```
Now you are ready to go.Enter nvim in the terminal and it will automatically install dependencies!
 ```sh
nvim
  ```
## Default Mappings

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

### File Structure
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
![Dash Board](https://github.com/tonmoy998/Neovim-Coc-Lsp/blob/main/screenshots/dash.png)
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
![Dash Board](https://github.com/tonmoy998/Neovim-Coc-Lsp/blob/main/screenshots/telescope.png)

* Python
![Dash Board](https://github.com/tonmoy998/Neovim-Coc-Lsp/blob/main/screenshots/python.png)

* Code Runner
![Dash Board](https://github.com/tonmoy998/Neovim-Coc-Lsp/blob/main/screenshots/coderunner.png)

* Live Theme Changing support
![Dash Board](https://github.com/tonmoy998/Neovim-Coc-Lsp/blob/main/screenshots/live-themes.png)


### Special Thanks To All Neovim Contributers Who Made Neovim At The Top. 
