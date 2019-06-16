syntax on
" 设置不兼容vi 说明:compatible是关闭vim对vi的所有扩展，尽量模拟vi的行为
set nocompatible              
" 开启文件类型检测、允许加载插件文件、允许不同文件采用不同的缩进格式
filetype plugin indent on

" 设置常用的快捷键
let mapleader = ";"
" 在插入模式下按,w就相当于按 esc+:w+回车，作用操作保存文件
inoremap <leader>w <Esc>:w<CR>
" 在插入模式下按 jj就相当于按esc回到正常模式
inoremap jj <Esc>
" 按大写的H 移动到行首的非空格字符
noremap H ^
" 按大写的L 移动到行尾的非空格字符
noremap L $
cnoremap <C-H> <Home>
cnoremap <C-L> <End>
" ,+q可以直接保存后强制退出
nmap <leader>q :wq!<CR>
" 展示代码结构
nmap <F8> :TagbarToggle<CR>
" 可以运行java代码
map <F5> :!javac %&&java %:r <CR>

" 设置vundle的运行路径
set rtp+=~/.vim/bundle/Vundle.vim
" 使用vundle管理插件,插件安装放到begin和end之间
call vundle#begin()
" vundle插件管理器
Plugin 'VundleVim/Vundle.vim'
" 目录管理器插件
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
" 在字符串周围添加字符
Plugin 'tpope/vim-surround'
" 状态栏插件
Plugin 'vim-airline/vim-airline'
" 状态栏主题插件
Plugin 'vim-airline/vim-airline-themes'
" 缩进线插件
" Plugin 'valloric/vim-indent-guides'
" 主题插件
Plugin 'w0ng/vim-hybrid'
" 启动vim插件可以展示最近常打开的文件
Plugin 'mhinz/vim-startify'
" 自动补全[] {} ()等
Plugin 'raimondi/delimitmate'
" 缓存间切换共享缓存
Plugin 'bling/vim-bufferline'
" 代码检查语法插件
Plugin 'scrooloose/syntastic'
" 用于展示代码的结构标签
Plugin 'majutsushi/tagbar'
" 全局搜索文件内容,默认快捷键ctrl+p搜索全局文件
Plugin 'kien/ctrlp.vim'
" 支持json格式语法
Plugin 'elzr/vim-json'
" 支持Python运行等
Plugin 'klen/python-mode'
" 支持scale语法
Plugin 'derekwyatt/vim-scala'
call vundle#end()

" 设置颜色主题
colorscheme hybrid

" 常用的vim设置
" 输入搜索字符串的同时进行搜搜
set incsearch
" 当文件在外部被改变时,vim自动更新载入
set autoread
" 设置展示行号
set number
" 设置光标所在行突出展示
set cursorline
" 搜索时忽略大小写,但在有一个或以上大写字母时仍保持对大小写敏感
set ignorecase smartcase
" 设定tab 长度4个空格
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
" 设置为双字显示,否则无法完整显示如:❤
set ambiwidth=double
" 设置支持鼠标选中与滚动
set mouse=a

" NERDTree设置
" F2开启和关闭树"
map <F2> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
"显示书签"
let NERDTreeShowBookmarks=1
"设置忽略文件类型"
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
"窗口大小"
let NERDTreeWinSize=25

" 设置缩进展示
" let g:indent_guides_enable_on_vim_startup = 1 " 添加行，vim启动时启用
" let g:indent_guides_start_level = 1           " 添加行，开始显示对齐线的缩进级别
" let g:indent_guides_guide_size = 1            " 添加行，对齐线的宽度，（1字符）
" let g:indent_guides_tab_guides = 0            " 添加行，对tab对齐的禁用

" 配置ctag命令路径
let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'
