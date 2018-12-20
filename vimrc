set encoding=utf-8

"显示号
set nu

"允许折叠
set foldenable

"显示status bar
set laststatus=1

"打开文件目录
"map<C-F3> \be

"允许插件
filetype plugin on

"检查文件类型
filetype on

"语法高亮
set syntax=on

" 去掉输入错误的提示声音
set noeb

"TAB宽度
set tabstop=4

"自动对齐
set autoindent

"标尺
set ruler

"游标
set cursorline

" 设置默认进行大小写不敏感查找
set ignorecase

" 如果有一个大写字母，则切换到大小写敏感查找
set smartcase 

"语法检查
syntax on

"High light search result
set hlsearch

"使用配色
color dracula

"all model
noremap <c-l> <esc> $a
noremap <c-h> <esc> ^i
noremap <c-f> <esc> /

"insert model
inoremap <c-j> <esc> ^i
inoremap <c-l> <esc> $i

"normal model
nnoremap <tab> viw

nnoremap ga :!git add .
nnoremap gs :!git status
nnoremap gc :!git commit -m 'debug'
nnoremap gp :!git push origin trade

nnoremap "" ^i // <esc>
nnoremap jshint :JSHint --config ~/Documents/config/jshintrc <enter>
nnoremap sync :!sh ~/.scripts/syncBitKeep

"statusline
"set laststatus=2
set statusline +=%3*%y%*
set statusline +=%4*\ %<%F%*
set statusline +=%1*%m%*
set statusline +=%2*%=%5l%* 
set statusline +=%2*/%L%*               
hi User1 ctermfg=007 ctermbg=002
hi User2 ctermfg=007 ctermbg=008
hi User3 ctermfg=007 ctermbg=004
hi User4 ctermfg=007 ctermbg=016
hi User5 ctermfg=007
hi User7 ctermfg=007
hi User8 ctermfg=007
hi User9 ctermfg=007

"PLUGIN
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'leafgarland/typescript-vim'
Plugin 'mattn/emmet-vim'
Plugin 'fatih/vim-go'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'Valloric/YouCompleteMe'
Plugin 'mileszs/ack.vim'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'suan/vim-instant-markdown'
Plugin 'szw/vim-tags'
Plugin 'vim-scripts/taglist.vim'

call vundle#end()

set runtimepath^=~/.vim/bundle/ctrlp.vim/
set runtimepath+=~/.vim/bundle/jshint2.vim/

"SETTING vim-go:
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_autosave = 1
"let g:go_bin_path = '/home/eaves/go/bin'"

"SETTING vim-autoformat
"noremap <F3> :Autoformat<CR>

"SETTING YouCompleteMe
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_min_num_identifier_candidate_chars = 0
let g:ycm_server_python_interpreter = '/usr/bin/python3'

" 即时显示 markdown
let g:instant_markdown_slow = 1

"SETTING ack
map <F4> :Ack -i 
map <F3> :call JsBeautify()<cr>

"Dartlang setting
au BufNewFile,BufRead *.dart set filetype=dartlang
au BufNewFile,BufRead *.ts set filetype=typescript

"SETTING JShint
" let jshint2_save = 1
"autocmd BufWritePost *.js :!sh ~/.scripts/syncBitKeep
