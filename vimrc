set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'Shougo/neocomplete.vim'
Plugin 'fatih/vim-go'
Plugin 'tomasr/molokai'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'airblade/vim-gitgutter'

call vundle#end()
filetype plugin indent on

" --- Theme (molokai)
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai

" ---- vim-airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_detect_paste = 1
let g:airline#extensions#tabline#enabled = 1

" ---- nerdtree-tabs
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup = 1

" ---- syntastic
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '▲'
augroup mySyntastic
    au!
    au FileType tex let b:syntastic_mode = "passive"
augroup END

" ---- gitgutter
hi clear SignColumn
let g:airline#extensions#hunks#non_zero_only = 1

" --- General Settings
syntax on
set mouse=a
set number
