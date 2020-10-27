"====================================================================
" Start vundle
"====================================================================

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle " 執行程式的捷徑
call vundle#rc() " 呼叫執行程式
"===============================================================
" Write your plugins here
"===============================================================
" Layouts
Plugin 'Yggdroot/indentLine'

" Misc tools
Plugin 'dense-analysis/ale'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-scripts/taglist.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'wesleyche/SrcExpl'
Plugin 'wesleyche/Trinity'


filetype plugin indent on " 啟用依照檔案類型，決定自動縮排樣式的功能
"====================================================================
" indentLine Settings
"====================================================================
let g:indentLine_char = '|'
let g:indentLine_enabled = 1


"====================================================================
" ALE Settings
"====================================================================
let g:ale_fixers = {
\   'c': ['clang-format'],
\   'cpp': ['clang-format'],
\   'html': ['prettier'],
\   'javascript': ['prettier_standard'],
\   'php': ['php_cs_fixer', 'phpcbf'],
\}
"====================================================================
" Airline Settings
"====================================================================
let g:airline_theme='codedark'
let g:airline_powerline_fonts = 1 " 修改字形(數字1為啟用的意思)
set laststatus=2 " 設定狀態列顯示方式(數字2為永遠開啟)

"====================================================================
" Trinity Settings
"====================================================================
" Open and close all the three plugins on the same time
nmap <F8>  :TrinityToggleAll<CR>

" Open and close the Source Explorer separately
nmap <F9>  :TrinityToggleSourceExplorer<CR>

" Open and close the Taglist separately
nmap <F10> :TrinityToggleTagList<CR>

" Open and close the NERD Tree separately
nmap <F11> :TrinityToggleNERDTree<CR>

"====================================================================
" MISC Settings
"====================================================================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" display
set enc=utf-8
set guifont=Powerline_Consolas:h11
set renderoptions=type:directx,gamma:1.5,contrast:0.5,renmode:5,taamode:1,level:0.5

" status
set number
set cursorline
set showcmd
set ruler

" layout
set scrolloff=3
set wrap
set linebreak

" tab
set tabstop=4
set shiftwidth=4
set expandtab

" search
set hlsearch
set ignorecase
set smartcase

" Sheme color configuration
syntax on

"let g:codedark_conservative = 1
colorscheme codedark

" Event trigger
autocmd WinEnter * setlocal cursorcolumn
autocmd WinLeave * setlocal nocursorcolumn

autocmd WinEnter * setlocal number
autocmd WinLeave * setlocal nonumber

" Make extra space remove
autocmd BUfWritePre * :%s/\s\+$//e




