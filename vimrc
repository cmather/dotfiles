" Core Setup
syntax on

if has("autocmd")
  filetype plugin indent on
endif

" Settings
" set ttyfast
set autoindent
set autowrite
set background=dark
set backspace=indent,eol,start
set backupdir=~/.vim/backup
set clipboard=unnamed
set cmdheight=2
set confirm
set cursorline
set directory=~/.vim/swp
set expandtab
set formatoptions=croq
set grepprg=ack
set hidden
set laststatus=2
set mouse=a
set nocompatible
set nocursorcolumn
set noerrorbells
set nojoinspaces
set noshowmatch
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
set t_Co=256
set tabstop=2
set textwidth=80
set title
set ttymouse=xterm2
" set updatetime=800

" Plugins
call plug#begin('~/.vim/packages')
Plug 'Matt-Deacalion/vim-systemd-syntax'
Plug 'Quramy/tsuquyomi' | Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'SirVer/ultisnips'
" Plug 'Valloric/YouCompleteMe'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'fatih/vim-go', { 'tag': 'v1.20', 'do': ':GoUpdateBinaries' }
Plug 'flazz/vim-colorschemes'
Plug 'honza/vim-snippets'
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
Plug 'majutsushi/tagbar'
call plug#end()

" Options
colorscheme Benokai

" Variables
let g:go_list_type = 'quickfix'
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
let g:loaded_youcompleteme = 1
let g:ycm_show_diagnostics_ui = 0
" let g:ycm_key_list_select_completion = ['<c-j>']
" let g:ycm_key_list_previous_completion = ['<c-k>']
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_auto_type_info = 1
let g:go_auto_sameids = 0
let g:UltiSnipsSnippetsDir = "~/.vim/UltiSnips"

" Commands
autocmd QuickFixCmdPost *grep* cwindow
autocmd StdinReadPre * let s:std_in=1
autocmd FileType crontab set nobackup nowritebackup
autocmd FileType typescript nmap <buffer> <leader>h : <c-u>echo tsuquyomi#hint()<cr>
autocmd FileType typescript nmap <buffer> <leader>r <plug>(TsuquyomiRenameSymbol)
autocmd FileType go nmap <leader>b <plug>(go-build) 
autocmd FileType go nmap <leader>r :GoRun<cr>
autocmd FileType go nmap <leader>t <plug>(go-test) 
autocmd FileType go nmap <leader>c <plug>(go-coverage-toggle) 
autocmd FileType go nmap <leader>h <plug>(go-info)
autocmd FileType go nmap <leader>i :GoImports<cr>
autocmd FileType go nmap <leader>f :GoDecls<cr>
autocmd FileType go nmap <leader>c :GoReferrers<cr>
autocmd FileType go set comments=s:/**,mb2:*,ex2:*/,://
autocmd FileType netrw setl bufhidden=delete
command! -nargs=+ -complete=file -bar AGrep silent! grep! <args>|cwindow|redraw!

" comments

" Key Map
imap kj <esc>
imap <leader>w <esc> :w<cr>
nmap <leader>s :sp<cr><c-w><c-w>
nmap <leader>v :vsp<cr><c-w><c-w>
nmap <leader>w :w<cr>

"nmap <leader>b :bp<cr>
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
noremap <leader>a :cclose<cr>
noremap <leader>e :UltiSnipsEdit<cr>
"inoremap " ""<left>
"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>
inoremap {<cr> {<cr>}<esc>O
inoremap {;<cr> {<cr>};<esc>O

" Build or run test on go file.
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction
