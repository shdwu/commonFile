call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'morhetz/gruvbox'
Plug 'easymotion/vim-easymotion'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
Plug 'scrooloose/nerdcommenter'
Plug 'mattn/emmet-vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'posva/vim-vue'

call plug#end()

" === common settings ===
set nu
set wildmenu
set nowrap " 禁止折行
let mapleader=";"
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nmap <leader>e :e<CR>
filetype on
filetype plugin on
autocmd BufWritePost $MYVIMRC source $MYVIMRC " 变更.vimrc后不用重启
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Backspace>
inoremap <C-l> <Right>
" === indention options ===
set autoindent " 换行时自动缩进
set expandtab " 将tab转化为空格
filetype plugin indent on " 根据文件类型不同的缩进规则
set shiftround " 换行时将缩进改为shiftwidth的倍数
set shiftwidth=2 " 换行时缩进2个空格
set smarttab " Tab时智能插入n个空格
set tabstop=2 " Tab为2个空格宽
" === search options ===
set hlsearch " 高亮搜索内容
set incsearch
set ignorecase
set smartcase
set wildmenu " vim 自身命令行模式智能补全
" === text rendering options ==
syntax enable " 语法高亮


" === vim-easy-align settings ===
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" === nerdtree settings ===
nmap <C-n> :NERDTreeToggle<CR>

" === vim-airline settings ===
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1<CR>
nmap <leader>2 <Plug>AirlineSelectTab2<CR>
nmap <leader>3 <Plug>AirlineSelectTab3<CR>
nmap <leader>4 <Plug>AirlineSelectTab4<CR>
nmap <leader>5 <Plug>AirlineSelectTab5<CR>
" let g:airline_powerline_fonts = 1

" === gruvbox settings ===
colorscheme gruvbox
set background=dark

" === deoplete settings ===
let g:deoplete#enable_at_startup = 2
" use tab to forward cycle
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" use tab to backward cycle
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

" === emmet settings ===
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" === indent guides settings ===
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle
