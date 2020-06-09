      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID.     04_SUBTRACT.
       AUTHOR.         VINICIUS AZEVEDO.
       DATE-WRITTEN.   08/06/2020.
       DATE-COMPILED.
       SECURITY.       NAO E CONFIDENCIAL.
      ******************************************************************
      * TEXTO: Apresentação da função do comando SUBTRACT.
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
           05 WS-CAMPO-01          PIC S9(03) VALUE 20.
           05 WS-CAMPO-02          PIC S9(03) VALUE 8.
           05 WS-CAMPO-03          PIC S9(03) VALUE ZEROS.

      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-BEGIN.

           DISPLAY 'CAMPO 02 ANTES: ' WS-CAMPO-02
           SUBTRACT 1 FROM WS-CAMPO-02
           DISPLAY 'CAMPO 02 DEPOIS: ' WS-CAMPO-02
           DISPLAY ' '

           DISPLAY 'CAMPO 01 ANTES: ' WS-CAMPO-01
           SUBTRACT WS-CAMPO-02 FROM WS-CAMPO-01
           DISPLAY 'CAMPO 01 DEPOIS: ' WS-CAMPO-01
           DISPLAY ' '

           DISPLAY 'CAMPO 03 ANTES: ' WS-CAMPO-03
           SUBTRACT WS-CAMPO-01 FROM WS-CAMPO-02 GIVING WS-CAMPO-03
           DISPLAY 'CAMPO 03 DEPOIS: ' WS-CAMPO-03.

       PROGRAM-DONE.
           STOP RUN.
