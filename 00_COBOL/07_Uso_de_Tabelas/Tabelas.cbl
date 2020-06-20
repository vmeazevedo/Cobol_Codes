      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID.     MODELO.
       AUTHOR.         VINICIUS AZEVEDO.
       DATE-WRITTEN.   08/06/2020.
       DATE-COMPILED.
       SECURITY.       NAO E CONFIDENCIAL.
      ******************************************************************
      * TEXTO:
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
       I-O-CONTROL.

      *-----------------------------------------------------------------
       DATA DIVISION.
      *-----------------------------------------------------------------
       FILE SECTION.

       WORKING-STORAGE SECTION.
       01  WS-TABLE.
           05 WS-A PIC A(10) VALUE 'EXEMPLO' OCCURS 5 TIMES.


       01  WS-TABELAS.
           05 WS-EMPREGADOS OCCURS 3 TIMES.
              10 WS-NUMERO         PIC 9(05).
              10 FILLER            PIC X(01).
              10 WS-NOME           PIC X(35).
              10 FILLER            PIC X(01).
              10 WS-SALARIO        PIC 9(05)V99.
              10 FILLER            PIC X(01).
       01  WS-AREAS.
           05 WS-INDICE            PIC 9(03).

      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-BEGIN.

           DISPLAY "USO DO OCCURS DIRETO : "WS-TABLE.
           DISPLAY ' '



           DISPLAY 'USO DO OCCURS COM ACCEPT: '
           PERFORM 020-CARGA-TABELA THRU 020-FIM
                   VARYING WS-INDICE FROM 1 BY 01
                   UNTIL WS-INDICE GREATER 3
           PERFORM 030-ESVAZIA-TABELA THRU 030-FIM
                   VARYING WS-INDICE FROM 1 BY 1
                   UNTIL WS-INDICE GREATER 3
           GOBACK.

           020-CARGA-TABELA.
               DISPLAY 'NUMERO: '
               ACCEPT WS-NUMERO (WS-INDICE)
               DISPLAY 'NOME: '
               ACCEPT WS-NOME (WS-INDICE)
               DISPLAY 'SALARIO: '
               ACCEPT WS-SALARIO (WS-INDICE)
               DISPLAY ''.
           020-FIM. EXIT.

           030-ESVAZIA-TABELA.
               DISPLAY 'NUMERO: ' WS-NUMERO (WS-INDICE)
               DISPLAY 'NOME: ' WS-NOME (WS-INDICE)
               DISPLAY 'SALARIO: ' WS-SALARIO (WS-INDICE)
               DISPLAY ''.
           030-FIM. EXIT.

       PROGRAM-DONE.
