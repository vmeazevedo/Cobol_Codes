       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG8.
      *    programa que demonstra o uso de parágrafos
      *    programa para somar 2 números e exibir o resultado.

       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  PRIMEIRO-NUMERO PIC 9(2).
       01  SEGUNDO-NUMERO PICTURE  99.
       01  RESULTADO      PICTURE IS 999.
      *01  RESULTADO      PICTURE IS 9(3).

       PROCEDURE DIVISION.

       PROGRAM-BEGIN.

       RECEBE-PRIMEIRO-NUMERO.
           DISPLAY "Informe o primeiro numero:".
           ACCEPT PRIMEIRO-NUMERO.

       RECEBE-SEGUNDO-NUMERO.

           DISPLAY "Informe o segundo numero:".
           ACCEPT SEGUNDO-NUMERO.

           COMPUTE RESULTADO = PRIMEIRO-NUMERO + SEGUNDO-NUMERO.

       INFORMA-O-RESULTADO.
           DISPLAY "O resultado da soma eh:" RESULTADO.

       PROGRAM-DONE.
           STOP RUN.
