       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG9.
      *programas que demonstra o uso do PERFORM

       ENVIRONMENT DIVISION.
       DATA DIVISION.

       PROCEDURE DIVISION.

       PROGRAM-BEGIN.
           DISPLAY 'A mensagem de hoje e'.
           PERFORM MINHA-MENSAGEM.
               DISPLAY 'Voce concorda?'.
       PROGRAM-DONE.
           STOP RUN.

       MINHA-MENSAGEM.
           DISPLAY 'Programar em COBOL e legal!'.
