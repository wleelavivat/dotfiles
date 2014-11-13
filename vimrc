" Use Vim settings, rather then Vi settings. This setting must be as early as
" possible, as it has side effects.
set nocompatible

" =================== Vundles ========================
if filereadable(expand("~/.vim/vundles.vim"))
  source ~/.vim/vundles.vim
endif

" ================ General Config ====================
syntax on                       " Turn on syntax highlighting
set t_Co=256                    " Change to 256 Color
set relativenumber              " Relative Line number
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

" ===== Indentation
set autoindent

" ===== Completion
set wildmode=list:longest
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
let mapleader=","              " Change leader to ","
" ===== Buffer
nmap <Esc>[27;5;9~ <C-Tab>
nmap <Esc>[27;6;9~ <C-S-Tab>
nmap <C-Tab> :bn<CR>
nmap <C-S-Tab> :bp<CR>

" ===== Newline without enter insert mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" ================ Plugin Config ====================
" ===== Colorizer
let g:colorizer_auto_color = 1

" ===== NerdTree
nmap <C-o> :NERDTreeToggle<CR>

" ===== Tagbar
nmap <C-t> :TagbarToggle<CR>

" ===== Vim-Easymotion
map <Leader> <Plug>(easymotion-prefix)

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
call togglebg#map("<F5>")

" ===== CtrlP
" === CtrlP - don't recalculate files on start (slow)
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_working_path_mode = 'ra'

" ===== Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" ===== Showmarks
let g:showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXY"
