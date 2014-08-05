"-----------------------------------------------------------------------------------------------
"---------------------------------------------- PLUGINS ----------------------------------------
"-----------------------------------------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


"----------------------- Vundle -----------------------------
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"------------------- EasyMotion -----------------------------
" move easily through files, ':help easymotion.txt' for help
Plugin 'Lokaltog/vim-easymotion'

"------------------- Coffee-Script --------------------------
" syntax, indenting, compiling, etc. for coffeescript
Plugin 'kchmck/vim-coffee-script'

"------------------- Surround -------------------------------
" surround things with quotes, parens, etc. ':help surround' for help
Plugin 'tpope/vim-surround'

"------------------- Vim-Ruby -------------------------------
" auto complete, syntax highlighting, compiler plugins, indenting
" :help ft-ruby-omni and :help i_CTRL-X_CTRL-O for help on autocomplete
Plugin 'vim-ruby/vim-ruby'

"------------------- CtrlP ----------------------------------
"search through files and open another file
" <C-p> to open the finder, :help ctrlp-mappings for help
Plugin 'kien/ctrlp.vim'

"------------------- vim-GitGutter --------------------------
"show real time git diff
Plugin 'airblade/vim-gitgutter'

"------------------- vim-trailing-whitespace ----------------
" shows all trailing whitespace in red, fix it with :FixWhitespace
Plugin 'bronson/vim-trailing-whitespace'

"------------------- vim-json -------------------------------
" syntax highlighting for json files
Plugin 'elzr/vim-json'

"------------------- vim-javascript --------------------------
" enhanced syntax and highlighting for javascript
Plugin 'jelera/vim-javascript-syntax'

"------------------- JSHint2 ---------------------------------
" help for js while typing, type :JSHint to use it
Plugin 'Shutnik/jshint2.vim'

"------------------- vim-jst ---------------------------------
" syntax highlighting for JST/EJS syntax
Plugin 'briancollins/vim-jst'

"------------------- CSApprox --------------------------------
" get the lavalamp to work
Plugin 'CSApprox'

"------------------- vim-airline ----------------------------
" status bar to show useful things, :help airline for help
Plugin 'bling/vim-airline'

"------------------- tagbar ----------------------------
" show the scope of where you are, :help tagbar for help
Plugin 'majutsushi/tagbar'

"------------------- syntastic ----------------------------
" syntax checking for almost every language I would use, :help syntastic for
" help
Plugin 'scrooloose/syntastic'

"------------------- fugitive -----------------------------
" apparently this is good.. whatever. :help fugitive for help
Plugin 'tpope/vim-fugitive'

"------------------- rust.vim -----------------------------
" syntax highlighting and indentation
Plugin 'wting/rust.vim'

"------------------- vim-HiLinkTrace ----------------------
" find out which scope a syntax identifier is in
Plugin 'gerw/vim-HiLinkTrace'

"------------------- vim-limelight ------------------------
" highlight the section of code you're writing in!
Plugin 'junegunn/limelight.vim'

"------------------- python-syntax ------------------------
" syntax highlighting for python
Plugin 'hdima/python-syntax'




" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"-----------------------------------------------------------------------------------------------
"-----------------------------------------------------------------------------------------------
"-----------------------------------------------------------------------------------------------

syntax on

set tabstop=2     "tabs are 4 spaces
set shiftwidth=2  ">> and << behave correctly
set expandtab     "correct indentation
set softtabstop=2 "allows backspacing properly
autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4

set number    "line numbers
set ruler     "line and col number in bottom right

" reassign leader key to space
let mapleader = " "

" replace escape with two characters
inoremap jk <Esc>

" changing windows on splits
" left
nnoremap <C-H> <C-W><C-H>

" down
nnoremap <C-J> <C-W><C-J>

" up
nnoremap <C-K> <C-W><C-K>

" right
nnoremap <C-L> <C-W><C-L>

" next buffer
nnoremap fo :bn<CR>

" previous buffer
nnoremap ba :bp<CR>

" delete buffer
nnoremap <leader>q :bd<CR>

" airline options
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" autoclose html tags
:inoremap <// </<C-X><C-O><Esc><<i

" COLORS!
let &t_Co=256

" for the lavalamp
set background=dark
colorscheme lavalamp

" let the status bar show
set laststatus=2

" have git gutter shown well
highlight clear SignColumn

" tagbar options
nnoremap <leader>s :TagbarToggle<CR>

" syntastic options
let g:syntastic_auto_loc_list = 2
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_jump = 2
nnoremap <leader>e :Errors<CR>

" HiLinkTrace mapping
nnoremap <leader>h :HLT<CR>

" put yourself in the limelight!
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'
let g:limelight_default_coefficient = 0.7
nnoremap <leader>l :Limelight!!<CR>

" set the backup dir to not be a project dir
set backupdir=~/.vim/backup/
set directory=~/.vim/backup/

" use the mouse!
set mouse=a

" set rct filetypes to be html
au BufRead,BufNewFile *.rct setfiletype html

" easymotion highlight as I search
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
