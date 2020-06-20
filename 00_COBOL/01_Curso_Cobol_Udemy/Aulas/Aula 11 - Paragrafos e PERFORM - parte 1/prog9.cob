       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG9.

      *    programa demonstra o uso do PERFORM

       ENVIRONMENT DIVISION.
       DATA DIVISION.
       PROCEDURE DIVISION.

       PROGRAM-BEGIN.
           DISPLAY "A Mensagem de hoje eh".
           PERFORM MINHA-MENSAGEM.
           DISPLAY "Voce concorda?".

       PROGRAM-DONE.
           STOP RUN.

       MINHA-MENSAGEM.
           DISPLAY "Programar em COBOL eh legal!".
