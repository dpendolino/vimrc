colorscheme molokai
if &diff
        colorscheme desert
endif
let g:rehash256 = 1

"nerdtree
let g:NERDTreeDirArrows=0
nnoremap <Leader>n :NERDTreeToggle<CR>

"tabs
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

"gundo
"nnoremap <F5> :GundoToggle<CR>
"nnoremap \ :GundoToggle<CR>

"tagbar
" let g:tagbar_ctags_bin='/home/d1p/bin/ctags'
let g:tagbar_iconchars = ['+', '-']
nnoremap <F8> :TagbarToggle<CR>

"semantic-highlight.vi
nnoremap <Leader>s :SemanticHighlightToggle<cr>
let g:semanticTermColors = [28,1,2,3,4,5,6,7,25,9,10,34,12,13,14,15,16,125,124,19]
"let g:semanticTermColors = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]

"add surround mappings for django
let b:surround_{char2nr("v")} = "{{ \r }}"
let b:surround_{char2nr("{")} = "{{ \r }}"
let b:surround_{char2nr("%")} = "{% \r %}"
let b:surround_{char2nr("b")} = "{% block \1block name: \1 %}\r{% endblock \1\1 %}"
let b:surround_{char2nr("i")} = "{% if \1condition: \1 %}\r{% endif %}"
let b:surround_{char2nr("w")} = "{% with \1with: \1 %}\r{% endwith %}"
let b:surround_{char2nr("f")} = "{% for \1for loop: \1 %}\r{% endfor %}"
let b:surround_{char2nr("c")} = "{% comment %}\r{% endcomment %}"

"synchronize vim with NERDTRee
autocmd BufEnter * lcd %:p:h

let g:SuperTabDefaultCompletionType = 'context'
autocmd FileType *
\ if &omnifunc != '' |
\   call SuperTabChain(&omnifunc, "<c-p>") |
\ endif

"rainbow-parentheses-vim
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers = ['python2']
let g:syntastic_python_python_exec = '/usr/bin/python2'

"detectindent
:autocmd BufReadPost * :DetectIndent 

"To prefer 'expandtab' to 'noexpandtab' when no detection is possible: 
:let g:detectindent_preferred_expandtab = 1 

"To specify a preferred indent level when no detection is possible: 
:let g:detectindent_preferred_indent = 4 
