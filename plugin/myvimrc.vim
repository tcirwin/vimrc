"""""""" Tab and shift size """"""""
set expandtab    " Expand tabs; set tabsize to 3
set tabstop=3
set shiftwidth=3
set smarttab     " At beginning of line, insert spaces eq shiftwidth
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

"""""""" Indentation """"""""
set autoindent
set copyindent   " Copy previous line when auto-indenting
set nowrap       " Don't wrap lines

"""""""" Search """"""""
set hlsearch     " Highlight all search matches
set incsearch    " Show search matches as you type
set ignorecase   " Ignore case when searching
set smartcase    " Ignore case when lower-case, case-sensitive otherwise

"""""""" Other """"""""
set number         " v
set relativenumber " Show relative numbers for every line except current
set mouse=a
set visualbell   " Turn of the goddamed bell
set hidden       " Hides buffers instead of closing them when new files are opened
set showcmd      " Show command info along bottom right
set showmode     " Show mode along bottom
set backspace=indent,eol,start  "Allow backspace in insert mode
set pastetoggle=<F2> " Toggle :set paste when pressing F2


highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Scroll using the scroll wheel
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" Syntax highlighting
syntax on

" Disable javascript lint on every save
let disable_lint = 1

" Change the mapleader
let mapleader=","

" Map : to ;
nnoremap ; :

if has("autocmd")
   au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif

   au Filetype ruby setlocal expandtab tabstop=2 sw=2
endif

" Hobble arrow keys
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>

set clipboard=unnamed
