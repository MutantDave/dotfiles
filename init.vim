call plug#begin()
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', { 'do': 'npm install --frozen-lockfile --production' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax
Plug 'neoclide/coc.nvim', {'do': ':CocInstall coc-tsserver coc-rust-analyzer'}
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'github/copilot.vim'
Plug 'tomlion/vim-solidity'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'Yggdroot/indentLine'
Plug 'rust-lang/rust.vim'
Plug 'dense-analysis/ale'
call plug#end()

syntax on
filetype plugin indent on
set number relativenumber
colorscheme nord

let g:prettier#quickfix_enabled = 0
let g:ale_linters = {
\   'javascript': ['prettier'],
\   'typescript': ['prettier'],
\   'rust' : ['rustc', 'analyzer'],
\   'solidity' : ['solc', 'solium'],
\}

" Solidity Things
let g:ale_solidity_solc_options = '--base-path ./ --include-path ./lib'

let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'

autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.vue,*.svelte,*.yaml,*.html,*.sol Prettier
autocmd BufWritePre *.rs RustFmt

" Source Vim configuration file and install plugins
nnoremap <silent><leader>1 :source $MYVIMRC \| :PlugInstall<CR>

" CoC extensions
let g:coc_global_extensions = ['coc-rust-analyzer', 'coc-tsserver']

" indentLine
let g:vim_json_conceal=0
let g:markdown_syntax_conceal=0

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)

" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Shortcuts to common commands I use
nmap <leader>b <c-^><cr>
nmap <leader>f :NERDTree<CR>
nmap <leader>p :Files<CR>

" Disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Format defaults: 2 spaces
:set tabstop=2
:set shiftwidth=2
:set expandtab

" No highlight
:set nohlsearch

:set splitbelow splitright

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1

" Set the global clipboard
set clipboard=unnamed
