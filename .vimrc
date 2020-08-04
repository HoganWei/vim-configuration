""""""""  generic setting  """"""""
set number
set autoindent
set cindent
set showmatch
set mouse=a
hi Comment ctermfg=DarkCyan
set shiftwidth=8
set tabstop=8
set incsearch
set hlsearch

:highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
:auto Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t\|\t\zs \+\|^[^\*]\{-}\zs  \+\ze\|\w\%>101v/
"""""""  ctags  """"""""
set tags=tags
set tags+=./tags

""""""""  fold  """"""""
"set foldmethod=syntax
"set foldlevel=100
"set foldcolumn=5

""""""""  cscope  """"""""
if has ("cscope")
set csprg=/usr/bin/cscope
set csto=0
set cst
set cscopequickfix=s-,c-,d-,i-,t-,e-
set nocsverb
if filereadable("cscope.out")
cs add cscope.out
elseif $CSCOPE_DB != ""
cs add $CSCOPE_DB
endif
set csverb
endif

nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR> :copen<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR> :copen<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR> :copen<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR> :copen<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR> :copen<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i <C-R>=expand("<cfile>")<CR><CR> :copen<CR><CR>

"""""""" taglist """"""""
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

""""""""  omnicppcomplete """"""""
imap <F3> <C-X><C-O>
imap <F2> <C-X><C-I>
set completeopt=menu,menuone
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1
let OmniCpp_MayCompleteScope = 1
let OmniCpp_SelectFirstItem = 2
let OmniCpp_NamespaceSearch = 2
let OmniCpp_ShowPrototypeInAbbr = 1
let OmniCpp_GlobalScopeSearch=1
let OmniCpp_DisplayMode=1
let OmniCpp_ShowScopeInAbbr=1
let OmniCpp_ShowAccess=1

""""""""  winmanager  """"""""
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>

""""""""  MiniBufferExplorer  """"""""
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplMapCTabSwitchWindows = 1
let g:miniBufExplModSelTarget = 1


