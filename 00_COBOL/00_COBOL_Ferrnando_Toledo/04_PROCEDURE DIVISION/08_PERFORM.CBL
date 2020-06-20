      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID.     08_PERFORM.
       AUTHOR.         VINICIUS AZEVEDO.
       DATE-WRITTEN.   08/06/2020.
       DATE-COMPILED.
       SECURITY.       NAO E CONFIDENCIAL.
      ******************************************************************
      * TEXTO:
      *
      *
      *
      ******************************************************************
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.           IBM-3083.
       OBJECT-COMPUTER.           IBM-3083.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
      *-----------------------------------------------------------------
       DATA DIVISION.
      *-----------------------------------------------------------------
       WORKING-STORAGE SECTION.
       01  WS-AREAS-A-USAR.
           05 WS-CONTADOR          PIC 9(02)   VALUE ZEROS.
           05 WS-TOTAL             PIC 9(02).
           05 WS-SOMA              PIC 9(03)   VALUE ZEROS.

      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-BEGIN.

           PERFORM 010-SOMA THRU 010-FIM 5 TIMES
           DISPLAY 'SOMA DO CONTADOR: ' WS-CONTADOR
           DISPLAY ' '

           DISPLAY 'TECLE O TOTAL: '
           ACCEPT WS-TOTAL
           PERFORM 020-PROCESSO THRU 020-FIM
                   VARYING WS-CONTADOR FROM 1 BY 1
                   UNTIL   WS-CONTADOR > WS-TOTAL
           DISPLAY ' '
           DISPLAY 'SOMA DO CONTADOR: ' WS-SOMA
           GOBACK.

           010-SOMA.
               COMPUTE WS-CONTADOR = WS-CONTADOR + 1.
           010-FIM. EXIT.

           020-PROCESSO.
               DISPLAY 'VALOR DE CONTADOR: ' WS-CONTADOR
               ADD WS-CONTADOR TO WS-SOMA.
           020-FIM. EXIT.

       PROGRAM-DONE.
           GOBACK.
