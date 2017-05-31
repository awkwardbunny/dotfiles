execute pathogen#infect()
" Plugins installed:
"  chriskempson/base16-vim.git
"  jpalardy/spacehi.vim.git
"  thinca/vim-localrc

filetype plugin indent on
syn on se title

set number
set relativenumber

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

map m :ToggleSpaceHi<CR>
map <C-b> :!fzf<CR>

set exrc
map <F2> :!git status<CR>
map <F3> :!git diff<CR>
map <F4> :!git add .<CR>
map <F5> :!make<CR>
map <F6> :!make clean<CR>
map <F12> :!man
"map <S-F2> :!git commit<CR>
"map <S-F3> :!git push<CR>

set hlsearch
"nnoremap <esc> :noh<CR><esc>

let g:spacehi_tabcolor="ctermfg=blue ctermbg=blue guifg=blue guibg=blue"
let g:spacehi_spacecolor="ctermfg=Black ctermbg=Yellow guifg=Blue guibg=Yellow"
let g:spacehi_nbspcolor="ctermfg=White ctermbg=Red guifg=White guibg=Red"

"if has("cscope")
"	set csprg=/usr/bin/cscope
"	set csto=0
"	set cst
"	set nocsverb
"	" add any database in current directory
"	if filereadable("cscope.out")
"		cs add cscope.out
"		" else add database pointed to by environment
"	elseif $CSCOPE_DB != ""
"		cs add $CSCOPE_DB
"	endif
"endif
