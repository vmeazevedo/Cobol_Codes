       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG17.
      *Demonstração do operador OR.

       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 VALOR   PIC 9(3).
       01 NOME   PIC X(20).

       PROCEDURE DIVISION.
       PROGRAM-BEGIN.

           DISPLAY '--- USO DO OR ---'
           DISPLAY 'Informe um nome:'.
           ACCEPT NOME.
           DISPLAY 'Informe um numero:'
           ACCEPT VALOR.

           PERFORM CONVERTE-NOME.

           IF NOME = 'ANA' OR VALOR = 30
               DISPLAY 'A condicao e verdadeira.'.

       PROGRAM-DONE.
           GOBACK.

      *Converter a entrada NOME em maiusculo.
       CONVERTE-NOME.
           IF NOME = 'ana' OR NOME = 'Ana'
               MOVE 'ANA' TO NOME.
