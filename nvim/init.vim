" map allows recursive
" noremap prevents recursive

call plug#begin('~/.config/nvim/plugged')
" Colorscheme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sainnhe/sonokai'
Plug 'gruvbox-community/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'phanviet/vim-monokai-pro'
Plug 'flazz/vim-colorschemes'

" Quality of Life
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'Yggdroot/indentLine'
" Plug 'frazrepo/vim-rainbow'

Plug 'vimwiki/vimwiki'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-rooter'

Plug 'mhinz/vim-startify'

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" ===========================================================
" Choose a character to be leader key
" Delaults to '\'
let mapleader = ' '

" Use system clipboard, a bit buggy
set clipboard+=unnamedplus

" vertically center dociment when entering insert mode
" autocmd InsertEnter * norm zz

" Remove Trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" ===========================================================
" BASICS
" syntax things
filetype plugin indent on " enabled by default in neovim
set nocompatible " ignored in neovim
syntax on
set termguicolors

set number relativenumber
set encoding=UTF-8
set incsearch
set ignorecase
set smartcase

" Tab Settings Indentation settings
" using hard tabs
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
set softtabstop=4
" On pressing tab, insert space
" set expandtab
" delete all spaces till tabstop
set smarttab


" Cursorline and columnline
set cursorline
set cursorcolumn
highlight CursorLine ctermbg=Yellow cterm=bold guibg=#2b2b2b
highlight CursorColumn ctermbg=Yellow cterm=bold guibg=#2b2b2b

" ===========================================================
" MAPPINGS
" ===========================================================
" Splitting
set splitbelow splitright

" Shortcutting split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make adjusting sizes a bit more friendly
nnoremap <silent> <A-Left> :vertical resize -3<CR>
nnoremap <silent> <A-Right> :vertical resize +3<CR>
nnoremap <silent> <A-Up> :resize +3<CR>
nnoremap <silent> <A-Down> :resize -3<CR>

" Convert two vertical split to two horizontal split
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

" Shortcut Split Opening
nnoremap <leader>h :split<Space>
nnoremap <leader>v :vsplit<Space>

" map S to replace All
nnoremap S :%s//gci<Left><Left><Left><Left>

" F2 to toggle paste
set pastetoggle=<F2>

" indent does not get rid of visual block
vmap > >gv
vmap < <gv

" n forward search
" N backward search
nnoremap <expr> n (v:searchforward ? 'n' : 'N')
nnoremap <expr> N (v:searchforward ? 'N' : 'n')

" shift + Q to run macro stored at q
nnoremap Q @q

" toggle `set paste` and `set nopaste` with pastetogle

" I enter non-formatted plain new lines with <CR>.
" When I want to continue typing the next line in the commented block I just use the O key as usual.
" nnoremap <silent> <cr> :set paste<cr>o<esc>:set nopaste<cr>

" ===========================================================
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>

" ========================================================
" Plugins

" NERDTree plugin
" toggle nerdtree with Ctrl-o
map <C-o> :NERDTreeToggle<CR>
" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" indentLine
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" Tab lines for hard tab
set listchars=tab:\|\ " there is a space needed after \
set list

" rainbow brackets
let g:rainbow_active = 1

" NerdCommenter
" Nerd commenter uses
" nnoremap <leader>x <leader>c<Space>
" map <leader>c <Plug>NERDCommenterToggle

" Add a space after comment delimiter
let g:NERDSpaceDelims=1

" vimwiki
let g:vimwiki_list = [{'path': '~/vimwiki/',
			\ 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_global_ext = 0

" ensure compatability with vimwiki
let g:indentLine_concealcursor=""
let g:indentLine_conceallevel=2

" ========================================================
" Directory settings for stuff
if !isdirectory($HOME.'/.config/nvim')
	call mkdir($HOME.'/.config/nvim', "", 0770)
endif

if !isdirectory($HOME.'/.config/nvim/undo-dir')
	call mkdir($HOME.'/.config/nvim/undo-dir', "", 0770)
endif
set undodir=~/.config/nvim/undo-dir//
set undofile

if !isdirectory($HOME.'/.config/nvim/backup-dir')
	call mkdir($HOME.'/.config/nvim/backup-dir', "", 0700)
endif

set backupdir=~/.config/nvim/backup-dir//

" this is for .swp
if !isdirectory($HOME.'/.config/nvim/swp-dir')
	call mkdir($HOME.'/.config/nvim/swp-dir', "", 0700)
endif
set directory=~/.config/nvim/swp-dir//
" set backup
set noswapfile
set nobackup

let g:python3_host_prog = '/usr/bin/python3'
let g:coc_node_path = '~/.config/nvm/versions/node/v12.18.3/bin/node'
