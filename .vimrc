filetype plugin indent on
syn on se title

set number
set relativenumber
set showcmd

set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set autoindent
set smartindent
set cindent

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

cmap w!! w !sudo tee > /dev/null %

map <C-b> :!make run<CR>

map <F2> :!git status<CR>
map <F3> :!git diff<CR>
map <F4> :!git add .<CR>
map <F5> :!make<CR>
map <F6> :!make clean<CR>
map <F12> :!man
"map <S-F2> :!git commit<CR>
"map <S-F3> :!git push<CR>

set hlsearch
set incsearch
nnoremap <Enter> :noh<CR>
nnoremap <Leader>r :so $MYVIMRC<CR>
nnoremap <Leader>- :split<CR>
nnoremap <Leader><Bar> :vsplit<CR>

"inoremap {<CR>  {<CR>}<Esc>O

" Auto install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugin list
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
"Plug 'scrooloose/syntastic'
Plug 'itchyny/lightline.vim'
"Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'rhysd/vim-clang-format'
Plug 'rip-rip/clang_complete'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries'  }
"Plug 'davidhalter/jedi-vim'
call plug#end()

nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <Leader>f :Rg<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>/ :BLines<CR>
nnoremap <silent> <Leader>' :Marks<CR>
nnoremap <silent> <Leader>g :BCommits<CR>
nnoremap <silent> <Leader>G :Commits<CR>
nnoremap <silent> <Leader>t :BTags<CR>
nnoremap <silent> <Leader>T :Tags<CR>
nnoremap <silent> <Leader>h :History<CR>
nnoremap <silent> <Leader>hh :History:<CR>
nnoremap <silent> <Leader>h/ :History/<CR>

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

set laststatus=2
set noshowmode

map <silent> <C-k> :ClangFormat<CR>
let g:clang_library_path='/usr/lib/llvm-10/lib/libclang.so.1'

" clang_complete and auto-pairs not fully compatible?
let g:AutoPairsMapCR = 0
imap <silent><CR> <CR><Plug>AutoPairsReturn

"set diffopt+=context:9
set diffopt=filler,context:30
