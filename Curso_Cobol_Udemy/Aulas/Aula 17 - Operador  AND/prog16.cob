       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG16.
      *     PROGRAMA PARA DEMONSTRAR O OPERADOR AND

       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  VALOR1 PIC 9(3).
       01  VALOR2 PIC 9(3).

       PROCEDURE DIVISION.
       PROGRAM-BEGIN.
           DISPLAY "--- USO DO AND ---".
           DISPLAY "Informe um numero maior que 10 e".
           DISPLAY " menor que 100(11-99)".

           ACCEPT VALOR1.

           IF VALOR1 > 10 AND VALOR1 < 100
               DISPLAY "O numero esta no intervalo".

       PROGRAM-DONE.
           STOP RUN.
