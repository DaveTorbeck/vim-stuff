" solarized options 
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termtrans = 1
let g:solarized_termcolors = 16
colorscheme solarized 

syntax on 
set backspace=2
set background=dark
execute pathogen#infect()
filetype plugin indent on
set number
set shell=/bin/zsh
set clipboard=unnamed
set hlsearch

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

"jk for escape, space for leader
imap jk <ESC>
let mapleader = "\<Space>"

"Delete and paste with blackhole register.  Leader
nnoremap <leader>d "_d
vnoremap <leader>d "_d
vnoremap <leader>p "_dP

"Set tabs to two spaces for ruby
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab

"Easy motion settings
let g:EasyMotion_use_upper = 1
let g:EasyMotion_keys = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ;'

"syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

highlight clear SignColumn
highlight GitGutterAdd ctermfg=green guifg=darkgreen
highlight GitGutterChange ctermfg=yellow guifg=darkyellow
highlight GitGutterDelete ctermfg=red guifg=darkred
highlight GitGutterChangeDelete ctermfg=yellow guifg=darkyellow
