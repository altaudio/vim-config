execute pathogen#infect()
let g:auto_save = 0
let g:auto_save_no_updatetime = 1  
let g:auto_save_in_insert_mode = 0
set t_Co=256
color PaperColor
syntax on
filetype plugin indent on
filetype plugin on
set number
set shiftwidth=2
set autoread
set incsearch
set wildignore+=**/node_modules/**/*
set wildignore+=**/dist/**/*
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 2
let g:netrw_winsize = 25

" NERDTree Settings
let g:NERDTreeWinSize=50
let NERDTreeShowHidden=1

" Navigate between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
	      \ pumvisible() ? "\<C-n>" :
	      \ <SID>check_back_space() ? "\<TAB>" :
	      \ coc#refresh()

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

"JS Snippets
inoremap <TAB>imp import  from '';<Esc>2bhi
inoremap <TAB>impc import {  } from '';<Esc>?{<cr>lli
inoremap <TAB>cl console.log();<Esc>ba
inoremap <TAB>const  const  =;<Esc>bhi
inoremap <TAB>af  () => 
inoremap <TAB>af<CR>  () => {<CR>}<Esc>O
inoremap <TAB>aaf  async () => 
inoremap <TAB>aaf<CR>  async () => {<CR>}<Esc>O
inoremap <TAB>caf const  = () =><Esc>3bhi
inoremap <TAB>caf<CR> const  = () => {<CR>}<Esc>4bhi

"React Snippets
inoremap <TAB>imr import React from 'react';
inoremap <TAB>imgu import {  } from 'gather-content-ui';<Esc>?{<cr>la
inoremap <TAB>impt import {  } from 'prop-types';<Esc>?{<cr>la
inoremap <TAB>rfc<CR> const  = () => (<CR>)<Esc>O

"Test Snippets
inoremap <TAB>de describe('', () => {<CR>});<Esc>?'<cr>i
inoremap <TAB>it it('', () => {<CR>});<Esc>?'<cr>i
inoremap <TAB>te test('', () => {<CR>});<Esc>?'<cr>i

inoremap <TAB>ade describe('', async () => {<CR>});<Esc>?'<cr>i
inoremap <TAB>ait it('', async () => {<CR>});<Esc>?'<cr>i
inoremap <TAB>ate test('', async () => {<CR>});<Esc>?'<cr>i

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
