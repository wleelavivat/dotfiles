" Use Vim settings, rather then Vi settings. This setting must be as early as
" possible, as it has side effects.
set nocompatible

" Vundles {
  if filereadable(expand("~/.vim/vundles.vim"))
    source ~/.vim/vundles.vim
  endif
" }

" ================ General Config ====================
syntax on                       " Turn on syntax highlighting
filetype plugin indent on       " Automatically detect file types.
set t_Co=256                    " Change to 256 Color
set number                      " Line numbers are good
set backspace=indent,eol,start  " Allow backspace in insert mode
set history=1000                " Store lots of :cmdline history
set showcmd                     " Show incomplete cmds down the bottom
set showmode                    " Show current mode down the bottom
set gcr=a:blinkon0              " Disable cursor blink
set visualbell                  " No sounds
set autoread                    " Reload files changed outside vim
set hidden
set colorcolumn=80              " Show ruler at column 80
set laststatus=2                " Always show status bar
set cursorline                  " Add cursorline
set iskeyword+=_,$,@,%,#        " Not word dividers
set wildignore=.bak,.pyc,.o,
  \.ojb,.a,
  \.pdf,.jpg,.gif,.png,
  \.avi,.mkv,.so               " Ignore said files
set autoindent                 " preserve indentation
set ignorecase                 " Case insensitive search
set nofoldenable               " No fold by default
scriptencoding utf-8

" ===== Completion
set wildmode=list:longest,full
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================= Keybindings =====================
" ===== Leader
let mapleader=','              " Change leader to ","
" ===== Standard Shortcut
nmap <C-n> :enew <CR>
nmap <F9> :w <CR>
nmap <F10> :bd <CR>
nmap <F11> :bp <CR>
nmap <F12> :bn <CR>
nmap <C-S-Tab> :bp <CR>
nmap <C-Tab> :bn <CR>
" ===== Newline without enter insert mode
nmap <S-CR> O<Esc>
nmap <CR> o<Esc>
" ===== Insert time (W3C Format)
nmap <F3> a<C-R>=strftime("%FT%T%z")<CR><Esc>
imap <F3> <C-R>=strftime("%FT%T%z")<CR>
" ===== Fix Command (Shift Mistake)
command! -bang -nargs=* -complete=file E e<bang> <args>
command! -bang -nargs=* -complete=file W w<bang> <args>
command! -bang -nargs=* -complete=file Wq wq<bang> <args>
command! -bang -nargs=* -complete=file WQ wq<bang> <args>
command! -bang Wa wa<bang>
command! -bang WA wa<bang>
command! -bang Q q<bang>
command! -bang QA qa<bang>
command! -bang Qa qa<bang>

" ================ Plugin Config ====================
" ===== Colorizer
let g:colorizer_auto_color = 1

" ===== NerdTree
map <C-e> <plug>NERDTreeTabsToggle<CR>
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>

let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0

" ===== Tagbar
nnoremap <silent> <leader>tt :TagbarToggle<CR>

" ===== Gundo
nnoremap <F5> :GundoToggle<CR>

" ===== Solarized
if has('gui_running')
    set background=light
else
    set background=dark
endif
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized
call togglebg#map("<F6>")

" ===== CtrlP
" === CtrlP - don't recalculate files on start (slow)
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$',
  \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }
if executable('ag')
  let s:ctrlp_fallback = 'ag %s --nocolor -l -g ""'
elseif executable('ack-grep')
  let s:ctrlp_fallback = 'ack-grep %s --nocolor -f'
elseif executable('ack')
  let s:ctrlp_fallback = 'ack %s --nocolor -f'
else
  let s:ctrlp_fallback = 'find %s -type f'
endif

" ===== Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

" ===== Showmarks
let g:showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXY"

" ===== delimitMate
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1

" ===== Neocomplete
let g:neocomplete#enable_at_startup = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" ===== JSON
let g:vim_json_syntax_conceal = 0

" ===== Tabularize
nmap <Leader>a& :Tabularize /&<CR>
vmap <Leader>a& :Tabularize /&<CR>
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a=> :Tabularize /=><CR>
vmap <Leader>a=> :Tabularize /=><CR>
nmap <Leader>a: :Tabularize /:<CR>
vmap <Leader>a: :Tabularize /:<CR>
nmap <Leader>a:: :Tabularize /:\zs<CR>
vmap <Leader>a:: :Tabularize /:\zs<CR>
nmap <Leader>a, :Tabularize /,<CR>
vmap <Leader>a, :Tabularize /,<CR>
nmap <Leader>a,, :Tabularize /,\zs<CR>
vmap <Leader>a,, :Tabularize /,\zs<CR>
nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
vmap <Leader>a<Bar> :Tabularize /<Bar><CR>

" ===== Fugitive
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gp :Git push<CR>
nnoremap <silent> <leader>gr :Gread<CR>
nnoremap <silent> <leader>gw :Gwrite<CR>
nnoremap <silent> <leader>ge :Gedit<CR>
nnoremap <silent> <leader>gi :Git add -p %<CR>
nnoremap <silent> <leader>gg :SignifyToggle<CR>
