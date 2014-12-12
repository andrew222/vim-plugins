
" Added by oh-my-vim

" Change the default leader
" let mapleader = ","

" Skip upgrade of oh-my-vim itself during upgrades
" let g:ohmyvim_skip_upgrade=1

" Use :OhMyVim profiles to list all available profiles with a description
" let profiles = ['defaults', 'django', 'erl', 'friendpaste', 'git', 'makefile', 'map', 'pyramid', 'python', 'ranger', 'tmpl', 'utf8']
let profiles = ['defaults']

" Path to oh-my-vim binary (take care of it if you are using a virtualenv)
let g:ohmyvim="oh-my-vim"

" load oh-my-vim
source /Users/andrew/.vim/ohmyvim/ohmyvim.vim

" End of oh-my-vim required stuff

" Put your custom stuff bellow
map <C-c> "+y<CR>
map <F2> :NERDTreeToggle<CR>
map  <C-l> :tabn<CR>

let g:indentLine_loaded = 1
let g:indentLine_color_gui = '#A4E57E'
let g:indentLine_char = '¦'

nnoremap <F3> :set invpaste paste?<CR>
imap <F3> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F3>
set cul "设置光标所在行显示横线

let g:ackprg = 'ag --nogroup --nocolor --column'

" Tag bar
nmap <F8> :TagbarToggle<CR>

set tabstop=2
set sw=2
set softtabstop=2
function! ClearRegisters()
    let regs='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-="'
    let i=0
    while (i<strlen(regs))
        exec 'let @'.regs[i].'=""'
        let i=i+1
    endwhile
endfunction
                             
command! ClearRegisters call ClearRegisters()
filetype plugin indent on
syntax on
set background=dark
colorscheme solarized
