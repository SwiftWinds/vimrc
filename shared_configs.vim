" this file is for shared configs between Neovim and Vim
" esc disables highlighting
nnoremap <esc> :noh<return><esc>

" Alt-j to move the current line down, Alt-k to move the current line up.
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" use ctrl+o or ctrl+O to create lines without entering edit mode
nmap <S-Enter> O<Esc>
nmap <C-o> o<Esc>

nnoremap = j^
nnoremap <F3> kg_
nnoremap <F4> jg_

" gm to move to center of line
map gm :call cursor(0, virtcol('$')/2)<CR>

" allow wrapping left and right
set whichwrap+=<,>,h,l,[,]

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

