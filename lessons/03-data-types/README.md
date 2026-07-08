# Data Types

Comparing the main numeric and character types RPG gives you.

- `int(10)` — whole number, up to 10 digits.
- `packed(10:2)` — packed decimal: 10 digits total, 2 after the decimal, two digits stored per byte. Compact, and the default for most numeric fields on IBM i.
- `zoned(10:2)` — same precision as packed, but one digit per byte. Less compact, but it's the older AS/400-native numeric format and still shows up in legacy tables.
- `varchar(50)` vs `char(50)` — `varchar` only stores what you give it. `char` pads out to the full 50 characters with trailing spaces, which is why `%trim()` is needed before displaying it.
- `%char()` converts a number to a string so it can be concatenated into a message.
