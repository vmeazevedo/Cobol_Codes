      ******************************************************************
      * Author: Vinicius Azevedo
      * Date: 17/04/2020
      * Purpose: Acadêmico
      * Tectonics: cobc
      ******************************************************************
      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. PROG28.
      *Demonstração de RECORD
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       DATA DIVISION.
      *-----------------------------------------------------------------
       WORKING-STORAGE SECTION.
       01  FUNCIONARIO.
           05 CODIGO     PIC 9(2).
           05 NOME       PIC X(20).
           05 ENDERECO   PIC X(30).
           05 SALARIO    PIC 9(4)V9(2).
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-BEGIN.
           MOVE 33 TO CODIGO.
           MOVE 'JOSE' TO NOME.
           MOVE 'Rua Principal n 54' TO ENDERECO.
           MOVE 2500.00 TO SALARIO.
           DISPLAY FUNCIONARIO.
       PROGRAM-DONE.
           STOP RUN.
