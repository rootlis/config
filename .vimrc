call pathogen#infect()  " Load plugins placed in ~/.vim/autoload


"INDENTATION SETTINGS
set tabstop=4       " Normal tab represented as 4 columns
set softtabstop=4   " Expanded tab inserts 4 columns
set shiftwidth=4    " Reindent (>>, <<, and =) => 4 columns
set expandtab       " Tab => spaces
set smartindent     " Auto-indentation


"FILETYPE SETTINGS
filetype on         " Enable filetype detection
filetype plugin on  " Enable filetype-specific plugins
filetype indent on


"SEARCH SETTINGS
set ignorecase      " Searching ignores case
set smartcase       " Searching ignores case unless the search string has a capital letter
set hlsearch        " Highlight matches
set incsearch       " Move cursor to first match before hitting enter


"APPEARANCE SETTINGS
set nowrap          " Don't wrap lines
set scrolloff=3     " Keep at least three rows between the cursor and the edge of the screen
set number          " Display line numbers on the left
set statusline+=%F  " Display cursor position on status bar
set cursorline      " Highlight the current line
set ruler           " Always show the cursor's column and row numbers
syntax enable       " Enable syntax highlighting
syntax on           " Use default syntax highlighting settings


"MISC SETTINGS
set backspace=indent,eol,start  " Backspace deletes indents, newlines, and past insert buffer


"COLOR SETTINGS
"set background=dark            " Use a light theme
"let g:solarized_termtrans=1    " Don't set the background color
"let g:solarized_termcolors=256 " Use 256 color-mode (necessary only for Terminal.app)
"colorscheme solarized          " Start Solarized
colorscheme distinguished


"SYNTASTIC SETTINGS
let g:syntastic_check_on_open=1         " Syntax check on first load
let g:syntastic_enable_highlighting=1   " Mark errors
let g:syntastic_javascript_closure_compiler_path = '/usr/local/bin/closure-compiler.jar'
