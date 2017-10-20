"
" dotphiles : https://github.com/dotphiles/dotphiles
"
" Essential vim plugins!
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

" Vundle itself
Bundle 'gmarik/vundle'

" General
"
if count(g:vundles, 'general')
  Bundle 'scrooloose/nerdtree'
  Bundle 'YankRing.vim'
  let g:yankring_history_dir = $HOME.'/.vim/'
  let g:yankring_history_file = '.yankring_history'
  Bundle 'kien/ctrlp.vim'
  Bundle 'jistr/vim-nerdtree-tabs'
  Bundle 'sudo.vim'
  Bundle 'bronson/vim-trailing-whitespace'
  Bundle 'mbbill/undotree'
  Bundle 'mhinz/vim-signify'
  Bundle 'vim-signature'
  Bundle 'Raimondi/delimitMate'
  Bundle 'vim-scripts/marvim'
  Bundle 'ciaranm/detectindent'
  Bundle 'Yggdroot/indentLine'
  Bundle 'embear/vim-localvimrc'
  Bundle 'xolox/vim-misc'
  Bundle 'mattn/calendar-vim'
  Bundle 'tpope/vim-abolish'
  Bundle 'tpope/vim-repeat'
  Bundle 'ervandew/supertab'

  " Detect indent mode automatically (tab vs spaces)
  autocmd BufReadPost * :DetectIndent
endif

if count(g:vundles, 'git')
  if executable('git')
    Bundle 'tpope/vim-fugitive'
  endif
  if executable('stg')
   Bundle 'chazy/vim-stgit'
  endif
endif

if count(g:vundles, 'hg')
 if executable('hg')
    Bundle 'k-takata/hg-vim'
  endif
endif

" General Programming
if count(g:vundles, 'programming')
  Bundle 'scrooloose/syntastic'
  Bundle 'godlygeek/tabular'
  Bundle 'szw/vim-tags'
  Bundle 'Chiel92/vim-autoformat'
  Bundle 'sheerun/vim-polyglot'
  if executable('cscope')
   Bundle 'joe-skb7/cscope-maps'
   Bundle 'hari-rangarajan/CCTree'
  endif
  if executable('ack')
    Bundle 'mileszs/ack.vim'
  endif
  if v:version > 700
    if executable('ctags')
      Bundle 'majutsushi/tagbar'
      "Bundle 'xolox/vim-easytags'
      let g:tagbar_sort=0
    endif
 endif
endif

if count(g:vundles, 'writing')
  Bundle 'junegunn/goyo.vim'
  Bundle 'reedes/vim-pencil'
  Bundle 'vimwiki/vimwiki.git'
  Bundle 'plasticboy/vim-markdown'
  if executable('geeknote')
   Bundle 'neilagabriel/vim-geeknote'
  endif
endif

if count(g:vundles, 'completion')
  Bundle 'valloric/YouCompleteMe'
  Bundle 'SirVer/ultisnips'
  Bundle 'honza/vim-snippets'
endif

" PHP
if count(g:vundles, 'php')
  Bundle 'spf13/PIV'
endif

" Python
if count(g:vundles, 'python')
 "Bundle 'hynek/vim-python-pep8-indent'
  "Bundle 'python-mode/python-mode'
  "Bundle 'vim-scripts/indentpython.vim'
  "Bundle 'nvie/vim-flake8'
  let g:syntastic_python_flake8_args='--ignore=E501'
endif

if count(g:vundles, 'rust')
  if executable('rustc')
    Bundle 'rust-lang/rust.vim'
    au BufNewFile,BufRead *.rs set filetype=rust
  endif
endif

if count(g:vundles, 'c_cpp')
  Bundle 'WolfgangMehner/c-support'
endif

" Javascript
if count(g:vundles, 'javascript')
  Bundle 'leshill/vim-json'
  Bundle 'groenewege/vim-less'
  Bundle 'taxilian/vim-web-indent'
endif

" HTML
if count(g:vundles, 'html')
  Bundle 'HTML-AutoCloseTag'
  Bundle 'ChrisYip/Better-CSS-Syntax-for-Vim'
  Bundle 'juvenn/mustache.vim'
endif

" Ruby
if count(g:vundles, 'ruby')
  Bundle 'tpope/vim-rails'
endif

"Lisp family
if count(g:vundles, 'lisp')
 Bundle 'sjl/tslime.vim'
 Bundle 'wlangstroth/vim-racket'
 Bundle 'kien/rainbow_parentheses.vim'
endif

"themes
if count(g:vundles, 'themes')
 Bundle 'daylerees/colour-schemes', { 'rtp': 'vim/' }
 Bundle 'trevordmiller/nova-vim'
 Bundle 'daviesjamie/vim-base16-lightline'
 Bundle 'flazz/vim-colorschemes'
 Bundle 'chriskempson/base16-vim'
 Bundle 'morhetz/gruvbox'
 Bundle 'vim-airline/vim-airline'
 Bundle 'vim-airline/vim-airline-themes'
endif

" Misc
if count(g:vundles, 'misc')
  Bundle 'spf13/vim-preview'
  Bundle 'tpope/vim-cucumber'
  Bundle 'markcornick/vim-vagrant'
  Bundle 'Puppet-Syntax-Highlighting'
  Bundle 'ekalinin/Dockerfile.vim'
  if v:version > 701
    Bundle 'zhaocai/GoldenView.Vim'
  endif
  let g:goldenview__enable_default_mapping=0
endif
