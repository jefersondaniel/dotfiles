set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'chriskempson/base16-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'michaeljsmith/vim-indent-object'
call vundle#end()

" Appearance

filetype plugin indent on
syntax on
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" Keyboard

vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

" Global Syntax

set list                " show special characters
set listchars=tab:>-,trail:·,nbsp:·
set number

" Plugin Configuration

"" nerdtree

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-k><C-b> :NERDTreeToggle<CR>
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.swp$', '\.pyc$', '\.o$']

"" ctlp

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/][\.](git|node_modules|bower_components)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

" vim markdown

let g:vim_markdown_folding_disabled = 1

" Specic Syntax

autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype html setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype json setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype php setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype c setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

