       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG6.
       ENVIRONMENT DIVISION.
       DATA DIVISION.

       WORKING-STORAGE SECTION.

       01  IDADE PIC 9(2).

       PROCEDURE DIVISION.

       PROGRAM-BEGIN.

           DISPLAY "Informe sua idade".
           ACCEPT IDADE.

           DISPLAY "Hoje voce tem " IDADE "anos".

           ADD 7 TO IDADE.

           DISPLAY "Voce em 7 anos tera " IDADE "anos".

       PROGRAM-DONE.
           STOP RUN.
