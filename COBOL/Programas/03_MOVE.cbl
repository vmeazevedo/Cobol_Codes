      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID.     03_MOVE.
       AUTHOR.         VINICIUS AZEVEDO.
       DATE-WRITTEN.   09/06/2020.
       DATE-COMPILED.
       SECURITY.       NAO E CONFIDENCIAL.
      ******************************************************************
      * TEXTO: Exemplificação da utilização do comando MOVE.
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
           05 WS-CAMPO-01              PIC X(08) VALUE 'FERNANDO'.
           05 WS-CAMPO-02              PIC X(08) VALUE SPACES.

           05 WS-NOME-NPM.
               10 WS-NOME              PIC X(15) VALUE 'VINICIUS'.
               10 WS-PATERNO           PIC X(15) VALUE 'AZEVEDO'.
               10 WS-MATERNO           PIC X(15) VALUE 'MENDES'.

           05 WS-NOME-PMN.
               10 WS-PATERNO           PIC X(10) VALUE 'AZEVEDO'.
               10 WS-MATERNO           PIC X(10) VALUE 'MENDES'.
               10 WS-NOME              PIC X(10) VALUE 'VINICIUS'.

      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-BEGIN.

           MOVE WS-CAMPO-01 TO WS-CAMPO-02
           DISPLAY 'CONTEUDO DO CAMPO 02: ' WS-CAMPO-02
           DISPLAY ' '

           MOVE CORRESPONDING WS-NOME-NPM TO WS-NOME-PMN
           DISPLAY 'CONTEUDO DO WS-NOME-PMN: ' WS-NOME-PMN.

       PROGRAM-DONE.
           STOP RUN.
