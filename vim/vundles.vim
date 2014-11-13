if &compatible
  set nocompatible
end

filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'gmarik/vundle'

" Define bundles via Github repos
" === Appearance
Plugin 'chrisbra/Colorizer'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'edkolev/tmuxline.vim'
Plugin 'jby/tmux.vim'
Plugin 'morhetz/gruvbox'
Plugin 'xsunsmile/showmarks'
" === Git
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'gregsexton/gitv'
Plugin 'mattn/gist-vim'
" === Languages
Plugin 'scrooloose/syntastic'
Plugin 'skwp/vim-html-escape'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'itspriddle/vim-jquery'
Plugin 'digitaltoad/vim-jade'
Plugin 'kchmck/vim-coffee-script'
Plugin 'claco/jasmine.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'groenewege/vim-less'
Plugin 'tpope/vim-haml'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'nelstrom/vim-markdown-preview'
Plugin 'briancollins/vim-jst'
Plugin 'rodjek/vim-puppet'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
" === Ruby
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-rvm'
Plugin 'vim-ruby/vim-ruby'
Plugin 'Keithbsmiley/rspec.vim'
Plugin 'ck3g/vim-change-hash-syntax'
Plugin 'tpope/vim-bundler'
" === Project
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'majutsushi/tagbar'
Plugin 'xolox/vim-misc'
" === Search
Plugin 'justinmk/vim-sneak'
Plugin 'rking/ag.vim'
Plugin 'vim-scripts/IndexedSearch'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'skwp/greplace.vim'
" === Text Objects
Plugin 'austintaylor/vim-indentobject'
Plugin 'bootleq/vim-textobj-rubysymbol'
Plugin 'coderifous/textobj-word-column.vim'
Plugin 'kana/vim-textobj-datetime'
Plugin 'kana/vim-textobj-entire'
Plugin 'kana/vim-textobj-function'
Plugin 'kana/vim-textobj-user'
Plugin 'lucapette/vim-textobj-underscore'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'thinca/vim-textobj-function-javascript'
Plugin 'vim-scripts/argtextobj.vim'
" === Improvement
Plugin 'editorconfig/editorconfig-vim'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'Shougo/neocomplete'
Plugin 'docunext/closetag.vim'
Plugin 'briandoll/change-inside-surroundings.vim'
Plugin 'godlygeek/tabular'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-scripts/camelcasemotion'
Plugin 'vim-scripts/matchit.zip'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Keithbsmiley/investigate.vim'
Plugin 'chrisbra/NrrwRgn'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'bogado/file-line'
Plugin 'mattn/webapi-vim'
Plugin 'sjl/gundo.vim'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-sensible'
Plugin 'vim-scripts/AnsiEsc.vim'
Plugin 'vim-scripts/AutoTag'
Plugin 'vim-scripts/lastpos.vim'
Plugin 'vim-scripts/sudo.vim'
Plugin 'goldfeld/ctrlr.vim'

call vundle#end()
filetype plugin indent on
