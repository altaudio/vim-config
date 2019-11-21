execute pathogen#infect()
let g:auto_save = 0
let g:auto_save_no_updatetime = 1  
let g:auto_save_in_insert_mode = 0
set t_Co=256
color PaperColor
syntax on
filetype plugin indent on
filetype plugin on
set rnu
set nu
set shiftwidth=2
set autoread
set incsearch
set wildignore+=**/node_modules/**/*
set wildignore+=**/dist/**/*
set wildignore+=**/vendor/**/*
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 2
let g:netrw_winsize = 25

" NERDTree Settings
let g:NERDTreeWinSize=50
let NERDTreeShowHidden=1
command NT NERDTree
command NTF NERDTreeFind


" SnipMate
"let g:snipMate.snippet_version = 1

" Navigate between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~ '\s'
"endfunction

"inoremap <silent><expr> <TAB>
"	      \ pumvisible() ? "\<C-n>" :
"	      \ <SID>check_back_space() ? "\<TAB>" :
"	      \ coc#refresh()

"Autoclose 
inoremap <      <><Left>
inoremap <<CR>  <<CR>><Esc>kA
inoremap <<     <
inoremap <>     <>
inoremap </      </><Esc>i

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     (
inoremap ()     ()

inoremap [      []<Left>
inoremap [<CR>  [<CR>]<Esc>O
inoremap [[     [
inoremap []     []

inoremap '      ''<Left>
inoremap '<CR>  '<CR>'<Esc>O
inoremap ''     ''

inoremap "      ""<Left>
inoremap "<CR>  "<CR>"<Esc>O
inoremap ""     ""

inoremap `      ``<Left>
inoremap `<CR>  `<CR>`<Esc>O
inoremap ``     ``

" Test Commands
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

"Vim Test Settings
let test#project_root = "~/dev/gather-content/app/webapp"

"Search Commands
nmap <silent> <C-f> :FZF<CR> 
let $FZF_DEFAULT_COMMAND = 'find .'
