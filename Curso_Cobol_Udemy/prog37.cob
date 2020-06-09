      ******************************************************************
      * Author: Vinicius Azevedo
      * Date: 18/04/2020
      * Purpose: Acadêmico
      * Tectonics: cobc
      ******************************************************************
      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. PROG37.
      *Programa para inserir dados em arquivos indexados.
      *Write com INVALID KEY.
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           COPY 'SELFUNCIONARIO.cob'.
      *O comando COPY irá trazer as informações de dentro de outro
      *arquivo para ser executado aqui, como o comando import.
      *-----------------------------------------------------------------
       DATA DIVISION.
      *-----------------------------------------------------------------
       FILE SECTION.
           COPY 'FDFUNCIONARIO.cob'.
      *O comando COPY irá trazer as informações de dentro de outro
      *arquivo para ser executado aqui, como o comando import.

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

           WRITE FUNCIONARIO-REGISTRO
            INVALID KEY
            DISPLAY 'CODIGO: ' FUNCIONARIO-CODIGO ' JA FOI CADASTRADO.'.
      *Se a key ja tiver sido utilizada ele informa uma msg.
      *Escreve os dados do ACCEPT no registro.
