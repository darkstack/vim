" Maximize on startup (Win32)
if has("win32")
    source ~/vimfiles/bundles.vim
    "autocmd GUIEnter * simalt ~x
    " Put swap files in temp

    set directory=c:/windows/temp/vim//i
    behave mswin 
    " I have GNU Grep installed.
    set t_Co=256    
    set grepprg=grep\ -nH
    set guifont=Consolas_for_Powerline_FixedD:h9
    let g:molokai_original=1
    let g:Powerline_symbols="fancy"
    if has("win64")
        map <F12> <Esc>:call libcallnr($HOME."/vimfiles/gvimfullscreen_64.dll", "ToggleFullScreen", 0)<CR>
    elseif has("win32")
        map <F12> <Esc>:call libcallnr($HOME."/vimfiles/gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
    endif
elseif has("unix")
    source ~/.vim/bundles.vim
    let g:airline_powerline_fonts = 1
    set grepprg=grep\ -nH
    let g:molokai_original=1
    let g:airline_theme='distinguished'
    set t_Co=256
endif
"set tab params
set tabstop=4
set shiftwidth=4
 
" GUI and color scheme
colorscheme molokai
set linespace=0
set fillchars=""

" UTF-8!
set encoding=utf-8

" Turn off menus, toolbars and scrollbars
set guioptions-=m
set guioptions-=T
set guioptions-=L

" Slashes in paths everywhere
set shellslash

" Various GUI/editing options
set cpoptions+=$
set backspace=indent,eol,start
set nowrap
set ruler
set showcmd
set showmode
set wildmenu
syntax on

" Tab/indent settings
set autoindent
set expandtab
set smarttab
set cino=:0l1g0t0(0

" Highlight search
set hlsearch

" No point in backup files, everything is version controlled!
set nobackup
set noswapfile

set laststatus=2
set cmdheight=2

" Hidden buffers don't ned to be unloaded
set hidden

" Wildcard ignores
set wildignore=*.o,*.obj,*.a,*.lib,*.exe,*.pdb,node_module/**,*.spec.ts

" Use The Silver Searcher when available
if executable("ag")
    set grepprg=ag\ --nogroup\ --nocolor 
    
    let g:ackprg = 'ag --vimgrep'
    let g:ctrlp_user_command = 'ag -l --nocolor -g "" %s'
endif

" NERDTree config
let NERDTreeShowBookmarks=1
nmap <F10> :NERDTreeToggle<CR>
nmap <F11> :cd %:p:h<CR>

" Quickfix mappings
nmap <F8> :cnext<CR>
nmap <S-F8> :cprevious<CR>
nmap <C-S-F> :noautocmd vimgrep 
imap <C-S-F> :noautocmd vimgrep

" Turn off autohighlight by hitting return
nnoremap <CR> :nohl<CR><CR>

" DOS Edit-style copy & paste to system buffer.
vmap <C-Insert> "*y<CR>
vmap <C-Delete> "*d<CR>
nmap <S-Insert> "*P<CR>
vmap <S-Insert> "*P<CR>

"Buffers
nmap <C-PageUp> :bnext<CR>
nmap <C-PageDown> :bprevious<CR>


"alt -> and <- to cycle window panes
nnoremap <silent><A-Right> :wincmd l<CR>
nnoremap <silent><A-Left> :wincmd h<CR>
nnoremap <silent><A-Up> :wincmd k<CR>
nnoremap <silent><A-Down> :wincmd j<CR>
inoremap <silent><A-Right> <ESC>:wincmd l<CR>
inoremap <silent><A-Left> <ESC>:wincmd h<CR>
inoremap <silent><A-Up> <ESC>:wincmd k<CR>
inoremap <silent><A-Down> <ESC>:wincmd j<CR>
 
"ctrl + alt -> and <- move the window panes
nnoremap <silent><C-A-Right> :wincmd L<cr>
nnoremap <silent><C-A-Left> :wincmd H<cr>
nnoremap <silent><C-A-Up> :wincmd K<cr>
nnoremap <silent><C-A-Down> :wincmd J<cr>
inoremap <silent><C-A-Right> <ESC>:wincmd L<cr>
inoremap <silent><C-A-Left> <ESC>:wincmd H<cr>
inoremap <silent><C-A-Up> <ESC>:wincmd K<cr>
inoremap <silent><C-A-Down> <ESC>:wincmd J<cr>
command FormatBDD :s#\(\%(\<\l\+\)\%(_\)\@=\)\|_\(\l\)#\u\1\2#g
command JSONP %!python -m json.tool 
command FormatXML :%!python -c "import xml.dom.minidom, sys; print(xml.dom.minidom.parse(sys.stdin).toprettyxml())"
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windowus
nmap <F9> :FormatBDD<CR>
"autocmd! BufNewFile,BufRead *.ts set filetype=javascript
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
autocmd! BufNewFile,BufRead .plan set filetype=plan
"
