      ******************************************************************
      * Author: Vinicius Azevedo
      * Date: 17/04/2020
      * Purpose: Acadêmico
      * Tectonics: cobc
      ******************************************************************
      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. PROG30.
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
           05 NOME       PIC X(10) VALUE 'JOSE MARIA'.
           05 FILLER     PIC X(2) VALUE '  '.
           05 ENDERECO   PIC X(20) VALUE 'Rua Principal n. 123'.
           05 FILLER     PIC X(2) VALUE '  '.
           05 SALARIO    PIC 9(4)V9(2) VALUE 1500.00.
           05 FILLER     PIC X(2) VALUE '  '.
           05 FUNCAO.
               10 DEPARTAMENTO PIC X(10).
               10 FILLER     PIC X(2) VALUE '  '.
               10 TAREFA PIC X(100).
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-BEGIN.
           MOVE 'Marketing' TO DEPARTAMENTO.
           MOVE 'Criar uma campanha de MKT para o Natal.' TO TAREFA.
           MOVE 1 TO CODIGO.
           DISPLAY FUNCIONARIO.

           MOVE 'Financeiro' TO DEPARTAMENTO.
           MOVE 'Traga o relatorio com todas as contas a pagar.'
           TO TAREFA.
           ADD 1 TO CODIGO.
           MOVE 'ANA ROBERT' TO NOME.
           MOVE 'Rua Secundaria n. 43' TO ENDERECO.
           DISPLAY FUNCIONARIO.

       PROGRAM-DONE.
           STOP RUN.
