"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/okamu/.config/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/okamu/.config/dein')
  call dein#begin('/Users/okamu/.config/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/okamu/.config/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('tomasr/molokai')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

"#####初期設定#####
colorscheme molokai
syntax on "コードの色分け
set t_Co=256
"#####表示設定#####
set autoindent "新しい行のインデントを現在行と同じにする
set expandtab "タブで挿入する文字をスペースに
set number "行番号を表示する
set title "編集中のファイル名を表示
"set cursorline "カーソルのある行にアンダーラインを引く
set showmatch "括弧入力時の対応する括弧を表示
set expandtab
set tabstop=2 "インデントをスペース4つ分に設定
set shiftwidth=2 "自動インデントの幅
set smartindent "オートインデント
set smarttab "新しい行を作った時に高度な自動インデント
"set clipboard=unnamed,autoselect "OSのクリッポボードと連携
set matchpairs& matchpairs+=<:> "対応カッコに＜＞を追加
set backspace=eol,indent,start

