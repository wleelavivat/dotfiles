if &compatible
  set nocompatible
end

filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'gmarik/vundle'

" Search {
  if executable('ag')
    Plugin 'mileszs/ack.vim'
    let g:ackprg = 'ag --nogroup --nocolor --column --smart-case'
  elseif executable('ack-grep')
    let g:ackprg="ack-grep -H --nocolor --nogroup --column"
    Plugin 'mileszs/ack.vim'
  elseif executable('ack')
    Plugin 'mileszs/ack.vim'
  endif
  Plugin 'justinmk/vim-sneak'
  Plugin 'rking/ag.vim'
  Plugin 'vim-scripts/IndexedSearch'
  Plugin 'Lokaltog/vim-easymotion'
  Plugin 'nelstrom/vim-visual-star-search'
  Plugin 'skwp/greplace.vim'
" }

" Appearance  {
  Plugin 'chriskempson/vim-tomorrow-theme'
  Plugin 'acarapetis/vim-colors-github'
  Plugin 'bling/vim-airline'
  Plugin 'edkolev/tmuxline.vim'
  Plugin 'jby/tmux.vim'
  Plugin 'chrisbra/Colorizer'
  Plugin 'ntpeters/vim-better-whitespace'
  Plugin 'xsunsmile/showmarks'
" }

" Git {
  Plugin 'tpope/vim-fugitive'
  Plugin 'tpope/vim-git'
  Plugin 'gregsexton/gitv'
  Plugin 'mattn/gist-vim'
" }

" Programming {
  Plugin 'scrooloose/syntastic'
  Plugin 'garbas/vim-snipmate'
  Plugin 'honza/vim-snippets'
  Plugin 'mattn/webapi-vim'
  Plugin 'tomtom/tcomment_vim'
  Plugin 'godlygeek/tabular'
" }

" JavaScript {
  Plugin 'elzr/vim-json'
  Plugin 'pangloss/vim-javascript'
  Plugin 'itspriddle/vim-jquery'
  Plugin 'kchmck/vim-coffee-script'
  Plugin 'digitaltoad/vim-jade'
  Plugin 'groenewege/vim-less'
  Plugin 'briancollins/vim-jst'
  Plugin 'othree/javascript-libraries-syntax.vim'
  Plugin 'claco/jasmine.vim'
" }

" HTML/CSS {
  Plugin 'skwp/vim-html-escape'
  Plugin 'hail2u/vim-css3-syntax'
  Plugin 'tpope/vim-haml'
" }

" Python {
  Plugin 'klen/python-mode'
  Plugin 'yssource/python.vim'
  Plugin 'python_match.vim'
  Plugin 'pythoncomplete'
" }

" Ruby {
  Plugin 'ecomba/vim-ruby-refactoring'
  Plugin 'tpope/vim-rails'
  Plugin 'tpope/vim-rake'
  Plugin 'tpope/vim-rbenv'
  Plugin 'vim-ruby/vim-ruby'
  Plugin 'Keithbsmiley/rspec.vim'
  Plugin 'ck3g/vim-change-hash-syntax'
  Plugin 'tpope/vim-bundler'
" }

" Puppet {
  Plugin 'rodjek/vim-puppet'
" }

" Markdown {
  Plugin 'jtratner/vim-flavored-markdown'
  Plugin 'nelstrom/vim-markdown-preview'
" }

" Project {
  Plugin 'kien/ctrlp.vim'
  Plugin 'scrooloose/nerdtree'
  Plugin 'jistr/vim-nerdtree-tabs'
  Plugin 'majutsushi/tagbar'
  Plugin 'xolox/vim-misc'
" }

" Text Objects {
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
" }

" Improvement {
  Plugin 'editorconfig/editorconfig-vim'
  Plugin 'AndrewRadev/splitjoin.vim'
  Plugin 'Raimondi/delimitMate'
  Plugin 'Shougo/neocomplete'
  Plugin 'docunext/closetag.vim'
  Plugin 'briandoll/change-inside-surroundings.vim'
  Plugin 'vim-scripts/camelcasemotion'
  Plugin 'vim-scripts/matchit.zip'
  Plugin 'terryma/vim-multiple-cursors'
  Plugin 'Keithbsmiley/investigate.vim'
  Plugin 'chrisbra/NrrwRgn'
  Plugin 'MarcWeber/vim-addon-mw-utils'
  Plugin 'bogado/file-line'
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
" }

call vundle#end()
filetype plugin indent on
