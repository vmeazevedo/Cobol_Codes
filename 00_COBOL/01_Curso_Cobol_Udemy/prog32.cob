      ******************************************************************
      * Author: Vinicius Azevedo
      * Date: 18/04/2020
      * Purpose: Acadêmico
      * Tectonics: cobc
      ******************************************************************
      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. PROG32.
      *Programa para manipular arquivos.
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
      *Contém a parte física, nome do arquivo e como ele será organizado
       INPUT-OUTPUT SECTION.
      *Sessão para se definir arquivos.
       FILE-CONTROL.
      *Definir arquivos específicos desse programa.
      *Select irá associar a parte lógica ao arquivo físico.
           SELECT OPTIONAL ARQUIVO-CLIENTE
           ASSIGN TO 'clientes.dat'
           ORGANIZATION IS SEQUENTIAL.

      *-----------------------------------------------------------------
       DATA DIVISION.
      *-----------------------------------------------------------------
       FILE SECTION.
      *Contém a parte lógica do registro.
       FD  ARQUIVO-CLIENTE.
      *Descrição do arquivo. Contém a definição da parte lógica.
      *     LABEL RECORDS ARE STANDARD.
       01  CLIENTE-REGISTRO.
           05 CLIENTE-NOME PIC X(20).
           05 CLIENTE-ENDERECO PIC X(30).
           05 CLIENTE-TELEFONE PIC X(15).
           05 CLIENTE-EMAIL PIC X(30).

       WORKING-STORAGE SECTION.
       01  RESPOSTA    PIC X.
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-BEGIN.
      *EXTEND - Se um arquivo não existe ele é criado e novos registros
      *são add. Se ele existir ele é aberto.
           OPEN EXTEND ARQUIVO-CLIENTE.
           MOVE 'S' TO RESPOSTA
           PERFORM ADICIONA-REGISTROS
               UNTIL RESPOSTA = 'N'.
           CLOSE ARQUIVO-CLIENTE.

       PROGRAM-DONE.
           STOP RUN.

       ADICIONA-REGISTROS.
           MOVE SPACE TO CLIENTE-REGISTRO.
           DISPLAY 'INFORME O NOME: '
           ACCEPT CLIENTE-NOME.
           DISPLAY 'INFORME O ENDERECO: '
           ACCEPT CLIENTE-ENDERECO.
           DISPLAY 'INFORME O TELEFONE: '
           ACCEPT  CLIENTE-TELEFONE.
           DISPLAY 'INFORME O EMAIL: '
           ACCEPT CLIENTE-EMAIL.

           WRITE CLIENTE-REGISTRO.
           DISPLAY '-----------'.
           DISPLAY 'DESEJA ADICIONAR OUTRO CLIENTE? [S/N]'
           ACCEPT RESPOSTA.
