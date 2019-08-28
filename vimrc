" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Colorschemes
Plug 'https://github.com/altercation/vim-colors-solarized.git'
call plug#end()

""" visual stuff
set background=dark
autocmd VimResized * let R_rconsole_width = winwidth(0) / 2
" Highlight lines over 80 characters
match Error /\%81v.\+/
set colorcolumn=81
" Colorscheme
syntax enable
set background=dark
set t_Co=256
set cursorline
let g:solarized_termcolors=16
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
set listchars=tab:>-
colorscheme solarized

""" Other key bindinds and commands
command NT :NERDTree

""" Settings
set hlsearch
"set mouse=n
syntax on
filetype indent plugin on
set ruler
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set number
set backspace=indent,eol,start
set tags+=./tags;/
if has("mouse_sgr")
  set ttymouse=sgr
else
  set ttymouse=xterm2
end

" Highlight extra whitespace, must go at the end to avoid being overwritten
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Exit insert mode with kj and not esc
inoremap kj <ESC>
vnoremap kj <ESC>

" Faster movement
noremap <silent> J <C-d>
noremap <silent> K <C-u>
noremap <silent> - <C-e>
noremap <silent> = <C-y>
noremap <silent> B 10b
noremap <silent> W 10w

" Syntax highlighting for flow
"au BufNewFile,BufRead *.flow set filetype=c

