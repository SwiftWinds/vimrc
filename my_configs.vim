" switch cursor from block in insert mode
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" This enables iterm cursor changes from vim. In .tmux.conf you'll need:
" set-option -g terminal-overrides '*88col*:colors=88,*256col*:colors=256,xterm*:XT:Ms=\E]52;%p1%s;%p2%s\007:Cc=\E]12;%p1%s\007:Cr=\E]112\007:Cs=\E]50;CursorShape=%?%p1%{3}%<%t%{0}%e%p1%{2}%-%;%d\007'
"
" Source: https://github.com/Casecommons/casecommons_workstation/blob/master/templates/default/dot_tmux.conf.erb
"         https://github.com/Casecommons/vim-config/blob/master/init/tmux.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if exists('$ITERM_PROFILE')
  if exists('$TMUX')
    let &t_SI = "\<Esc>[3 q"
    let &t_EI = "\<Esc>[0 q"
  else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  endif
end

let g:ctrlp_map = '<c-p>'
nnoremap <C-f> <PageDown>
nnoremap <C-b> <PageUp>
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>
nnoremap <backspace> :noh<CR><CR>:<backspace>
nnoremap = j^
nnoremap <F3> kg_
nnoremap <F4> jg_

:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" nvim does not support ttymouse, so it is disabled if detected using nvim
if !has('nvim')
    set ttymouse=xterm2
endif

" checks if tnoremap exists before using it (because only nvim supports it)
if exists(':tnoremap')
    tnoremap <Esc> <C-\><C-n>
endif

" uses shared_configs.vim
source ~/.vim_runtime/shared_configs.vim

