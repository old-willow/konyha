let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <S-Tab> =BackwardsSnippet()
inoremap <silent> <Plug>NERDCommenterInsert  <BS>:call NERDComment('i', "insert")
inoremap <Down> <Nop>
inoremap <Up> <Nop>
inoremap <Right> <Nop>
inoremap <Left> <Nop>
noremap ru :call RopeUseFunction()
noremap rad :call RopeShowDoc()
noremap rac :call RopeShowCalltip()
noremap rx :call RopeRestructure()
noremap r1r :call RopeRenameCurrentModule()
noremap rr :call RopeRename()
noremap ro :call RopeOrganizeImports()
noremap r1v :call RopeMoveCurrentModule()
noremap rv :call RopeMove()
noremap r1p :call RopeModuleToPackage()
noremap ra? :call RopeLuckyAssist()
noremap raj :call RopeJumpToGlobal()
noremap rf :call RopeIntroduceFactory()
noremap ri :call RopeInline()
noremap rag :call RopeGotoDefinition()
noremap rnv :call RopeGenerateVariable()
noremap rnp :call RopeGeneratePackage()
noremap rnm :call RopeGenerateModule()
noremap rnf :call RopeGenerateFunction()
noremap rnc :call RopeGenerateClass()
noremap raf :call RopeFindOccurrences()
noremap rai :call RopeFindImplementations()
noremap rl :call RopeExtractVariable()
noremap rm :call RopeExtractMethod()
noremap ra/ :call RopeCodeAssist()
noremap rs :call RopeChangeSignature()
noremap ra :call RopeAutoImport()
snoremap <silent> 	 i<Right>=TriggerSnippet()
nnoremap <silent>  :CtrlP
nmap o <Plug>ZoomWin
snoremap  b<BS>
noremap pu :call RopeUndo()
noremap pr :call RopeRedo()
noremap pc :call RopeProjectConfig()
noremap po :call RopeOpenProject()
noremap pg :call RopeGenerateAutoimportCache()
noremap p4f :call RopeFindFileOtherWindow()
noremap pf :call RopeFindFile()
noremap pnp :call RopeCreatePackage()
noremap pnm :call RopeCreateModule()
noremap pnf :call RopeCreateFile()
noremap pnd :call RopeCreateDirectory()
noremap pk :call RopeCloseProject()
snoremap % b<BS>%
snoremap ' b<BS>'
vnoremap ,e :python debugger.handle_visual_eval()
nmap ,ca <Plug>NERDCommenterAltDelims
xmap ,cu <Plug>NERDCommenterUncomment
nmap ,cu <Plug>NERDCommenterUncomment
xmap ,cb <Plug>NERDCommenterAlignBoth
nmap ,cb <Plug>NERDCommenterAlignBoth
xmap ,cl <Plug>NERDCommenterAlignLeft
nmap ,cl <Plug>NERDCommenterAlignLeft
nmap ,cA <Plug>NERDCommenterAppend
xmap ,cy <Plug>NERDCommenterYank
nmap ,cy <Plug>NERDCommenterYank
xmap ,cs <Plug>NERDCommenterSexy
nmap ,cs <Plug>NERDCommenterSexy
xmap ,ci <Plug>NERDCommenterInvert
nmap ,ci <Plug>NERDCommenterInvert
nmap ,c$ <Plug>NERDCommenterToEOL
xmap ,cn <Plug>NERDCommenterNested
nmap ,cn <Plug>NERDCommenterNested
xmap ,cm <Plug>NERDCommenterMinimal
nmap ,cm <Plug>NERDCommenterMinimal
xmap ,c  <Plug>NERDCommenterToggle
nmap ,c  <Plug>NERDCommenterToggle
xmap ,cc <Plug>NERDCommenterComment
nmap ,cc <Plug>NERDCommenterComment
map ,t <Plug>TaskList
vnoremap ,g :call GrepOperator(visualmode())
nnoremap ,g :set operatorfunc=GrepOperatorg@
nnoremap ,  i <Right>a <Left>
vnoremap ,ss `>a"`<i"
vnoremap ,s `>a'`<i'
nnoremap ,ll I"A"
nnoremap ,l I'A'
nnoremap ,ww ea"bi"
nnoremap ,w ea'bi'
nnoremap ,sv :source $MYVIMRC
nnoremap ,rc :vsp $MYVIMRC
nnoremap ,= O<Down>o<Up>
nnoremap ,_ dd<Up>P
nnoremap ,- ddp
vnoremap < <gv
vnoremap > >gv
nnoremap H :tabprevious
nnoremap L :tabnext
xmap S <Plug>VSurround
snoremap U b<BS>U
vmap [% [%m'gv``
snoremap \ b<BS>\
nmap \\u <Plug>CommentaryUndo:echomsg '\\ is deprecated. Use gc'
nmap \\\ <Plug>CommentaryLine:echomsg '\\ is deprecated. Use gc'
nmap \\ :echomsg '\\ is deprecated. Use gc'<Plug>Commentary
xmap \\ <Plug>Commentary:echomsg '\\ is deprecated. Use gc'
vmap ]% ]%m'gv``
snoremap ^ b<BS>^
snoremap ` b<BS>`
vmap a% [%v]%
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap cgc <Plug>ChangeCommentary
nmap ds <Plug>Dsurround
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
nmap gcu <Plug>Commentary<Plug>Commentary
nmap gcc <Plug>CommentaryLine
omap gc <Plug>Commentary
nmap gc <Plug>Commentary
xmap gc <Plug>Commentary
nnoremap sa ggVG
nnoremap ttd :tabclose
nnoremap ttn :tabnew
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
snoremap <BS> b<BS>
snoremap <silent> <S-Tab> i<Right>=BackwardsSnippet()
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
nnoremap <silent> <Plug>SurroundRepeat .
nnoremap <silent> <Plug>SIG_PurgeMarkers :call signature#PurgeMarkers()
nnoremap <silent> <Plug>SIG_PrevMarkerByType :call signature#GotoMarker("prev")
nnoremap <silent> <Plug>SIG_NextMarkerByType :call signature#GotoMarker("next")
nnoremap <silent> <Plug>SIG_PrevLineByPos :call signature#GotoMark("pos", "prev", "line")
nnoremap <silent> <Plug>SIG_NextLineByPos :call signature#GotoMark("pos", "next", "line")
nnoremap <silent> <Plug>SIG_PrevSpotByPos :call signature#GotoMark("pos", "prev", "spot")
nnoremap <silent> <Plug>SIG_NextSpotByPos :call signature#GotoMark("pos", "next", "spot")
nnoremap <silent> <Plug>SIG_PrevLineByAlpha :call signature#GotoMark("alpha", "prev", "line")
nnoremap <silent> <Plug>SIG_NextLineByAlpha :call signature#GotoMark("alpha", "next", "line")
nnoremap <silent> <Plug>SIG_PrevSpotByAlpha :call signature#GotoMark("alpha", "prev", "spot")
nnoremap <silent> <Plug>SIG_NextSpotByAlpha :call signature#GotoMark("alpha", "next", "spot")
nnoremap <silent> <Plug>SIG_PurgeMarks :call signature#PurgeMarks()
nnoremap <silent> <Plug>SIG_PlaceNextMark :call signature#ToggleMark(",")
nmap <silent> <Plug>CommentaryUndo <Plug>Commentary<Plug>Commentary
noremap <F10> :python debugger.set_breakpoint()
noremap <F5> :python debugger.run()
xnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("x", "Uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("n", "Uncomment")
xnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("x", "AlignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("n", "AlignBoth")
xnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("x", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("n", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAppend :call NERDComment("n", "Append")
xnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("x", "Yank")
nnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("n", "Yank")
xnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("x", "Sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("n", "Sexy")
xnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("x", "Invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("n", "Invert")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment("n", "ToEOL")
xnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("x", "Nested")
nnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("n", "Nested")
xnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("x", "Minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("n", "Minimal")
xnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("x", "Toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("n", "Toggle")
xnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("x", "Comment")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("n", "Comment")
nnoremap <SNR>31_: :=v:count ? v:count : ''
nnoremap <Down> <Nop>
nnoremap <Up> <Nop>
nnoremap <Right> <Nop>
nnoremap <Left> <Nop>
vnoremap <Down> <Nop>
vnoremap <Up> <Nop>
nnoremap <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .
nnoremap <F4> :TlistToggle
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <silent> 	 =TriggerSnippet()
inoremap <silent> 	 =ShowAvailableSnips()
imap  <Plug>Isurround
inoremap  <Nop>
inoremap "" ""<Left>
inoremap # #
inoremap '' ''<Left>
inoremap ( ()O
inoremap (( ()<Left>
inoremap )) ()<Right>
inoremap /* /**/<Left><Left> * <Up><Right><Right>
inoremap /** /*  */3<Left>a
inoremap <html <!DOCTYPE html><html lang="en_us"></html>O<head>	<meta charset="utf-8"><title></title><link rel="stylesheet" type="text/css" href="" /><script type="text/javascript" src=""></script></head>o<body></body>
inoremap << <><Left>
inoremap </ </><Left>
inoremap <img <img src="" />3hi
inoremap <p <p></p>3hi
inoremap <u <u></u><Up>
inoremap <i <i></i>3hi
inoremap <inp <input type="" />3hi
inoremap <h1 <h1></h1>4hi
inoremap <h2 <h2></h2>4hi
inoremap <h3 <h3></h3>4hi
inoremap <h4 <h4></h4>4hi
inoremap <h5 <h5></h5>4hi
inoremap <h6 <h6></h6>4hi
inoremap <br <br />
inoremap [ []O
inoremap [[ []<Left>
inoremap ]] []<Right>
inoremap kj 
inoremap { {}O
inoremap {{ {}<Left>
inoremap }} {}<Right>
iabbr kr Kolozsi Róbert
iabbr k@ <robert.kolozsi@gmail.com>
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set balloonexpr=SyntasticBalloonsExprNotifier()
set cindent
set clipboard=unnamedplus
set completeopt=longest,menuone
set expandtab
set fileencodings=utf-8,ucs-bom,latin2
set fillchars=vert:|,fold:~,diff:-
set foldlevelstart=0
set formatoptions=cq
set guifont=courier_new:h10
set helplang=en
set hidden
set history=1000
set hlsearch
set incsearch
set indentexpr=pymode#indent#Indent(v:lnum)
set indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
set laststatus=2
set listchars=tab:→\ ,eol:⏎,extends:>,precedes:<
set matchtime=3
set modelines=1
set omnifunc=RopeOmni
set operatorfunc=<SNR>52_go
set ruler
set runtimepath=~/.vim,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/fugitive,~/.vim/bundle/nerdcommenter,~/.vim/bundle/nerdtree,~/.vim/bundle/python-mode,~/.vim/bundle/snipmate,~/.vim/bundle/syntastic,~/.vim/bundle/tagbar,~/.vim/bundle/twig,~/.vim/bundle/vdebug,~/.vim/bundle/vim-colors-solarized,~/.vim/bundle/vim-commentary,~/.vim/bundle/vim-javascript,~/.vim/bundle/vim-markdown,~/.vim/bundle/vim-signature,~/.vim/bundle/vim-surround,~/opt/vim/share/vim/vimfiles,~/opt/vim/share/vim/vim74,~/opt/vim/share/vim/vimfiles/after,~/.vim/bundle/snipmate/after,~/.vim/bundle/python-mode/after,~/.vim/after
set scrolloff=3
set shell=/bin/bash\ --login
set shiftround
set shiftwidth=4
set showcmd
set showmatch
set smartcase
set smarttab
set softtabstop=4
set splitbelow
set splitright
set statusline=%!pyeval('powerline.new_window()')
set synmaxcol=300
set tabline=%!pyeval('powerline.tabline()')
set tabstop=4
set termencoding=utf-8
set textwidth=79
set title
set undodir=~/.vim/undodir
set undofile
set undoreload=1000
set updatetime=1000
set wildignore=*.pyc,*_build/*,*/coverage/*
set window=59
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Dropbox/web-dev/django_projects/konyha18
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +11 recipe/templates/recipe/recipe-detail.html
badd +1 recipe/models.py
badd +1 konyha/urls.py
badd +148 konyha/settings.py
badd +26 templates/base.html
badd +1 recipe/views.py
badd +1 recipe/admin.py
badd +1 recipe/static/recipe/style.css
badd +14 recipe/static/recipe/css/style.css
badd +1 recipe/templates/recipe/home.html
badd +7 recipe/urls.py
badd +1 recipe/templates/recipe/carousel.html
badd +1 templates/flatpages/about.html
badd +3 templates/carousel.html
badd +1 templates/registration/registration_form.html
badd +1 b6
badd +21 templates/registration/login.html
badd +1 templates/logo
badd +1 templates/registration/logout.html
badd +6 recipe/templates/recipe/index.html
badd +5 recipe/translation.py
badd +70 recipe/templatetags/strip_language_from_url.py
badd +339 ~/.vimrc
badd +0 recipe/translate_url.py
badd +7 ~/venv/py2_django_18/lib/python2.7/site-packages/robust_urls/views.py
badd +19 ~/venv/py2_django_18/lib/python2.7/site-packages/robust_urls/utils.py
badd +8 ~/venv/py2_django_18/lib/python2.7/site-packages/robust_urls/urls.py
badd +0 ~/venv/py2_django_18/lib/python2.7/site-packages/robust_urls/middleware.py
badd +0 locale/hu/LC_MESSAGES/django.po
argglobal
silent! argdel *
argadd recipe/templates/recipe/recipe-detail.html
set stal=2
edit konyha/urls.py
set splitbelow splitright
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
wincmd w
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 28 + 30) / 60)
exe 'vert 1resize ' . ((&columns * 136 + 137) / 274)
exe '2resize ' . ((&lines * 28 + 30) / 60)
exe 'vert 2resize ' . ((&columns * 137 + 137) / 274)
exe '3resize ' . ((&lines * 24 + 30) / 60)
exe '4resize ' . ((&lines * 3 + 30) / 60)
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <C-Space> =RopeCodeAssistInsertMode()
inoremap <buffer> <silent> <Nul> =RopeCodeAssistInsertMode()
inoremap <buffer> <silent> <S-Tab> =RopeLuckyAssistInsertMode()
noremap <buffer> <silent> m :emenu Rope . 	
noremap <buffer> <silent> f :RopeFindOccurrences
noremap <buffer> <silent> d :RopeShowDoc
noremap <buffer> <silent> g :RopeGotoDefinition
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
nnoremap <buffer> <silent> ,b :call pymode#breakpoint#Set(line('.'))
vnoremap <buffer> <silent> ,r :Pyrun
nnoremap <buffer> <silent> ,r :Pyrun
onoremap <buffer> C :call pymode#motion#select('^\s*class\s', 0)
map <buffer> E :w:!/usr/bin/env python % 
vnoremap <buffer> <silent> K :call pymode#doc#Show(@*)
nnoremap <buffer> <silent> K :call pymode#doc#Show(expand('<cword>'))
onoremap <buffer> M :call pymode#motion#select('^\s*def\s', 0)
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
vnoremap <buffer> [M :call pymode#motion#vmove('^\s*def\s', 'b')
vnoremap <buffer> [[ :call pymode#motion#vmove('^\(class\|def\)\s', 'b')
onoremap <buffer> [M :call pymode#motion#move('^\s*def\s', 'b')
onoremap <buffer> [C :call pymode#motion#move('^\(class\|def\)\s', 'b')
onoremap <buffer> [[ :call pymode#motion#move('^\(class\|def\)\s', 'b')
nnoremap <buffer> [M :call pymode#motion#move('^\s*def\s', 'b')
nnoremap <buffer> [C :call pymode#motion#move('^\(class\|def\)\s', 'b')
nnoremap <buffer> [[ :call pymode#motion#move('^\(class\|def\)\s', 'b')
nnoremap <buffer> \c I#
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
vnoremap <buffer> ]M :call pymode#motion#vmove('^\s*def\s', '')
vnoremap <buffer> ]] :call pymode#motion#vmove('^\(class\|def\)\s', '')
onoremap <buffer> ]M :call pymode#motion#move('^\s*def\s', '')
onoremap <buffer> ]C :call pymode#motion#move('^\(class\|def\)\s', '')
onoremap <buffer> ]] :call pymode#motion#move('^\(class\|def\)\s', '')
nnoremap <buffer> ]M :call pymode#motion#move('^\s*def\s', '')
nnoremap <buffer> ]C :call pymode#motion#move('^\(class\|def\)\s', '')
nnoremap <buffer> ]] :call pymode#motion#move('^\(class\|def\)\s', '')
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
vnoremap <buffer> aM :call pymode#motion#select('^\s*def\s', 0)
onoremap <buffer> aM :call pymode#motion#select('^\s*def\s', 0)
vnoremap <buffer> aC :call pymode#motion#select('^\s*class\s', 0)
onoremap <buffer> aC :call pymode#motion#select('^\s*class\s', 0)
map <buffer> gd /def 
vnoremap <buffer> iM :call pymode#motion#select('^\s*def\s', 1)
onoremap <buffer> iM :call pymode#motion#select('^\s*def\s', 1)
vnoremap <buffer> iC :call pymode#motion#select('^\s*class\s', 1)
onoremap <buffer> iC :call pymode#motion#select('^\s*class\s', 1)
nmap <buffer> m<BS> <Plug>SIG_PurgeMarkers
nmap <buffer> m  <Plug>SIG_PurgeMarks
nmap <buffer> m, <Plug>SIG_PlaceNextMark
nnoremap <buffer> <silent> m( :call signature#RemoveMarker("(")
nnoremap <buffer> <silent> m9 :call signature#ToggleMarker("(")
nnoremap <buffer> <silent> m* :call signature#RemoveMarker("*")
nnoremap <buffer> <silent> m8 :call signature#ToggleMarker("*")
nnoremap <buffer> <silent> m& :call signature#RemoveMarker("&")
nnoremap <buffer> <silent> m7 :call signature#ToggleMarker("&")
nnoremap <buffer> <silent> m^ :call signature#RemoveMarker("^")
nnoremap <buffer> <silent> m6 :call signature#ToggleMarker("^")
nnoremap <buffer> <silent> m% :call signature#RemoveMarker("%")
nnoremap <buffer> <silent> m5 :call signature#ToggleMarker("%")
nnoremap <buffer> <silent> m$ :call signature#RemoveMarker("$")
nnoremap <buffer> <silent> m4 :call signature#ToggleMarker("$")
nnoremap <buffer> <silent> m# :call signature#RemoveMarker("#")
nnoremap <buffer> <silent> m3 :call signature#ToggleMarker("#")
nnoremap <buffer> <silent> m@ :call signature#RemoveMarker("@")
nnoremap <buffer> <silent> m2 :call signature#ToggleMarker("@")
nnoremap <buffer> <silent> m! :call signature#RemoveMarker("!")
nnoremap <buffer> <silent> m1 :call signature#ToggleMarker("!")
nnoremap <buffer> <silent> m) :call signature#RemoveMarker(")")
nnoremap <buffer> <silent> m0 :call signature#ToggleMarker(")")
nnoremap <buffer> <silent> mZ :call signature#ToggleMark("Z")
nnoremap <buffer> <silent> mY :call signature#ToggleMark("Y")
nnoremap <buffer> <silent> mX :call signature#ToggleMark("X")
nnoremap <buffer> <silent> mW :call signature#ToggleMark("W")
nnoremap <buffer> <silent> mV :call signature#ToggleMark("V")
nnoremap <buffer> <silent> mU :call signature#ToggleMark("U")
nnoremap <buffer> <silent> mT :call signature#ToggleMark("T")
nnoremap <buffer> <silent> mS :call signature#ToggleMark("S")
nnoremap <buffer> <silent> mR :call signature#ToggleMark("R")
nnoremap <buffer> <silent> mQ :call signature#ToggleMark("Q")
nnoremap <buffer> <silent> mP :call signature#ToggleMark("P")
nnoremap <buffer> <silent> mO :call signature#ToggleMark("O")
nnoremap <buffer> <silent> mN :call signature#ToggleMark("N")
nnoremap <buffer> <silent> mM :call signature#ToggleMark("M")
nnoremap <buffer> <silent> mL :call signature#ToggleMark("L")
nnoremap <buffer> <silent> mK :call signature#ToggleMark("K")
nnoremap <buffer> <silent> mJ :call signature#ToggleMark("J")
nnoremap <buffer> <silent> mI :call signature#ToggleMark("I")
nnoremap <buffer> <silent> mH :call signature#ToggleMark("H")
nnoremap <buffer> <silent> mG :call signature#ToggleMark("G")
nnoremap <buffer> <silent> mF :call signature#ToggleMark("F")
nnoremap <buffer> <silent> mE :call signature#ToggleMark("E")
nnoremap <buffer> <silent> mD :call signature#ToggleMark("D")
nnoremap <buffer> <silent> mC :call signature#ToggleMark("C")
nnoremap <buffer> <silent> mB :call signature#ToggleMark("B")
nnoremap <buffer> <silent> mA :call signature#ToggleMark("A")
nnoremap <buffer> <silent> mz :call signature#ToggleMark("z")
nnoremap <buffer> <silent> my :call signature#ToggleMark("y")
nnoremap <buffer> <silent> mx :call signature#ToggleMark("x")
nnoremap <buffer> <silent> mw :call signature#ToggleMark("w")
nnoremap <buffer> <silent> mv :call signature#ToggleMark("v")
nnoremap <buffer> <silent> mu :call signature#ToggleMark("u")
nnoremap <buffer> <silent> mt :call signature#ToggleMark("t")
nnoremap <buffer> <silent> ms :call signature#ToggleMark("s")
nnoremap <buffer> <silent> mr :call signature#ToggleMark("r")
nnoremap <buffer> <silent> mq :call signature#ToggleMark("q")
nnoremap <buffer> <silent> mp :call signature#ToggleMark("p")
nnoremap <buffer> <silent> mo :call signature#ToggleMark("o")
nnoremap <buffer> <silent> mn :call signature#ToggleMark("n")
nnoremap <buffer> <silent> mm :call signature#ToggleMark("m")
nnoremap <buffer> <silent> ml :call signature#ToggleMark("l")
nnoremap <buffer> <silent> mk :call signature#ToggleMark("k")
nnoremap <buffer> <silent> mj :call signature#ToggleMark("j")
nnoremap <buffer> <silent> mi :call signature#ToggleMark("i")
nnoremap <buffer> <silent> mh :call signature#ToggleMark("h")
nnoremap <buffer> <silent> mg :call signature#ToggleMark("g")
nnoremap <buffer> <silent> mf :call signature#ToggleMark("f")
nnoremap <buffer> <silent> me :call signature#ToggleMark("e")
nnoremap <buffer> <silent> md :call signature#ToggleMark("d")
nnoremap <buffer> <silent> mc :call signature#ToggleMark("c")
nnoremap <buffer> <silent> mb :call signature#ToggleMark("b")
nnoremap <buffer> <silent> ma :call signature#ToggleMark("a")
nnoremap <buffer> Æ :call ToggleFold()
nnoremap <buffer> æ za
inoremap <buffer> iff if  :<Left>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal fixendofline
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=pymode#folding#expr(v:lnum)
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=expr
setlocal foldmethod=expr
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
set foldtext=PythonFoldText()
setlocal foldtext=pymode#folding#text()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetPythonIndent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=RopeOmni
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(6)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 66 - ((25 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
66
normal! 05|
wincmd w
argglobal
edit recipe/urls.py
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <C-Space> =RopeCodeAssistInsertMode()
inoremap <buffer> <silent> <Nul> =RopeCodeAssistInsertMode()
inoremap <buffer> <silent> <S-Tab> =RopeLuckyAssistInsertMode()
noremap <buffer> <silent> m :emenu Rope . 	
noremap <buffer> <silent> f :RopeFindOccurrences
noremap <buffer> <silent> d :RopeShowDoc
noremap <buffer> <silent> g :RopeGotoDefinition
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
nnoremap <buffer> <silent> ,b :call pymode#breakpoint#Set(line('.'))
vnoremap <buffer> <silent> ,r :Pyrun
nnoremap <buffer> <silent> ,r :Pyrun
onoremap <buffer> C :call pymode#motion#select('^\s*class\s', 0)
map <buffer> E :w:!/usr/bin/env python % 
vnoremap <buffer> <silent> K :call pymode#doc#Show(@*)
nnoremap <buffer> <silent> K :call pymode#doc#Show(expand('<cword>'))
onoremap <buffer> M :call pymode#motion#select('^\s*def\s', 0)
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
vnoremap <buffer> [M :call pymode#motion#vmove('^\s*def\s', 'b')
vnoremap <buffer> [[ :call pymode#motion#vmove('^\(class\|def\)\s', 'b')
onoremap <buffer> [M :call pymode#motion#move('^\s*def\s', 'b')
onoremap <buffer> [C :call pymode#motion#move('^\(class\|def\)\s', 'b')
onoremap <buffer> [[ :call pymode#motion#move('^\(class\|def\)\s', 'b')
nnoremap <buffer> [M :call pymode#motion#move('^\s*def\s', 'b')
nnoremap <buffer> [C :call pymode#motion#move('^\(class\|def\)\s', 'b')
nnoremap <buffer> [[ :call pymode#motion#move('^\(class\|def\)\s', 'b')
nnoremap <buffer> \c I#
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
vnoremap <buffer> ]M :call pymode#motion#vmove('^\s*def\s', '')
vnoremap <buffer> ]] :call pymode#motion#vmove('^\(class\|def\)\s', '')
onoremap <buffer> ]M :call pymode#motion#move('^\s*def\s', '')
onoremap <buffer> ]C :call pymode#motion#move('^\(class\|def\)\s', '')
onoremap <buffer> ]] :call pymode#motion#move('^\(class\|def\)\s', '')
nnoremap <buffer> ]M :call pymode#motion#move('^\s*def\s', '')
nnoremap <buffer> ]C :call pymode#motion#move('^\(class\|def\)\s', '')
nnoremap <buffer> ]] :call pymode#motion#move('^\(class\|def\)\s', '')
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
vnoremap <buffer> aM :call pymode#motion#select('^\s*def\s', 0)
onoremap <buffer> aM :call pymode#motion#select('^\s*def\s', 0)
vnoremap <buffer> aC :call pymode#motion#select('^\s*class\s', 0)
onoremap <buffer> aC :call pymode#motion#select('^\s*class\s', 0)
map <buffer> gd /def 
vnoremap <buffer> iM :call pymode#motion#select('^\s*def\s', 1)
onoremap <buffer> iM :call pymode#motion#select('^\s*def\s', 1)
vnoremap <buffer> iC :call pymode#motion#select('^\s*class\s', 1)
onoremap <buffer> iC :call pymode#motion#select('^\s*class\s', 1)
nmap <buffer> m<BS> <Plug>SIG_PurgeMarkers
nmap <buffer> m  <Plug>SIG_PurgeMarks
nmap <buffer> m, <Plug>SIG_PlaceNextMark
nnoremap <buffer> <silent> m( :call signature#RemoveMarker("(")
nnoremap <buffer> <silent> m9 :call signature#ToggleMarker("(")
nnoremap <buffer> <silent> m* :call signature#RemoveMarker("*")
nnoremap <buffer> <silent> m8 :call signature#ToggleMarker("*")
nnoremap <buffer> <silent> m& :call signature#RemoveMarker("&")
nnoremap <buffer> <silent> m7 :call signature#ToggleMarker("&")
nnoremap <buffer> <silent> m^ :call signature#RemoveMarker("^")
nnoremap <buffer> <silent> m6 :call signature#ToggleMarker("^")
nnoremap <buffer> <silent> m% :call signature#RemoveMarker("%")
nnoremap <buffer> <silent> m5 :call signature#ToggleMarker("%")
nnoremap <buffer> <silent> m$ :call signature#RemoveMarker("$")
nnoremap <buffer> <silent> m4 :call signature#ToggleMarker("$")
nnoremap <buffer> <silent> m# :call signature#RemoveMarker("#")
nnoremap <buffer> <silent> m3 :call signature#ToggleMarker("#")
nnoremap <buffer> <silent> m@ :call signature#RemoveMarker("@")
nnoremap <buffer> <silent> m2 :call signature#ToggleMarker("@")
nnoremap <buffer> <silent> m! :call signature#RemoveMarker("!")
nnoremap <buffer> <silent> m1 :call signature#ToggleMarker("!")
nnoremap <buffer> <silent> m) :call signature#RemoveMarker(")")
nnoremap <buffer> <silent> m0 :call signature#ToggleMarker(")")
nnoremap <buffer> <silent> mZ :call signature#ToggleMark("Z")
nnoremap <buffer> <silent> mY :call signature#ToggleMark("Y")
nnoremap <buffer> <silent> mX :call signature#ToggleMark("X")
nnoremap <buffer> <silent> mW :call signature#ToggleMark("W")
nnoremap <buffer> <silent> mV :call signature#ToggleMark("V")
nnoremap <buffer> <silent> mU :call signature#ToggleMark("U")
nnoremap <buffer> <silent> mT :call signature#ToggleMark("T")
nnoremap <buffer> <silent> mS :call signature#ToggleMark("S")
nnoremap <buffer> <silent> mR :call signature#ToggleMark("R")
nnoremap <buffer> <silent> mQ :call signature#ToggleMark("Q")
nnoremap <buffer> <silent> mP :call signature#ToggleMark("P")
nnoremap <buffer> <silent> mO :call signature#ToggleMark("O")
nnoremap <buffer> <silent> mN :call signature#ToggleMark("N")
nnoremap <buffer> <silent> mM :call signature#ToggleMark("M")
nnoremap <buffer> <silent> mL :call signature#ToggleMark("L")
nnoremap <buffer> <silent> mK :call signature#ToggleMark("K")
nnoremap <buffer> <silent> mJ :call signature#ToggleMark("J")
nnoremap <buffer> <silent> mI :call signature#ToggleMark("I")
nnoremap <buffer> <silent> mH :call signature#ToggleMark("H")
nnoremap <buffer> <silent> mG :call signature#ToggleMark("G")
nnoremap <buffer> <silent> mF :call signature#ToggleMark("F")
nnoremap <buffer> <silent> mE :call signature#ToggleMark("E")
nnoremap <buffer> <silent> mD :call signature#ToggleMark("D")
nnoremap <buffer> <silent> mC :call signature#ToggleMark("C")
nnoremap <buffer> <silent> mB :call signature#ToggleMark("B")
nnoremap <buffer> <silent> mA :call signature#ToggleMark("A")
nnoremap <buffer> <silent> mz :call signature#ToggleMark("z")
nnoremap <buffer> <silent> my :call signature#ToggleMark("y")
nnoremap <buffer> <silent> mx :call signature#ToggleMark("x")
nnoremap <buffer> <silent> mw :call signature#ToggleMark("w")
nnoremap <buffer> <silent> mv :call signature#ToggleMark("v")
nnoremap <buffer> <silent> mu :call signature#ToggleMark("u")
nnoremap <buffer> <silent> mt :call signature#ToggleMark("t")
nnoremap <buffer> <silent> ms :call signature#ToggleMark("s")
nnoremap <buffer> <silent> mr :call signature#ToggleMark("r")
nnoremap <buffer> <silent> mq :call signature#ToggleMark("q")
nnoremap <buffer> <silent> mp :call signature#ToggleMark("p")
nnoremap <buffer> <silent> mo :call signature#ToggleMark("o")
nnoremap <buffer> <silent> mn :call signature#ToggleMark("n")
nnoremap <buffer> <silent> mm :call signature#ToggleMark("m")
nnoremap <buffer> <silent> ml :call signature#ToggleMark("l")
nnoremap <buffer> <silent> mk :call signature#ToggleMark("k")
nnoremap <buffer> <silent> mj :call signature#ToggleMark("j")
nnoremap <buffer> <silent> mi :call signature#ToggleMark("i")
nnoremap <buffer> <silent> mh :call signature#ToggleMark("h")
nnoremap <buffer> <silent> mg :call signature#ToggleMark("g")
nnoremap <buffer> <silent> mf :call signature#ToggleMark("f")
nnoremap <buffer> <silent> me :call signature#ToggleMark("e")
nnoremap <buffer> <silent> md :call signature#ToggleMark("d")
nnoremap <buffer> <silent> mc :call signature#ToggleMark("c")
nnoremap <buffer> <silent> mb :call signature#ToggleMark("b")
nnoremap <buffer> <silent> ma :call signature#ToggleMark("a")
nnoremap <buffer> Æ :call ToggleFold()
nnoremap <buffer> æ za
inoremap <buffer> iff if  :<Left>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal fixendofline
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=PythonFoldExpr(v:lnum)
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=expr
setlocal foldmethod=expr
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
set foldtext=PythonFoldText()
setlocal foldtext=PythonFoldText()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=pymode#indent#Indent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=RopeOmni
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(63)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 1 - ((0 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
edit konyha/settings.py
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <C-Space> =RopeCodeAssistInsertMode()
inoremap <buffer> <silent> <Nul> =RopeCodeAssistInsertMode()
inoremap <buffer> <silent> <S-Tab> =RopeLuckyAssistInsertMode()
noremap <buffer> <silent> m :emenu Rope . 	
noremap <buffer> <silent> f :RopeFindOccurrences
noremap <buffer> <silent> d :RopeShowDoc
noremap <buffer> <silent> g :RopeGotoDefinition
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
nnoremap <buffer> <silent> ,b :call pymode#breakpoint#Set(line('.'))
vnoremap <buffer> <silent> ,r :Pyrun
nnoremap <buffer> <silent> ,r :Pyrun
onoremap <buffer> C :call pymode#motion#select('^\s*class\s', 0)
map <buffer> E :w:!/usr/bin/env python % 
vnoremap <buffer> <silent> K :call pymode#doc#Show(@*)
nnoremap <buffer> <silent> K :call pymode#doc#Show(expand('<cword>'))
onoremap <buffer> M :call pymode#motion#select('^\s*def\s', 0)
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
vnoremap <buffer> [M :call pymode#motion#vmove('^\s*def\s', 'b')
vnoremap <buffer> [[ :call pymode#motion#vmove('^\(class\|def\)\s', 'b')
onoremap <buffer> [M :call pymode#motion#move('^\s*def\s', 'b')
onoremap <buffer> [C :call pymode#motion#move('^\(class\|def\)\s', 'b')
onoremap <buffer> [[ :call pymode#motion#move('^\(class\|def\)\s', 'b')
nnoremap <buffer> [M :call pymode#motion#move('^\s*def\s', 'b')
nnoremap <buffer> [C :call pymode#motion#move('^\(class\|def\)\s', 'b')
nnoremap <buffer> [[ :call pymode#motion#move('^\(class\|def\)\s', 'b')
nnoremap <buffer> \c I#
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
vnoremap <buffer> ]M :call pymode#motion#vmove('^\s*def\s', '')
vnoremap <buffer> ]] :call pymode#motion#vmove('^\(class\|def\)\s', '')
onoremap <buffer> ]M :call pymode#motion#move('^\s*def\s', '')
onoremap <buffer> ]C :call pymode#motion#move('^\(class\|def\)\s', '')
onoremap <buffer> ]] :call pymode#motion#move('^\(class\|def\)\s', '')
nnoremap <buffer> ]M :call pymode#motion#move('^\s*def\s', '')
nnoremap <buffer> ]C :call pymode#motion#move('^\(class\|def\)\s', '')
nnoremap <buffer> ]] :call pymode#motion#move('^\(class\|def\)\s', '')
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
vnoremap <buffer> aM :call pymode#motion#select('^\s*def\s', 0)
onoremap <buffer> aM :call pymode#motion#select('^\s*def\s', 0)
vnoremap <buffer> aC :call pymode#motion#select('^\s*class\s', 0)
onoremap <buffer> aC :call pymode#motion#select('^\s*class\s', 0)
map <buffer> gd /def 
vnoremap <buffer> iM :call pymode#motion#select('^\s*def\s', 1)
onoremap <buffer> iM :call pymode#motion#select('^\s*def\s', 1)
vnoremap <buffer> iC :call pymode#motion#select('^\s*class\s', 1)
onoremap <buffer> iC :call pymode#motion#select('^\s*class\s', 1)
nmap <buffer> m<BS> <Plug>SIG_PurgeMarkers
nmap <buffer> m  <Plug>SIG_PurgeMarks
nmap <buffer> m, <Plug>SIG_PlaceNextMark
nnoremap <buffer> <silent> m( :call signature#RemoveMarker("(")
nnoremap <buffer> <silent> m9 :call signature#ToggleMarker("(")
nnoremap <buffer> <silent> m* :call signature#RemoveMarker("*")
nnoremap <buffer> <silent> m8 :call signature#ToggleMarker("*")
nnoremap <buffer> <silent> m& :call signature#RemoveMarker("&")
nnoremap <buffer> <silent> m7 :call signature#ToggleMarker("&")
nnoremap <buffer> <silent> m^ :call signature#RemoveMarker("^")
nnoremap <buffer> <silent> m6 :call signature#ToggleMarker("^")
nnoremap <buffer> <silent> m% :call signature#RemoveMarker("%")
nnoremap <buffer> <silent> m5 :call signature#ToggleMarker("%")
nnoremap <buffer> <silent> m$ :call signature#RemoveMarker("$")
nnoremap <buffer> <silent> m4 :call signature#ToggleMarker("$")
nnoremap <buffer> <silent> m# :call signature#RemoveMarker("#")
nnoremap <buffer> <silent> m3 :call signature#ToggleMarker("#")
nnoremap <buffer> <silent> m@ :call signature#RemoveMarker("@")
nnoremap <buffer> <silent> m2 :call signature#ToggleMarker("@")
nnoremap <buffer> <silent> m! :call signature#RemoveMarker("!")
nnoremap <buffer> <silent> m1 :call signature#ToggleMarker("!")
nnoremap <buffer> <silent> m) :call signature#RemoveMarker(")")
nnoremap <buffer> <silent> m0 :call signature#ToggleMarker(")")
nnoremap <buffer> <silent> mZ :call signature#ToggleMark("Z")
nnoremap <buffer> <silent> mY :call signature#ToggleMark("Y")
nnoremap <buffer> <silent> mX :call signature#ToggleMark("X")
nnoremap <buffer> <silent> mW :call signature#ToggleMark("W")
nnoremap <buffer> <silent> mV :call signature#ToggleMark("V")
nnoremap <buffer> <silent> mU :call signature#ToggleMark("U")
nnoremap <buffer> <silent> mT :call signature#ToggleMark("T")
nnoremap <buffer> <silent> mS :call signature#ToggleMark("S")
nnoremap <buffer> <silent> mR :call signature#ToggleMark("R")
nnoremap <buffer> <silent> mQ :call signature#ToggleMark("Q")
nnoremap <buffer> <silent> mP :call signature#ToggleMark("P")
nnoremap <buffer> <silent> mO :call signature#ToggleMark("O")
nnoremap <buffer> <silent> mN :call signature#ToggleMark("N")
nnoremap <buffer> <silent> mM :call signature#ToggleMark("M")
nnoremap <buffer> <silent> mL :call signature#ToggleMark("L")
nnoremap <buffer> <silent> mK :call signature#ToggleMark("K")
nnoremap <buffer> <silent> mJ :call signature#ToggleMark("J")
nnoremap <buffer> <silent> mI :call signature#ToggleMark("I")
nnoremap <buffer> <silent> mH :call signature#ToggleMark("H")
nnoremap <buffer> <silent> mG :call signature#ToggleMark("G")
nnoremap <buffer> <silent> mF :call signature#ToggleMark("F")
nnoremap <buffer> <silent> mE :call signature#ToggleMark("E")
nnoremap <buffer> <silent> mD :call signature#ToggleMark("D")
nnoremap <buffer> <silent> mC :call signature#ToggleMark("C")
nnoremap <buffer> <silent> mB :call signature#ToggleMark("B")
nnoremap <buffer> <silent> mA :call signature#ToggleMark("A")
nnoremap <buffer> <silent> mz :call signature#ToggleMark("z")
nnoremap <buffer> <silent> my :call signature#ToggleMark("y")
nnoremap <buffer> <silent> mx :call signature#ToggleMark("x")
nnoremap <buffer> <silent> mw :call signature#ToggleMark("w")
nnoremap <buffer> <silent> mv :call signature#ToggleMark("v")
nnoremap <buffer> <silent> mu :call signature#ToggleMark("u")
nnoremap <buffer> <silent> mt :call signature#ToggleMark("t")
nnoremap <buffer> <silent> ms :call signature#ToggleMark("s")
nnoremap <buffer> <silent> mr :call signature#ToggleMark("r")
nnoremap <buffer> <silent> mq :call signature#ToggleMark("q")
nnoremap <buffer> <silent> mp :call signature#ToggleMark("p")
nnoremap <buffer> <silent> mo :call signature#ToggleMark("o")
nnoremap <buffer> <silent> mn :call signature#ToggleMark("n")
nnoremap <buffer> <silent> mm :call signature#ToggleMark("m")
nnoremap <buffer> <silent> ml :call signature#ToggleMark("l")
nnoremap <buffer> <silent> mk :call signature#ToggleMark("k")
nnoremap <buffer> <silent> mj :call signature#ToggleMark("j")
nnoremap <buffer> <silent> mi :call signature#ToggleMark("i")
nnoremap <buffer> <silent> mh :call signature#ToggleMark("h")
nnoremap <buffer> <silent> mg :call signature#ToggleMark("g")
nnoremap <buffer> <silent> mf :call signature#ToggleMark("f")
nnoremap <buffer> <silent> me :call signature#ToggleMark("e")
nnoremap <buffer> <silent> md :call signature#ToggleMark("d")
nnoremap <buffer> <silent> mc :call signature#ToggleMark("c")
nnoremap <buffer> <silent> mb :call signature#ToggleMark("b")
nnoremap <buffer> <silent> ma :call signature#ToggleMark("a")
nnoremap <buffer> Æ :call ToggleFold()
nnoremap <buffer> æ za
inoremap <buffer> iff if  :<Left>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal fixendofline
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=pymode#folding#expr(v:lnum)
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=marker
setlocal foldmethod=marker
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
set foldtext=PythonFoldText()
setlocal foldtext=pymode#folding#text()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetPythonIndent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=RopeOmni
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(8)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 163 - ((4 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
163
normal! 040|
wincmd w
argglobal
enew
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=wipe
setlocal buflisted
setlocal buftype=quickfix
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'qf'
setlocal filetype=qf
endif
setlocal fixendofline
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=PythonFoldExpr(v:lnum)
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=marker
setlocal foldmethod=manual
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
set foldtext=PythonFoldText()
setlocal foldtext=PythonFoldText()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=pymode#indent#Indent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal nomodifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=RopeOmni
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(78)')
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=300
if &syntax != 'qf'
setlocal syntax=qf
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal winfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
wincmd w
exe '1resize ' . ((&lines * 28 + 30) / 60)
exe 'vert 1resize ' . ((&columns * 136 + 137) / 274)
exe '2resize ' . ((&lines * 28 + 30) / 60)
exe 'vert 2resize ' . ((&columns * 137 + 137) / 274)
exe '3resize ' . ((&lines * 24 + 30) / 60)
exe '4resize ' . ((&lines * 3 + 30) / 60)
tabedit recipe/translation.py
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <C-Space> =RopeCodeAssistInsertMode()
inoremap <buffer> <silent> <Nul> =RopeCodeAssistInsertMode()
inoremap <buffer> <silent> <S-Tab> =RopeLuckyAssistInsertMode()
noremap <buffer> <silent> m :emenu Rope . 	
noremap <buffer> <silent> f :RopeFindOccurrences
noremap <buffer> <silent> d :RopeShowDoc
noremap <buffer> <silent> g :RopeGotoDefinition
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
nnoremap <buffer> <silent> ,b :call pymode#breakpoint#Set(line('.'))
vnoremap <buffer> <silent> ,r :Pyrun
nnoremap <buffer> <silent> ,r :Pyrun
onoremap <buffer> C :call pymode#motion#select('^\s*class\s', 0)
map <buffer> E :w:!/usr/bin/env python % 
vnoremap <buffer> <silent> K :call pymode#doc#Show(@*)
nnoremap <buffer> <silent> K :call pymode#doc#Show(expand('<cword>'))
onoremap <buffer> M :call pymode#motion#select('^\s*def\s', 0)
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
vnoremap <buffer> [M :call pymode#motion#vmove('^\s*def\s', 'b')
vnoremap <buffer> [[ :call pymode#motion#vmove('^\(class\|def\)\s', 'b')
onoremap <buffer> [M :call pymode#motion#move('^\s*def\s', 'b')
onoremap <buffer> [C :call pymode#motion#move('^\(class\|def\)\s', 'b')
onoremap <buffer> [[ :call pymode#motion#move('^\(class\|def\)\s', 'b')
nnoremap <buffer> [M :call pymode#motion#move('^\s*def\s', 'b')
nnoremap <buffer> [C :call pymode#motion#move('^\(class\|def\)\s', 'b')
nnoremap <buffer> [[ :call pymode#motion#move('^\(class\|def\)\s', 'b')
nnoremap <buffer> \c I#
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
vnoremap <buffer> ]M :call pymode#motion#vmove('^\s*def\s', '')
vnoremap <buffer> ]] :call pymode#motion#vmove('^\(class\|def\)\s', '')
onoremap <buffer> ]M :call pymode#motion#move('^\s*def\s', '')
onoremap <buffer> ]C :call pymode#motion#move('^\(class\|def\)\s', '')
onoremap <buffer> ]] :call pymode#motion#move('^\(class\|def\)\s', '')
nnoremap <buffer> ]M :call pymode#motion#move('^\s*def\s', '')
nnoremap <buffer> ]C :call pymode#motion#move('^\(class\|def\)\s', '')
nnoremap <buffer> ]] :call pymode#motion#move('^\(class\|def\)\s', '')
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
vnoremap <buffer> aM :call pymode#motion#select('^\s*def\s', 0)
onoremap <buffer> aM :call pymode#motion#select('^\s*def\s', 0)
vnoremap <buffer> aC :call pymode#motion#select('^\s*class\s', 0)
onoremap <buffer> aC :call pymode#motion#select('^\s*class\s', 0)
map <buffer> gd /def 
vnoremap <buffer> iM :call pymode#motion#select('^\s*def\s', 1)
onoremap <buffer> iM :call pymode#motion#select('^\s*def\s', 1)
vnoremap <buffer> iC :call pymode#motion#select('^\s*class\s', 1)
onoremap <buffer> iC :call pymode#motion#select('^\s*class\s', 1)
nmap <buffer> m<BS> <Plug>SIG_PurgeMarkers
nmap <buffer> m  <Plug>SIG_PurgeMarks
nmap <buffer> m, <Plug>SIG_PlaceNextMark
nnoremap <buffer> <silent> m( :call signature#RemoveMarker("(")
nnoremap <buffer> <silent> m9 :call signature#ToggleMarker("(")
nnoremap <buffer> <silent> m* :call signature#RemoveMarker("*")
nnoremap <buffer> <silent> m8 :call signature#ToggleMarker("*")
nnoremap <buffer> <silent> m& :call signature#RemoveMarker("&")
nnoremap <buffer> <silent> m7 :call signature#ToggleMarker("&")
nnoremap <buffer> <silent> m^ :call signature#RemoveMarker("^")
nnoremap <buffer> <silent> m6 :call signature#ToggleMarker("^")
nnoremap <buffer> <silent> m% :call signature#RemoveMarker("%")
nnoremap <buffer> <silent> m5 :call signature#ToggleMarker("%")
nnoremap <buffer> <silent> m$ :call signature#RemoveMarker("$")
nnoremap <buffer> <silent> m4 :call signature#ToggleMarker("$")
nnoremap <buffer> <silent> m# :call signature#RemoveMarker("#")
nnoremap <buffer> <silent> m3 :call signature#ToggleMarker("#")
nnoremap <buffer> <silent> m@ :call signature#RemoveMarker("@")
nnoremap <buffer> <silent> m2 :call signature#ToggleMarker("@")
nnoremap <buffer> <silent> m! :call signature#RemoveMarker("!")
nnoremap <buffer> <silent> m1 :call signature#ToggleMarker("!")
nnoremap <buffer> <silent> m) :call signature#RemoveMarker(")")
nnoremap <buffer> <silent> m0 :call signature#ToggleMarker(")")
nnoremap <buffer> <silent> mZ :call signature#ToggleMark("Z")
nnoremap <buffer> <silent> mY :call signature#ToggleMark("Y")
nnoremap <buffer> <silent> mX :call signature#ToggleMark("X")
nnoremap <buffer> <silent> mW :call signature#ToggleMark("W")
nnoremap <buffer> <silent> mV :call signature#ToggleMark("V")
nnoremap <buffer> <silent> mU :call signature#ToggleMark("U")
nnoremap <buffer> <silent> mT :call signature#ToggleMark("T")
nnoremap <buffer> <silent> mS :call signature#ToggleMark("S")
nnoremap <buffer> <silent> mR :call signature#ToggleMark("R")
nnoremap <buffer> <silent> mQ :call signature#ToggleMark("Q")
nnoremap <buffer> <silent> mP :call signature#ToggleMark("P")
nnoremap <buffer> <silent> mO :call signature#ToggleMark("O")
nnoremap <buffer> <silent> mN :call signature#ToggleMark("N")
nnoremap <buffer> <silent> mM :call signature#ToggleMark("M")
nnoremap <buffer> <silent> mL :call signature#ToggleMark("L")
nnoremap <buffer> <silent> mK :call signature#ToggleMark("K")
nnoremap <buffer> <silent> mJ :call signature#ToggleMark("J")
nnoremap <buffer> <silent> mI :call signature#ToggleMark("I")
nnoremap <buffer> <silent> mH :call signature#ToggleMark("H")
nnoremap <buffer> <silent> mG :call signature#ToggleMark("G")
nnoremap <buffer> <silent> mF :call signature#ToggleMark("F")
nnoremap <buffer> <silent> mE :call signature#ToggleMark("E")
nnoremap <buffer> <silent> mD :call signature#ToggleMark("D")
nnoremap <buffer> <silent> mC :call signature#ToggleMark("C")
nnoremap <buffer> <silent> mB :call signature#ToggleMark("B")
nnoremap <buffer> <silent> mA :call signature#ToggleMark("A")
nnoremap <buffer> <silent> mz :call signature#ToggleMark("z")
nnoremap <buffer> <silent> my :call signature#ToggleMark("y")
nnoremap <buffer> <silent> mx :call signature#ToggleMark("x")
nnoremap <buffer> <silent> mw :call signature#ToggleMark("w")
nnoremap <buffer> <silent> mv :call signature#ToggleMark("v")
nnoremap <buffer> <silent> mu :call signature#ToggleMark("u")
nnoremap <buffer> <silent> mt :call signature#ToggleMark("t")
nnoremap <buffer> <silent> ms :call signature#ToggleMark("s")
nnoremap <buffer> <silent> mr :call signature#ToggleMark("r")
nnoremap <buffer> <silent> mq :call signature#ToggleMark("q")
nnoremap <buffer> <silent> mp :call signature#ToggleMark("p")
nnoremap <buffer> <silent> mo :call signature#ToggleMark("o")
nnoremap <buffer> <silent> mn :call signature#ToggleMark("n")
nnoremap <buffer> <silent> mm :call signature#ToggleMark("m")
nnoremap <buffer> <silent> ml :call signature#ToggleMark("l")
nnoremap <buffer> <silent> mk :call signature#ToggleMark("k")
nnoremap <buffer> <silent> mj :call signature#ToggleMark("j")
nnoremap <buffer> <silent> mi :call signature#ToggleMark("i")
nnoremap <buffer> <silent> mh :call signature#ToggleMark("h")
nnoremap <buffer> <silent> mg :call signature#ToggleMark("g")
nnoremap <buffer> <silent> mf :call signature#ToggleMark("f")
nnoremap <buffer> <silent> me :call signature#ToggleMark("e")
nnoremap <buffer> <silent> md :call signature#ToggleMark("d")
nnoremap <buffer> <silent> mc :call signature#ToggleMark("c")
nnoremap <buffer> <silent> mb :call signature#ToggleMark("b")
nnoremap <buffer> <silent> ma :call signature#ToggleMark("a")
nnoremap <buffer> Æ :call ToggleFold()
nnoremap <buffer> æ za
inoremap <buffer> iff if  :<Left>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal fixendofline
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=pymode#folding#expr(v:lnum)
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=expr
setlocal foldmethod=expr
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
set foldtext=PythonFoldText()
setlocal foldtext=pymode#folding#text()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=pymode#indent#Indent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=RopeOmni
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(5)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
5
normal! zo
let s:l = 9 - ((6 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 042|
tabedit recipe/templates/recipe/home.html
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 32 + 30) / 60)
exe '2resize ' . ((&lines * 24 + 30) / 60)
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
vnoremap <buffer> ,c a-->'<i<!--'>$
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
nmap <buffer> m<BS> <Plug>SIG_PurgeMarkers
nmap <buffer> m  <Plug>SIG_PurgeMarks
nmap <buffer> m, <Plug>SIG_PlaceNextMark
nnoremap <buffer> <silent> m( :call signature#RemoveMarker("(")
nnoremap <buffer> <silent> m9 :call signature#ToggleMarker("(")
nnoremap <buffer> <silent> m* :call signature#RemoveMarker("*")
nnoremap <buffer> <silent> m8 :call signature#ToggleMarker("*")
nnoremap <buffer> <silent> m& :call signature#RemoveMarker("&")
nnoremap <buffer> <silent> m7 :call signature#ToggleMarker("&")
nnoremap <buffer> <silent> m^ :call signature#RemoveMarker("^")
nnoremap <buffer> <silent> m6 :call signature#ToggleMarker("^")
nnoremap <buffer> <silent> m% :call signature#RemoveMarker("%")
nnoremap <buffer> <silent> m5 :call signature#ToggleMarker("%")
nnoremap <buffer> <silent> m$ :call signature#RemoveMarker("$")
nnoremap <buffer> <silent> m4 :call signature#ToggleMarker("$")
nnoremap <buffer> <silent> m# :call signature#RemoveMarker("#")
nnoremap <buffer> <silent> m3 :call signature#ToggleMarker("#")
nnoremap <buffer> <silent> m@ :call signature#RemoveMarker("@")
nnoremap <buffer> <silent> m2 :call signature#ToggleMarker("@")
nnoremap <buffer> <silent> m! :call signature#RemoveMarker("!")
nnoremap <buffer> <silent> m1 :call signature#ToggleMarker("!")
nnoremap <buffer> <silent> m) :call signature#RemoveMarker(")")
nnoremap <buffer> <silent> m0 :call signature#ToggleMarker(")")
nnoremap <buffer> <silent> mZ :call signature#ToggleMark("Z")
nnoremap <buffer> <silent> mY :call signature#ToggleMark("Y")
nnoremap <buffer> <silent> mX :call signature#ToggleMark("X")
nnoremap <buffer> <silent> mW :call signature#ToggleMark("W")
nnoremap <buffer> <silent> mV :call signature#ToggleMark("V")
nnoremap <buffer> <silent> mU :call signature#ToggleMark("U")
nnoremap <buffer> <silent> mT :call signature#ToggleMark("T")
nnoremap <buffer> <silent> mS :call signature#ToggleMark("S")
nnoremap <buffer> <silent> mR :call signature#ToggleMark("R")
nnoremap <buffer> <silent> mQ :call signature#ToggleMark("Q")
nnoremap <buffer> <silent> mP :call signature#ToggleMark("P")
nnoremap <buffer> <silent> mO :call signature#ToggleMark("O")
nnoremap <buffer> <silent> mN :call signature#ToggleMark("N")
nnoremap <buffer> <silent> mM :call signature#ToggleMark("M")
nnoremap <buffer> <silent> mL :call signature#ToggleMark("L")
nnoremap <buffer> <silent> mK :call signature#ToggleMark("K")
nnoremap <buffer> <silent> mJ :call signature#ToggleMark("J")
nnoremap <buffer> <silent> mI :call signature#ToggleMark("I")
nnoremap <buffer> <silent> mH :call signature#ToggleMark("H")
nnoremap <buffer> <silent> mG :call signature#ToggleMark("G")
nnoremap <buffer> <silent> mF :call signature#ToggleMark("F")
nnoremap <buffer> <silent> mE :call signature#ToggleMark("E")
nnoremap <buffer> <silent> mD :call signature#ToggleMark("D")
nnoremap <buffer> <silent> mC :call signature#ToggleMark("C")
nnoremap <buffer> <silent> mB :call signature#ToggleMark("B")
nnoremap <buffer> <silent> mA :call signature#ToggleMark("A")
nnoremap <buffer> <silent> mz :call signature#ToggleMark("z")
nnoremap <buffer> <silent> my :call signature#ToggleMark("y")
nnoremap <buffer> <silent> mx :call signature#ToggleMark("x")
nnoremap <buffer> <silent> mw :call signature#ToggleMark("w")
nnoremap <buffer> <silent> mv :call signature#ToggleMark("v")
nnoremap <buffer> <silent> mu :call signature#ToggleMark("u")
nnoremap <buffer> <silent> mt :call signature#ToggleMark("t")
nnoremap <buffer> <silent> ms :call signature#ToggleMark("s")
nnoremap <buffer> <silent> mr :call signature#ToggleMark("r")
nnoremap <buffer> <silent> mq :call signature#ToggleMark("q")
nnoremap <buffer> <silent> mp :call signature#ToggleMark("p")
nnoremap <buffer> <silent> mo :call signature#ToggleMark("o")
nnoremap <buffer> <silent> mn :call signature#ToggleMark("n")
nnoremap <buffer> <silent> mm :call signature#ToggleMark("m")
nnoremap <buffer> <silent> ml :call signature#ToggleMark("l")
nnoremap <buffer> <silent> mk :call signature#ToggleMark("k")
nnoremap <buffer> <silent> mj :call signature#ToggleMark("j")
nnoremap <buffer> <silent> mi :call signature#ToggleMark("i")
nnoremap <buffer> <silent> mh :call signature#ToggleMark("h")
nnoremap <buffer> <silent> mg :call signature#ToggleMark("g")
nnoremap <buffer> <silent> mf :call signature#ToggleMark("f")
nnoremap <buffer> <silent> me :call signature#ToggleMark("e")
nnoremap <buffer> <silent> md :call signature#ToggleMark("d")
nnoremap <buffer> <silent> mc :call signature#ToggleMark("c")
nnoremap <buffer> <silent> mb :call signature#ToggleMark("b")
nnoremap <buffer> <silent> ma :call signature#ToggleMark("a")
inoremap <buffer> %ec {% endcomment %}o
inoremap <buffer> %c {% comment %}o
inoremap <buffer> %ef {% endfor %}o
inoremap <buffer> %f {% for   in %}6hi
inoremap <buffer> %e {% endif %}o
inoremap <buffer> %l {% else %}
inoremap <buffer> %i {% if   %}3hi
inoremap <buffer> %} {%  %}2hi
inoremap <buffer> <ul <ul></ul>O<li></li>4hi
inoremap <buffer> <sc <script type="text/javascript" src=""></script>10hi
inoremap <buffer> <s <script></script>O	
inoremap <buffer> <a <a href=""></a>5hi
inoremap <buffer> <abb <abbr title=""></abbr>8hi
inoremap <buffer> <ac <acronym title=""></acronym>11hi
inoremap <buffer> <ad <address></address>9hi
inoremap <buffer> <ar <area></area>6hi
inoremap <buffer> <at <article></aricle>8hi
inoremap <buffer> <as <aside></aside>7hi
inoremap <buffer> <au <audio controls><source src="" type="audio/mpeg"></audio>27hi
inoremap <buffer> <b <b></b>3hi
inoremap <buffer> <ba <base href="" target="_blank">17hi
inoremap <buffer> <bd <bdo dir="rtl"></bdo>5hi
inoremap <buffer> <bo <body></body>O
inoremap <buffer> <bu <button type="button"></button>8hi
inoremap <buffer> <ca <canvas id=""></canvas>10hi
inoremap <buffer> <cp <caption></caption>9hi
inoremap <buffer> <ci <cite></cite>6hi
inoremap <buffer> <co <code></code>6hi
inoremap <buffer> <cl <col span="" style="" >11hi
inoremap <buffer> <cg <colgroup></colgroup>10hi
inoremap <buffer> <dal <datalist></datalist>O<option value="" >2hi
inoremap <buffer> <dd <dd></dd>4hi
inoremap <buffer> <di <div></div>5hi
inoremap <buffer> <<di <div></div>O
inoremap <buffer> <dl <dl></dl>O
inoremap <buffer> <dt <dt></dt>4hi
inoremap <buffer> <em <em></em>4hi
inoremap <buffer> <eb <embed src=""></embed>7hi
inoremap <buffer> <fi <fieldset></fieldset>O
inoremap <buffer> <fg <figure></figure>O
inoremap <buffer> <ft <footer></footer>8hi
inoremap <buffer> <fo <form action="" method=""></form>O
inoremap <buffer> <he <head></head>O
inoremap <buffer> <tx <textarea name="" id="" cols="" rows=""></textarea>10hi
inoremap <buffer> <st <style></style>O
inoremap <buffer> jqre $(document).ready(function() {});O
inoremap <buffer> }} {{  }}2hi
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'htmldjango'
setlocal filetype=htmldjango
endif
setlocal fixendofline
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=PythonFoldExpr(v:lnum)
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=marker
setlocal foldmethod=expr
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
set foldtext=PythonFoldText()
setlocal foldtext=PythonFoldText()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=HtmlIndent()
setlocal indentkeys=o,O,<Return>,<>>,{,},!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(3)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'htmldjango'
setlocal syntax=htmldjango
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=120
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal wrap
setlocal wrapmargin=0
let s:l = 24 - ((23 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
24
normal! 039|
wincmd w
argglobal
edit recipe/templates/recipe/recipe-detail.html
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
nmap <buffer> m<BS> <Plug>SIG_PurgeMarkers
nmap <buffer> m  <Plug>SIG_PurgeMarks
nmap <buffer> m, <Plug>SIG_PlaceNextMark
nnoremap <buffer> <silent> m( :call signature#RemoveMarker("(")
nnoremap <buffer> <silent> m9 :call signature#ToggleMarker("(")
nnoremap <buffer> <silent> m* :call signature#RemoveMarker("*")
nnoremap <buffer> <silent> m8 :call signature#ToggleMarker("*")
nnoremap <buffer> <silent> m& :call signature#RemoveMarker("&")
nnoremap <buffer> <silent> m7 :call signature#ToggleMarker("&")
nnoremap <buffer> <silent> m^ :call signature#RemoveMarker("^")
nnoremap <buffer> <silent> m6 :call signature#ToggleMarker("^")
nnoremap <buffer> <silent> m% :call signature#RemoveMarker("%")
nnoremap <buffer> <silent> m5 :call signature#ToggleMarker("%")
nnoremap <buffer> <silent> m$ :call signature#RemoveMarker("$")
nnoremap <buffer> <silent> m4 :call signature#ToggleMarker("$")
nnoremap <buffer> <silent> m# :call signature#RemoveMarker("#")
nnoremap <buffer> <silent> m3 :call signature#ToggleMarker("#")
nnoremap <buffer> <silent> m@ :call signature#RemoveMarker("@")
nnoremap <buffer> <silent> m2 :call signature#ToggleMarker("@")
nnoremap <buffer> <silent> m! :call signature#RemoveMarker("!")
nnoremap <buffer> <silent> m1 :call signature#ToggleMarker("!")
nnoremap <buffer> <silent> m) :call signature#RemoveMarker(")")
nnoremap <buffer> <silent> m0 :call signature#ToggleMarker(")")
nnoremap <buffer> <silent> mZ :call signature#ToggleMark("Z")
nnoremap <buffer> <silent> mY :call signature#ToggleMark("Y")
nnoremap <buffer> <silent> mX :call signature#ToggleMark("X")
nnoremap <buffer> <silent> mW :call signature#ToggleMark("W")
nnoremap <buffer> <silent> mV :call signature#ToggleMark("V")
nnoremap <buffer> <silent> mU :call signature#ToggleMark("U")
nnoremap <buffer> <silent> mT :call signature#ToggleMark("T")
nnoremap <buffer> <silent> mS :call signature#ToggleMark("S")
nnoremap <buffer> <silent> mR :call signature#ToggleMark("R")
nnoremap <buffer> <silent> mQ :call signature#ToggleMark("Q")
nnoremap <buffer> <silent> mP :call signature#ToggleMark("P")
nnoremap <buffer> <silent> mO :call signature#ToggleMark("O")
nnoremap <buffer> <silent> mN :call signature#ToggleMark("N")
nnoremap <buffer> <silent> mM :call signature#ToggleMark("M")
nnoremap <buffer> <silent> mL :call signature#ToggleMark("L")
nnoremap <buffer> <silent> mK :call signature#ToggleMark("K")
nnoremap <buffer> <silent> mJ :call signature#ToggleMark("J")
nnoremap <buffer> <silent> mI :call signature#ToggleMark("I")
nnoremap <buffer> <silent> mH :call signature#ToggleMark("H")
nnoremap <buffer> <silent> mG :call signature#ToggleMark("G")
nnoremap <buffer> <silent> mF :call signature#ToggleMark("F")
nnoremap <buffer> <silent> mE :call signature#ToggleMark("E")
nnoremap <buffer> <silent> mD :call signature#ToggleMark("D")
nnoremap <buffer> <silent> mC :call signature#ToggleMark("C")
nnoremap <buffer> <silent> mB :call signature#ToggleMark("B")
nnoremap <buffer> <silent> mA :call signature#ToggleMark("A")
nnoremap <buffer> <silent> mz :call signature#ToggleMark("z")
nnoremap <buffer> <silent> my :call signature#ToggleMark("y")
nnoremap <buffer> <silent> mx :call signature#ToggleMark("x")
nnoremap <buffer> <silent> mw :call signature#ToggleMark("w")
nnoremap <buffer> <silent> mv :call signature#ToggleMark("v")
nnoremap <buffer> <silent> mu :call signature#ToggleMark("u")
nnoremap <buffer> <silent> mt :call signature#ToggleMark("t")
nnoremap <buffer> <silent> ms :call signature#ToggleMark("s")
nnoremap <buffer> <silent> mr :call signature#ToggleMark("r")
nnoremap <buffer> <silent> mq :call signature#ToggleMark("q")
nnoremap <buffer> <silent> mp :call signature#ToggleMark("p")
nnoremap <buffer> <silent> mo :call signature#ToggleMark("o")
nnoremap <buffer> <silent> mn :call signature#ToggleMark("n")
nnoremap <buffer> <silent> mm :call signature#ToggleMark("m")
nnoremap <buffer> <silent> ml :call signature#ToggleMark("l")
nnoremap <buffer> <silent> mk :call signature#ToggleMark("k")
nnoremap <buffer> <silent> mj :call signature#ToggleMark("j")
nnoremap <buffer> <silent> mi :call signature#ToggleMark("i")
nnoremap <buffer> <silent> mh :call signature#ToggleMark("h")
nnoremap <buffer> <silent> mg :call signature#ToggleMark("g")
nnoremap <buffer> <silent> mf :call signature#ToggleMark("f")
nnoremap <buffer> <silent> me :call signature#ToggleMark("e")
nnoremap <buffer> <silent> md :call signature#ToggleMark("d")
nnoremap <buffer> <silent> mc :call signature#ToggleMark("c")
nnoremap <buffer> <silent> mb :call signature#ToggleMark("b")
nnoremap <buffer> <silent> ma :call signature#ToggleMark("a")
inoremap <buffer> %ec {% endcomment %}o
inoremap <buffer> %c {% comment %}o
inoremap <buffer> %ef {% endfor %}o
inoremap <buffer> %f {% for   in %}6hi
inoremap <buffer> %e {% endif %}o
inoremap <buffer> %l {% else %}
inoremap <buffer> %i {% if   %}3hi
inoremap <buffer> %} {%  %}2hi
inoremap <buffer> }} {{  }}2hi
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'htmldjango'
setlocal filetype=htmldjango
endif
setlocal fixendofline
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=marker
setlocal foldmethod=marker
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
set foldtext=PythonFoldText()
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=HtmlIndent()
setlocal indentkeys=o,O,<Return>,<>>,{,},!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(4)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'htmldjango'
setlocal syntax=htmldjango
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=120
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal wrap
setlocal wrapmargin=0
let s:l = 11 - ((3 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 0
wincmd w
exe '1resize ' . ((&lines * 32 + 30) / 60)
exe '2resize ' . ((&lines * 24 + 30) / 60)
tabedit recipe/templates/recipe/recipe-detail.html
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 28 + 30) / 60)
exe '2resize ' . ((&lines * 28 + 30) / 60)
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
nmap <buffer> m<BS> <Plug>SIG_PurgeMarkers
nmap <buffer> m  <Plug>SIG_PurgeMarks
nmap <buffer> m, <Plug>SIG_PlaceNextMark
nnoremap <buffer> <silent> m( :call signature#RemoveMarker("(")
nnoremap <buffer> <silent> m9 :call signature#ToggleMarker("(")
nnoremap <buffer> <silent> m* :call signature#RemoveMarker("*")
nnoremap <buffer> <silent> m8 :call signature#ToggleMarker("*")
nnoremap <buffer> <silent> m& :call signature#RemoveMarker("&")
nnoremap <buffer> <silent> m7 :call signature#ToggleMarker("&")
nnoremap <buffer> <silent> m^ :call signature#RemoveMarker("^")
nnoremap <buffer> <silent> m6 :call signature#ToggleMarker("^")
nnoremap <buffer> <silent> m% :call signature#RemoveMarker("%")
nnoremap <buffer> <silent> m5 :call signature#ToggleMarker("%")
nnoremap <buffer> <silent> m$ :call signature#RemoveMarker("$")
nnoremap <buffer> <silent> m4 :call signature#ToggleMarker("$")
nnoremap <buffer> <silent> m# :call signature#RemoveMarker("#")
nnoremap <buffer> <silent> m3 :call signature#ToggleMarker("#")
nnoremap <buffer> <silent> m@ :call signature#RemoveMarker("@")
nnoremap <buffer> <silent> m2 :call signature#ToggleMarker("@")
nnoremap <buffer> <silent> m! :call signature#RemoveMarker("!")
nnoremap <buffer> <silent> m1 :call signature#ToggleMarker("!")
nnoremap <buffer> <silent> m) :call signature#RemoveMarker(")")
nnoremap <buffer> <silent> m0 :call signature#ToggleMarker(")")
nnoremap <buffer> <silent> mZ :call signature#ToggleMark("Z")
nnoremap <buffer> <silent> mY :call signature#ToggleMark("Y")
nnoremap <buffer> <silent> mX :call signature#ToggleMark("X")
nnoremap <buffer> <silent> mW :call signature#ToggleMark("W")
nnoremap <buffer> <silent> mV :call signature#ToggleMark("V")
nnoremap <buffer> <silent> mU :call signature#ToggleMark("U")
nnoremap <buffer> <silent> mT :call signature#ToggleMark("T")
nnoremap <buffer> <silent> mS :call signature#ToggleMark("S")
nnoremap <buffer> <silent> mR :call signature#ToggleMark("R")
nnoremap <buffer> <silent> mQ :call signature#ToggleMark("Q")
nnoremap <buffer> <silent> mP :call signature#ToggleMark("P")
nnoremap <buffer> <silent> mO :call signature#ToggleMark("O")
nnoremap <buffer> <silent> mN :call signature#ToggleMark("N")
nnoremap <buffer> <silent> mM :call signature#ToggleMark("M")
nnoremap <buffer> <silent> mL :call signature#ToggleMark("L")
nnoremap <buffer> <silent> mK :call signature#ToggleMark("K")
nnoremap <buffer> <silent> mJ :call signature#ToggleMark("J")
nnoremap <buffer> <silent> mI :call signature#ToggleMark("I")
nnoremap <buffer> <silent> mH :call signature#ToggleMark("H")
nnoremap <buffer> <silent> mG :call signature#ToggleMark("G")
nnoremap <buffer> <silent> mF :call signature#ToggleMark("F")
nnoremap <buffer> <silent> mE :call signature#ToggleMark("E")
nnoremap <buffer> <silent> mD :call signature#ToggleMark("D")
nnoremap <buffer> <silent> mC :call signature#ToggleMark("C")
nnoremap <buffer> <silent> mB :call signature#ToggleMark("B")
nnoremap <buffer> <silent> mA :call signature#ToggleMark("A")
nnoremap <buffer> <silent> mz :call signature#ToggleMark("z")
nnoremap <buffer> <silent> my :call signature#ToggleMark("y")
nnoremap <buffer> <silent> mx :call signature#ToggleMark("x")
nnoremap <buffer> <silent> mw :call signature#ToggleMark("w")
nnoremap <buffer> <silent> mv :call signature#ToggleMark("v")
nnoremap <buffer> <silent> mu :call signature#ToggleMark("u")
nnoremap <buffer> <silent> mt :call signature#ToggleMark("t")
nnoremap <buffer> <silent> ms :call signature#ToggleMark("s")
nnoremap <buffer> <silent> mr :call signature#ToggleMark("r")
nnoremap <buffer> <silent> mq :call signature#ToggleMark("q")
nnoremap <buffer> <silent> mp :call signature#ToggleMark("p")
nnoremap <buffer> <silent> mo :call signature#ToggleMark("o")
nnoremap <buffer> <silent> mn :call signature#ToggleMark("n")
nnoremap <buffer> <silent> mm :call signature#ToggleMark("m")
nnoremap <buffer> <silent> ml :call signature#ToggleMark("l")
nnoremap <buffer> <silent> mk :call signature#ToggleMark("k")
nnoremap <buffer> <silent> mj :call signature#ToggleMark("j")
nnoremap <buffer> <silent> mi :call signature#ToggleMark("i")
nnoremap <buffer> <silent> mh :call signature#ToggleMark("h")
nnoremap <buffer> <silent> mg :call signature#ToggleMark("g")
nnoremap <buffer> <silent> mf :call signature#ToggleMark("f")
nnoremap <buffer> <silent> me :call signature#ToggleMark("e")
nnoremap <buffer> <silent> md :call signature#ToggleMark("d")
nnoremap <buffer> <silent> mc :call signature#ToggleMark("c")
nnoremap <buffer> <silent> mb :call signature#ToggleMark("b")
nnoremap <buffer> <silent> ma :call signature#ToggleMark("a")
inoremap <buffer> %ec {% endcomment %}o
inoremap <buffer> %c {% comment %}o
inoremap <buffer> %ef {% endfor %}o
inoremap <buffer> %f {% for   in %}6hi
inoremap <buffer> %e {% endif %}o
inoremap <buffer> %l {% else %}
inoremap <buffer> %i {% if   %}3hi
inoremap <buffer> %} {%  %}2hi
inoremap <buffer> }} {{  }}2hi
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'htmldjango'
setlocal filetype=htmldjango
endif
setlocal fixendofline
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=expr
setlocal foldmethod=marker
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
set foldtext=PythonFoldText()
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=HtmlIndent()
setlocal indentkeys=o,O,<Return>,<>>,{,},!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
set linebreak
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(1)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'htmldjango'
setlocal syntax=htmldjango
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=120
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal wrap
setlocal wrapmargin=0
let s:l = 15 - ((9 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 051|
wincmd w
argglobal
edit templates/base.html
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
nmap <buffer> m<BS> <Plug>SIG_PurgeMarkers
nmap <buffer> m  <Plug>SIG_PurgeMarks
nmap <buffer> m, <Plug>SIG_PlaceNextMark
nnoremap <buffer> <silent> m( :call signature#RemoveMarker("(")
nnoremap <buffer> <silent> m9 :call signature#ToggleMarker("(")
nnoremap <buffer> <silent> m* :call signature#RemoveMarker("*")
nnoremap <buffer> <silent> m8 :call signature#ToggleMarker("*")
nnoremap <buffer> <silent> m& :call signature#RemoveMarker("&")
nnoremap <buffer> <silent> m7 :call signature#ToggleMarker("&")
nnoremap <buffer> <silent> m^ :call signature#RemoveMarker("^")
nnoremap <buffer> <silent> m6 :call signature#ToggleMarker("^")
nnoremap <buffer> <silent> m% :call signature#RemoveMarker("%")
nnoremap <buffer> <silent> m5 :call signature#ToggleMarker("%")
nnoremap <buffer> <silent> m$ :call signature#RemoveMarker("$")
nnoremap <buffer> <silent> m4 :call signature#ToggleMarker("$")
nnoremap <buffer> <silent> m# :call signature#RemoveMarker("#")
nnoremap <buffer> <silent> m3 :call signature#ToggleMarker("#")
nnoremap <buffer> <silent> m@ :call signature#RemoveMarker("@")
nnoremap <buffer> <silent> m2 :call signature#ToggleMarker("@")
nnoremap <buffer> <silent> m! :call signature#RemoveMarker("!")
nnoremap <buffer> <silent> m1 :call signature#ToggleMarker("!")
nnoremap <buffer> <silent> m) :call signature#RemoveMarker(")")
nnoremap <buffer> <silent> m0 :call signature#ToggleMarker(")")
nnoremap <buffer> <silent> mZ :call signature#ToggleMark("Z")
nnoremap <buffer> <silent> mY :call signature#ToggleMark("Y")
nnoremap <buffer> <silent> mX :call signature#ToggleMark("X")
nnoremap <buffer> <silent> mW :call signature#ToggleMark("W")
nnoremap <buffer> <silent> mV :call signature#ToggleMark("V")
nnoremap <buffer> <silent> mU :call signature#ToggleMark("U")
nnoremap <buffer> <silent> mT :call signature#ToggleMark("T")
nnoremap <buffer> <silent> mS :call signature#ToggleMark("S")
nnoremap <buffer> <silent> mR :call signature#ToggleMark("R")
nnoremap <buffer> <silent> mQ :call signature#ToggleMark("Q")
nnoremap <buffer> <silent> mP :call signature#ToggleMark("P")
nnoremap <buffer> <silent> mO :call signature#ToggleMark("O")
nnoremap <buffer> <silent> mN :call signature#ToggleMark("N")
nnoremap <buffer> <silent> mM :call signature#ToggleMark("M")
nnoremap <buffer> <silent> mL :call signature#ToggleMark("L")
nnoremap <buffer> <silent> mK :call signature#ToggleMark("K")
nnoremap <buffer> <silent> mJ :call signature#ToggleMark("J")
nnoremap <buffer> <silent> mI :call signature#ToggleMark("I")
nnoremap <buffer> <silent> mH :call signature#ToggleMark("H")
nnoremap <buffer> <silent> mG :call signature#ToggleMark("G")
nnoremap <buffer> <silent> mF :call signature#ToggleMark("F")
nnoremap <buffer> <silent> mE :call signature#ToggleMark("E")
nnoremap <buffer> <silent> mD :call signature#ToggleMark("D")
nnoremap <buffer> <silent> mC :call signature#ToggleMark("C")
nnoremap <buffer> <silent> mB :call signature#ToggleMark("B")
nnoremap <buffer> <silent> mA :call signature#ToggleMark("A")
nnoremap <buffer> <silent> mz :call signature#ToggleMark("z")
nnoremap <buffer> <silent> my :call signature#ToggleMark("y")
nnoremap <buffer> <silent> mx :call signature#ToggleMark("x")
nnoremap <buffer> <silent> mw :call signature#ToggleMark("w")
nnoremap <buffer> <silent> mv :call signature#ToggleMark("v")
nnoremap <buffer> <silent> mu :call signature#ToggleMark("u")
nnoremap <buffer> <silent> mt :call signature#ToggleMark("t")
nnoremap <buffer> <silent> ms :call signature#ToggleMark("s")
nnoremap <buffer> <silent> mr :call signature#ToggleMark("r")
nnoremap <buffer> <silent> mq :call signature#ToggleMark("q")
nnoremap <buffer> <silent> mp :call signature#ToggleMark("p")
nnoremap <buffer> <silent> mo :call signature#ToggleMark("o")
nnoremap <buffer> <silent> mn :call signature#ToggleMark("n")
nnoremap <buffer> <silent> mm :call signature#ToggleMark("m")
nnoremap <buffer> <silent> ml :call signature#ToggleMark("l")
nnoremap <buffer> <silent> mk :call signature#ToggleMark("k")
nnoremap <buffer> <silent> mj :call signature#ToggleMark("j")
nnoremap <buffer> <silent> mi :call signature#ToggleMark("i")
nnoremap <buffer> <silent> mh :call signature#ToggleMark("h")
nnoremap <buffer> <silent> mg :call signature#ToggleMark("g")
nnoremap <buffer> <silent> mf :call signature#ToggleMark("f")
nnoremap <buffer> <silent> me :call signature#ToggleMark("e")
nnoremap <buffer> <silent> md :call signature#ToggleMark("d")
nnoremap <buffer> <silent> mc :call signature#ToggleMark("c")
nnoremap <buffer> <silent> mb :call signature#ToggleMark("b")
nnoremap <buffer> <silent> ma :call signature#ToggleMark("a")
inoremap <buffer> %ec {% endcomment %}o
inoremap <buffer> %c {% comment %}o
inoremap <buffer> %ef {% endfor %}o
inoremap <buffer> %f {% for   in %}6hi
inoremap <buffer> %e {% endif %}o
inoremap <buffer> %l {% else %}
inoremap <buffer> %i {% if   %}3hi
inoremap <buffer> %} {%  %}2hi
inoremap <buffer> }} {{  }}2hi
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'htmldjango'
setlocal filetype=htmldjango
endif
setlocal fixendofline
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=expr
setlocal foldmethod=marker
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
set foldtext=PythonFoldText()
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=HtmlIndent()
setlocal indentkeys=o,O,<Return>,<>>,{,},!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(48)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'htmldjango'
setlocal syntax=htmldjango
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=120
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 55 - ((17 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
55
normal! 076|
wincmd w
exe '1resize ' . ((&lines * 28 + 30) / 60)
exe '2resize ' . ((&lines * 28 + 30) / 60)
tabedit templates/flatpages/about.html
set splitbelow splitright
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 25 + 30) / 60)
exe '2resize ' . ((&lines * 24 + 30) / 60)
exe '3resize ' . ((&lines * 6 + 30) / 60)
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
vnoremap <buffer> ,c a-->'<i<!--'>$
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
nmap <buffer> m<BS> <Plug>SIG_PurgeMarkers
nmap <buffer> m  <Plug>SIG_PurgeMarks
nmap <buffer> m, <Plug>SIG_PlaceNextMark
nnoremap <buffer> <silent> m( :call signature#RemoveMarker("(")
nnoremap <buffer> <silent> m9 :call signature#ToggleMarker("(")
nnoremap <buffer> <silent> m* :call signature#RemoveMarker("*")
nnoremap <buffer> <silent> m8 :call signature#ToggleMarker("*")
nnoremap <buffer> <silent> m& :call signature#RemoveMarker("&")
nnoremap <buffer> <silent> m7 :call signature#ToggleMarker("&")
nnoremap <buffer> <silent> m^ :call signature#RemoveMarker("^")
nnoremap <buffer> <silent> m6 :call signature#ToggleMarker("^")
nnoremap <buffer> <silent> m% :call signature#RemoveMarker("%")
nnoremap <buffer> <silent> m5 :call signature#ToggleMarker("%")
nnoremap <buffer> <silent> m$ :call signature#RemoveMarker("$")
nnoremap <buffer> <silent> m4 :call signature#ToggleMarker("$")
nnoremap <buffer> <silent> m# :call signature#RemoveMarker("#")
nnoremap <buffer> <silent> m3 :call signature#ToggleMarker("#")
nnoremap <buffer> <silent> m@ :call signature#RemoveMarker("@")
nnoremap <buffer> <silent> m2 :call signature#ToggleMarker("@")
nnoremap <buffer> <silent> m! :call signature#RemoveMarker("!")
nnoremap <buffer> <silent> m1 :call signature#ToggleMarker("!")
nnoremap <buffer> <silent> m) :call signature#RemoveMarker(")")
nnoremap <buffer> <silent> m0 :call signature#ToggleMarker(")")
nnoremap <buffer> <silent> mZ :call signature#ToggleMark("Z")
nnoremap <buffer> <silent> mY :call signature#ToggleMark("Y")
nnoremap <buffer> <silent> mX :call signature#ToggleMark("X")
nnoremap <buffer> <silent> mW :call signature#ToggleMark("W")
nnoremap <buffer> <silent> mV :call signature#ToggleMark("V")
nnoremap <buffer> <silent> mU :call signature#ToggleMark("U")
nnoremap <buffer> <silent> mT :call signature#ToggleMark("T")
nnoremap <buffer> <silent> mS :call signature#ToggleMark("S")
nnoremap <buffer> <silent> mR :call signature#ToggleMark("R")
nnoremap <buffer> <silent> mQ :call signature#ToggleMark("Q")
nnoremap <buffer> <silent> mP :call signature#ToggleMark("P")
nnoremap <buffer> <silent> mO :call signature#ToggleMark("O")
nnoremap <buffer> <silent> mN :call signature#ToggleMark("N")
nnoremap <buffer> <silent> mM :call signature#ToggleMark("M")
nnoremap <buffer> <silent> mL :call signature#ToggleMark("L")
nnoremap <buffer> <silent> mK :call signature#ToggleMark("K")
nnoremap <buffer> <silent> mJ :call signature#ToggleMark("J")
nnoremap <buffer> <silent> mI :call signature#ToggleMark("I")
nnoremap <buffer> <silent> mH :call signature#ToggleMark("H")
nnoremap <buffer> <silent> mG :call signature#ToggleMark("G")
nnoremap <buffer> <silent> mF :call signature#ToggleMark("F")
nnoremap <buffer> <silent> mE :call signature#ToggleMark("E")
nnoremap <buffer> <silent> mD :call signature#ToggleMark("D")
nnoremap <buffer> <silent> mC :call signature#ToggleMark("C")
nnoremap <buffer> <silent> mB :call signature#ToggleMark("B")
nnoremap <buffer> <silent> mA :call signature#ToggleMark("A")
nnoremap <buffer> <silent> mz :call signature#ToggleMark("z")
nnoremap <buffer> <silent> my :call signature#ToggleMark("y")
nnoremap <buffer> <silent> mx :call signature#ToggleMark("x")
nnoremap <buffer> <silent> mw :call signature#ToggleMark("w")
nnoremap <buffer> <silent> mv :call signature#ToggleMark("v")
nnoremap <buffer> <silent> mu :call signature#ToggleMark("u")
nnoremap <buffer> <silent> mt :call signature#ToggleMark("t")
nnoremap <buffer> <silent> ms :call signature#ToggleMark("s")
nnoremap <buffer> <silent> mr :call signature#ToggleMark("r")
nnoremap <buffer> <silent> mq :call signature#ToggleMark("q")
nnoremap <buffer> <silent> mp :call signature#ToggleMark("p")
nnoremap <buffer> <silent> mo :call signature#ToggleMark("o")
nnoremap <buffer> <silent> mn :call signature#ToggleMark("n")
nnoremap <buffer> <silent> mm :call signature#ToggleMark("m")
nnoremap <buffer> <silent> ml :call signature#ToggleMark("l")
nnoremap <buffer> <silent> mk :call signature#ToggleMark("k")
nnoremap <buffer> <silent> mj :call signature#ToggleMark("j")
nnoremap <buffer> <silent> mi :call signature#ToggleMark("i")
nnoremap <buffer> <silent> mh :call signature#ToggleMark("h")
nnoremap <buffer> <silent> mg :call signature#ToggleMark("g")
nnoremap <buffer> <silent> mf :call signature#ToggleMark("f")
nnoremap <buffer> <silent> me :call signature#ToggleMark("e")
nnoremap <buffer> <silent> md :call signature#ToggleMark("d")
nnoremap <buffer> <silent> mc :call signature#ToggleMark("c")
nnoremap <buffer> <silent> mb :call signature#ToggleMark("b")
nnoremap <buffer> <silent> ma :call signature#ToggleMark("a")
inoremap <buffer> %ec {% endcomment %}o
inoremap <buffer> %c {% comment %}o
inoremap <buffer> %ef {% endfor %}o
inoremap <buffer> %f {% for   in %}6hi
inoremap <buffer> %e {% endif %}o
inoremap <buffer> %l {% else %}
inoremap <buffer> %i {% if   %}3hi
inoremap <buffer> %} {%  %}2hi
inoremap <buffer> <ul <ul></ul>O<li></li>4hi
inoremap <buffer> <sc <script type="text/javascript" src=""></script>10hi
inoremap <buffer> <s <script></script>O	
inoremap <buffer> <a <a href=""></a>5hi
inoremap <buffer> <abb <abbr title=""></abbr>8hi
inoremap <buffer> <ac <acronym title=""></acronym>11hi
inoremap <buffer> <ad <address></address>9hi
inoremap <buffer> <ar <area></area>6hi
inoremap <buffer> <at <article></aricle>8hi
inoremap <buffer> <as <aside></aside>7hi
inoremap <buffer> <au <audio controls><source src="" type="audio/mpeg"></audio>27hi
inoremap <buffer> <b <b></b>3hi
inoremap <buffer> <ba <base href="" target="_blank">17hi
inoremap <buffer> <bd <bdo dir="rtl"></bdo>5hi
inoremap <buffer> <bo <body></body>O
inoremap <buffer> <bu <button type="button"></button>8hi
inoremap <buffer> <ca <canvas id=""></canvas>10hi
inoremap <buffer> <cp <caption></caption>9hi
inoremap <buffer> <ci <cite></cite>6hi
inoremap <buffer> <co <code></code>6hi
inoremap <buffer> <cl <col span="" style="" >11hi
inoremap <buffer> <cg <colgroup></colgroup>10hi
inoremap <buffer> <dal <datalist></datalist>O<option value="" >2hi
inoremap <buffer> <dd <dd></dd>4hi
inoremap <buffer> <di <div></div>5hi
inoremap <buffer> <<di <div></div>O
inoremap <buffer> <dl <dl></dl>O
inoremap <buffer> <dt <dt></dt>4hi
inoremap <buffer> <em <em></em>4hi
inoremap <buffer> <eb <embed src=""></embed>7hi
inoremap <buffer> <fi <fieldset></fieldset>O
inoremap <buffer> <fg <figure></figure>O
inoremap <buffer> <ft <footer></footer>8hi
inoremap <buffer> <fo <form action="" method=""></form>O
inoremap <buffer> <he <head></head>O
inoremap <buffer> <tx <textarea name="" id="" cols="" rows=""></textarea>10hi
inoremap <buffer> <st <style></style>O
inoremap <buffer> jqre $(document).ready(function() {});O
inoremap <buffer> }} {{  }}2hi
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'htmldjango'
setlocal filetype=htmldjango
endif
setlocal fixendofline
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=PythonFoldExpr(v:lnum)
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=expr
setlocal foldmethod=expr
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
set foldtext=PythonFoldText()
setlocal foldtext=PythonFoldText()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=HtmlIndent()
setlocal indentkeys=o,O,<Return>,<>>,{,},!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(9)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'htmldjango'
setlocal syntax=htmldjango
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=120
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 8 - ((7 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 0
wincmd w
argglobal
edit templates/registration/registration_form.html
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
vnoremap <buffer> ,c a-->'<i<!--'>$
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
nmap <buffer> m<BS> <Plug>SIG_PurgeMarkers
nmap <buffer> m  <Plug>SIG_PurgeMarks
nmap <buffer> m, <Plug>SIG_PlaceNextMark
nnoremap <buffer> <silent> m( :call signature#RemoveMarker("(")
nnoremap <buffer> <silent> m9 :call signature#ToggleMarker("(")
nnoremap <buffer> <silent> m* :call signature#RemoveMarker("*")
nnoremap <buffer> <silent> m8 :call signature#ToggleMarker("*")
nnoremap <buffer> <silent> m& :call signature#RemoveMarker("&")
nnoremap <buffer> <silent> m7 :call signature#ToggleMarker("&")
nnoremap <buffer> <silent> m^ :call signature#RemoveMarker("^")
nnoremap <buffer> <silent> m6 :call signature#ToggleMarker("^")
nnoremap <buffer> <silent> m% :call signature#RemoveMarker("%")
nnoremap <buffer> <silent> m5 :call signature#ToggleMarker("%")
nnoremap <buffer> <silent> m$ :call signature#RemoveMarker("$")
nnoremap <buffer> <silent> m4 :call signature#ToggleMarker("$")
nnoremap <buffer> <silent> m# :call signature#RemoveMarker("#")
nnoremap <buffer> <silent> m3 :call signature#ToggleMarker("#")
nnoremap <buffer> <silent> m@ :call signature#RemoveMarker("@")
nnoremap <buffer> <silent> m2 :call signature#ToggleMarker("@")
nnoremap <buffer> <silent> m! :call signature#RemoveMarker("!")
nnoremap <buffer> <silent> m1 :call signature#ToggleMarker("!")
nnoremap <buffer> <silent> m) :call signature#RemoveMarker(")")
nnoremap <buffer> <silent> m0 :call signature#ToggleMarker(")")
nnoremap <buffer> <silent> mZ :call signature#ToggleMark("Z")
nnoremap <buffer> <silent> mY :call signature#ToggleMark("Y")
nnoremap <buffer> <silent> mX :call signature#ToggleMark("X")
nnoremap <buffer> <silent> mW :call signature#ToggleMark("W")
nnoremap <buffer> <silent> mV :call signature#ToggleMark("V")
nnoremap <buffer> <silent> mU :call signature#ToggleMark("U")
nnoremap <buffer> <silent> mT :call signature#ToggleMark("T")
nnoremap <buffer> <silent> mS :call signature#ToggleMark("S")
nnoremap <buffer> <silent> mR :call signature#ToggleMark("R")
nnoremap <buffer> <silent> mQ :call signature#ToggleMark("Q")
nnoremap <buffer> <silent> mP :call signature#ToggleMark("P")
nnoremap <buffer> <silent> mO :call signature#ToggleMark("O")
nnoremap <buffer> <silent> mN :call signature#ToggleMark("N")
nnoremap <buffer> <silent> mM :call signature#ToggleMark("M")
nnoremap <buffer> <silent> mL :call signature#ToggleMark("L")
nnoremap <buffer> <silent> mK :call signature#ToggleMark("K")
nnoremap <buffer> <silent> mJ :call signature#ToggleMark("J")
nnoremap <buffer> <silent> mI :call signature#ToggleMark("I")
nnoremap <buffer> <silent> mH :call signature#ToggleMark("H")
nnoremap <buffer> <silent> mG :call signature#ToggleMark("G")
nnoremap <buffer> <silent> mF :call signature#ToggleMark("F")
nnoremap <buffer> <silent> mE :call signature#ToggleMark("E")
nnoremap <buffer> <silent> mD :call signature#ToggleMark("D")
nnoremap <buffer> <silent> mC :call signature#ToggleMark("C")
nnoremap <buffer> <silent> mB :call signature#ToggleMark("B")
nnoremap <buffer> <silent> mA :call signature#ToggleMark("A")
nnoremap <buffer> <silent> mz :call signature#ToggleMark("z")
nnoremap <buffer> <silent> my :call signature#ToggleMark("y")
nnoremap <buffer> <silent> mx :call signature#ToggleMark("x")
nnoremap <buffer> <silent> mw :call signature#ToggleMark("w")
nnoremap <buffer> <silent> mv :call signature#ToggleMark("v")
nnoremap <buffer> <silent> mu :call signature#ToggleMark("u")
nnoremap <buffer> <silent> mt :call signature#ToggleMark("t")
nnoremap <buffer> <silent> ms :call signature#ToggleMark("s")
nnoremap <buffer> <silent> mr :call signature#ToggleMark("r")
nnoremap <buffer> <silent> mq :call signature#ToggleMark("q")
nnoremap <buffer> <silent> mp :call signature#ToggleMark("p")
nnoremap <buffer> <silent> mo :call signature#ToggleMark("o")
nnoremap <buffer> <silent> mn :call signature#ToggleMark("n")
nnoremap <buffer> <silent> mm :call signature#ToggleMark("m")
nnoremap <buffer> <silent> ml :call signature#ToggleMark("l")
nnoremap <buffer> <silent> mk :call signature#ToggleMark("k")
nnoremap <buffer> <silent> mj :call signature#ToggleMark("j")
nnoremap <buffer> <silent> mi :call signature#ToggleMark("i")
nnoremap <buffer> <silent> mh :call signature#ToggleMark("h")
nnoremap <buffer> <silent> mg :call signature#ToggleMark("g")
nnoremap <buffer> <silent> mf :call signature#ToggleMark("f")
nnoremap <buffer> <silent> me :call signature#ToggleMark("e")
nnoremap <buffer> <silent> md :call signature#ToggleMark("d")
nnoremap <buffer> <silent> mc :call signature#ToggleMark("c")
nnoremap <buffer> <silent> mb :call signature#ToggleMark("b")
nnoremap <buffer> <silent> ma :call signature#ToggleMark("a")
inoremap <buffer> %ec {% endcomment %}o
inoremap <buffer> %c {% comment %}o
inoremap <buffer> %ef {% endfor %}o
inoremap <buffer> %f {% for   in %}6hi
inoremap <buffer> %e {% endif %}o
inoremap <buffer> %l {% else %}
inoremap <buffer> %i {% if   %}3hi
inoremap <buffer> %} {%  %}2hi
inoremap <buffer> <ul <ul></ul>O<li></li>4hi
inoremap <buffer> <sc <script type="text/javascript" src=""></script>10hi
inoremap <buffer> <s <script></script>O	
inoremap <buffer> <a <a href=""></a>5hi
inoremap <buffer> <abb <abbr title=""></abbr>8hi
inoremap <buffer> <ac <acronym title=""></acronym>11hi
inoremap <buffer> <ad <address></address>9hi
inoremap <buffer> <ar <area></area>6hi
inoremap <buffer> <at <article></aricle>8hi
inoremap <buffer> <as <aside></aside>7hi
inoremap <buffer> <au <audio controls><source src="" type="audio/mpeg"></audio>27hi
inoremap <buffer> <b <b></b>3hi
inoremap <buffer> <ba <base href="" target="_blank">17hi
inoremap <buffer> <bd <bdo dir="rtl"></bdo>5hi
inoremap <buffer> <bo <body></body>O
inoremap <buffer> <bu <button type="button"></button>8hi
inoremap <buffer> <ca <canvas id=""></canvas>10hi
inoremap <buffer> <cp <caption></caption>9hi
inoremap <buffer> <ci <cite></cite>6hi
inoremap <buffer> <co <code></code>6hi
inoremap <buffer> <cl <col span="" style="" >11hi
inoremap <buffer> <cg <colgroup></colgroup>10hi
inoremap <buffer> <dal <datalist></datalist>O<option value="" >2hi
inoremap <buffer> <dd <dd></dd>4hi
inoremap <buffer> <di <div></div>5hi
inoremap <buffer> <<di <div></div>O
inoremap <buffer> <dl <dl></dl>O
inoremap <buffer> <dt <dt></dt>4hi
inoremap <buffer> <em <em></em>4hi
inoremap <buffer> <eb <embed src=""></embed>7hi
inoremap <buffer> <fi <fieldset></fieldset>O
inoremap <buffer> <fg <figure></figure>O
inoremap <buffer> <ft <footer></footer>8hi
inoremap <buffer> <fo <form action="" method=""></form>O
inoremap <buffer> <he <head></head>O
inoremap <buffer> <tx <textarea name="" id="" cols="" rows=""></textarea>10hi
inoremap <buffer> <st <style></style>O
inoremap <buffer> jqre $(document).ready(function() {});O
inoremap <buffer> }} {{  }}2hi
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'htmldjango'
setlocal filetype=htmldjango
endif
setlocal fixendofline
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=PythonFoldExpr(v:lnum)
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=expr
setlocal foldmethod=expr
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
set foldtext=PythonFoldText()
setlocal foldtext=PythonFoldText()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=HtmlIndent()
setlocal indentkeys=o,O,<Return>,<>>,{,},!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(10)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'htmldjango'
setlocal syntax=htmldjango
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=120
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 6 - ((5 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 015|
wincmd w
argglobal
edit recipe/templates/recipe/index.html
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
nmap <buffer> m<BS> <Plug>SIG_PurgeMarkers
nmap <buffer> m  <Plug>SIG_PurgeMarks
nmap <buffer> m, <Plug>SIG_PlaceNextMark
nnoremap <buffer> <silent> m( :call signature#RemoveMarker("(")
nnoremap <buffer> <silent> m9 :call signature#ToggleMarker("(")
nnoremap <buffer> <silent> m* :call signature#RemoveMarker("*")
nnoremap <buffer> <silent> m8 :call signature#ToggleMarker("*")
nnoremap <buffer> <silent> m& :call signature#RemoveMarker("&")
nnoremap <buffer> <silent> m7 :call signature#ToggleMarker("&")
nnoremap <buffer> <silent> m^ :call signature#RemoveMarker("^")
nnoremap <buffer> <silent> m6 :call signature#ToggleMarker("^")
nnoremap <buffer> <silent> m% :call signature#RemoveMarker("%")
nnoremap <buffer> <silent> m5 :call signature#ToggleMarker("%")
nnoremap <buffer> <silent> m$ :call signature#RemoveMarker("$")
nnoremap <buffer> <silent> m4 :call signature#ToggleMarker("$")
nnoremap <buffer> <silent> m# :call signature#RemoveMarker("#")
nnoremap <buffer> <silent> m3 :call signature#ToggleMarker("#")
nnoremap <buffer> <silent> m@ :call signature#RemoveMarker("@")
nnoremap <buffer> <silent> m2 :call signature#ToggleMarker("@")
nnoremap <buffer> <silent> m! :call signature#RemoveMarker("!")
nnoremap <buffer> <silent> m1 :call signature#ToggleMarker("!")
nnoremap <buffer> <silent> m) :call signature#RemoveMarker(")")
nnoremap <buffer> <silent> m0 :call signature#ToggleMarker(")")
nnoremap <buffer> <silent> mZ :call signature#ToggleMark("Z")
nnoremap <buffer> <silent> mY :call signature#ToggleMark("Y")
nnoremap <buffer> <silent> mX :call signature#ToggleMark("X")
nnoremap <buffer> <silent> mW :call signature#ToggleMark("W")
nnoremap <buffer> <silent> mV :call signature#ToggleMark("V")
nnoremap <buffer> <silent> mU :call signature#ToggleMark("U")
nnoremap <buffer> <silent> mT :call signature#ToggleMark("T")
nnoremap <buffer> <silent> mS :call signature#ToggleMark("S")
nnoremap <buffer> <silent> mR :call signature#ToggleMark("R")
nnoremap <buffer> <silent> mQ :call signature#ToggleMark("Q")
nnoremap <buffer> <silent> mP :call signature#ToggleMark("P")
nnoremap <buffer> <silent> mO :call signature#ToggleMark("O")
nnoremap <buffer> <silent> mN :call signature#ToggleMark("N")
nnoremap <buffer> <silent> mM :call signature#ToggleMark("M")
nnoremap <buffer> <silent> mL :call signature#ToggleMark("L")
nnoremap <buffer> <silent> mK :call signature#ToggleMark("K")
nnoremap <buffer> <silent> mJ :call signature#ToggleMark("J")
nnoremap <buffer> <silent> mI :call signature#ToggleMark("I")
nnoremap <buffer> <silent> mH :call signature#ToggleMark("H")
nnoremap <buffer> <silent> mG :call signature#ToggleMark("G")
nnoremap <buffer> <silent> mF :call signature#ToggleMark("F")
nnoremap <buffer> <silent> mE :call signature#ToggleMark("E")
nnoremap <buffer> <silent> mD :call signature#ToggleMark("D")
nnoremap <buffer> <silent> mC :call signature#ToggleMark("C")
nnoremap <buffer> <silent> mB :call signature#ToggleMark("B")
nnoremap <buffer> <silent> mA :call signature#ToggleMark("A")
nnoremap <buffer> <silent> mz :call signature#ToggleMark("z")
nnoremap <buffer> <silent> my :call signature#ToggleMark("y")
nnoremap <buffer> <silent> mx :call signature#ToggleMark("x")
nnoremap <buffer> <silent> mw :call signature#ToggleMark("w")
nnoremap <buffer> <silent> mv :call signature#ToggleMark("v")
nnoremap <buffer> <silent> mu :call signature#ToggleMark("u")
nnoremap <buffer> <silent> mt :call signature#ToggleMark("t")
nnoremap <buffer> <silent> ms :call signature#ToggleMark("s")
nnoremap <buffer> <silent> mr :call signature#ToggleMark("r")
nnoremap <buffer> <silent> mq :call signature#ToggleMark("q")
nnoremap <buffer> <silent> mp :call signature#ToggleMark("p")
nnoremap <buffer> <silent> mo :call signature#ToggleMark("o")
nnoremap <buffer> <silent> mn :call signature#ToggleMark("n")
nnoremap <buffer> <silent> mm :call signature#ToggleMark("m")
nnoremap <buffer> <silent> ml :call signature#ToggleMark("l")
nnoremap <buffer> <silent> mk :call signature#ToggleMark("k")
nnoremap <buffer> <silent> mj :call signature#ToggleMark("j")
nnoremap <buffer> <silent> mi :call signature#ToggleMark("i")
nnoremap <buffer> <silent> mh :call signature#ToggleMark("h")
nnoremap <buffer> <silent> mg :call signature#ToggleMark("g")
nnoremap <buffer> <silent> mf :call signature#ToggleMark("f")
nnoremap <buffer> <silent> me :call signature#ToggleMark("e")
nnoremap <buffer> <silent> md :call signature#ToggleMark("d")
nnoremap <buffer> <silent> mc :call signature#ToggleMark("c")
nnoremap <buffer> <silent> mb :call signature#ToggleMark("b")
nnoremap <buffer> <silent> ma :call signature#ToggleMark("a")
inoremap <buffer> %ec {% endcomment %}o
inoremap <buffer> %c {% comment %}o
inoremap <buffer> %ef {% endfor %}o
inoremap <buffer> %f {% for   in %}6hi
inoremap <buffer> %e {% endif %}o
inoremap <buffer> %l {% else %}
inoremap <buffer> %i {% if   %}3hi
inoremap <buffer> %} {%  %}2hi
inoremap <buffer> }} {{  }}2hi
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'htmldjango'
setlocal filetype=htmldjango
endif
setlocal fixendofline
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=PythonFoldExpr(v:lnum)
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=expr
setlocal foldmethod=marker
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
set foldtext=PythonFoldText()
setlocal foldtext=PythonFoldText()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=HtmlIndent()
setlocal indentkeys=o,O,<Return>,<>>,{,},!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(11)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'htmldjango'
setlocal syntax=htmldjango
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=120
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 11 - ((2 * winheight(0) + 3) / 6)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 012|
wincmd w
exe '1resize ' . ((&lines * 25 + 30) / 60)
exe '2resize ' . ((&lines * 24 + 30) / 60)
exe '3resize ' . ((&lines * 6 + 30) / 60)
tabedit recipe/models.py
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 28 + 30) / 60)
exe '2resize ' . ((&lines * 28 + 30) / 60)
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <C-Space> =RopeCodeAssistInsertMode()
inoremap <buffer> <silent> <Nul> =RopeCodeAssistInsertMode()
inoremap <buffer> <silent> <S-Tab> =RopeLuckyAssistInsertMode()
noremap <buffer> <silent> m :emenu Rope . 	
noremap <buffer> <silent> f :RopeFindOccurrences
noremap <buffer> <silent> d :RopeShowDoc
noremap <buffer> <silent> g :RopeGotoDefinition
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
nnoremap <buffer> <silent> ,b :call pymode#breakpoint#Set(line('.'))
vnoremap <buffer> <silent> ,r :Pyrun
nnoremap <buffer> <silent> ,r :Pyrun
onoremap <buffer> C :call pymode#motion#select('^\s*class\s', 0)
map <buffer> E :w:!/usr/bin/env python % 
vnoremap <buffer> <silent> K :call pymode#doc#Show(@*)
nnoremap <buffer> <silent> K :call pymode#doc#Show(expand('<cword>'))
onoremap <buffer> M :call pymode#motion#select('^\s*def\s', 0)
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
vnoremap <buffer> [M :call pymode#motion#vmove('^\s*def\s', 'b')
vnoremap <buffer> [[ :call pymode#motion#vmove('^\(class\|def\)\s', 'b')
onoremap <buffer> [M :call pymode#motion#move('^\s*def\s', 'b')
onoremap <buffer> [C :call pymode#motion#move('^\(class\|def\)\s', 'b')
onoremap <buffer> [[ :call pymode#motion#move('^\(class\|def\)\s', 'b')
nnoremap <buffer> [M :call pymode#motion#move('^\s*def\s', 'b')
nnoremap <buffer> [C :call pymode#motion#move('^\(class\|def\)\s', 'b')
nnoremap <buffer> [[ :call pymode#motion#move('^\(class\|def\)\s', 'b')
nnoremap <buffer> \c I#
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
vnoremap <buffer> ]M :call pymode#motion#vmove('^\s*def\s', '')
vnoremap <buffer> ]] :call pymode#motion#vmove('^\(class\|def\)\s', '')
onoremap <buffer> ]M :call pymode#motion#move('^\s*def\s', '')
onoremap <buffer> ]C :call pymode#motion#move('^\(class\|def\)\s', '')
onoremap <buffer> ]] :call pymode#motion#move('^\(class\|def\)\s', '')
nnoremap <buffer> ]M :call pymode#motion#move('^\s*def\s', '')
nnoremap <buffer> ]C :call pymode#motion#move('^\(class\|def\)\s', '')
nnoremap <buffer> ]] :call pymode#motion#move('^\(class\|def\)\s', '')
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
vnoremap <buffer> aM :call pymode#motion#select('^\s*def\s', 0)
onoremap <buffer> aM :call pymode#motion#select('^\s*def\s', 0)
vnoremap <buffer> aC :call pymode#motion#select('^\s*class\s', 0)
onoremap <buffer> aC :call pymode#motion#select('^\s*class\s', 0)
map <buffer> gd /def 
vnoremap <buffer> iM :call pymode#motion#select('^\s*def\s', 1)
onoremap <buffer> iM :call pymode#motion#select('^\s*def\s', 1)
vnoremap <buffer> iC :call pymode#motion#select('^\s*class\s', 1)
onoremap <buffer> iC :call pymode#motion#select('^\s*class\s', 1)
nmap <buffer> m<BS> <Plug>SIG_PurgeMarkers
nmap <buffer> m  <Plug>SIG_PurgeMarks
nmap <buffer> m, <Plug>SIG_PlaceNextMark
nnoremap <buffer> <silent> m( :call signature#RemoveMarker("(")
nnoremap <buffer> <silent> m9 :call signature#ToggleMarker("(")
nnoremap <buffer> <silent> m* :call signature#RemoveMarker("*")
nnoremap <buffer> <silent> m8 :call signature#ToggleMarker("*")
nnoremap <buffer> <silent> m& :call signature#RemoveMarker("&")
nnoremap <buffer> <silent> m7 :call signature#ToggleMarker("&")
nnoremap <buffer> <silent> m^ :call signature#RemoveMarker("^")
nnoremap <buffer> <silent> m6 :call signature#ToggleMarker("^")
nnoremap <buffer> <silent> m% :call signature#RemoveMarker("%")
nnoremap <buffer> <silent> m5 :call signature#ToggleMarker("%")
nnoremap <buffer> <silent> m$ :call signature#RemoveMarker("$")
nnoremap <buffer> <silent> m4 :call signature#ToggleMarker("$")
nnoremap <buffer> <silent> m# :call signature#RemoveMarker("#")
nnoremap <buffer> <silent> m3 :call signature#ToggleMarker("#")
nnoremap <buffer> <silent> m@ :call signature#RemoveMarker("@")
nnoremap <buffer> <silent> m2 :call signature#ToggleMarker("@")
nnoremap <buffer> <silent> m! :call signature#RemoveMarker("!")
nnoremap <buffer> <silent> m1 :call signature#ToggleMarker("!")
nnoremap <buffer> <silent> m) :call signature#RemoveMarker(")")
nnoremap <buffer> <silent> m0 :call signature#ToggleMarker(")")
nnoremap <buffer> <silent> mZ :call signature#ToggleMark("Z")
nnoremap <buffer> <silent> mY :call signature#ToggleMark("Y")
nnoremap <buffer> <silent> mX :call signature#ToggleMark("X")
nnoremap <buffer> <silent> mW :call signature#ToggleMark("W")
nnoremap <buffer> <silent> mV :call signature#ToggleMark("V")
nnoremap <buffer> <silent> mU :call signature#ToggleMark("U")
nnoremap <buffer> <silent> mT :call signature#ToggleMark("T")
nnoremap <buffer> <silent> mS :call signature#ToggleMark("S")
nnoremap <buffer> <silent> mR :call signature#ToggleMark("R")
nnoremap <buffer> <silent> mQ :call signature#ToggleMark("Q")
nnoremap <buffer> <silent> mP :call signature#ToggleMark("P")
nnoremap <buffer> <silent> mO :call signature#ToggleMark("O")
nnoremap <buffer> <silent> mN :call signature#ToggleMark("N")
nnoremap <buffer> <silent> mM :call signature#ToggleMark("M")
nnoremap <buffer> <silent> mL :call signature#ToggleMark("L")
nnoremap <buffer> <silent> mK :call signature#ToggleMark("K")
nnoremap <buffer> <silent> mJ :call signature#ToggleMark("J")
nnoremap <buffer> <silent> mI :call signature#ToggleMark("I")
nnoremap <buffer> <silent> mH :call signature#ToggleMark("H")
nnoremap <buffer> <silent> mG :call signature#ToggleMark("G")
nnoremap <buffer> <silent> mF :call signature#ToggleMark("F")
nnoremap <buffer> <silent> mE :call signature#ToggleMark("E")
nnoremap <buffer> <silent> mD :call signature#ToggleMark("D")
nnoremap <buffer> <silent> mC :call signature#ToggleMark("C")
nnoremap <buffer> <silent> mB :call signature#ToggleMark("B")
nnoremap <buffer> <silent> mA :call signature#ToggleMark("A")
nnoremap <buffer> <silent> mz :call signature#ToggleMark("z")
nnoremap <buffer> <silent> my :call signature#ToggleMark("y")
nnoremap <buffer> <silent> mx :call signature#ToggleMark("x")
nnoremap <buffer> <silent> mw :call signature#ToggleMark("w")
nnoremap <buffer> <silent> mv :call signature#ToggleMark("v")
nnoremap <buffer> <silent> mu :call signature#ToggleMark("u")
nnoremap <buffer> <silent> mt :call signature#ToggleMark("t")
nnoremap <buffer> <silent> ms :call signature#ToggleMark("s")
nnoremap <buffer> <silent> mr :call signature#ToggleMark("r")
nnoremap <buffer> <silent> mq :call signature#ToggleMark("q")
nnoremap <buffer> <silent> mp :call signature#ToggleMark("p")
nnoremap <buffer> <silent> mo :call signature#ToggleMark("o")
nnoremap <buffer> <silent> mn :call signature#ToggleMark("n")
nnoremap <buffer> <silent> mm :call signature#ToggleMark("m")
nnoremap <buffer> <silent> ml :call signature#ToggleMark("l")
nnoremap <buffer> <silent> mk :call signature#ToggleMark("k")
nnoremap <buffer> <silent> mj :call signature#ToggleMark("j")
nnoremap <buffer> <silent> mi :call signature#ToggleMark("i")
nnoremap <buffer> <silent> mh :call signature#ToggleMark("h")
nnoremap <buffer> <silent> mg :call signature#ToggleMark("g")
nnoremap <buffer> <silent> mf :call signature#ToggleMark("f")
nnoremap <buffer> <silent> me :call signature#ToggleMark("e")
nnoremap <buffer> <silent> md :call signature#ToggleMark("d")
nnoremap <buffer> <silent> mc :call signature#ToggleMark("c")
nnoremap <buffer> <silent> mb :call signature#ToggleMark("b")
nnoremap <buffer> <silent> ma :call signature#ToggleMark("a")
nnoremap <buffer> Æ :call ToggleFold()
nnoremap <buffer> æ za
inoremap <buffer> iff if  :<Left>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal fixendofline
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=pymode#folding#expr(v:lnum)
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=2
setlocal foldmarker={{{,}}}
set foldmethod=expr
setlocal foldmethod=expr
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
set foldtext=PythonFoldText()
setlocal foldtext=pymode#folding#text()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=pymode#indent#Indent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=RopeOmni
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(12)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
16
normal! zo
54
normal! zo
72
normal! zo
97
normal! zo
153
normal! zo
169
normal! zo
let s:l = 144 - ((18 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
144
normal! 027|
wincmd w
argglobal
edit recipe/admin.py
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <C-Space> =RopeCodeAssistInsertMode()
inoremap <buffer> <silent> <Nul> =RopeCodeAssistInsertMode()
inoremap <buffer> <silent> <S-Tab> =RopeLuckyAssistInsertMode()
noremap <buffer> <silent> m :emenu Rope . 	
noremap <buffer> <silent> f :RopeFindOccurrences
noremap <buffer> <silent> d :RopeShowDoc
noremap <buffer> <silent> g :RopeGotoDefinition
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
nnoremap <buffer> <silent> ,b :call pymode#breakpoint#Set(line('.'))
vnoremap <buffer> <silent> ,r :Pyrun
nnoremap <buffer> <silent> ,r :Pyrun
onoremap <buffer> C :call pymode#motion#select('^\s*class\s', 0)
map <buffer> E :w:!/usr/bin/env python % 
vnoremap <buffer> <silent> K :call pymode#doc#Show(@*)
nnoremap <buffer> <silent> K :call pymode#doc#Show(expand('<cword>'))
onoremap <buffer> M :call pymode#motion#select('^\s*def\s', 0)
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
vnoremap <buffer> [M :call pymode#motion#vmove('^\s*def\s', 'b')
vnoremap <buffer> [[ :call pymode#motion#vmove('^\(class\|def\)\s', 'b')
onoremap <buffer> [M :call pymode#motion#move('^\s*def\s', 'b')
onoremap <buffer> [C :call pymode#motion#move('^\(class\|def\)\s', 'b')
onoremap <buffer> [[ :call pymode#motion#move('^\(class\|def\)\s', 'b')
nnoremap <buffer> [M :call pymode#motion#move('^\s*def\s', 'b')
nnoremap <buffer> [C :call pymode#motion#move('^\(class\|def\)\s', 'b')
nnoremap <buffer> [[ :call pymode#motion#move('^\(class\|def\)\s', 'b')
nnoremap <buffer> \c I#
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
vnoremap <buffer> ]M :call pymode#motion#vmove('^\s*def\s', '')
vnoremap <buffer> ]] :call pymode#motion#vmove('^\(class\|def\)\s', '')
onoremap <buffer> ]M :call pymode#motion#move('^\s*def\s', '')
onoremap <buffer> ]C :call pymode#motion#move('^\(class\|def\)\s', '')
onoremap <buffer> ]] :call pymode#motion#move('^\(class\|def\)\s', '')
nnoremap <buffer> ]M :call pymode#motion#move('^\s*def\s', '')
nnoremap <buffer> ]C :call pymode#motion#move('^\(class\|def\)\s', '')
nnoremap <buffer> ]] :call pymode#motion#move('^\(class\|def\)\s', '')
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
vnoremap <buffer> aM :call pymode#motion#select('^\s*def\s', 0)
onoremap <buffer> aM :call pymode#motion#select('^\s*def\s', 0)
vnoremap <buffer> aC :call pymode#motion#select('^\s*class\s', 0)
onoremap <buffer> aC :call pymode#motion#select('^\s*class\s', 0)
map <buffer> gd /def 
vnoremap <buffer> iM :call pymode#motion#select('^\s*def\s', 1)
onoremap <buffer> iM :call pymode#motion#select('^\s*def\s', 1)
vnoremap <buffer> iC :call pymode#motion#select('^\s*class\s', 1)
onoremap <buffer> iC :call pymode#motion#select('^\s*class\s', 1)
nmap <buffer> m<BS> <Plug>SIG_PurgeMarkers
nmap <buffer> m  <Plug>SIG_PurgeMarks
nmap <buffer> m, <Plug>SIG_PlaceNextMark
nnoremap <buffer> <silent> m( :call signature#RemoveMarker("(")
nnoremap <buffer> <silent> m9 :call signature#ToggleMarker("(")
nnoremap <buffer> <silent> m* :call signature#RemoveMarker("*")
nnoremap <buffer> <silent> m8 :call signature#ToggleMarker("*")
nnoremap <buffer> <silent> m& :call signature#RemoveMarker("&")
nnoremap <buffer> <silent> m7 :call signature#ToggleMarker("&")
nnoremap <buffer> <silent> m^ :call signature#RemoveMarker("^")
nnoremap <buffer> <silent> m6 :call signature#ToggleMarker("^")
nnoremap <buffer> <silent> m% :call signature#RemoveMarker("%")
nnoremap <buffer> <silent> m5 :call signature#ToggleMarker("%")
nnoremap <buffer> <silent> m$ :call signature#RemoveMarker("$")
nnoremap <buffer> <silent> m4 :call signature#ToggleMarker("$")
nnoremap <buffer> <silent> m# :call signature#RemoveMarker("#")
nnoremap <buffer> <silent> m3 :call signature#ToggleMarker("#")
nnoremap <buffer> <silent> m@ :call signature#RemoveMarker("@")
nnoremap <buffer> <silent> m2 :call signature#ToggleMarker("@")
nnoremap <buffer> <silent> m! :call signature#RemoveMarker("!")
nnoremap <buffer> <silent> m1 :call signature#ToggleMarker("!")
nnoremap <buffer> <silent> m) :call signature#RemoveMarker(")")
nnoremap <buffer> <silent> m0 :call signature#ToggleMarker(")")
nnoremap <buffer> <silent> mZ :call signature#ToggleMark("Z")
nnoremap <buffer> <silent> mY :call signature#ToggleMark("Y")
nnoremap <buffer> <silent> mX :call signature#ToggleMark("X")
nnoremap <buffer> <silent> mW :call signature#ToggleMark("W")
nnoremap <buffer> <silent> mV :call signature#ToggleMark("V")
nnoremap <buffer> <silent> mU :call signature#ToggleMark("U")
nnoremap <buffer> <silent> mT :call signature#ToggleMark("T")
nnoremap <buffer> <silent> mS :call signature#ToggleMark("S")
nnoremap <buffer> <silent> mR :call signature#ToggleMark("R")
nnoremap <buffer> <silent> mQ :call signature#ToggleMark("Q")
nnoremap <buffer> <silent> mP :call signature#ToggleMark("P")
nnoremap <buffer> <silent> mO :call signature#ToggleMark("O")
nnoremap <buffer> <silent> mN :call signature#ToggleMark("N")
nnoremap <buffer> <silent> mM :call signature#ToggleMark("M")
nnoremap <buffer> <silent> mL :call signature#ToggleMark("L")
nnoremap <buffer> <silent> mK :call signature#ToggleMark("K")
nnoremap <buffer> <silent> mJ :call signature#ToggleMark("J")
nnoremap <buffer> <silent> mI :call signature#ToggleMark("I")
nnoremap <buffer> <silent> mH :call signature#ToggleMark("H")
nnoremap <buffer> <silent> mG :call signature#ToggleMark("G")
nnoremap <buffer> <silent> mF :call signature#ToggleMark("F")
nnoremap <buffer> <silent> mE :call signature#ToggleMark("E")
nnoremap <buffer> <silent> mD :call signature#ToggleMark("D")
nnoremap <buffer> <silent> mC :call signature#ToggleMark("C")
nnoremap <buffer> <silent> mB :call signature#ToggleMark("B")
nnoremap <buffer> <silent> mA :call signature#ToggleMark("A")
nnoremap <buffer> <silent> mz :call signature#ToggleMark("z")
nnoremap <buffer> <silent> my :call signature#ToggleMark("y")
nnoremap <buffer> <silent> mx :call signature#ToggleMark("x")
nnoremap <buffer> <silent> mw :call signature#ToggleMark("w")
nnoremap <buffer> <silent> mv :call signature#ToggleMark("v")
nnoremap <buffer> <silent> mu :call signature#ToggleMark("u")
nnoremap <buffer> <silent> mt :call signature#ToggleMark("t")
nnoremap <buffer> <silent> ms :call signature#ToggleMark("s")
nnoremap <buffer> <silent> mr :call signature#ToggleMark("r")
nnoremap <buffer> <silent> mq :call signature#ToggleMark("q")
nnoremap <buffer> <silent> mp :call signature#ToggleMark("p")
nnoremap <buffer> <silent> mo :call signature#ToggleMark("o")
nnoremap <buffer> <silent> mn :call signature#ToggleMark("n")
nnoremap <buffer> <silent> mm :call signature#ToggleMark("m")
nnoremap <buffer> <silent> ml :call signature#ToggleMark("l")
nnoremap <buffer> <silent> mk :call signature#ToggleMark("k")
nnoremap <buffer> <silent> mj :call signature#ToggleMark("j")
nnoremap <buffer> <silent> mi :call signature#ToggleMark("i")
nnoremap <buffer> <silent> mh :call signature#ToggleMark("h")
nnoremap <buffer> <silent> mg :call signature#ToggleMark("g")
nnoremap <buffer> <silent> mf :call signature#ToggleMark("f")
nnoremap <buffer> <silent> me :call signature#ToggleMark("e")
nnoremap <buffer> <silent> md :call signature#ToggleMark("d")
nnoremap <buffer> <silent> mc :call signature#ToggleMark("c")
nnoremap <buffer> <silent> mb :call signature#ToggleMark("b")
nnoremap <buffer> <silent> ma :call signature#ToggleMark("a")
nnoremap <buffer> Æ :call ToggleFold()
nnoremap <buffer> æ za
inoremap <buffer> iff if  :<Left>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal fixendofline
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=pymode#folding#expr(v:lnum)
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=1
setlocal foldmarker={{{,}}}
set foldmethod=expr
setlocal foldmethod=expr
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
set foldtext=PythonFoldText()
setlocal foldtext=pymode#folding#text()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=pymode#indent#Indent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=RopeOmni
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(13)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 59 - ((18 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
59
normal! 013|
wincmd w
exe '1resize ' . ((&lines * 28 + 30) / 60)
exe '2resize ' . ((&lines * 28 + 30) / 60)
tabedit recipe/static/recipe/css/style.css
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
nmap <buffer> m<BS> <Plug>SIG_PurgeMarkers
nmap <buffer> m  <Plug>SIG_PurgeMarks
nmap <buffer> m, <Plug>SIG_PlaceNextMark
nnoremap <buffer> <silent> m( :call signature#RemoveMarker("(")
nnoremap <buffer> <silent> m9 :call signature#ToggleMarker("(")
nnoremap <buffer> <silent> m* :call signature#RemoveMarker("*")
nnoremap <buffer> <silent> m8 :call signature#ToggleMarker("*")
nnoremap <buffer> <silent> m& :call signature#RemoveMarker("&")
nnoremap <buffer> <silent> m7 :call signature#ToggleMarker("&")
nnoremap <buffer> <silent> m^ :call signature#RemoveMarker("^")
nnoremap <buffer> <silent> m6 :call signature#ToggleMarker("^")
nnoremap <buffer> <silent> m% :call signature#RemoveMarker("%")
nnoremap <buffer> <silent> m5 :call signature#ToggleMarker("%")
nnoremap <buffer> <silent> m$ :call signature#RemoveMarker("$")
nnoremap <buffer> <silent> m4 :call signature#ToggleMarker("$")
nnoremap <buffer> <silent> m# :call signature#RemoveMarker("#")
nnoremap <buffer> <silent> m3 :call signature#ToggleMarker("#")
nnoremap <buffer> <silent> m@ :call signature#RemoveMarker("@")
nnoremap <buffer> <silent> m2 :call signature#ToggleMarker("@")
nnoremap <buffer> <silent> m! :call signature#RemoveMarker("!")
nnoremap <buffer> <silent> m1 :call signature#ToggleMarker("!")
nnoremap <buffer> <silent> m) :call signature#RemoveMarker(")")
nnoremap <buffer> <silent> m0 :call signature#ToggleMarker(")")
nnoremap <buffer> <silent> mZ :call signature#ToggleMark("Z")
nnoremap <buffer> <silent> mY :call signature#ToggleMark("Y")
nnoremap <buffer> <silent> mX :call signature#ToggleMark("X")
nnoremap <buffer> <silent> mW :call signature#ToggleMark("W")
nnoremap <buffer> <silent> mV :call signature#ToggleMark("V")
nnoremap <buffer> <silent> mU :call signature#ToggleMark("U")
nnoremap <buffer> <silent> mT :call signature#ToggleMark("T")
nnoremap <buffer> <silent> mS :call signature#ToggleMark("S")
nnoremap <buffer> <silent> mR :call signature#ToggleMark("R")
nnoremap <buffer> <silent> mQ :call signature#ToggleMark("Q")
nnoremap <buffer> <silent> mP :call signature#ToggleMark("P")
nnoremap <buffer> <silent> mO :call signature#ToggleMark("O")
nnoremap <buffer> <silent> mN :call signature#ToggleMark("N")
nnoremap <buffer> <silent> mM :call signature#ToggleMark("M")
nnoremap <buffer> <silent> mL :call signature#ToggleMark("L")
nnoremap <buffer> <silent> mK :call signature#ToggleMark("K")
nnoremap <buffer> <silent> mJ :call signature#ToggleMark("J")
nnoremap <buffer> <silent> mI :call signature#ToggleMark("I")
nnoremap <buffer> <silent> mH :call signature#ToggleMark("H")
nnoremap <buffer> <silent> mG :call signature#ToggleMark("G")
nnoremap <buffer> <silent> mF :call signature#ToggleMark("F")
nnoremap <buffer> <silent> mE :call signature#ToggleMark("E")
nnoremap <buffer> <silent> mD :call signature#ToggleMark("D")
nnoremap <buffer> <silent> mC :call signature#ToggleMark("C")
nnoremap <buffer> <silent> mB :call signature#ToggleMark("B")
nnoremap <buffer> <silent> mA :call signature#ToggleMark("A")
nnoremap <buffer> <silent> mz :call signature#ToggleMark("z")
nnoremap <buffer> <silent> my :call signature#ToggleMark("y")
nnoremap <buffer> <silent> mx :call signature#ToggleMark("x")
nnoremap <buffer> <silent> mw :call signature#ToggleMark("w")
nnoremap <buffer> <silent> mv :call signature#ToggleMark("v")
nnoremap <buffer> <silent> mu :call signature#ToggleMark("u")
nnoremap <buffer> <silent> mt :call signature#ToggleMark("t")
nnoremap <buffer> <silent> ms :call signature#ToggleMark("s")
nnoremap <buffer> <silent> mr :call signature#ToggleMark("r")
nnoremap <buffer> <silent> mq :call signature#ToggleMark("q")
nnoremap <buffer> <silent> mp :call signature#ToggleMark("p")
nnoremap <buffer> <silent> mo :call signature#ToggleMark("o")
nnoremap <buffer> <silent> mn :call signature#ToggleMark("n")
nnoremap <buffer> <silent> mm :call signature#ToggleMark("m")
nnoremap <buffer> <silent> ml :call signature#ToggleMark("l")
nnoremap <buffer> <silent> mk :call signature#ToggleMark("k")
nnoremap <buffer> <silent> mj :call signature#ToggleMark("j")
nnoremap <buffer> <silent> mi :call signature#ToggleMark("i")
nnoremap <buffer> <silent> mh :call signature#ToggleMark("h")
nnoremap <buffer> <silent> mg :call signature#ToggleMark("g")
nnoremap <buffer> <silent> mf :call signature#ToggleMark("f")
nnoremap <buffer> <silent> me :call signature#ToggleMark("e")
nnoremap <buffer> <silent> md :call signature#ToggleMark("d")
nnoremap <buffer> <silent> mc :call signature#ToggleMark("c")
nnoremap <buffer> <silent> mb :call signature#ToggleMark("b")
nnoremap <buffer> <silent> ma :call signature#ToggleMark("a")
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s1:/*,mb:*,ex:*/
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'css'
setlocal filetype=css
endif
setlocal fixendofline
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=PythonFoldExpr(v:lnum)
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=marker
setlocal foldmethod=marker
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
set foldtext=PythonFoldText()
setlocal foldtext=PythonFoldText()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*@import\\s\\+\\%(url(\\)\\=
setlocal includeexpr=
setlocal indentexpr=GetCSSIndent()
setlocal indentkeys=0{,0},!^F,o,O
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=csscomplete#CompleteCSS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(14)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'css'
setlocal syntax=css
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 34 - ((25 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
34
normal! 016|
tabedit recipe/templatetags/strip_language_from_url.py
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 137 + 137) / 274)
exe 'vert 2resize ' . ((&columns * 136 + 137) / 274)
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <C-Space> =RopeCodeAssistInsertMode()
inoremap <buffer> <silent> <Nul> =RopeCodeAssistInsertMode()
inoremap <buffer> <silent> <S-Tab> =RopeLuckyAssistInsertMode()
noremap <buffer> <silent> m :emenu Rope . 	
noremap <buffer> <silent> f :RopeFindOccurrences
noremap <buffer> <silent> d :RopeShowDoc
noremap <buffer> <silent> g :RopeGotoDefinition
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
nnoremap <buffer> <silent> ,b :call pymode#breakpoint#Set(line('.'))
vnoremap <buffer> <silent> ,r :Pyrun
nnoremap <buffer> <silent> ,r :Pyrun
onoremap <buffer> C :call pymode#motion#select('^\s*class\s', 0)
map <buffer> E :w:!/usr/bin/env python % 
vnoremap <buffer> <silent> K :call pymode#doc#Show(@*)
nnoremap <buffer> <silent> K :call pymode#doc#Show(expand('<cword>'))
onoremap <buffer> M :call pymode#motion#select('^\s*def\s', 0)
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
vnoremap <buffer> [M :call pymode#motion#vmove('^\s*def\s', 'b')
vnoremap <buffer> [[ :call pymode#motion#vmove('^\(class\|def\)\s', 'b')
onoremap <buffer> [M :call pymode#motion#move('^\s*def\s', 'b')
onoremap <buffer> [C :call pymode#motion#move('^\(class\|def\)\s', 'b')
onoremap <buffer> [[ :call pymode#motion#move('^\(class\|def\)\s', 'b')
nnoremap <buffer> [M :call pymode#motion#move('^\s*def\s', 'b')
nnoremap <buffer> [C :call pymode#motion#move('^\(class\|def\)\s', 'b')
nnoremap <buffer> [[ :call pymode#motion#move('^\(class\|def\)\s', 'b')
nnoremap <buffer> \c I#
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
vnoremap <buffer> ]M :call pymode#motion#vmove('^\s*def\s', '')
vnoremap <buffer> ]] :call pymode#motion#vmove('^\(class\|def\)\s', '')
onoremap <buffer> ]M :call pymode#motion#move('^\s*def\s', '')
onoremap <buffer> ]C :call pymode#motion#move('^\(class\|def\)\s', '')
onoremap <buffer> ]] :call pymode#motion#move('^\(class\|def\)\s', '')
nnoremap <buffer> ]M :call pymode#motion#move('^\s*def\s', '')
nnoremap <buffer> ]C :call pymode#motion#move('^\(class\|def\)\s', '')
nnoremap <buffer> ]] :call pymode#motion#move('^\(class\|def\)\s', '')
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
vnoremap <buffer> aM :call pymode#motion#select('^\s*def\s', 0)
onoremap <buffer> aM :call pymode#motion#select('^\s*def\s', 0)
vnoremap <buffer> aC :call pymode#motion#select('^\s*class\s', 0)
onoremap <buffer> aC :call pymode#motion#select('^\s*class\s', 0)
map <buffer> gd /def 
vnoremap <buffer> iM :call pymode#motion#select('^\s*def\s', 1)
onoremap <buffer> iM :call pymode#motion#select('^\s*def\s', 1)
vnoremap <buffer> iC :call pymode#motion#select('^\s*class\s', 1)
onoremap <buffer> iC :call pymode#motion#select('^\s*class\s', 1)
nmap <buffer> m<BS> <Plug>SIG_PurgeMarkers
nmap <buffer> m  <Plug>SIG_PurgeMarks
nmap <buffer> m, <Plug>SIG_PlaceNextMark
nnoremap <buffer> <silent> m( :call signature#RemoveMarker("(")
nnoremap <buffer> <silent> m9 :call signature#ToggleMarker("(")
nnoremap <buffer> <silent> m* :call signature#RemoveMarker("*")
nnoremap <buffer> <silent> m8 :call signature#ToggleMarker("*")
nnoremap <buffer> <silent> m& :call signature#RemoveMarker("&")
nnoremap <buffer> <silent> m7 :call signature#ToggleMarker("&")
nnoremap <buffer> <silent> m^ :call signature#RemoveMarker("^")
nnoremap <buffer> <silent> m6 :call signature#ToggleMarker("^")
nnoremap <buffer> <silent> m% :call signature#RemoveMarker("%")
nnoremap <buffer> <silent> m5 :call signature#ToggleMarker("%")
nnoremap <buffer> <silent> m$ :call signature#RemoveMarker("$")
nnoremap <buffer> <silent> m4 :call signature#ToggleMarker("$")
nnoremap <buffer> <silent> m# :call signature#RemoveMarker("#")
nnoremap <buffer> <silent> m3 :call signature#ToggleMarker("#")
nnoremap <buffer> <silent> m@ :call signature#RemoveMarker("@")
nnoremap <buffer> <silent> m2 :call signature#ToggleMarker("@")
nnoremap <buffer> <silent> m! :call signature#RemoveMarker("!")
nnoremap <buffer> <silent> m1 :call signature#ToggleMarker("!")
nnoremap <buffer> <silent> m) :call signature#RemoveMarker(")")
nnoremap <buffer> <silent> m0 :call signature#ToggleMarker(")")
nnoremap <buffer> <silent> mZ :call signature#ToggleMark("Z")
nnoremap <buffer> <silent> mY :call signature#ToggleMark("Y")
nnoremap <buffer> <silent> mX :call signature#ToggleMark("X")
nnoremap <buffer> <silent> mW :call signature#ToggleMark("W")
nnoremap <buffer> <silent> mV :call signature#ToggleMark("V")
nnoremap <buffer> <silent> mU :call signature#ToggleMark("U")
nnoremap <buffer> <silent> mT :call signature#ToggleMark("T")
nnoremap <buffer> <silent> mS :call signature#ToggleMark("S")
nnoremap <buffer> <silent> mR :call signature#ToggleMark("R")
nnoremap <buffer> <silent> mQ :call signature#ToggleMark("Q")
nnoremap <buffer> <silent> mP :call signature#ToggleMark("P")
nnoremap <buffer> <silent> mO :call signature#ToggleMark("O")
nnoremap <buffer> <silent> mN :call signature#ToggleMark("N")
nnoremap <buffer> <silent> mM :call signature#ToggleMark("M")
nnoremap <buffer> <silent> mL :call signature#ToggleMark("L")
nnoremap <buffer> <silent> mK :call signature#ToggleMark("K")
nnoremap <buffer> <silent> mJ :call signature#ToggleMark("J")
nnoremap <buffer> <silent> mI :call signature#ToggleMark("I")
nnoremap <buffer> <silent> mH :call signature#ToggleMark("H")
nnoremap <buffer> <silent> mG :call signature#ToggleMark("G")
nnoremap <buffer> <silent> mF :call signature#ToggleMark("F")
nnoremap <buffer> <silent> mE :call signature#ToggleMark("E")
nnoremap <buffer> <silent> mD :call signature#ToggleMark("D")
nnoremap <buffer> <silent> mC :call signature#ToggleMark("C")
nnoremap <buffer> <silent> mB :call signature#ToggleMark("B")
nnoremap <buffer> <silent> mA :call signature#ToggleMark("A")
nnoremap <buffer> <silent> mz :call signature#ToggleMark("z")
nnoremap <buffer> <silent> my :call signature#ToggleMark("y")
nnoremap <buffer> <silent> mx :call signature#ToggleMark("x")
nnoremap <buffer> <silent> mw :call signature#ToggleMark("w")
nnoremap <buffer> <silent> mv :call signature#ToggleMark("v")
nnoremap <buffer> <silent> mu :call signature#ToggleMark("u")
nnoremap <buffer> <silent> mt :call signature#ToggleMark("t")
nnoremap <buffer> <silent> ms :call signature#ToggleMark("s")
nnoremap <buffer> <silent> mr :call signature#ToggleMark("r")
nnoremap <buffer> <silent> mq :call signature#ToggleMark("q")
nnoremap <buffer> <silent> mp :call signature#ToggleMark("p")
nnoremap <buffer> <silent> mo :call signature#ToggleMark("o")
nnoremap <buffer> <silent> mn :call signature#ToggleMark("n")
nnoremap <buffer> <silent> mm :call signature#ToggleMark("m")
nnoremap <buffer> <silent> ml :call signature#ToggleMark("l")
nnoremap <buffer> <silent> mk :call signature#ToggleMark("k")
nnoremap <buffer> <silent> mj :call signature#ToggleMark("j")
nnoremap <buffer> <silent> mi :call signature#ToggleMark("i")
nnoremap <buffer> <silent> mh :call signature#ToggleMark("h")
nnoremap <buffer> <silent> mg :call signature#ToggleMark("g")
nnoremap <buffer> <silent> mf :call signature#ToggleMark("f")
nnoremap <buffer> <silent> me :call signature#ToggleMark("e")
nnoremap <buffer> <silent> md :call signature#ToggleMark("d")
nnoremap <buffer> <silent> mc :call signature#ToggleMark("c")
nnoremap <buffer> <silent> mb :call signature#ToggleMark("b")
nnoremap <buffer> <silent> ma :call signature#ToggleMark("a")
nnoremap <buffer> Æ :call ToggleFold()
nnoremap <buffer> æ za
inoremap <buffer> iff if  :<Left>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal fixendofline
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=pymode#folding#expr(v:lnum)
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=2
setlocal foldmarker={{{,}}}
set foldmethod=expr
setlocal foldmethod=expr
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
set foldtext=PythonFoldText()
setlocal foldtext=pymode#folding#text()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetPythonIndent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=RopeOmni
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(67)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 77 - ((25 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
77
normal! 0
wincmd w
argglobal
edit recipe/views.py
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <C-Space> =RopeCodeAssistInsertMode()
inoremap <buffer> <silent> <Nul> =RopeCodeAssistInsertMode()
inoremap <buffer> <silent> <S-Tab> =RopeLuckyAssistInsertMode()
noremap <buffer> <silent> m :emenu Rope . 	
noremap <buffer> <silent> f :RopeFindOccurrences
noremap <buffer> <silent> d :RopeShowDoc
noremap <buffer> <silent> g :RopeGotoDefinition
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
nnoremap <buffer> <silent> ,b :call pymode#breakpoint#Set(line('.'))
vnoremap <buffer> <silent> ,r :Pyrun
nnoremap <buffer> <silent> ,r :Pyrun
onoremap <buffer> C :call pymode#motion#select('^\s*class\s', 0)
map <buffer> E :w:!/usr/bin/env python % 
vnoremap <buffer> <silent> K :call pymode#doc#Show(@*)
nnoremap <buffer> <silent> K :call pymode#doc#Show(expand('<cword>'))
onoremap <buffer> M :call pymode#motion#select('^\s*def\s', 0)
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
vnoremap <buffer> [M :call pymode#motion#vmove('^\s*def\s', 'b')
vnoremap <buffer> [[ :call pymode#motion#vmove('^\(class\|def\)\s', 'b')
onoremap <buffer> [M :call pymode#motion#move('^\s*def\s', 'b')
onoremap <buffer> [C :call pymode#motion#move('^\(class\|def\)\s', 'b')
onoremap <buffer> [[ :call pymode#motion#move('^\(class\|def\)\s', 'b')
nnoremap <buffer> [M :call pymode#motion#move('^\s*def\s', 'b')
nnoremap <buffer> [C :call pymode#motion#move('^\(class\|def\)\s', 'b')
nnoremap <buffer> [[ :call pymode#motion#move('^\(class\|def\)\s', 'b')
nnoremap <buffer> \c I#
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
vnoremap <buffer> ]M :call pymode#motion#vmove('^\s*def\s', '')
vnoremap <buffer> ]] :call pymode#motion#vmove('^\(class\|def\)\s', '')
onoremap <buffer> ]M :call pymode#motion#move('^\s*def\s', '')
onoremap <buffer> ]C :call pymode#motion#move('^\(class\|def\)\s', '')
onoremap <buffer> ]] :call pymode#motion#move('^\(class\|def\)\s', '')
nnoremap <buffer> ]M :call pymode#motion#move('^\s*def\s', '')
nnoremap <buffer> ]C :call pymode#motion#move('^\(class\|def\)\s', '')
nnoremap <buffer> ]] :call pymode#motion#move('^\(class\|def\)\s', '')
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
vnoremap <buffer> aM :call pymode#motion#select('^\s*def\s', 0)
onoremap <buffer> aM :call pymode#motion#select('^\s*def\s', 0)
vnoremap <buffer> aC :call pymode#motion#select('^\s*class\s', 0)
onoremap <buffer> aC :call pymode#motion#select('^\s*class\s', 0)
map <buffer> gd /def 
vnoremap <buffer> iM :call pymode#motion#select('^\s*def\s', 1)
onoremap <buffer> iM :call pymode#motion#select('^\s*def\s', 1)
vnoremap <buffer> iC :call pymode#motion#select('^\s*class\s', 1)
onoremap <buffer> iC :call pymode#motion#select('^\s*class\s', 1)
nmap <buffer> m<BS> <Plug>SIG_PurgeMarkers
nmap <buffer> m  <Plug>SIG_PurgeMarks
nmap <buffer> m, <Plug>SIG_PlaceNextMark
nnoremap <buffer> <silent> m( :call signature#RemoveMarker("(")
nnoremap <buffer> <silent> m9 :call signature#ToggleMarker("(")
nnoremap <buffer> <silent> m* :call signature#RemoveMarker("*")
nnoremap <buffer> <silent> m8 :call signature#ToggleMarker("*")
nnoremap <buffer> <silent> m& :call signature#RemoveMarker("&")
nnoremap <buffer> <silent> m7 :call signature#ToggleMarker("&")
nnoremap <buffer> <silent> m^ :call signature#RemoveMarker("^")
nnoremap <buffer> <silent> m6 :call signature#ToggleMarker("^")
nnoremap <buffer> <silent> m% :call signature#RemoveMarker("%")
nnoremap <buffer> <silent> m5 :call signature#ToggleMarker("%")
nnoremap <buffer> <silent> m$ :call signature#RemoveMarker("$")
nnoremap <buffer> <silent> m4 :call signature#ToggleMarker("$")
nnoremap <buffer> <silent> m# :call signature#RemoveMarker("#")
nnoremap <buffer> <silent> m3 :call signature#ToggleMarker("#")
nnoremap <buffer> <silent> m@ :call signature#RemoveMarker("@")
nnoremap <buffer> <silent> m2 :call signature#ToggleMarker("@")
nnoremap <buffer> <silent> m! :call signature#RemoveMarker("!")
nnoremap <buffer> <silent> m1 :call signature#ToggleMarker("!")
nnoremap <buffer> <silent> m) :call signature#RemoveMarker(")")
nnoremap <buffer> <silent> m0 :call signature#ToggleMarker(")")
nnoremap <buffer> <silent> mZ :call signature#ToggleMark("Z")
nnoremap <buffer> <silent> mY :call signature#ToggleMark("Y")
nnoremap <buffer> <silent> mX :call signature#ToggleMark("X")
nnoremap <buffer> <silent> mW :call signature#ToggleMark("W")
nnoremap <buffer> <silent> mV :call signature#ToggleMark("V")
nnoremap <buffer> <silent> mU :call signature#ToggleMark("U")
nnoremap <buffer> <silent> mT :call signature#ToggleMark("T")
nnoremap <buffer> <silent> mS :call signature#ToggleMark("S")
nnoremap <buffer> <silent> mR :call signature#ToggleMark("R")
nnoremap <buffer> <silent> mQ :call signature#ToggleMark("Q")
nnoremap <buffer> <silent> mP :call signature#ToggleMark("P")
nnoremap <buffer> <silent> mO :call signature#ToggleMark("O")
nnoremap <buffer> <silent> mN :call signature#ToggleMark("N")
nnoremap <buffer> <silent> mM :call signature#ToggleMark("M")
nnoremap <buffer> <silent> mL :call signature#ToggleMark("L")
nnoremap <buffer> <silent> mK :call signature#ToggleMark("K")
nnoremap <buffer> <silent> mJ :call signature#ToggleMark("J")
nnoremap <buffer> <silent> mI :call signature#ToggleMark("I")
nnoremap <buffer> <silent> mH :call signature#ToggleMark("H")
nnoremap <buffer> <silent> mG :call signature#ToggleMark("G")
nnoremap <buffer> <silent> mF :call signature#ToggleMark("F")
nnoremap <buffer> <silent> mE :call signature#ToggleMark("E")
nnoremap <buffer> <silent> mD :call signature#ToggleMark("D")
nnoremap <buffer> <silent> mC :call signature#ToggleMark("C")
nnoremap <buffer> <silent> mB :call signature#ToggleMark("B")
nnoremap <buffer> <silent> mA :call signature#ToggleMark("A")
nnoremap <buffer> <silent> mz :call signature#ToggleMark("z")
nnoremap <buffer> <silent> my :call signature#ToggleMark("y")
nnoremap <buffer> <silent> mx :call signature#ToggleMark("x")
nnoremap <buffer> <silent> mw :call signature#ToggleMark("w")
nnoremap <buffer> <silent> mv :call signature#ToggleMark("v")
nnoremap <buffer> <silent> mu :call signature#ToggleMark("u")
nnoremap <buffer> <silent> mt :call signature#ToggleMark("t")
nnoremap <buffer> <silent> ms :call signature#ToggleMark("s")
nnoremap <buffer> <silent> mr :call signature#ToggleMark("r")
nnoremap <buffer> <silent> mq :call signature#ToggleMark("q")
nnoremap <buffer> <silent> mp :call signature#ToggleMark("p")
nnoremap <buffer> <silent> mo :call signature#ToggleMark("o")
nnoremap <buffer> <silent> mn :call signature#ToggleMark("n")
nnoremap <buffer> <silent> mm :call signature#ToggleMark("m")
nnoremap <buffer> <silent> ml :call signature#ToggleMark("l")
nnoremap <buffer> <silent> mk :call signature#ToggleMark("k")
nnoremap <buffer> <silent> mj :call signature#ToggleMark("j")
nnoremap <buffer> <silent> mi :call signature#ToggleMark("i")
nnoremap <buffer> <silent> mh :call signature#ToggleMark("h")
nnoremap <buffer> <silent> mg :call signature#ToggleMark("g")
nnoremap <buffer> <silent> mf :call signature#ToggleMark("f")
nnoremap <buffer> <silent> me :call signature#ToggleMark("e")
nnoremap <buffer> <silent> md :call signature#ToggleMark("d")
nnoremap <buffer> <silent> mc :call signature#ToggleMark("c")
nnoremap <buffer> <silent> mb :call signature#ToggleMark("b")
nnoremap <buffer> <silent> ma :call signature#ToggleMark("a")
nnoremap <buffer> Æ :call ToggleFold()
nnoremap <buffer> æ za
inoremap <buffer> iff if  :<Left>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal fixendofline
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=pymode#folding#expr(v:lnum)
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=1
setlocal foldmarker={{{,}}}
set foldmethod=expr
setlocal foldmethod=expr
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
set foldtext=PythonFoldText()
setlocal foldtext=pymode#folding#text()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=pymode#indent#Indent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=RopeOmni
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(15)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
87
normal! zo
94
normal! zo
99
normal! zo
let s:l = 56 - ((37 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
56
normal! 023|
wincmd w
exe 'vert 1resize ' . ((&columns * 137 + 137) / 274)
exe 'vert 2resize ' . ((&columns * 136 + 137) / 274)
tabnext 8
set stal=1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
