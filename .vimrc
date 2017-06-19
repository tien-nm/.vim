set laststatus=2                                                            

set statusline+='%F'
"set t_Co=256
set nocompatible        " be iMproved, required                           
filetype off            " required

set viminfo^=%

" set the shell to zsh
set shell=/bin/zsh

" set the runtime path to include Vundle and initialize                         
set rtp+=~/.vim/bundle/Vundle.vim                                               
call vundle#begin() 
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'benmills/vimux'
Plugin 'Yggdroot/indentLine'
Plugin 'mhartington/oceanic-next'
Plugin 'tpope/vim-vinegar'
Plugin 'terryma/vim-multiple-cursors'
Bundle 'Shougo/vimproc'
Bundle 'Shougo/unite.vim'
Bundle 'matze/vim-move'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-repeat'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'easymotion/vim-easymotion'


call vundle#end()            " required                                         
" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'francoiscabrol/ranger.vim'
" Initialize plugin system
call plug#end()

filetype plugin indent on    " required

nmap ev :tabedit $MYVIMRC<CR>
map <C-n> :tabnew  "new tab
map <C-l> gt       "shortcut cho next tab
map <C-h> gT       "previous tab
set number
set clipboard=unnamedplus

"map leader key to ,
let mapleader = ","

" Prompt for a command to run
map <Leader>P :VimuxPromptCommand<CR>

"run last command executed by VimuxRunCommand
map <Leader>L :VimuxRunLastCommand<CR>

" Map for test
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" Theme for vim
"syntax on
"color dracula

" Theme
syntax enable

" Vim indent
let g:indentLine_color_term = 239
let g:indentLine_char = '|'
let g:indentLine_leadingSpaceChar = '-'
let g:indentLine_leadingSpaceEnabled = 1

"Default relative number
set relativenumber

"nnoremap <C-n> :call NumberToggle()<cr>

"Open fzf search file
map <Leader>F :Files!<CR>
"Open fzf search commits
"map <Leader>C :Commits<CR>
"Open fzf search history
map <Leader>H :History!<CR>

"Map leader command 
nmap <leader>L :Lines!<CR>
"
"Leader buffer 
nmap <leader>B :Buffers!<CR>

" map ctr n with next buffer
map <C-n> :bn<CR>

" map ctr n with next buffer
map <C-p> :bp<CR>

map <leader>R :RangerWorkingDirectory<CR>.


" Vim navigator map
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" suppress ctags version warning (since universal-ctags)
let g:easytags_suppress_ctags_warning = 1
" absolute path (/something/src/foo.txt)

"Get full path for current file
function! FullPath ()
return "pstorm " . expand("%:p")
endfunction

nnoremap   <Leader>C :VimuxPromptCommand(FullPath())  <CR>
" Auto change the directory to the current file I'm working on
"autocmd BufEnter * lcd %:p:h

"theme for vim
colorscheme gruvbox
set background=dark

"no auto create swap file
set noswapfile

"set move line
"let g:move_key_modifier = 'C'

" haya14busa/incsearch.vim

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)


" provide hjkl movements in Insert mode via the <Ctrl> modifier key
inoremap <C-h> <C-o>h
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l

" check one time after 4s of inactivity in normal mode
set autoread 
au CursorHold * checktime    