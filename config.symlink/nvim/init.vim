syntax on
colorscheme molokai
set number
set relativenumber
set cursorline

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
noremap <Leader>n :NERDTreeToggle<CR>
noremap <Leader><Leader>s :source ~/.config/nvim/init.vim<CR>
noremap <Leader><Leader>b :b#<CR>

" More natural splits
set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

call plug#begin('~/.vim/plugged')

Plug 'flazz/vim-colorschemes'
Plug 'jiangmiao/auto-pairs'
Plug 'christoomey/vim-tmux-navigator'
Plug 'easymotion/vim-easymotion'
Plug 'janko-m/vim-test'
Plug 'benekastah/neomake'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'Valloric/YouCompleteMe'
" Add plugins to &runtimepath
call plug#end()


" custom key bindinds
"
" ycm
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>']



