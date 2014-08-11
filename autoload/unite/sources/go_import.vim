let s:save_cpo = &cpo
set cpo&vim

if !exists("g:goimport_command")
  if exists(":GoImport")
    g:goimport_command = "GoImport"
  else
    g:goimport_command = "Import"
  endif
endif

let s:source = {
      \ 'name': 'go/import',
      \ 'description': 'go packages to import',
      \ }

function! unite#sources#go_import#define()
  return s:source
endfunction

function! s:source.gather_candidates(args, context)
    let pkgs = goimps#Importable()
    return map(copy(pkgs), '{
          \ "word": v:val,
          \ "kind": "command",
          \ "action__command": "Import " . v:val,
          \ }')
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
