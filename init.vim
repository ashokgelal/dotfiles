let mapleader="\<Space>"
" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-surround'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

nnoremap <silent> za <Cmd>call VSCodeNotify('editor.toggleFold')<CR>
" nnoremap <silent> zR <Cmd>call VSCodeNotify('editor.unfoldAll')<CR>
" nnoremap <silent> zM <Cmd>call VSCodeNotify('editor.foldAll')<CR>
nnoremap <silent> zo <Cmd>call VSCodeNotify('editor.unfold')<CR>
nnoremap <silent> zO <Cmd>call VSCodeNotify('editor.unfoldRecursively')<CR>
nnoremap <silent> zc <Cmd>call VSCodeNotify('editor.fold')<CR>
nnoremap <silent> zC <Cmd>call VSCodeNotify('editor.foldRecursively')<CR>

" nnoremap <silent> z1 <Cmd>call VSCodeNotify('editor.foldLevel1')<CR>
" nnoremap <silent> z2 <Cmd>call VSCodeNotify('editor.foldLevel2')<CR>
" nnoremap <silent> z3 <Cmd>call VSCodeNotify('editor.foldLevel3')<CR>
" nnoremap <silent> z4 <Cmd>call VSCodeNotify('editor.foldLevel4')<CR>
" nnoremap <silent> z5 <Cmd>call VSCodeNotify('editor.foldLevel5')<CR>
" nnoremap <silent> z6 <Cmd>call VSCodeNotify('editor.foldLevel6')<CR>
" nnoremap <silent> z7 <Cmd>call VSCodeNotify('editor.foldLevel7')<CR>

xnoremap <silent> zV <Cmd>call VSCodeNotify('editor.foldAllExcept')<CR>

" move by line on window not by actual line
if exists('g:vscode')
  nmap j gj
  nmap k gk
else
  nnoremap j gj
  nnoremap k gk
endif

set ignorecase
set smartcase

nnoremap <Leader><Space> <Cmd>call VSCodeNotify("workbench.action.quickOpen")<CR>
nnoremap <Leader>p <Cmd>call VSCodeNotify("workbench.action.showCommands")<CR>
nnoremap <Leader>w <Cmd>call VSCodeCall("workbench.action.files.save")<CR>
nnoremap <Leader>ff <Cmd>call VSCodeCall("editor.action.formatDocument")<CR>
nmap gb <Cmd>call VSCodeCall('workbench.action.navigateBack')<CR>
nmap gf <Cmd>call VSCodeCall('workbench.action.navigateForward')<CR>
nnoremap zh <Cmd>call VSCodeCall('workbench.action.closeAllEditors')<CR>
nnoremap U <Cmd>call VSCodeCall('redo')<CR>