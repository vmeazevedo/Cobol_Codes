      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID.     01_DISPLAY.
       AUTHOR.         VINICIUS AZEVEDO.
       DATE-WRITTEN.   08/06/2020.
       DATE-COMPILED.
       SECURITY.       NAO E CONFIDENCIAL.
      ******************************************************************
      *TEXTO: PROGRAMA QUE APRESENTA AS FUNCIONALIDADES DO COMANDO
      *    DISPLAY.
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
           05 WS-CAMPO-01          PIC X(08) VALUE "FERNANDO".
           05 WS-CAMPO-02          PIC 9(05) VALUE 12345.

      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-BEGIN.

           DISPLAY "FIGURAS FINAIS"
           DISPLAY WS-CAMPO-01
           DISPLAY 'CONTEUDO DO CAMPO 01: ' WS-CAMPO-01
           DISPLAY 'CONTEUDO DO CAMPO 02: ' WS-CAMPO-02.

       PROGRAM-DONE.
           STOP RUN.
