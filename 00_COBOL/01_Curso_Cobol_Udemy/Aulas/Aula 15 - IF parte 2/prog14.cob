       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG14.

      *     pergunta se usuário gosta de churrasco.
      *     resolve problema das letras em minúsculo.

       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  RESPOSTA PIC X.

       PROCEDURE DIVISION.

       PROGRAM-BEGIN.

           PERFORM PERGUNTA.

           PERFORM CONVERTE-PARA-MAIUSCULO.

           PERFORM EXIBE-RESPOSTA.

       PROGRAM-DONE.
           STOP RUN.

       PERGUNTA.
           DISPLAY "Voce gosta de churrasco Sim ou Nao? (S/N)".
           ACCEPT RESPOSTA.

       EXIBE-RESPOSTA.

           IF RESPOSTA IS EQUAL "S"
               DISPLAY "Realmete eh muito bom!".

           IF RESPOSTA IS EQUAL "N"
               DISPLAY "Que pena! Talvez voce seja vegetariano.".

       CONVERTE-PARA-MAIUSCULO.

           IF RESPOSTA IS EQUAL "s"
               MOVE "S" TO RESPOSTA.

           IF RESPOSTA IS EQUAL "n"
               MOVE "N" TO RESPOSTA.
