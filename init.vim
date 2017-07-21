if &compatible
  set nocompatible
endif
set runtimepath+=.vim/bundles/repos/github.com/Shougo/dein.vim

if dein#load_state(expand('~/.vim/bundles'))
  call dein#begin(expand('~/.vim/bundles'))

  call dein#add('Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('zchee/deoplete-go', {'build': 'make'})
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" --- General Settings
syntax on
set mouse=a
set number

" --- Tab settings
set expandtab
set tabstop=4
set shiftwidth=4
augroup golang
    au!
    au FileType go set noexpandtab
augroup END

let g:deoplete#enable_at_startup = 1
