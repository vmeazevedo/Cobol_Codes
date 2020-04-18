      ******************************************************************
      * Author: Vinicius Azevedo
      * Date: 18/04/2020
      * Purpose: Acad�mico
      * Tectonics: cobc
      ******************************************************************
      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. PROG35.
      *Programa para inserir dados em arquivos indexados.
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

           OPEN I-O ARQUIVO-FUNCIONARIO.
      *Modo insumo � utilizado para ler e reescrever os registros de um arquivo.
           PERFORM LER-E-ESCREVE-REGISTRO.
           CLOSE ARQUIVO-FUNCIONARIO.

       PROGRAM-DONE.
           STOP RUN.

       LER-E-ESCREVE-REGISTRO.

           MOVE SPACE TO FUNCIONARIO-REGISTRO.
           MOVE ZEROS TO FUNCIONARIO-CODIGO.
      *Move espa�o e zeros para as vari�veis.
           DISPLAY 'INFORME O CODIGO DO FUNCIONARIO (1-9999): '.
           ACCEPT FUNCIONARIO-CODIGO.
           DISPLAY 'INFORME O NOME DO FUNCIONARIO: '.
           ACCEPT FUNCIONARIO-NOME.
           DISPLAY 'INFORME O ENDERECO DO FUNCIONARIO: '.
           ACCEPT FUNCIONARIO-ENDERECO.
           DISPLAY 'INFORME O TELEFONE DO FUNCIONARIO: '.
           ACCEPT FUNCIONARIO-TELEFONE.
           DISPLAY 'INFORME O E-MAIL DO FUNCIONARIO:'.
           ACCEPT FUNCIONARIO-EMAIL.

           WRITE FUNCIONARIO-REGISTRO.
      *Escreve os dados do ACCEPT no registro.
