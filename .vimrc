"======================== Vundle Stuff
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"------------- Plugins - specified by me "

" Fuzzy search
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0) " Don't search file names in Rg

Plugin 'itchyny/lightline.vim' " Status bar at bottom
Plugin 'mg979/vim-visual-multi' " Multiple cursor support
Plugin 'airblade/vim-gitgutter' " Git gutter before line numbers

" Directory tree viewer
Plugin 'preservim/nerdtree'
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.swp$']

" Code minimap
Plugin 'severin-lemaignan/vim-minimap'

" Faster commenting out / in
Plugin 'preservim/nerdcommenter'
let g:NERDSpaceDelims = 1 " Add a space after comment symbols
let g:NERDDefaultAlign = 'left' " Align comment symbols vertically

" Vue syntax highlighting
Plugin 'posva/vim-vue'
" let g:vue_pre_processors = ['scss', 'typescript']
" JSX syntax highlighting
Plugin 'MaxMEllon/vim-jsx-pretty'
" GraphQL syntax highlighting
Plugin 'jparise/vim-graphql'
" Typescript syntax highlighting
Plugin 'leafgarland/typescript-vim'

Plugin 'pangloss/vim-javascript' " JS syntax highlighting
Plugin 'cakebaker/scss-syntax.vim' " SCSS syntax highlighting
Plugin 'evanleck/vim-svelte' " Svelte syntax highlighting

" add jbuilder syntax highlighting
au BufNewFile,BufRead *.json.jbuilder set ft=ruby

Plugin 'Yggdroot/indentLine' " Indent markers
Plugin 'jeetsukumaran/vim-indentwise' " Jump to line with same indent
Plugin 'MattesGroeger/vim-bookmarks' " Bookmarks!

" "=== Linter in editor
" Plugin 'vim-syntastic/syntastic'
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
Plugin 'dracula/vim'
let g:dracula_italic = 0 " Italics here mess with things
"===
" Refresh colorscheme when it misbehaves
map <Leader>C :colorscheme dracula<CR> 
"-------------"

" All of your Plugins must be added before the following line
call vundle#end()            " required
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

" Plugin shortcuts
map <Leader>t :Files<CR>
map <Leader>s :BLines<CR>
map <Leader>S :Lines<CR>
map <Leader>r :Ag<CR>
map <Leader>f :NERDTree<CR>
map <Leader>F :NERDTreeFind<CR>

" Plumbing
set termguicolors " Proper terminal colours
set laststatus=2 " required for lightline
set updatetime=100 " reduce update time for faster real-time changes (e.g. gitgutter to display diffs faster)

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
