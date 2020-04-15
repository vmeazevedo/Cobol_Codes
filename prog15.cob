       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG15.
      *Testar operadores de comparação

       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 VALOR1   PIC 9(2).
       01 VALOR2   PIC 9(2).

       PROCEDURE DIVISION.
       PROGRAM-BEGIN.
           DISPLAY 'Informe o valor 1'.
           ACCEPT VALOR1.

           DISPLAY 'Informe o valor 2'.
           ACCEPT VALOR2

           IF VALOR1 < VALOR2
               DISPLAY 'VALOR1 e menor que VALOR2.'.
           IF VALOR1 > VALOR2
               DISPLAY 'VALOR1 e maior que VALOR2.'.
           IF VALOR1 = VALOR2
               DISPLAY 'Os valores sao iguais.'.
       PROGRAM-DONE.
           STOP RUN.
