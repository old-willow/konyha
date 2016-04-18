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
snoremap <Left> bi
snoremap <Right> a
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
xnoremap <Right> <Nop>
xnoremap <Left> <Nop>
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
set laststatus=2
set lazyredraw
set listchars=tab:→\ ,eol:⏎,extends:>,precedes:<
set matchtime=3
set modelines=1
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
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Dropbox/web-dev/django_projects/konyha18
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 recipe/templates/recipe/recipe-detail.html
badd +1 recipe/models.py
badd +1 konyha/urls.py
badd +1 konyha/settings.py
badd +1 templates/base.html
badd +1 recipe/views.py
badd +1 recipe/admin.py
badd +1 recipe/static/recipe/style.css
badd +0 recipe/static/recipe/css/style.css
argglobal
silent! argdel *
argadd recipe/templates/recipe/recipe-detail.html
set stal=2
edit konyha/urls.py
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 32 + 34) / 68)
exe '2resize ' . ((&lines * 32 + 34) / 68)
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
setlocal statusline=%!pyeval('powerline.statusline(3)')
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
let s:l = 26 - ((8 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
26
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
setlocal statusline=%!pyeval('powerline.statusline(4)')
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
let s:l = 160 - ((18 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
160
normal! 0
wincmd w
exe '1resize ' . ((&lines * 32 + 34) / 68)
exe '2resize ' . ((&lines * 32 + 34) / 68)
tabedit recipe/templates/recipe/recipe-detail.html
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 32 + 34) / 68)
exe '2resize ' . ((&lines * 32 + 34) / 68)
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
let s:l = 27 - ((15 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
27
normal! 018|
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
setlocal statusline=%!pyeval('powerline.statusline(2)')
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
let s:l = 11 - ((10 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 076|
wincmd w
exe '1resize ' . ((&lines * 32 + 34) / 68)
exe '2resize ' . ((&lines * 32 + 34) / 68)
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
setlocal statusline=%!pyeval('powerline.statusline(9)')
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
let s:l = 1 - ((0 * winheight(0) + 32) / 65)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit recipe/models.py
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 32 + 34) / 68)
exe '2resize ' . ((&lines * 32 + 34) / 68)
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
69
normal! zo
94
normal! zo
136
normal! zo
let s:l = 85 - ((21 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
85
normal! 024|
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
setlocal statusline=%!pyeval('powerline.statusline(7)')
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
let s:l = 75 - ((30 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
75
normal! 041|
wincmd w
exe '1resize ' . ((&lines * 32 + 34) / 68)
exe '2resize ' . ((&lines * 32 + 34) / 68)
tabedit recipe/views.py
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
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 18 - ((17 * winheight(0) + 32) / 65)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 0
tabnext 3
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
