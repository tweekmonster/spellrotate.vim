command! SpellRotateSubAll call spellrotate#suball()

nnoremap <silent> <Plug>(SpellRotateForward) :<c-u>call spellrotate#cycle(v:count1, 0)<cr>
nnoremap <silent> <Plug>(SpellRotateBackward) :<c-u>call spellrotate#cycle(-v:count1, 0)<cr>
vnoremap <silent> <Plug>(SpellRotateForwardV) :<c-u>call spellrotate#cycle(v:count1, 1)<cr>
vnoremap <silent> <Plug>(SpellRotateBackwardV) :<c-u>call spellrotate#cycle(-v:count1, 1)<cr>
