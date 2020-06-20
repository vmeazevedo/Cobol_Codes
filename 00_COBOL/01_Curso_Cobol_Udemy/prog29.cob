      ******************************************************************
      * Author: Vinicius Azevedo
      * Date: 17/04/2020
      * Purpose: Acadêmico
      * Tectonics: cobc
      ******************************************************************
      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. PROG29.
      *Demonstração de FILLER
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       DATA DIVISION.
      *-----------------------------------------------------------------
       WORKING-STORAGE SECTION.
       01  FUNCIONARIO.
           05 CODIGO     PIC 9(2).
           05 FILLER     PIC X(2) VALUE '  '.
           05 NOME       PIC X(20).
           05 FILLER     PIC X(2) VALUE '  '.
           05 ENDERECO   PIC X(20).
           05 FILLER     PIC X(2) VALUE '  '.
           05 SALARIO    PIC 9(4)V9(2).
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-BEGIN.
           MOVE 33 TO CODIGO.
           MOVE 'JOSE ALMEIDA FILHO' TO NOME.
           MOVE 'Rua Principal n 54' TO ENDERECO.
           MOVE 2500.50 TO SALARIO.
           DISPLAY FUNCIONARIO.
       PROGRAM-DONE.
           STOP RUN.
