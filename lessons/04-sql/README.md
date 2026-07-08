# SQL & DB2 for i

Embedded SQL inside RPGLE — `exec sql` blocks that pull a row into host variables (the `:varName` syntax).

**contacts.sql / contacts.sqlrpgle**
- `contacts.sql` creates the `CONTACTS` table and seeds one row.
- `contacts.sqlrpgle` runs `select ... into :firstName, :lastName, :phoneNumber` keyed on `CONTACT_ID`, then checks `sqlcode` — anything other than `0` means the row wasn't found.

**customer.sqlrpgle / customers.sql**
- Same pattern against a `CUSTOMERS` table, but the columns use SQL long-name aliases (`CUSTOMER_NUMBER for CUSNUM`) so the RPG-side host variables can stay short.
- `zoned(5)` for the customer number matches the table's `decimal(5,0)` column — the types have to line up between SQL and RPG.
- `%target(*self:2)` on `snd-msg` sends the message two call levels up, so it lands on the caller's job log instead of getting buried in this program's own call stack.

Both programs follow the same shape: declare host variables matching the column types, run `exec sql`, check `sqlcode`, branch on the result.
