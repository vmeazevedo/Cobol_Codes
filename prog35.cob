      ******************************************************************
      * Author: Vinicius Azevedo
      * Date: 18/04/2020
      * Purpose: Acadêmico
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
      *Select irá associar a parte lógica ao arquivo físico.
      *Não existe o comando OPTIONAL em arquivos indexados.
           SELECT ARQUIVO-FUNCIONARIO
           ASSIGN TO 'funcionarios.dat'
           ORGANIZATION IS INDEXED
      *Arquivo sera indexado agora
           RECORD KEY IS FUNCIONARIO-CODIGO
      *Sera criado uma key para cada input do arquivo.
           ACCESS MODE IS DYNAMIC.
      *Modo de acesso é dinâmico.
      *-----------------------------------------------------------------
       DATA DIVISION.
      *-----------------------------------------------------------------
       FILE SECTION.
      *Contém a parte lógica do registro.
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
      *Modo insumo é utilizado para ler e reescrever os registros de um arquivo.
           PERFORM LER-E-ESCREVE-REGISTRO.
           CLOSE ARQUIVO-FUNCIONARIO.

       PROGRAM-DONE.
           STOP RUN.

       LER-E-ESCREVE-REGISTRO.

           MOVE SPACE TO FUNCIONARIO-REGISTRO.
           MOVE ZEROS TO FUNCIONARIO-CODIGO.
      *Move espaço e zeros para as variáveis.
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
