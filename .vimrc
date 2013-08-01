" Load plugins placed in ~/.vim/autoload
call pathogen#infect()


"INDENTATION SETTINGS
" Normal tab represented as 4 columns
set tabstop=4
" Expanded tab inserts 4 columns
set softtabstop=4
" Reindent (>>, <<, and =) => 4 columns
set shiftwidth=4
" Tab => spaces
set expandtab
" Auto-indentation
set smartindent


"FILETYPE SETTINGS
" Enable filetype detection
filetype on
" Enable filetype-specific plugins
filetype plugin on
filetype indent on


"SEARCH SETTINGS
" Searching ignores case
set ignorecase
" Searching ignores case unless the search string has a capital letter
set smartcase
" Highlight matches
set hlsearch
" Move cursor to first match before hitting enter
set incsearch


"APPEARANCE SETTINGS
" Don't wrap lines
set nowrap
" Keep at least three rows between the cursor and the edge of the screen
set scrolloff=3
" Display line numbers on the left
"set laststatus=2
set number
set statusline+=%F
" Highlight the current line
set cursorline
" Always show the cursor's column and row numbers
set ruler
" Enable syntax highlighting
syntax enable
" Use default syntax highlighting settings
syntax on


"MISC SETTINGS
" Let us backspace over indents, newlines, and past the start of the insert buffer
set backspace=indent,eol,start


"SOLARIZED SETTINGS
" Use a light theme
set background=light
" Don't set the background color
let g:solarized_termtrans=1
" Use 256 color-mode (necessary only for Terminal.app)
"let g:solarized_termcolors=256
" Start Solarized
colorscheme solarized


"SYNTASTIC SETTINGS
"Do syntax checks when the buffer is first loaded
let g:syntastic_check_on_open=1
" Use syntax highlighting to mark errors
let g:syntastic_enable_highlighting=1
" Enable Closure Compiler checker
let g:syntastic_javascript_closure_compiler_path = '/usr/local/bin/closure-compiler.jar'
