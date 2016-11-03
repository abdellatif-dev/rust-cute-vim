" Code based off ehamberg/vim-cute-python.

" Fallback if the conceal feature is unsupported.
if !has('conceal')
    finish
endif

" Clear the Rust keywords, which we'll add later again.
syntax clear rustOperator

" The <> are used to define the start and end of the operator.
syntax match rsCuteOperator "||" conceal cchar=∨
syntax match rsCuteOperator "&&" conceal cchar=∧
syntax match rsCuteOperator "\<!" conceal cchar=¬
syntax match rsCuteOperator "<=" conceal cchar=≤
syntax match rsCuteOperator ">=" conceal cchar=≥
syntax match rsCuteOperator "->" conceal cchar=→
syntax match rsCuteOperator "=>" conceal cchar=⇒
syntax match rsCuteOperator "^" conceal cchar=⊕
" Only conceal “==” if alone, to avoid concealing SCM conflict markers.
syntax match rsCuteOperator "=\@<!===\@!" conceal cchar=≟
syntax match rsCuteOperator "!=" conceal cchar=≠

hi link rsCuteOperator Operator
hi link rsCuteStatement Statement
hi link rsCuteKeyword Keyword
hi! link Conceal Operator

setlocal conceallevel=1
