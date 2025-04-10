" disable compatibility with vi which can cause unexpected issues.
set nocompatible
" open the quickfix window whenever a quickfix command is executed
autocmd QuickFixCmdPost [^l]* cwindow
" quick exit some filetypes
autocmd FileType help,qf,diff nnoremap <silent> <buffer> q :quit<CR>
" encoding
set encoding=utf-8 fileencoding=utf-8 termencoding=utf-8
" set the characters for the invisibles
set list listchars=tab:⇀\ ,eol:¬,nbsp:␣,trail:⋅ showbreak=↪
set signcolumn=no sidescrolloff=10 title
" set default regexp engine to nfa
set regexpengine=2
syntax enable
" disable temporary files.
set nobackup noswapfile nowrap
" detect filetype
filetype on
filetype indent on
" set default indentation
set expandtab smarttab shiftwidth=2 tabstop=2 softtabstop=2 shiftround
" auto read file change
set autoread autoindent
" scan to put in completion
set complete=.,w,b,u,t completeopt=menu,preview
" sequence of letters which describes how automatic formatting is to be done
set formatoptions=tcqj
" split behaviour
set splitbelow splitright
" allow backspacing over listed items
set backspace=indent,eol,start
set visualbell
" add numbers to each line on the left-hand side.
set number relativenumber ruler hidden
set nopaste
" this option controls the behavior when switching between buffers
set switchbuf=uselast
" show several useful info
set showcmd showmode showmatch
set mouse=a mousemodel=popup_setpos
" the cursor is kept in the same column
set nostartofline
set ttyfast history=10000
set background=dark laststatus=2
" re-map leader key
nnoremap <Space> <Nop>
let g:mapleader = ' '
" searching
set incsearch hlsearch ignorecase smartcase matchpairs+=<:>
" re-size split windows using arrow keys
nnoremap <Up> :resize +5<CR>
nnoremap <Down> :resize -5<CR>
nnoremap <Left> :vertical resize -5<CR>
nnoremap <Right> :vertical resize +5<CR>
" netrw
nnoremap - :Explore<CR>
autocmd FileType netrw nnoremap <buffer> <C-c> :Rexplore<CR>
" command mode navigation
cnoremap <C-a> <home>
cnoremap <C-e> <end>
" navigate through quickfix list
nnoremap <C-j> :cnext<CR>zz
nnoremap <C-k> :cprev<CR>zz
" navigate through buffers
nnoremap <C-l> :bnext<CR>
nnoremap <C-h> :bprev<CR>
" enable auto completion menu after pressing tab.
set wildmenu wildmode=full wildcharm=<C-z> wildmenu
" fuzzy find
nnoremap <leader>f :find **/*
nnoremap <leader>F :find **/*<C-r><C-w><CR>
nnoremap <leader>e :e %:h<C-z>
nnoremap <leader>b :b <C-z>
nnoremap <leader>ma :marks<CR>
nnoremap <leader>g :vimgrep //f **<S-Left><S-Left><Right>
vnoremap <leader>g "0y:vimgrep /<C-r>0/f **<S-Left><Left><Left><Left>
nnoremap <leader>G :vimgrep /<C-r><C-w>/f **
" search current marked text
vnoremap // y/\v<C-r>=escape(@",'/\')<CR><CR>
" copy marked text/paste to/from global register
nnoremap <leader>Y "*Y
vnoremap <leader>y "*y
nnoremap <leader>p "*p
nnoremap <leader>P "*P
vnoremap <leader>p "*p
" find and replace
nnoremap <leader>r :%s/<C-r><C-w>//gI<Left><Left><Left>
vnoremap <leader>r "0y:%s/<C-r>0//gI<Left><Left><Left>
" unix command
nnoremap <leader>cp :!cp -r %<C-z> %:h<C-z>
nnoremap <leader>mv :!mv %<C-z> %:h<C-z>
" set mark before gd/#/*
nnoremap <silent> gd mMgd
nnoremap <silent> # mM#
nnoremap <silent> * mM*
" basic highlights
highlight StatusLine cterm=NONE ctermbg=NONE ctermfg=grey
highlight StatusLineNC cterm=NONE ctermbg=NONE ctermfg=darkgrey
highlight Normal cterm=NONE ctermbg=NONE
highlight NormalNC cterm=NONE ctermbg=NONE
highlight VertSplit cterm=NONE ctermbg=NONE ctermfg=darkgrey
