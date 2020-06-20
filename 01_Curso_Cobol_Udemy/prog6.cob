       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG6.
      *programas que demonstra o uso do ADD
      *ADD é um comando que adiciona um valor a uma variável numérica.
       ENVIRONMENT DIVISION.
       DATA DIVISION.

       WORKING-STORAGE SECTION.
       01 IDADE PIC 9(2).

       PROCEDURE DIVISION.

       PROGRAM-BEGIN.

           DISPLAY 'Qual a sua idade? '.
           ACCEPT IDADE.
           DISPLAY 'Hoje voce tem ' IDADE ' anos.'.

           ADD 7 to IDADE.
           DISPLAY 'Voce em 7 anos tera ' idade ' anos.'.

       PROGRAM-DONE.
           STOP-RUN.
