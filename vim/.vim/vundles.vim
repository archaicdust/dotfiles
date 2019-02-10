
" ========================================
" Vim plugin configuration
" ========================================
"
" Automatic installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" My Bundles here:
"
" original repos on github
"Plugin 'FuzzyFinder'

" appearance {{{
Plug 'mhinz/vim-startify'
" colorscheme
"Plugin 'tomasr/molokai'
"Plugin 'tpope/vim-vividchalk'
"Plugin 'nanotech/jellybeans.vim'
Plug 'vim-scripts/peaksea'
"Plugin 'altercation/vim-colors-solarized'

" Plugin 'yonchu/accelerated-smooth-scroll'

" numbers Vim 7.3+
"Plugin 'myusuf3/numbers.vim'

Plug 'Yggdroot/indentLine'
" map <leader>il :IndentLinesToggle<CR>
" Plugin 'Lokaltog/vim-powerline'
Plug 'bling/vim-airline'

" Plugin 'xsunsmile/showmarks.git'
" }}}

" project {{{
"Plugin 'scrooloose/nerdtree'
"Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'kien/ctrlp.vim'

"Plugin 'vim-scripts/TaskList.vim'

Plug 'majutsushi/tagbar'
" }}}

" git {{{
"Plugin 'gregsexton/gitv'
"Plugin 'tpope/vim-fugitive'
"Plugin 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'
" }}}

" Provides tab completion while inside the “/” search
"Plugin 'vim-scripts/SearchComplete'

" search {{{
" :substitute preview
"Plugin 'osyo-manga/vim-over'
"Plugin 'mileszs/ack.vim'
" Plugin 'petdance/ack2'
Plug 'rking/ag.vim'
" (ack, ag, grep in the top level project dir)
"Plugin 'airblade/vim-rooter'
"Plugin 'vim-scripts/EasyGrep'
"Plugin 'Lokaltog/vim-easymotion'
"Plugin 'justinmk/vim-sneak'
" Plugin 'unblevable/quick-scope'
Plug 'vim-scripts/IndexedSearch'

" usage: https://github.com/bronson/vim-visual-star-search
Plug 'bronson/vim-visual-star-search'
" vim bookmark
Plug 'MattesGroeger/vim-bookmarks'
" Plugin 'haya14busa/incsearch.vim'
" mimics Ctrl-Shift-F on Sublime Text 2 (depend on ack or ag)
Plug 'dyng/ctrlsf.vim'
" }}}

"Plugin 'vim-scripts/mru.vim'

Plug 'vim-scripts/L9'
" vim-autocomplpop
"Automatic trigger complete popup menu (need L9)
"Plugin 'othree/vim-autocomplpop'


" vim-scripts pythoncomplete
" To use this plugin, make sure ftplugins are enabled, via "filetype plugin
" on".
Plug 'vim-scripts/pythoncomplete'

" YouCompleteMe
" Plugin 'Valloric/YouCompleteMe'

" Useful for python/vim scripts
"Plugin 'michaeljsmith/vim-indent-object'
"Plugin 'terryma/vim-expand-region'

" Syntax checking hacks for vim
"Plugin 'scrooloose/syntastic'

" Plugin 'vim-scripts/Conque-Shell'
"Plugin 'acx0/Conque-Shell'

"Plugin 'benmills/vimux'

" C/C++ {{{
Plug 'vim-scripts/a.vim'
Plug 'rhysd/vim-clang-format'
"Plugin 'vim-scripts/cscope.vim'
"Plugin 'SpaceVim/cscope.vim'

" the last one
"Plugin 'steffanc/cscopemaps.vim'
" }}}

" markdown {{{
"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'
" }}}

" rst {{{
"Plugin 'Rykka/riv.vim'
" }}}

"Plugin 'jceb/vim-orgmode'

" Program {{{
Plug 'tpope/vim-commentary'
"Plugin 'gkz/vim-ls'
" }}}

" imporvements {{{
" Readline style insertion (similar to Emacs key bindings)
"Plugin 'tpope/vim-rsi'
"Plugin 'AndrewRadev/linediff.vim'

Plug 'Raimondi/delimitMate'
" It requires Vim 7.3.885 or above and "if_lua" enabled Vim.
" Plugin 'Shougo/neocomplete.vim'

Plug 'vim-scripts/Mark'
" Plugin 'vim-scripts/Mark--Karkat'

" use multiple cursors like Sublime Text editor.
"Plugin 'terryma/vim-multiple-cursors'
" Plugin "vim-scripts/AutoTag.git"
"Plugin 'craigemery/vim-autotag'
"Plugin 'chrisbra/NrrwRgn'
"Plugin 'sjl/gundo.vim'
"Plugin 'mbbill/undotree'
"Plugin 'goldfeld/ctrlr.vim'

"Plugin 'bogado/file-line'
"Plugin 'rhysd/clever-f.vim'
" 
Plug 'vim-scripts/lastpos.vim'

"Plug 'vim-scripts/fcitx.vim'
" "}}}

"Plugin 'joonty/vdebug.git'

" The plugins listed in ~/.vim/.vundles.local will be added here to
" allow the user to add vim plugins to yadr without the need for a fork.
if filereadable(expand("~/.yadr/vim/.vundles.local"))
  source ~/.yadr/vim/.vundles.local
endif

call plug#end()
