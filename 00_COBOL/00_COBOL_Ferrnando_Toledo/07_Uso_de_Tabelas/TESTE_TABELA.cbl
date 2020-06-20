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
           05 WS-A PIC A(10) VALUE 'TUTORIALS' OCCURS 5 TIMES.

       01  WS-TABELA OCCURS 3 TIMES.
           05 WS-B PIC X(10) VALUE 'OLA'.


      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-BEGIN.

           DISPLAY "ONE-D TABLE : "WS-TABLE.

           DISPLAY 'WS-TABELA: ' WS-TABELA

       PROGRAM-DONE.
           GOBACK.
