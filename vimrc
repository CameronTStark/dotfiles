" set nocompatible              " required
" filetype off                  " required

" vim-plug begin
call plug#begin('~/.vim/plugged')
Plug 'jnurmine/Zenburn' " colorscheme
Plug 'altercation/vim-colors-solarized' " colorscheme
Plug 'vim-airline/vim-airline' " light powerline
Plug 'vim-airline/vim-airline-themes' " themese for light powerline
Plug 'bling/vim-bufferline' " show list of buffers in command bar
"Interfaces
Plug 'ctrlpvim/ctrlp.vim' " Ctrl+P search files
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " file tree navigation
Plug 'jistr/vim-nerdtree-tabs' " addon for nerdtree
"Code improvement
Plug 'Valloric/YouCompleteMe' " enable Autocompletion
Plug 'scrooloose/NERDcommenter' " easy commenting toggle
"Plug 'scrooloose/syntastic' " check you syntax on each save
" git
Plug 'airblade/vim-gitgutter' " enable git details within vim
Plug 'tpope/vim-git' " vim settings everyone can agree on
" TPOPE
Plug 'tpope/vim-surround' " easy add/change surrounding characters/tags
Plug 'tpope/vim-fugitive' " git interaction from vim
Plug 'tpope/vim-sensible' " vim settings everyone can agree on
" PYTHON
Plug 'nvie/vim-flake8' " check PEP8 compliance
Plug 'vim-scripts/indentpython.vim' " enable proper indenting with python
Plug 'gotcha/vimpdb' " enable python debugging in vim
"Plug 'ivanov/vim-ipython' " iPython interactivity
Plug 'tmhedberg/SimpylFold' " enable folding of code based on indents
" JAVASCRIPT
Plug 'pangloss/vim-javascript' "JavaScript bundle for vim, this bundle provides syntax and indent plugins
Plug 'marijnh/tern_for_vim' " syntax highlighting for JavaScript
Plug 'maksimr/vim-jsbeautify' " beautifier for javascript

" HTML
Plug 'othree/html5.vim' "HTML5 omnicomplete and syntax
Plug 'mattn/emmet-vim' " provides support for expanding abbertviations similar to emmet
" Plug 'gregsexton/MatchTag' " highlights HTML tags
Plug 'Valloric/MatchTagAlways' " highlights matched HTML tags
" CSV/DAT
Plug 'chrisbra/csv.vim' " Filetype plugin for csv files
call plug#end()

" line numbering
set relativenumber
au FocusLost * :set number
au FocusGained * :set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

" Color Scheme
syntax enable
set background=dark
" solarized options
" let g:solarized_visibility = "high"
" let g:solarized_contrast = "high"
" let g:solarized_termcolors=256
colorscheme solarized
"syntax on

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za  " Enable folding with the spacebar

" MISC
set hlsearch " set search highlighting
set nu " Line Numbering
set clipboard=unnamed " enable system clipboard
set splitbelow " frame horizontal split below
set splitright " frame vertical split right

" look in .vim/after/ directory for config files
filetype plugin indent on
filetype plugin on

" PYTHON
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
  "project_base_dir = os.environ['VIRTUAL_ENV']
  "activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  "execfile(activate_this, dict(__file__=activate_this))
"EOF

set encoding=utf-8 " Enable UTF-8 for python

" Python specific highlighting
let python_highlight_all=1
syntax on

" flag unnecessary whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
autocmd BufWritePre * :%s/\s\+$//e

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" remapping for easier insertion of new lines
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>
"nnoremap <C-J> a<CR><Esc>k$ " keyboard mappings

" mapping for NerdTree
map <C-n> :NERDTreeToggle<CR>

" configure vim-flake8
let g:flake8_show_in_gutter=1
autocmd BufWritePost *.py call Flake8()

" configure airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" configure bufferline
"let g:bufferline_echo = 1
"
" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" NerdTree Configuration
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
