set nocompatible
scriptencoding cp932
set rtp+=~/.vim/

filetype off

" Vundle
"if has("win32") || has("win64")
"set rtp+=~/vimfiles/bundle/vundle/
"call vundle#rc('~/vimfiles/bundle')
"else
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"endif

" From GitHub
Bundle 'gmarik/vundle'
Bundle 'groenewege/vim-less'
Bundle 'skammer/vim-css-color'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'othree/html5.vim'
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/vimfiler'
Bundle 'Shougo/neocomplcache'
Bundle 'mattn/zencoding-vim'

" From vim-script
Bundle 'project.tar.gz'
Bundle 'jQuery'
"Bundle 'CSApprox'
"アンインストールするにはコメントアウトして:BundleClean

filetype plugin indent on

syntax on
set cursorline
set number
set ruler

set fileencodings=utf-8,cp932
set fileformats=unix,dos

if has("win32") || has("win64")
	set encoding=cp932
  set termencoding=cp932
elseif has('gui_running') && !has('unix')
  set encoding=utf-8
endif

set backspace=2
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=0
set smartindent
set modeline
set incsearch
set ambiwidth=double
set title
" ウィンドウタイトル
set titlestring=%{expand('%:p')}%m
set textwidth=0
set wrap
set so=4
" Persistent undoを有効化
set undofile
set undodir=.

" クリップボードを共有
set clipboard+=unnamed
" 日本語の行の連結時には空白を入力しない
set formatoptions+=mM
" カーソルを表示行で移動する（物理行移動は<C-n>, <C-p>）
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk

" コマンドライン補完するときに強化されたものを使う
set wildmenu
" ディレクトリパス区切りに/を使えるようにする（Vundleではねられる）
"set shellslash

set list
set listchars=tab:>>,eol:^
colorscheme mademoiselle

" ステータスバーにフォーマット表示
if has('iconv')
  set statusline=%<%f\ %m\ %r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=[0x%{FencB()}]\ (%v,%l)/%L%8P\ 
else
  set statusline=%<%f\ %m\ %r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=\ (%v,%l)/%L%8P\ 
endif

function! FencB()
  let c = matchstr(getline('.'), '.', col('.') - 1)
  let c = iconv(c, &enc, &fenc)
  return s:Byte2hex(s:Str2byte(c))
endfunction

function! s:Str2byte(str)
  return map(range(len(a:str)), 'char2nr(a:str[v:val])')
endfunction

function! s:Byte2hex(bytes)
  return join(map(copy(a:bytes), 'printf("%02X", v:val)'), '')
endfunction

" カスタマイズ
let g:neocomplcache_enable_at_startup = 1

let g:user_zen_settings = {
\   'lang' : 'ja',
\   'indentation' : '  ',
\   'html' : {
\     'snippets' : {
\       'a' : '<a href="|" target="_blank" rel="nofollow">${child}</a>',
\       'a:n' : '<a href="|">${child}</a>'
\     },
\   },
\   'less' : {
\     'extends' : 'css',
\   },
\   'php' : {
\     'extends' : 'html',
\     'filters' : 'html,c',
\   },
\}

let g:use_zen_complete_tag = 1

" 自動的にカレントディレクトリを編集ファイルと同じディレクトリに変更
if exists('+autochdir')
  set autochdir
endif

let g:vimfiler_as_default_explorer = 1
nnoremap :vf :VimFiler

" EOF
