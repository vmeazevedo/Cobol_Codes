      ******************************************************************
      * Author: Vinicius Azevedo
      * Date: 18/04/2020
      * Purpose: Acad�mico
      * Tectonics: cobc
      ******************************************************************
      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. PROG34.
      *Programa para criar arquivos indexados.
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
      *Select ir� associar a parte l�gica ao arquivo f�sico.
      *N�o existe o comando OPTIONAL em arquivos indexados.
           SELECT ARQUIVO-FUNCIONARIO
           ASSIGN TO 'funcionarios.dat'
           ORGANIZATION IS INDEXED
      *Arquivo sera indexado agora
           RECORD KEY IS FUNCIONARIO-CODIGO
      *Sera criado uma key para cada input do arquivo.
           ACCESS MODE IS DYNAMIC.
      *Modo de acesso � din�mico.
      *-----------------------------------------------------------------
       DATA DIVISION.
      *-----------------------------------------------------------------
       FILE SECTION.
      *Cont�m a parte l�gica do registro.
       FD  ARQUIVO-FUNCIONARIO.
       01  FUNCIONARIO-REGISTRO.
           05 FUNCIONARIO-CODIGO PIC 9(4).
           05 FUNCIONARIO-NOME PIC X(20).
           05 FUNCIONARIO-ENDERECO PIC X(50).
           05 FUNCIONARIO-TELEFONE PIC X(15).
           05 FUNCIONARIO-EMAIL PIC X(30).

       WORKING-STORAGE SECTION.
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-BEGIN.

           OPEN OUTPUT ARQUIVO-FUNCIONARIO.
      *Se o arquivo n�o tiver sido criado ele ser� criado para ler/grava
      *Ou se ele ja tiver sido criado, ele sera apagado e recriado.

           CLOSE ARQUIVO-FUNCIONARIO.

       PROGRAM-DONE.

           STOP RUN.
