execute pathogen#infect()
call pathogen#helptags()
syntax on
set nu
set t_Co=256
colorscheme onedark
set ff=unix
set laststatus=2
filetype plugin on
filetype indent on
set autoread
let mapleader = ","
let g:mapleader = ","
set noshowmode 
map <C-c> "+y<CR>
map <C-v> "+P<CR>
set ruler
set magic
"set encoding = utf8

" tabs with spaces
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

" linebreak
set lbr
" set tw = 500

set wrap

"set background=dark " for the dark version
"set background=light " for the light versione
" hi Normal ctermbg=NONE 
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1 
"let g:airline_section_b = '%{strftime("%c")}'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }"
"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

map <F8> :NERDTreeToggle<CR>
