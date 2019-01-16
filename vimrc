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

" Activate line numbering
set nu

" Enable folding
set foldmethod=syntax
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

call vundle#begin()

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

"---------------------------------------------------------------------------
" AutoComplete
"Bundle 'Valloric/YouCompleteMe'
"let g:ycm_autoclose_preview_window_after_completion=1
" space-g -> goto definition
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" only ask once if extra_file should be use.
"let g:ycm_confirm_extra_conf = 1

"---------------------------------------------------------------------------
" Syntax Highlighting
Plugin 'scrooloose/syntastic'
syntax on

"---------------------------------------------------------------------------
" File Browsing
Plugin 'scrooloose/nerdtree'

"---------------------------------------------------------------------------
" Commenting
" % Run by \ cc or \ cm
Plugin 'scrooloose/nerdcommenter'

"---------------------------------------------------------------------------
" Super Search on Ctrl-P
Plugin 'kien/ctrlp.vim'


"---------------------------------------------------------------------------
" Integrate GIT
Plugin 'tpope/vim-fugitive'

"---------------------------------------------------------------------------
" Better Statusbar
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'}

"---------------------------------------------------------------------------
" Code snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
imap <C-\> <Plug>snipMateNextOrTrigger
smap <C-,> <Plug>snipMateShow

"---------------------------------------------------------------------------
" Colors
Plugin 'jnurmine/zenburn'
Plugin 'altercation/vim-colors-solarized'

"---------------------------------------------------------------------------
" Manpage plugin
Plugin 'nhooyr/neoman.vim'
" :Nman 3 getopt
" Trigger by K
nnoremap <silent> K :Snman<CR>

"---------------------------------------------------------------------------
" Taglist
" :TlistOpen
Plugin 'vim-scripts/taglist.vim'

"---------------------------------------------------------------------------
" CScope
" help 
" :cs
" add database
" :cs add /xxx/xxxx/cscope.out
Plugin 'vim-scripts/cscope.vim'

" To do the first type of search, hit 'CTRL-\', followed by one of the
" cscope search types above (s,g,c,t,e,f,i,d).  The result of your cscope
" search will be displayed in the current window.  You can use CTRL-T to
" go back to where you were before the search.  
"

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>	


" Using 'CTRL-spacebar' (intepreted as CTRL-@ by vim) then a search type
" makes the vim window split horizontally, with search result displayed in
" the new window.
"
" (Note: earlier versions of vim may not have the :scs command, but it
" can be simulated roughly via:
"    nmap <C-@>s <C-W><C-S> :cs find s <C-R>=expand("<cword>")<CR><CR>	

nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>	
nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>	
nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>	
nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>	
nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>	
nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>	
nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>	
nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>	


" Hitting CTRL-space *twice* before the search type does a vertical 
" split instead of a horizontal one (vim 6 and up only)
"
" (Note: you may wish to put a 'set splitright' in your .vimrc
" if you prefer the new window on the right instead of the left

nmap <C-@><C-@>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@><C-@>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>	
nmap <C-@><C-@>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>	
nmap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>

" next result
" CTRL+\ n
nmap <C-\>n :cn<CR>zv
" prev result
" CTRL+\ p
nmap <C-\>p :cp<CR>zv

"---------------------------------------------------------------------------
" Markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

"---------------------------------------------------------------------------
" Align
Plugin 'junegunn/vim-easy-align'
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" Align to character |
" gaip*|

"---------------------------------------------------------------------------
" Airline                                                                          
Plugin 'vim-airline/vim-airline'                                                     
Plugin 'vim-airline/vim-airline-themes'                                              
Plugin 'edkolev/tmuxline.vim'                                                        

"---------------------------------------------------------------------------
" Multiple cursors                   
" after visual selection:
" ip<C-n>
" search an multiple cursors:
" :MultipleCursorsFind <search>
Plugin 'terryma/vim-multiple-cursors'                                                
                                                                            
"---------------------------------------------------------------------------                                                                            
" Expand regions                                                                   
Plugin 'terryma/vim-expand-region'                                                   
" Use + key to expand while selection in visual mode                               
" Use _ key to shrink while selection in visual mode                               

"---------------------------------------------------------------------------
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
"    :help window-moving

" highlight selected variables 
autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))
