# spellrotate.vim

Cycles spelling suggestions under the cursor.

![spellrotate][1]

## Features

- The `'[` and `']` marks are used to keep track of the text being worked on.
  Making a change elsewhere will effectively "accept" the suggested change.
- Accepts a count.
- Can cycle suggestions in the opposite direction.
- Repeatable using [vim-repeat][2].
- Undo once to restore the original word regardless of how many suggestions
  have been cycled.
- Works in visual mode to get suggestions for split words (e.g. "head line" ->
  "headline")
  - Uses `'<` and `'>` marks to keep track of the text.
  - **Note**: Doesn't seem to be repeatable with [vim-repeat][2].
- The original word being changed is kept in the unnamed register.
- The original, previous, current, and next suggestions are displayed in the
  command line.
- Naive command `:SpellRotateSubAll` to replace all text matching the original
  with the current suggestion.

## Usage

You will need to map the keys yourself:

```vim
nmap <silent> zn <Plug>(SpellRotateForward)
nmap <silent> zp <Plug>(SpellRotateBackward)
vmap <silent> zn <Plug>(SpellRotateForwardV)
vmap <silent> zp <Plug>(SpellRotateBackwardV)
```

**Note**: You must use `nmap` and `vmap`.

**Note**: The above keys are only examples!  I'm sure you already hate them.
Spelling, folding, and a handful of miscellanious motions are prefixed by `z`.
Nobody would be happy with a default key map set by this plugin.

## License

MIT

[1]: https://cloud.githubusercontent.com/assets/111942/16791555/24b30456-488e-11e6-8f65-d30695d13a2a.gif
[2]: https://github.com/tpope/vim-repeat
