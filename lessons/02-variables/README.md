# Variables

Same shape as lesson 1, but swapped `dsply` for `snd-msg` — the newer op-code for sending messages to a message queue instead of writing straight to the job log.

- `dcl-s stringVar varchar(50) inz(...)` — a variable-length string.
- `dcl-c stringConst '...'` — a constant, set once and never reassigned.
- `snd-msg` sends the message. Without a `%target()`, it defaults to the job log, same place `dsply` output ends up.
