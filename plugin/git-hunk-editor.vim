if exists("git_hunk_editor")
  finish
endif

let git_hunk_editor="v1.0"

command! -nargs=0 HunkLineToggle call s:HunkLineToggle()

function! s:HunkLineToggle()
    let line = getline('.')
    let one = strpart(line, 0, 1)
    let two = strpart(line, 0, 2)

    if one == '-'
      :call s:Undelete()
    elseif one == ' '
      :call s:Delete()
    elseif one == '+'
      :call s:UnAdd()
    elseif two == '#+'
      :call s:Add()
    endif
endfunction

function! s:Undelete()
  execute ":silent! normal! 0r \<ESC>0"
endfunction

function! s:Delete()
  execute ":silent! normal! 0r-\<ESC>0"
endfunction

function! s:UnAdd()
  execute ":silent! normal! 0i#\<ESC>0"
  :call s:ChangeRange(-1)
endfunction

function! s:Add()
  execute ":silent! normal! 0x"
  :call s:ChangeRange(1)
endfunction

function! s:ChangeRange(diff)
  let line = getline(2)
  let length = str2nr(matchlist(line, '\(\d\+\) @@')[1])
  let newLength = length + a:diff
  let newLine = substitute(line, '\(\d\+\)\( @@\)', string(newLength) . "\\2", "")
  :call setline(2, newLine)
endfunction