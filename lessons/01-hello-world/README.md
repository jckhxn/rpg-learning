# Hello World

First RPGLE program. Free-format, one procedure, two ways to print text.

- `**free` — modern free-format syntax instead of the old fixed-column RPG III/IV style.
- `ctl-opt main(main) dftactgrp(*no) actgrp(*new)` — runs `main` first and keeps the program out of the default activation group (the safer, modern way to run something on IBM i).
- `dcl-s` declares a variable, `dcl-c` declares a constant.
- `varchar(50)` — variable-length string, max 50 characters.
- `inz(...)` sets the starting value right at declaration.
- `dsply` writes to the job log. Check it with `DSPJOBLOG` → F10 → F18 — nothing pops up on screen in a batch job, so you have to go look for it.
