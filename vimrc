" ==========================
" ===  Plugin Management  ===
" ==========================

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
call plug#end()

" ==========================
" ===   Basic Settings   ===
" ==========================

syntax on
filetype indent plugin on
set number
set ruler
set hlsearch
set backspace=indent,eol,start

" Tab settings (4 spaces)
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab

" Clipboard integration
set clipboard+=unnamedplus

" Enable mouse support
set mouse=a

" Better mouse/focus handling in tmux
if exists('$TMUX')
  set ttimeoutlen=10
endif

" 80-character column marker
set colorcolumn=81

" Better command-line completion
set wildmenu
set wildmode=longest:full,full

" ==========================
" ===  Auto-reload Files ===
" ==========================

" Automatically reload files changed outside vim
set autoread

" Check for file changes more frequently (100ms)
set updatetime=100

" Trigger autoread when cursor stops moving or when entering buffer
au CursorHold,CursorHoldI * checktime
au FocusGained,BufEnter * :checktime

" ==========================
" ===  Visual Settings   ===
" ==========================

" Enable 24-bit color support
if exists('+termguicolors')
  set termguicolors
endif

set background=dark
set cursorline

" Colorscheme
colorscheme onehalfdark

" Highlight extra whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" ==========================
" ===    Leader Key      ===
" ==========================

let mapleader = " "

" ==========================
" ===  Escape Mappings   ===
" ==========================

inoremap kj <Esc>
vnoremap kj <Esc>

" ==========================
" ===  Custom Movement   ===
" ==========================

" Half-page scrolling
noremap <silent> J <C-d>
noremap <silent> K <C-u>

" Line scrolling
noremap <silent> - <C-e>
noremap <silent> = <C-y>

" Word jumping
noremap <silent> B 10b
noremap <silent> W 10w

" ==========================
" ===  Split Navigation  ===
" ==========================

nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" ==========================
" ===  Split Management  ===
" ==========================

nnoremap <leader>v :vsplit<CR>
nnoremap <leader>s :split<CR>
nnoremap <leader>H :vertical resize -5<CR>
nnoremap <leader>J :resize +5<CR>
nnoremap <leader>K :resize -5<CR>
nnoremap <leader>L :vertical resize +5<CR>
nnoremap <leader>= <C-w>=
nnoremap <leader>q :q<CR>

" ==========================
" ===   Resize Mode      ===
" ==========================

function! ResizeMode()
    echohl ModeMsg | echo "-- RESIZE MODE -- (h/j/k/l to resize, Esc to exit)" | echohl None
    while 1
        let char = getchar()
        if char == 27  " Esc key
            echohl ModeMsg | echo "-- NORMAL --" | echohl None
            break
        elseif char == char2nr('h')
            execute "vertical resize -5"
            redraw
            echohl ModeMsg | echo "-- RESIZE MODE -- (h/j/k/l to resize, Esc to exit)" | echohl None
        elseif char == char2nr('j')
            execute "resize +5"
            redraw
            echohl ModeMsg | echo "-- RESIZE MODE -- (h/j/k/l to resize, Esc to exit)" | echohl None
        elseif char == char2nr('k')
            execute "resize -5"
            redraw
            echohl ModeMsg | echo "-- RESIZE MODE -- (h/j/k/l to resize, Esc to exit)" | echohl None
        elseif char == char2nr('l')
            execute "vertical resize +5"
            redraw
            echohl ModeMsg | echo "-- RESIZE MODE -- (h/j/k/l to resize, Esc to exit)" | echohl None
        endif
    endwhile
endfunction

nnoremap <leader>r :call ResizeMode()<CR>

" ==========================
" ===  Buffer Management ===
" ==========================

nnoremap <leader>n :bnext<CR>
nnoremap <leader>p :bprevious<CR>
nnoremap <leader>d :bdelete<CR>

" ==========================
" ===  File Operations   ===
" ==========================

nnoremap <leader>w :w<CR>
nnoremap <leader>x :x<CR>
nnoremap <leader>Q :q!<CR>

" ==========================
" ===      Search        ===
" ==========================

nnoremap <leader>/ :nohlsearch<CR>

" Centered search
nnoremap n nzzzv
nnoremap N Nzzzv

" ==========================
" ===  FZF Integration   ===
" ==========================

nnoremap <leader>f :Files<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>b :Buffers<CR>

" ==========================
" ===  Quality of Life   ===
" ==========================

" Visual mode indenting stays in visual mode
vnoremap < <gv
vnoremap > >gv

" ==========================
" ===  File Type Specific ===
" ==========================

au BufNewFile,BufRead *.md setlocal textwidth=80
