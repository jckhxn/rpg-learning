# Learnin' RPG

Just starting to learn IBM i RPG development. Notes and code from working through the basics.

## Lessons

| # | Topic | Notes |
|---|-------|-------|
| 1 | [Hello World](./lessons/01-hello-world/) | First RPG program — SPF and IFS methods, compiling, checking the job log |
| 2 | [Variables](./lessons/02-variables/) | `dcl-s`, zoned decimal, packed decimal, char, initialization with `inz()` |
| 3 | [Data Types](./lessons/03-data-types/) | VARCHAR, CHAR, INT/DECIMAL, zoned, packed |
| 4 | [SQL & DB2 for i](./lessons/04-sql/) | Embedded SQL, `exec sql`, host variables, SQLCODE, `.sqlrpgle` |
| 5 | [CL (Control Language)](./lessons/05-cl/) | One-off commands vs. compiled CL programs, `CRTBNDCL` |

## Environment

- IBM i / AS400
- VS Code with Code for IBM i extension
- DB2 for i (built into the OS)

## Notes

Output from `dsply` goes to the job log — always check with `DSPJOBLOG` → F10 → F18.
