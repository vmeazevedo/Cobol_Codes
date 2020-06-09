       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG17.

      *    DEMONSTRA O OPERADOR OR

       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  VALOR PIC 9(3).
       01  NOME PIC X(20).

       PROCEDURE DIVISION.

       PROGRAM-BEGIN.

           DISPLAY "--- USO DO OR ---".
           DISPLAY "Informe um nome:".
           ACCEPT NOME.
           DISPLAY "Informe um numero".
           ACCEPT VALOR.

           IF NOME="ANA" OR VALOR = 30
               DISPLAY "A condicao eh verdadeira".

       PROGRAM-DONE.
           STOP RUN.
