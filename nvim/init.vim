syntax on

set sw=2
set nu
set numberwidth=1
set tabstop=2
set clipboard=unnamed

so ~/.config/nvim/cocsettings.vim
so ~/.config/nvim/emmetsettings.vim

inoremap jk <Esc>
let mapleader = ' '

call plug#begin()
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Yggdroot/indentLine'
Plug 'KeitaNakamura/neodark.vim'
call plug#end()

set termguicolors
colorscheme neodark

"Bufferline
lua << EOF
require("bufferline").setup{}
EOF

"NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>nn :NERDTreeToggle<CR>

"Bufferline
noremap <leader>; :bp<CR>
noremap <leader>l :bn<CR>

"Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
