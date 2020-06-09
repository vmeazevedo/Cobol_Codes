      ******************************************************************
      * Author: Vinicius Azevedo
      * Date: 16/04/2020
      * Purpose: Acadêmico
      * Tectonics: cobc
      ******************************************************************
      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. PROG21.
      *Utilização do PERFORM UNTIL
      *Programa para fazer uma tabuada
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       DATA DIVISION.
      *-----------------------------------------------------------------
       WORKING-STORAGE SECTION.
       01  NUMERO           PIC 9(2).
       01  MULTIPLICADOR    PIC 9(3).
       01  PRODUTO          PIC 9(4).

      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-BEGIN.
           PERFORM INICIALIZACAO-PROGRAMA.
           PERFORM PEGA-TABUADA.
           PERFORM EXIBIR-TABUADA.
       PROGRAM-DONE.
           STOP RUN.

       INICIALIZACAO-PROGRAMA.
           MOVE 0 TO MULTIPLICADOR.

       PEGA-TABUADA.
           DISPLAY 'Digite o numero que voce quer receber a tabuada?'
           ACCEPT NUMERO.

       EXIBIR-TABUADA.
           DISPLAY 'A tabuada do ' NUMERO ' eh: '
           PERFORM CALCULA-E-EXIBE UNTIL MULTIPLICADOR > 9.

       CALCULA-E-EXIBE.
           ADD 1 TO MULTIPLICADOR.
           COMPUTE PRODUTO = NUMERO * MULTIPLICADOR.
           DISPLAY NUMERO '*' MULTIPLICADOR ' = ' PRODUTO.
