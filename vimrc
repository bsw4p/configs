set nocompatible              " required
filetype off                  " required
syntax enable
set background=dark
set t_Co=256

" set list
" set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/vim-snippets
call vundle#begin()

" Enable folding
set foldmethod=syntax
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

Plugin 'tmhedberg/SimpylFold'

" replace all tabs with spaces
" :retab
au BufNewFile,BufRead *.c,*.h set tabstop=4
au BufNewFile,BufRead *.c,*.h set softtabstop=4
au BufNewFile,BufRead *.c,*.h set shiftwidth=4
au BufNewFile,BufRead *.c,*.h set textwidth=79
au BufNewFile,BufRead *.c,*.h set expandtab
au BufNewFile,BufRead *.c,*.h set autoindent
au BufNewFile,BufRead *.c,*.h set fileformat=unix

" Show unessecary whitespaces
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h; match BadWhitespace /\s\+$/
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h; match BadWhitespace /^\t\+/

" UTF-8 Encoding
set encoding=utf-8

" AutoComplete
Bundle 'Valloric/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion=1
" space-g -> goto definition
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" only ask once if extra_file should be use.
let g:ycm_confirm_extra_conf = 1

" Syntax Highlighting
Plugin 'scrooloose/syntastic'
syntax on

" File Browsing
Plugin 'scrooloose/nerdtree'

" Commenting
" % Run by \ cc or \ cm
Plugin 'scrooloose/nerdcommenter'

" Super Search on Ctrl-P
Plugin 'kien/ctrlp.vim'

" Activate line numbering
set nu

" Integrate GIT
Plugin 'tpope/vim-fugitive'

" Better Statusbar
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'}


" Code snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
imap <C-\> <Plug>snipMateNextOrTrigger
smap <C-,> <Plug>snipMateShow

" Colors
Plugin 'jnurmine/zenburn'
Plugin 'altercation/vim-colors-solarized'

" Manpage plugin
Plugin 'nhooyr/neoman.vim'
" :Nman 3 getopt
" Trigger by K
nnoremap <silent> K :Snman<CR>

" Taglist
Plugin 'vim-scripts/taglist.vim'

" CScope
Plugin 'vim-scripts/cscope.vim'

" Markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" Align
Plugin 'junegunn/vim-easy-align'
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" Align to character |
" gaip*|

" Airline                                                                          
Plugin 'vim-airline/vim-airline'                                                     
Plugin 'vim-airline/vim-airline-themes'                                              
Plugin 'edkolev/tmuxline.vim'                                                        
                                                                                   
" Multiple cursors                                                                 
Plugin 'terryma/vim-multiple-cursors'                                                
                                                                                   
" Expand regions                                                                   
Plugin 'terryma/vim-expand-region'                                                   
" Use + key to expand while selection in visual mode                               
" Use _ key to shrink while selection in visual mode                               
                                                                                   
" Moar text selections                                                             
Plugin 'wellle/targets.vim'

call vundle#end()
filetype plugin indent on

colorscheme zenburn
set colorcolumn=80

" Window management hotkeys
" Resizing:
"    Ctrl-w _           increase current window to max height
"    Ctrl-w |           increase current window to max width
"    Ctrl-w +           increase height of current window
"    Ctrl-w -           decrease height of current window
"    Ctrl-w >           increase width of current window
"    Ctrl-w <           decrease width of current window
"    Ctrl-w <NUM> -     decrease height of by <NUM> in current window
"    Ctrl-w =           all windows equal
