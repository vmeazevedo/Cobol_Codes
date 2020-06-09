       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG15.

      *    PROGRAMA TESTA OPERADORES DE COMPARAÇÃO

       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  VALOR1 PIC 9(2).
       01  VALOR2 PIC 9(2).

       PROCEDURE DIVISION.

       PROGRAM-BEGIN.

           DISPLAY "Informe o valor 1".
           ACCEPT VALOR1.

           DISPLAY "Informe o valor 2".
           ACCEPT VALOR2.

           IF VALOR1 < VALOR2
      *        DISPLAY "Outra instrução"
               DISPLAY "VALOR1 eh menor que valor2".
           IF VALOR1 > VALOR2
               DISPLAY "Valor1 eh maior que valor2".
           IF VALOR1 = VALOR2
               DISPLAY "Valor1 eh igual ao valor2".

       PROGRAM-DONE.
           STOP RUN.
