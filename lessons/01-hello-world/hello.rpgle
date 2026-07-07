**free
// Hello World — RPGLE fundamentals: variables, constants, DSPLY
ctl-opt main(main) dftactgrp(*no) actgrp(*new);

dcl-proc main;
    dcl-s message varchar(50) inz('Hello, World!');
    dcl-c messageConst 'Hello,constant!';

    dsply message;
    dsply messageConst;

end-proc;