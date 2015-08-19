set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'https://github.com/rking/ag.vim.git'
Plugin 'https://github.com/mattn/gist-vim.git'
Plugin 'https://github.com/mattn/webapi-vim.git'
Plugin 'https://github.com/yegappan/mru.git'
Plugin 'kien/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'https://github.com/scrooloose/nerdcommenter.git'
Plugin 'scrooloose/nerdtree'
Plugin 'https://github.com/tomtom/tlib_vim.git'
Plugin 'https://github.com/MarcWeber/vim-addon-mw-utils.git'
Plugin 'https://github.com/craigemery/vim-autotag.git'
Plugin 'https://github.com/jeetsukumaran/vim-buffergator.git'
Plugin 'https://github.com/kchmck/vim-coffee-script.git'
Plugin 'https://github.com/Lokaltog/vim-easymotion.git'
Plugin 'https://github.com/terryma/vim-multiple-cursors.git'
Plugin 'https://github.com/vim-ruby/vim-ruby.git'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'
Plugin 'https://github.com/tpope/vim-surround.git'
Plugin 'https://github.com/bronson/vim-trailing-whitespace.git'
Plugin 'https://github.com/tpope/vim-rails.git'
Plugin 'bling/vim-airline'
Plugin 'vimoutliner/vimoutliner'
Plugin 'tpope/vim-fugitive'
Plugin 'rainerborene/vim-reek'

call vundle#end()            " required
filetype plugin indent on    " required
" Change the default leader
" let mapleader = ","

" Use :OhMyVim profiles to list all available profiles with a description
" let profiles = ['defaults', 'django', 'erl', 'friendpaste', 'git', 'makefile', 'map', 'pyramid', 'python', 'ranger', 'tmpl', 'utf8']
let profiles = ['defaults']

" Put your custom stuff bellow
map <C-c> "+y<CR>
map <F2> :NERDTreeToggle<CR>
map  <C-l> :tabn<CR>

" enable indentLine
let g:indentLine_char = '┊'

" custom ctrlp
let g:ctrlp_custom_ignore = {
  \ 'file': '\v(\.log|tags)$'
  \ }

" custom airline
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#show_buffers = 0  " disable displaying buffers with a single tab
let g:airline#extensions#tagbar#enabled = 1

" custom indentLine
let g:indentLine_indentLevel = 20 " Specify how much indent level do you want to use for(default is 10)

" custom YouCompleteMe
let g:ycm_key_list_select_completion = ['<Down>'] " remove tab key mappings used to select the first completion string(conflict with vim-snippets)

" easymotion config
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

nnoremap <F3> :set invpaste paste?<CR>
imap <F3> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F3>
set cul "设置光标所在行显示横线
set number " 显示行号
set hlsearch " 高亮查询结果

let g:ackprg = 'ag --nogroup --nocolor --column'
" MRU config 
let MRU_Auto_Close = 0

" Tag bar
nmap <F8> :TagbarToggle<CR>

set expandtab
set shiftwidth=2
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
syntax on
source /Library/Python/2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2
let g:Powerline_symbols = 'fancy'
" ruby best practice check plugin should gem install reek first
let g:reek_on_loading = 0
