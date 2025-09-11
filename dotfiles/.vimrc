"======================== Vundle Stuff
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

"------------- Vundles & Bundles - specified by me "

" Honor EditorConfig settings if repo needs consistent coding style
Bundle 'editorconfig/editorconfig-vim'

" Fuzzy search
Bundle 'junegunn/fzf'
Bundle 'junegunn/fzf.vim'
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0) " Don't search file names in Rg

" Status bar at bottom
Bundle 'itchyny/lightline.vim'

" Multiple cursor support
Bundle 'mg979/vim-visual-multi'

" Git gutter before line numbers
Bundle 'airblade/vim-gitgutter'

" Directory tree viewer
Bundle 'preservim/nerdtree'
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.swp$']

" Code minimap
Bundle 'severin-lemaignan/vim-minimap'

" Faster commenting out / in
Bundle 'preservim/nerdcommenter'
let g:NERDSpaceDelims = 1 " Add a space after comment symbols
let g:NERDDefaultAlign = 'left' " Align comment symbols vertically

" Highlighting for everything
Bundle 'sheerun/vim-polyglot'

" Vue syntax highlighting
Bundle 'posva/vim-vue'
" let g:vue_pre_processors = ['scss', 'typescript']
" JSX syntax highlighting
Bundle 'MaxMEllon/vim-jsx-pretty'
" GraphQL syntax highlighting
Bundle 'jparise/vim-graphql'
" Typescript syntax highlighting
Bundle 'leafgarland/typescript-vim'

" JS syntax highlighting
Bundle 'pangloss/vim-javascript'
" SCSS syntax highlighting
Bundle 'cakebaker/scss-syntax.vim'
" Svelte syntax highlighting
Bundle 'evanleck/vim-svelte'

" Undo tree browser
Bundle 'mbbill/undotree'

" add jbuilder syntax highlighting
au BufNewFile,BufRead *.json.jbuilder set ft=ruby

" Indent markers
Bundle 'Yggdroot/indentLine'
" Jump to line with same indent
Bundle 'jeetsukumaran/vim-indentwise'
" Bookmarks!
Bundle 'MattesGroeger/vim-bookmarks'

" "=== Linter in editor
" Bundle 'vim-syntastic/syntastic'
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_enable_signs = 1
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0

" " Vue support
" let g:syntastic_vue_checkers = ['eslint']
" let g:syntastic_vue_eslint_exe = 'kubectl exec -it $(kubectl get pod -l "app=constructionyard" -o jsonpath="{.items[0].metadata.name}") -c constructionyard -- yarn run eslint --cache -f compact'
" let g:syntastic_vue_eslint_generic = 1
" "===

"=== Themes
Bundle 'Mofiqul/dracula.nvim'
"===
" Refresh colorscheme when it misbehaves
map <Leader>C :colorscheme dracula<CR> 
"-------------"

" All of your Bundles must be added before the following line
filetype plugin indent on    " required
"========================"


"======================== My Vim Options
" Put vim temp files away from current project
set backupdir^=~/.config/nvim/_backup//    " where to put backup files
set directory^=~/.config/nvim/_temp//      " where to put swap files
set undodir^=~/.config/nvim/_undodir//     " where to put undo files

" Syntax highlighting, themes, fonts
syntax enable
hi Normal ctermbg=none
colorscheme dracula
set guifont=Input\ Regular

" Transparent background override
"highlight Normal guibg=none

" Quality-of-life
set number relativenumber " Set line numbers in hybrid mode (absolute on current line, relative on others)
set backspace=indent,eol,start " Backspace deletes outside of insert mode bounds
" set hidden " Allow for switching buffers without saving

" Proper tabs
set expandtab " Convert tabs to spaces
set shiftwidth=2 " Set auto-indent spaces number
set softtabstop=2 " How far the cursor moves while typing Tab (NOT how wide a Tab is defined)

" New splits open to the right and bottom
set splitbelow
set splitright

"Re-map pane navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Cool shortcuts
map <Leader>n :setl rnu!<CR>
nnoremap <Leader>b :ls<CR>:b
"Close quickfix buffer after a selection
:autocmd FileType qf nnoremap <buffer> <CR> <CR>:cclose<CR>

" Bundle shortcuts
map <Leader>t :Files<CR>
map <Leader>s :BLines<CR>
map <Leader>S :Lines<CR>
map <Leader>r :Ag<CR>
map <Leader>f :NERDTree<CR>
map <Leader>F :NERDTreeFind<CR>
nnoremap <Leader>u :UndotreeToggle<CR>

" Plumbing
set termguicolors " Proper terminal colours
set laststatus=2 " required for lightline
set updatetime=100 " reduce update time for faster real-time changes (e.g. gitgutter to display diffs faster)
set cole=0 " Don't conceal markdown (or any?) text

" Use NERDCommenter with Vue files
let g:ft = ''
function! NERDCommenter_before()
  if &ft == 'vue'
    let g:ft = 'vue'
    let stack = synstack(line('.'), col('.'))
    if len(stack) > 0
      let syn = synIDattr((stack)[0], 'name')
      if len(syn) > 0
        exe 'setf ' . substitute(tolower(syn), '^vue_', '', '')
      endif
    endif
  endif
endfunction
function! NERDCommenter_after()
  if g:ft == 'vue'
    setf vue
    let g:ft = ''
  endif
endfunction
"========================
