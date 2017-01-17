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
 "Bundle 'scrooloose/syntastic'
  Bundle 'godlygeek/tabular'
  Bundle 'vim-scripts/taglist.vim'
  Bundle 'joe-skb7/cscope-maps'
  Bundle 'szw/vim-tags'
  if executable('ack')
    Bundle 'mileszs/ack.vim'
  endif
  if v:version > 700
    if executable('ctags')
      Bundle 'majutsushi/tagbar'
      let g:tagbar_sort=0
    endif
 endif
endif

if count(g:vundles, 'completion')
    Bundle 'Shougo/neocomplcache'
    Bundle 'Shougo/neosnippet'
    Bundle 'Shougo/neosnippet-snippets'
    Bundle 'scrooloose/snipmate-snippets'
    Bundle 'honza/vim-snippets'
    Bundle 'Indent-Guides'
endif

" PHP
if count(g:vundles, 'php')
  Bundle 'spf13/PIV'
endif

" Python
if count(g:vundles, 'python')
  Bundle 'hynek/vim-python-pep8-indent'
  Bundle 'nvie/vim-flake8'
  let g:syntastic_python_flake8_args='--ignore=E501'
endif

if count(g:vundles, 'rust')
  if executable('rustc')
    Bundle 'rust-lang/rust.vim'
    au BufNewFile,BufRead *.rs set filetype=rust
  endif
endif

if count(g:vundles, 'c_cpp')
  Bundle 'vim-scripts/c.vim'
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
endif

" Misc
if count(g:vundles, 'misc')
  Bundle 'tpope/vim-markdown'
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
