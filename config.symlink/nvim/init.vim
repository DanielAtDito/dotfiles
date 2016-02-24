syntax on
set number
set relativenumber

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" type jk instead of Esc, to exit insert mode.
imap jk <Esc>

" Leader configs
let mapleader="\<SPACE>"
noremap <Leader>q :wq<CR>
noremap <Leader>w :w<CR>

" More natural splits
set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

call plug#begin('~/.vim/plugged')

Plug 'easymotion/vim-easymotion'
Plug 'janko-m/vim-test'
Plug 'benekastah/neomake'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Add plugins to &runtimepath
call plug#end()

