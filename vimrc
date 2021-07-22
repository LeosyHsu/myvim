"====================================================================
" Start vundle
"====================================================================

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim " 執行程式的捷徑
call vundle#begin() " 呼叫執行程式

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"===============================================================
" Write your plugins here
"===============================================================
" Layouts
Plugin 'Yggdroot/indentLine'
" Theme
Plugin 'tomasiser/vim-code-dark'

" Misc tools
Plugin 'vim-airline/vim-airline'
Plugin 'dense-analysis/ale'
Plugin 'vim-scripts/taglist.vim'
Plugin 'preservim/nerdcommenter'
Plugin 'preservim/nerdtree'
Plugin 'wesleyche/SrcExpl'
Plugin 'wesleyche/Trinity'

Plugin 'vim-latex/vim-latex'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"====================================================================
" indentLine Settings
"====================================================================
let g:indentLine_char = '|'
let g:indentLine_enabled = 1

"====================================================================
" Airline Settings
"====================================================================
let g:airline_theme='codedark'
let g:airline_powerline_fonts = 1 " 修改字形(數字1為啟用的意思)
set laststatus=2 " 設定狀態列顯示方式(數字2為永遠開啟)

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

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
"====================================================================
" NERDCommenter Settings
"====================================================================
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

" change leader to ','
let mapleader=","
set timeout timeoutlen=1500
map <C-_> <Leader>c<space>


"====================================================================
" NERDTree Settings
"====================================================================
map <F2>   :NERDTreeToggle<CR>

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
set t_Co=256
set t_ut=
colorscheme codedark

" Event trigger
autocmd WinEnter * setlocal cursorcolumn
autocmd WinLeave * setlocal nocursorcolumn

autocmd WinEnter * setlocal number
autocmd WinLeave * setlocal nonumber

" Make extra space remove
autocmd BUfWritePre * :%s/\s\+$//e

" Go back to the last cursor position
if has("autocmd")
    autocmd BufReadPost *
    \ if line("'\"") > 1 && line ("'\"") <= line("$") |
    \   exe "normal g'\"" |
    \ endif
endif




