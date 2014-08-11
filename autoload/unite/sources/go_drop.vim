let s:save_cpo = &cpo
set cpo&vim

if !exists("g:godrop_command")
  if exists(":GoDrop")
    g:godrop_command = "GoDrop"
  else
    g:godrop_command = "Drop"
  endif
endif

let s:source = {
      \ 'name': 'go/drop',
      \ 'description': 'go packages to drop',
      \ }

function! unite#sources#go_drop#define()
  return s:source
endfunction

function! s:source.gather_candidates(args, context)
    let pkgs = goimps#Dropable(expand('%'))
    return map(copy(pkgs), '{
          \ "word": v:val,
          \ "kind": "command",
          \ "action__command": "Drop " . v:val,
          \ }')
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
