" either create symlink 
" or tell $HOME/.vimrc to source this file 
" echo "source ~/.config/vim/.vimrc" >> ~/.vimrc

" ===========================================================
" Choose a character to be leader key
" Delaults to '\'
let mapleader = ' '

" Use system clipboard, a bit buggy
" set clipboard+=unnamedplus

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

" indent does not get rid of visual block
vmap > >gv
vmap < <gv

" ========================================================
" Directory settings for stuff
if !isdirectory($HOME.'/.config/vim')
	call mkdir($HOME.'/.config/vim', "", 0770)
endif

" persistent undo between sessions
if !isdirectory($HOME.'/.config/vim/undo-dir')
	call mkdir($HOME.'/.config/vim/undo-dir', "", 0770)
endif
set undodir=~/.config/nvim/undo-dir//
set undofile

if !isdirectory($HOME.'/.config/vim/backup-dir')
	call mkdir($HOME.'/.config/vim/backup-dir', "", 0700)
endif
set backupdir=~/.config/vim/backup-dir//
set nobackup " files end with ~
set nowritebackup

if !isdirectory($HOME.'/.config/vim/swp-dir')
	call mkdir($HOME.'/.config/vim/swp-dir', "", 0700)
endif

" this is for .swp
set directory=~/.config/vim/swp-dir//
set noswapfile
