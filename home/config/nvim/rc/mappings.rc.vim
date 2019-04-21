" ========================================
"  Configuration
" ========================================

" [Tab] Shrotcut support for jumping tab
let g:maximum_tab_number = 9

" ========================================
"  Tab (prefix: t)
" ========================================

" Disable original [TabPrefix] map if it exists
nnoremap [TabPrefix] <Nop>
nmap t [TabPrefix]

" Open new tab
nnoremap <silent> [TabPrefix]c :tabnew<CR>
" Close current tab
nnoremap <silent> [TabPrefix]q :tabclose<CR>
" Go to next tab
nnoremap <silent> [TabPrefix]n :tabnext<CR>
" Go to previous tab
nnoremap <silent> [TabPrefix]p :tabprevious<CR>
"Jump to tab
for n in range(1, g:maximum_tab_number)
  execute 'nnoremap <silent> [TabPrefix]' . n . ' :<C-u>tabnext' . n . '<CR>'
endfor

" ========================================
"  Window (prefix: <C-w>)
" ========================================

" Vertical splitting
set splitright
nnoremap <C-w>\| :vnew<CR>
" Horizontal splitting
set splitbelow
nnoremap <C-w>- :new<CR>

" ========================================
"  Misc (Prefix: <Space>)
" ========================================

" [Space]: My useful mappings
nnoremap [Space] <Nop>
nmap <Space> [Space]
vnoremap [Space] <Nop>
vmap <Space> [Space]

" Reload configuration
execute 'nnoremap [Space]R :source ' . g:conf_dir . '/rc/init.vim<CR>'

" Terminal mode
if exists(':tnoremap')
  " Open terminal
  nnoremap [Space]t :terminal<CR>
  " Normal mode (I cannot do VIM in VIM anymore)
  tnoremap <ESC>  <C-\><C-n>
endif
