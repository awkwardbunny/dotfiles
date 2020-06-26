filetype plugin indent on
syn on se title

set number
set relativenumber
set showcmd
set incsearch

set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set autoindent
set smartindent

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

map <C-f> :!fzf<CR>
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
