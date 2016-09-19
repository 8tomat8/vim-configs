set encoding=utf-8
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold' " Fold - smarter than standart
Plugin 'vim-scripts/indentpython.vim' " Python code auto-indention
Plugin 'scrooloose/syntastic' " syntax highlight
Plugin 'kien/ctrlp.vim' " Sweeeet Ctrl+P
Plugin 'crusoexia/vim-monokai' " Color scheme
Plugin 'scrooloose/nerdtree' " File Tree
Plugin 'jistr/vim-nerdtree-tabs' " File tabs
Plugin 'tpope/vim-fugitive' " Git integration
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'} " Powerline
Plugin 'nvie/vim-flake8'
Plugin 'jiangmiao/Auto-Pairs'
Bundle 'Valloric/YouCompleteMe'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" For :sv :vs
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za


" PEP8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" JS HTML CSS indentation
au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

" Whitespaces
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" GoToDefinition shortcut
let g:ycm_autoclose_preview_window_after_completion=1
map <C-g> :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Enable all linting
let python_highlight_all=1
syntax on

" Enable colorscheme
let g:molokai_original = 1
set t_Co=256
colors monokai

" Ignore files in File Tree
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
"let NERDTreeMapOpenInTab='<ENTER>' " Open in new tabs

" Shortcut fro File Tree. Like Sublime =)
map <silent> <C-k>b :NERDTreeToggle<CR>

" Line nums
set nu

" Some magic for clipboard buffer
set clipboard=unnamed

" Tabs switching
map <C><PageUp> :tabp<cr>
map <C><PageDown> :tabn<cr>

