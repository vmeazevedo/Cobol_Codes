      ******************************************************************
      * Author: Vinicius Azevedo
      * Date: 17/04/2020
      * Purpose: Acadêmico
      * Tectonics: cobc
      ******************************************************************
      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. PROG29b.
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
           DISPLAY 'REGISTROS DE DADOS'.
           DISPLAY 'Digite o codigo de funcionario:'
           ACCEPT CODIGO.
           DISPLAY 'Digite o nome do funcionario:'
           ACCEPT NOME.
           DISPLAY 'Digite o endereco do funcionario:'
           ACCEPT ENDERECO.
           DISPLAY 'Digite o salario do funcionario:'
           ACCEPT SALARIO.

           DISPLAY '========================'
           DISPLAY FUNCIONARIO.
       PROGRAM-DONE.
           STOP RUN.
