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

"jk for escape, space for leader
imap jk <ESC>
map <Space> \

"Set tabs to two spaces for ruby
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab

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
