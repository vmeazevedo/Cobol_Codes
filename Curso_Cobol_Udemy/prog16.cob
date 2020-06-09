       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG16.
      *Testar o operador AND.

       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 VALOR1   PIC 9(3).
       01 VALOR2   PIC 9(3).

       PROCEDURE DIVISION.
       PROGRAM-BEGIN.

           DISPLAY '--- USO DO AND ---'
           DISPLAY 'Informe um numero maior que 10 e menor que 100.'.

           DISPLAY 'Informe o VALOR1: '
           ACCEPT VALOR1
           DISPLAY 'Informe o VALOR2:'
           ACCEPT VALOR2

           IF VALOR1 >10 AND VALOR2 < 100
               DISPLAY 'O numero esta no intervalor'.
           IF VALOR1 <10 AND VALOR2 > 100
               DISPLAY 'O numero nao esta no intervalo solicitado.'.
           IF VALOR1 <10 AND VALOR2 < 100
               DISPLAY 'O numero nao esta no intervalo solicitado.'.
           IF VALOR1 >10 AND VALOR2 >100
               DISPLAY 'O numero nao esta no intervalo solicitado.'.

       PROGRAM-DONE.
           STOP RUN.
