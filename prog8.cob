       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG8.
      *programas que demonstra o uso do Parágrafos
      *Paragráfos são marcadores de certas áreas do código

       ENVIRONMENT DIVISION.
       DATA DIVISION.

       WORKING-STORAGE SECTION.
       01 PRIMEIRO-NUMERO PIC 9(2).
       01 SEGUNDO-NUMERO PIC 9(2).
       01 RESULTADO    PIC 9(3).

       PROCEDURE DIVISION.

       PROGRAM-BEGIN.

       RECEBE-PRIMEIRO-NUMERO.
           DISPLAY 'Informe o primeiro numero: '.
           ACCEPT PRIMEIRO-NUMERO.

       RECEBE-SEGUNDO-NUMERO.
           DISPLAY 'Informe o segundo numero: '.
           ACCEPT SEGUNDO-NUMERO.

           COMPUTE RESULTADO = PRIMEIRO-NUMERO + SEGUNDO-NUMERO.

       INFORMA-O-RESULTADO.
           DISPLAY 'O resultado da soma e: ' RESULTADO.

       PROGRAM-DONE.
           STOP-RUN.
