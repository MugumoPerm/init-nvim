:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
" :set clipboard=unnamedplus


call plug#begin( '~/.vim/plugged' )

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'nvim-lua/plenary.nvim'
" Plug 'https://github.com/nvim-treesitter/nvim-treesitter' " Treesitter
Plug 'https://github.com/nvim-telescope/telescope.nvim' " Telescope
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/catppuccin/nvim' " Catppuccino
Plug 'https://github.com/rose-pine/neovim' " Rose Pine
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'craftzdog/solarized-osaka.nvim'
Plug 'https://github.com/folke/tokyonight.nvim' "tokyonight
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'npm ci' }
Plug 'ChrisBrowne/terminal-toggle.nvim' " Terminal Toggle

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'vim-pandoc/vim-pandoc' " Pandoc is capable of converting markdown to pdf

" session management
Plug 'rmagatti/auto-session'
Plug 'rmagatti/session-lens'

" WakaTime
" Plug 'wakatime/vim-wakatime'

" Plug 'https://github.com/kyazdani42/nvim-web-devicons'
" Plug 'https://github.com/DaikyXendo/nvim-material-icon' " Material Icons
" Plug 'akinsho/toggleterm.nvim' " Terminal
call plug#end()

autocmd User CocReady call coc#config()

" ################# NERDTree #################
" NerdTree
" automatically open NERDTree if no files specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" close vim if the only window left open is a NERDTree

" ################# terminal #################
" Set initial size of the terminal (15 lines)
" let g:toggleterm_size = 15

" Open terminal in a horizontal split
" let g:toggleterm_direction = 'horizontal'

" Key mapping to toggle the terminal
nnoremap <silent> <leader>t :ToggleTerm<CR>

" ################# WakaTime #################


" Set the statusline to include WakaTime information
set statusline+=%{WakaTimeStatusLine()}


" ################# end #################


nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

nmap <F8> :TagbarToggle<CR>
nmap <F9> :TagbarOpen<CR>

:set completeopt-=preview " For No Previews

:colorscheme jellybeans

" Open a new terminal split
nnoremap <leader>tsb :TerminalSplit bash<CR>

" save 
nnoremap <C-S> :w<CR>

" Map shortcut for switching to next buffer
nnoremap <C-j> :bnext<CR>

" Map shortcut for switching to previous buffer
nnoremap <C-k> :bprev<CR>

" Map shortcut for listing buffers
nnoremap <leader>bl :ls<CR>

" Map shortcut for closing buffer
nnoremap <leader>bd :bd<CR>

" Map shortcut for closing all buffers
nnoremap <leader>ba :%bd<CR>

" Map shortcut for copying selected text to clipboard
vnoremap <C-y> "+y<CR>

" Map shortcut for closing nvim
nnoremap <leader>q :q<CR>

" ########## Tab Navigation ##########
nnoremap <Tab> gt<CR>
nnoremap <S-Tab> gT<CR>
" new tab using tn
nnoremap <leader>tn :tabnew<CR>
" close tab using tc
nnoremap <leader>tc :tabclose<CR>

" ################# Telescope #################
nnoremap <S-t> :Telescope<CR>
