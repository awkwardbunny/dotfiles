execute pathogen#infect()

set number
set relativenumber

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" filetype plugin indent on
syn on se title

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set autoindent
set smartindent

" syntax match Tab /\t/
" hi Tab gui=underline guifg=blue ctermbg=blue

let g:spacehi_tabcolor="ctermfg=blue ctermbg=blue guifg=blue guibg=blue"
let g:spacehi_spacecolor="ctermfg=Black ctermbg=Yellow guifg=Blue guibg=Yellow"
let g:spacehi_nbspcolor="ctermfg=White ctermbg=Red guifg=White guibg=Red"
map m :ToggleSpaceHi<CR>

" for stm32f4
map f :!make flash<CR>
map t :!make debug<CR>

if has("cscope")
	set csprg=/usr/bin/cscope
	set csto=0
	set cst
	set nocsverb
	" add any database in current directory
	if filereadable("cscope.out")
		cs add cscope.out
		" else add database pointed to by environment
	elseif $CSCOPE_DB != ""
		cs add $CSCOPE_DB
	endif
endif

map <C-b> :!fzf<CR>
