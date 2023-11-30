local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<keader>e", ":Neotree<CR>", opts)

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader><SPACE>", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

vim.cmd([[
nnoremap Y "+yy
set cursorline
set nowrap
set tabstop=8
set shiftwidth=2
set smarttab
set softtabstop=2
colorscheme tokyonight-night
nnoremap <S-k> :bnext<CR>
nnoremap <C-d> :bd!<CR>
nnoremap <TAB> :bnext<CR>
nnoremap <S-j> :bprev<CR>

let g:python3_host_prog = '/usr/bin/python3.10'
let g:pydocstring_doq_path = '/usr/bin/pydoc3.10'
set number
set relativenumber
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"



autocmd FileType html,css,javascript,php EmmetInstall
autocmd FileType html,css,javascript,php imap ,, <C-y>,
let g:user_emmet_settings = {
\  'variables': {'lang': 'ja'},
\  'html': {
\    'default_attributes': {
\      'option': {'value': v:null},
\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
\    },
\    'snippets': {
\      'html:5': "<!DOCTYPE html>\n"
\              ."<html lang=\"${lang}\">\n"
\              ."<head>\n"
\              ."\t<meta charset=\"${charset}\">\n"
\              ."\t<title></title>\n"
\              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
\              ."\t<link rel=\"stylesheet\" href=\"css/style.css\">\n"
\              ."</head>\n"
\              ."<body>\n\t${child}|\n</body>\n"
\              ."</html>",
\    },
\  },
\}

let g:asyncomplete_auto_popup = 0
let g:tagalong_filetypes = ['html']
let g:vim_matchtag_enable_by_default = 1
let g:vim_matchtag_files = '*.html,*.xml,*.js,*.jsx,*.vue,*.svelte,*.jsp'
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
"VIM MULTI CURSOR"
""let g:multi_cursor_use_default_mapping=0

" Default mapping
""let g:multi_cursor_start_word_key      = '<C-n>'
""let g:multi_cursor_select_all_word_key = '<A-n>'
""let g:multi_cursor_start_key           = 'g<C-n>'
""let g:multi_cursor_select_all_key      = 'g<A-n>'
""let g:multi_cursor_next_key            = '<C-n>'
""let g:multi_cursor_prev_key            = '<C-p>'
""let g:multi_cursor_skip_key            = '<C-x>'
""let g:multi_cursor_quit_key            = '<Esc>'
]])

keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)
keymap("i", "jj", "<ESC>", opts)
keymap("i", "kk", "<ESC>", opts)
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<A-s>", ":tab term live-server<CR>", opts) -- OPEN TERMINAL IN THE NEW TAB
keymap("n", "<C-q>", ":q!<CR>", opts)
keymap("n", "<C-d>", ":bd!<CR>", opts)
keymap("n", "<C-s>", ":w!<CR>", opts)
keymap("n", "<c-t>", ":terminal<CR>", opts)
keymap("n", "<leader>E", ":Ranger<CR>", opts)
keymap("n", "<leader>e", ":Neotree toggle<CR>", opts)
keymap("n", "<C-f>", ":Neoformat<CR>", opts)
keymap("n", "<A-r>", ":VCoolor<CR>", opts)
keymap("n", "<leader>fc", ":Telescope colorscheme<CR>", opts)



-- "Emmet setting
-- autocmd FileType html autocmd BufWritePre <buffer> call HtmlBeautify()
-- autocmd FileType html autocmd BufWritePre <buffer> call tagalong#Apply()
-- filetype plugin on
-- filetype indent on
-- set nowrap
-- set autoindent
-- set tabstop=4
-- set shiftwidth=2
-- set smarttab
-- set softtabstop=2
-- set mouse=a
-- set nocompatible
-- filetype on
-- syntax enable
-- set signcolumn=yes
-- set hidden
