      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID.     05_MULTIPLY_DIVIDE_COMPUTE.
       AUTHOR.         VINICIUS AZEVEDO.
       DATE-WRITTEN.   09/06/2020.
       DATE-COMPILED.
       SECURITY.       NAO E CONFIDENCIAL.
      ******************************************************************
      * TEXTO: Utilização do comando COMPUTE para a realização de
      *    operação aritméticas. O comando COMPUTE é amplamente usado,
      *    no lugar dos comandos MULTIPLY, SUM, SUBTRACT ou DIVIDE.
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
           05 WS-CAMPO-01          PIC 9(03)   VALUE 20.
           05 WS-CAMPO-02          PIC 9(03)   VALUE 8.
           05 WS-CAMPO-03          PIC 9(03)   VALUE ZEROS.

      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-BEGIN.

           COMPUTE WS-CAMPO-03 = WS-CAMPO-01 - WS-CAMPO-02
           DISPLAY 'CAMPO 03: ' WS-CAMPO-03

           COMPUTE WS-CAMPO-03 = WS-CAMPO-01 * WS-CAMPO-02
           DISPLAY 'CAMPO 03: ' WS-CAMPO-03

           COMPUTE WS-CAMPO-03 = WS-CAMPO-02 ** 3
           DISPLAY 'CAMPO 03: ' WS-CAMPO-03

           COMPUTE WS-CAMPO-03 = (WS-CAMPO-01 + WS-CAMPO-02) / 4
           DISPLAY 'CAMPO 03: ' WS-CAMPO-03.

       PROGRAM-DONE.
           STOP RUN.
