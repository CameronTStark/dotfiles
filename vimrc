" set nocompatible              " required
" filetype off                  " required

" vim-plug begin
call plug#begin('~/.vim/plugged')
" Plug 'jnurmine/Zenburn' " colorscheme
" Plug 'altercation/vim-colors-solarized' " colorscheme
Plug 'vim-airline/vim-airline' " light powerline
Plug 'vim-airline/vim-airline-themes' " themese for light powerline
Plug 'bling/vim-bufferline' " show buffer details in status bar
Plug 'romainl/flattened' " no bs solarized
Plug 'tpope/vim-sensible' " vim settings everyone can agree on
"Interfaces
Plug 'ctrlpvim/ctrlp.vim' " Ctrl+P search files
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " file tree navigation
Plug 'jistr/vim-nerdtree-tabs' " addon for nerdtree
"Plug 'jpalardy/vim-slime' " transfer text in VIM to another console
Plug 'julienr/vim-cellmode' " MATLAB-like cell execution for tmux/ipython
"Code improvement
Plug 'Valloric/YouCompleteMe' " enable Autocompletion
Plug 'scrooloose/NERDcommenter' " easy commenting toggle
Plug 'tpope/vim-surround' " easy add/change surrounding characters/tags
Plug 'chiel92/vim-autoformat' " easy code formatting in vim
Plug 'nathanaelkane/vim-indent-guides' " visually displaying indent levels in code
" Plug 'tweekmonster/braceless.vim' "text obj, folding, indention, more...
"Plug 'scrooloose/syntastic' " check you syntax on each save
" git
 Plug 'airblade/vim-gitgutter' " enable git details within vim
Plug 'tpope/vim-git' " vim settings everyone can agree on
Plug 'tpope/vim-fugitive' " git interaction from vim
" PYTHON
Plug 'nvie/vim-flake8' " check PEP8 compliance
Plug 'hynek/vim-python-pep8-indent' " a nicer python indentation style for vim
Plug 'gotcha/vimpdb' " enable python debugging in vim
Plug 'ivanov/vim-ipython' " iPython interactivity
Plug 'tmhedberg/SimpylFold' " enable folding of code based on indents
Plug 'vim-scripts/vim-autopep8' " runs currently open file through autopep8
"Plug 'klen/python-mode' " PyLint, Rope, Pydoc, breakpoints from box
" JAVASCRIPT
Plug 'pangloss/vim-javascript' "JavaScript bundle for vim, this bundle provides syntax and indent plugins
Plug 'marijnh/tern_for_vim' " syntax highlighting for JavaScript
Plug 'maksimr/vim-jsbeautify' " beautifier for javascript
Plug 'elzr/vim-json' " better JSON for Vim
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
" syntax enable
" set background=dark
" colorscheme solarized
colorscheme flattened_dark

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

set ts=4

" look in .vim/after/ directory for config files
filetype plugin indent on
filetype plugin on

" PYTHON

set encoding=utf-8 " Enable UTF-8 for python

" Python specific highlighting
let python_highlight_all=1
syntax on

" SimpylFold config
let g:SimpylFold_fold_docstring = 0

" flag unnecessary whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
autocmd BufWritePre * :%s/\s\+$//e

"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
  "project_base_dir = os.environ['VIRTUAL_ENV']
  "activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  "execfile(activate_this, dict(__file__=activate_this))
"EOF
"
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
"autocmd BufWritePost *.py call Flake8()

" configure airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='murmur'
" configure statusline
"set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
"              | | | | |  |   |      |  |     |    |
"              | | | | |  |   |      |  |     |    +-- current column
"              | | | | |  |   |      |  |     +-- current line
"              | | | | |  |   |      |  +-- current % into file
"              | | | | |  |   |      +-- current syntax
"              | | | | |  |   +-- current fileformat
"              | | | | |  +-- number of lines
"              | | | | +-- preview flag in square brackets
"              | | | +-- help flag in square brackets
"              | | +-- readonly flag in square brackets
"              | +-- rodified flag in square brackets
"              +-- full path to file in the buffer
" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" NerdTree Configuration
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" vim-slime config
"let g:slime_target = "tmux"
"let g:slime_python_ipython = 1
"
"vim-cellmode
let g:cellmode_tmux_sessionname=''  " Will try to automatically pickup tmux session
let g:cellmode_tmux_windowname=''
let g:cellmode_tmux_panenumber='1'






"This is my new change"
