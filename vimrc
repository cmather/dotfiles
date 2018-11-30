" Settings
set autoindent
set background=dark
set backspace=indent,eol,start
set backupdir=~/.vim/backup
set clipboard=unnamed
set cmdheight=2
set confirm
set directory=~/.vim/swp
set expandtab
set grepprg=ack
set hidden
set laststatus=2
set laststatus=2
set mouse=a
set nocompatible
set nocursorline
set noerrorbells
set nojoinspaces
set noshowmatch
set nostartofline
set nostartofline
set notimeout ttimeout ttimeoutlen=200
set novisualbell
set nowrap
set number
set pastetoggle=<f8>
set ruler
set scrolloff=1
set sh=/bin/bash
set shiftwidth=2
set shortmess+=c
set showcmd
set smartcase
set softtabstop=2
set tabstop=2
set textwidth=80
set title
set ttyfast
set ttymouse=xterm2
set wildmenu

" Options
syntax on
filetype indent plugin on

" Variables
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_custom_ignore = 'dist\|node_modules\|\.git\|\.elements'
let g:ctrlp_show_hidden = 1
let g:tsuquyomi_completion_detail = 1
let g:tsuquyomi_disable_quickfix = 1
let g:netrw_liststyle = 3
let g:netrw_browse_split = 0
let g:netrw_altv = 1
let g:netrw_winsize = 25
let mapleader = ","

" Commands
autocmd QuickFixCmdPost *grep* cwindow
autocmd StdinReadPre * let s:std_in=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd FileType crontab set nobackup nowritebackup
autocmd FileType typescript nmap <buffer> <leader>h : <c-u>echo tsuquyomi#hint()<cr>
autocmd FileType typescript nmap <buffer> <leader>r <plug>(TsuquyomiRenameSymbol)
command! -nargs=+ -complete=file -bar AGrep silent! grep! <args>|cwindow|redraw!

" Key Map
imap kj <esc>
imap <leader>w <esc> :w<cr>
nmap <leader>s :sp<cr><c-w><c-w>
nmap <leader>v :vsp<cr><c-w><c-w>
nmap <leader>w :w<cr>
nmap <leader>b :bp<cr>
nmap <silent> <leader>x :bp\|bd #<cr>
nmap <silent> <leader><s-x> :BufOnly<cr>
nmap <leader>s :sp<cr><c-w><c-w>
nmap <leader>v :vsp<cr><c-w><c-w>
nmap <leader>d :e .<cr>
nmap <leader>n :e ~/dropbox/notes/notes.md<cr>
nnoremap \ :AGrep<space>
xmap ga <Plug>(EasyAlign)
vnoremap // y/<c-r>"<cr>
noremap <leader>y "*y
noremap <leader>p "*p

" Plugins
call plug#begin('~/.vim/packages')
Plug 'Matt-Deacalion/vim-systemd-syntax'
Plug 'Quramy/tsuquyomi' | Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'flazz/vim-colorschemes'
Plug 'isRuslan/vim-es6'
Plug 'jelera/vim-javascript-syntax'
Plug 'junegunn/vim-easy-align'
Plug 'justinmk/vim-syntax-extra'
Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'fatih/vim-go'
call plug#end()
