       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG13.
      *Realizar uma pergunta com o comando IF.

       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 RESPOSTA PIC X.


       PROCEDURE DIVISION.
       PROGRAM-BEGIN.

           PERFORM PERGUNTA.
           PERFORM EXIBE-RESPOSTA.

       PROGRAM-DONE.
           STOP RUN.

       PERGUNTA.
           DISPLAY 'Voce gosta de churrasco Sim ou Nao? [S/N]: '.
           ACCEPT RESPOSTA.

       EXIBE-RESPOSTA.
           IF RESPOSTA IS EQUAL 'S'
               DISPLAY 'Realmente e muito bom!'.
           IF RESPOSTA IS EQUAL 'N'
               DISPLAY 'Que pena! Talvez voce seja trouxa'.
