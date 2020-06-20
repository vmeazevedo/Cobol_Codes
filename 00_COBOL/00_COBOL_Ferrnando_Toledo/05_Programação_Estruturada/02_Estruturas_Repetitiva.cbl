      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID.     MODELO.
       AUTHOR.         VINICIUS AZEVEDO.
       DATE-WRITTEN.   12/06/2020.
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
       SPECIAL-NAMES.             DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT ARQUIVO ASSIGN TO LOCAL.
       I-O-CONTROL.

      *-----------------------------------------------------------------
       DATA DIVISION.
      *-----------------------------------------------------------------
       FILE SECTION.
       FD  ARQUIVO
           LABEL RECORDS ARE STANDARD
           RECORD CONTAINS 50 CHARACTERS
           BLOCK CONTAINS 0 RECORDS
           DATA RECORD IS REG-ARQUIVO.
       01  REG-ARQUIVO      PIC X(50).


       WORKING-STORAGE SECTION.
       01  WS-AREAS-A-USAR.
           05 WS-SOMA              PIC 9(05)   VALUE ZEROS.
           05 WS-NUMERO            PIC 9(03)   VALUE 999.

      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-BEGIN.

           PERFORM 100-LE-NUMEROS  THRU 100-FIM
           PERFORM 100-PROCESSO    THRU 100-FIM
                   UNTIL WS-NUMERO EQUAL ZEROS
           DISPLAY 'SOMA DE NUMEROS: ' WS-SOMA
           GOBACK.

           100-PROCESSO.
               PERFORM 200-REALIZA-CALCULO THRU 200-FIM.
           100-LE-NUMEROS.
               DISPLAY 'DIGITE O NUMERO: '
               ACCEPT WS-NUMERO.
           100-FIM. EXIT.

           200-REALIZA-CALCULO.
               COMPUTE WS-SOMA = WS-SOMA + WS-NUMERO.
           200-FIM. EXIT.

       PROGRAM-DONE.
           GOBACK.
