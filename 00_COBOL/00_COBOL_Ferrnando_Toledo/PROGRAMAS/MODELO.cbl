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
           SELECT EMPREGADOS ASSIGN TO LOCAL
           ORGANIZATION IS INDEXED
           ACCESS MODE IS DYNAMIC
           RECORD KEY IS EMPREGADOS-CHAVE
           FILE STATUS IS WS-CODIGO.
       I-O-CONTROL.

      *-----------------------------------------------------------------
       DATA DIVISION.
      *-----------------------------------------------------------------
       FILE SECTION.
       FD  EMPREGADOS
           RECORD CONTAINS 50 CHARACTERS
           DATA RECORD IS REG-EMPREGADOS.
       01  REG-EMPREGADOS.
           05 EMPREGADOS-CHAVE      PIC 9(05).
           05 FILLER                PIC X(45).


       WORKING-STORAGE SECTION.
       01  WS-CODIGO           PIC X(02).
       01  WS-CHAVE            PIC X(02).
       01  WS-REG-EMPREGADOS   PIC X(10).

      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-BEGIN.
           020-ABRE-ARQUIVOS.
               OPEN INPUT EMPREGADOS.
               IF WS-CODIGO NOT EQUAL ZEROS
                   DISPLAY 'ERROR AO ABRIR O ARQUIVO EMPREGADOS'.
           020-FIM. EXIT.

           040-LE-EMPREGADO.
               MOVE WS-CHAVE TO EMPREGADOS-CHAVE
               READ EMPREGADOS
               IF WS-CODIGO NOT EQUAL ZEROS
                   DISPLAY 'NAO EXISTE REGISTRO'.
               MOVE REG-EMPREGADOS TO WS-REG-EMPREGADOS.
           040-FIN. EXIT.

           050-FECHA-ARQUIVOS.
               CLOSE-EMPREGADOS.
           050-FIM. EXIT.

       PROGRAM-DONE.
           GOBACK.
