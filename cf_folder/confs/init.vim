set clipboard=unnamedplus
set foldmethod=syntax
set pumheight=20
set background=dark
set foldlevel=10
set expandtab ts=2 sw=2  
set rnu nu
set signcolumn=yes
set t_Co=256
set noswapfile
set cursorline
set splitright
set nowrap
set hidden 
set cc=80
set smartcase ignorecase nohlsearch
set fillchars+=vert:\ 
set autochdir
let mapleader = " "


let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

nmap <silent> <Leader>t <Plug>TranslateW
vmap <silent> <Leader>t <Plug>TranslateWV

nmap <leader>a :Ag<cr>

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-space': 'split',
  \ 'tab': 'vsplit' }

" let g:fzf_colors = { 'bg+': ['bg', 'Normal'] }
let g:netrw_banner = 0
let g:netrw_hide = 1
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+,\(^\|\s\s\)ntuser\.\S\+' 
let g:netrw_liststyle = 3
let g:netrw_preview = 1
let g:netrw_altv = 1
let g:fzf_preview_window = ['']
let g:fzf_layout = { 'down':  '40%'}
let g:translator_target_lang = 'pt'

filetype off
call plug#begin('~/.config/nvim/plugged')
Plug 'voldikss/vim-translator'
Plug 'preservim/nerdtree'
Plug 'junegunn/vim-easy-align'
Plug 'SergioRibera/vim-files'
Plug 'xolox/vim-misc'
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'KabbAmine/vCoolor.vim'
Plug  'lilydjwg/colorizer', {'on':'ColorToggle'}
Plug 'xolox/vim-colorscheme-switcher'
Plug 'flazz/vim-colorschemes'
Plug 'terryma/vim-multiple-cursors'
Plug 'KabbAmine/vCoolor.vim'
Plug 'tpope/vim-surround'
Plug 'PotatoesMaster/i3-vim-syntax'
" Plug 'kyazdani42/nvim-tree.lua'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'easymotion/vim-easymotion'
"Plug 'sheerun/vim-polyglot'
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'tpope/vim-commentary'
Plug 'dhruvasagar/vim-zoom'
Plug 'dracula/vim'
Plug 'tpope/vim-fugitive'
Plug 'benwainwright/fzf-project' 
Plug 'sjl/badwolf'
Plug 'dag/vim-fish'
call plug#end()
filetype plugin indent on



"     view = {
"     adaptive_size = true,
"     mappings = {
"       list = {
"         { key = "<Tab>", action = "normal <C-w><C-w>" },
"       },
"     },
"   },})
" EOF



" lua << EOF
" require'nvim-treesitter.configs'.setup {
"   -- A list of parser names, or "all"
"   ensure_installed = { "c", "lua", "rust", "python" },

"   -- Install parsers synchronously (only applied to `ensure_installed`)
"   sync_install = false,

"   -- Automatically install missing parsers when entering buffer
"   auto_install = true,

"   -- List of parsers to ignore installing (for "all")
"   ignore_install = { "javascript" },

"   ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
"   -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

"   highlight = {
"     -- `false` will disable the whole extension
"     enable = true,

"     -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
"     -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
"     -- the name of the parser)
"     -- list of language that will be disabled
"     disable = { "c", "rust" },

"     -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
"     -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
"     -- Using this option may slow down your editor, and you may see some duplicate highlights.
"     -- Instead of true it can also be a list of languages
"     additional_vim_regex_highlighting = false,
"   },
" }

" EOF

" colorscheme badwolf
" colorscheme OceanicNext
colorscheme beekai

noremap <leader>d :call VimFiles#FileCreateVS()<cr>
xmap - <Plug>(EasyAlign)

nnoremap <C-space> :NvimTreeToggle<cr>  
nnoremap <leader><Tab> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
tnoremap <Esc> <C-\><C-n>:q!<CR>

nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
nmap <leader>p :silent exec "!ghcid"<cr>
nmap <Backspace> :Buffers<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
tnoremap <expr> <Esc> (&filetype == "fzf") ? "<Esc>" : "<c-\><c-n>"

nnoremap <Enter> :History<CR>
nnoremap <Tab>  <C-w><C-w>
nmap <leader>f :ProjectFiles<cr>

nmap <F5> :w<CR>:make  
imap <F5> <esc>:w<CR>:make
imap æ <C-o>I
imap ð <C-o>A
imap ¼ <C-o>w
imap ¨ <C-o>b

imap ħ <C-o>h
imap ½ <C-o>j
imap ĸ <C-o>k
imap ł <C-o>l

nmap ħ <C-w>H
nmap ½ <C-w>J
nmap ĸ <C-w>K
nmap ł <C-w>L

nmap <F2> <Esc>:w<cr>
imap <F2> <Esc>:w<cr>a
nmap <leader>q <Esc>:wq!<cr>

imap ¥ <esc>:
nmap ¥ :


imap <S-Enter> <C-o>o
imap <S-Space> <C-o>l<C-o>\ 

nmap <leader>n :NERDTreeToggle<cr>
nmap s <Plug>(easymotion-overwin-f2)



function! CheckBackSpace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

let g:coc_snippet_next = '<CR>'

inoremap <silent><expr> <TAB>
	\ coc#pum#visible() ? coc#pum#next(1):
	\ CheckBackSpace() ? "\<Tab>" :
	\ coc#refresh()
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" function! coc#pum#close(...) abort
"     elseif get(a:, 1, '') ==# 'confirm'
"       if s:pum_index >= 0
"       else
" add this one>>    normal o
"       endif
"     endif
" endfunction


command! -nargs=0 Format :call CocActionAsync('format')
command! -bang ProjectFiles call fzf#vim#files(getcwd(), <bang>0)

function Colorir()
hi Normal ctermbg=none                                                         
hi NonText cterm=none ctermfg=244 ctermbg=none                                 
hi CursorLine ctermbg=234 cterm=none                                           
hi CursorLineNr cterm=bold ctermfg=2 ctermbg=234                                        
hi StatusLineNC ctermbg=0 ctermfg=244 cterm=none                             
hi StatusLine ctermbg=0 ctermfg=2 cterm=bold                               
hi TabLineFill ctermfg=0 
hi TabLine ctermbg=0 cterm=bold ctermfg=2
hi TabLineSel ctermbg=2 cterm=bold ctermfg=0
hi LineNr ctermbg=232                                                          
hi ErrorMsg ctermfg=214 ctermfg=none                                           
hi WarningMsg ctermfg=214 ctermfg=none                                         
hi Pmenu ctermbg=0 ctermfg=253                                            
hi PmenuSel cterm=bold ctermbg=237 ctermfg=3                                            
hi PmenuBar ctermfg=0 ctermbg=0
hi PmenuSbar ctermfg=0 ctermbg=0
hi PmenuThumb ctermfg=0 ctermbg=0
" hi fzf2 ctermbg=232                                                            
" hi fzf1 ctermbg=232                                                            
" hi fzf3 ctermbg=232                                                            
hi VertSplit ctermfg=245 ctermbg=233                                           
hi Folded ctermbg=233 ctermfg=245                                              
hi SignColumn ctermbg=232                                                     
hi ColorColumn ctermbg=none ctermfg=1 cterm=bold                               
hi SpellBad cterm=underline ctermbg=none ctermfg=none                          
hi SpellCap ctermbg=none                                                       
hi VertSplit ctermfg=235


if $USER == 'root'
hi StatusLine ctermbg=52 ctermfg=248 cterm=bold                               
hi CursorLineNr cterm=bold ctermfg=125 ctermbg=234                                    
endif

endfunction

call Colorir()

function ColorirNext()
call Colorir()
endfunction

nmap <F12> :call ColorirNext()<cr>

autocmd BufWinEnter *.py set makeprg=python\ %
autocmd BufWinEnter *.rs set makeprg=cargo\ run

autocmd WinEnter * set cursorline  
autocmd WinLeave * set nocursorline

autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0  nonumber norelativenumber
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler  number

function! Syn()
  for id in synstack(line("."), col("."))
    echo synIDattr(id, "name")
  endfor
endfunction
command! -nargs=0 Syn call Syn()
nmap <leader>h :Syn<cr>


augroup Mkdir
  autocmd!
  autocmd BufWritePre * call mkdir(expand("<afile>:p:h"), "p")
augroup END
