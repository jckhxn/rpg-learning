**free

ctl-opt main(main) dftactgrp(*no) actgrp(*new);

dcl-proc main;

// Declare a string, max length 50 characters.
    dcl-s stringVar varchar(50) inz('Hello, RPGLE!');

// Declare a constant variable.
    dcl-c stringConst 'Hello, constant!';
    
  // Print to job log.
    snd-msg stringVar;
    snd-msg stringConst;
end-proc;
