       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG13.
      *    Pergunta se o usuário gosta de churrasco.

       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  RESPOSTA PIC X.

       PROCEDURE DIVISION.

       PROGRAM-BEGIN.

           PERFORM PERGUNTA.

           PERFORM EXIBE-RESPOSTA.

       PROGRAM-DONE.
           STOP RUN.

       PERGUNTA.
           DISPLAY "Voce gosta de churrasco Sim ou Nao?(S/N)".
           ACCEPT RESPOSTA.

       EXIBE-RESPOSTA.

            IF RESPOSTA = "S"
      *     IF RESPOSTA IS EQUAL "S"
               DISPLAY "Realmente é muito bom!".

           IF RESPOSTA IS EQUAL "N"
               DISPLAY "Que pena! Talvez voce seja vegetariano".
