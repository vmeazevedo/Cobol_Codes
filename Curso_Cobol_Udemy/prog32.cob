      ******************************************************************
      * Author: Vinicius Azevedo
      * Date: 18/04/2020
      * Purpose: Acad�mico
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
      *Cont�m a parte f�sica, nome do arquivo e como ele ser� organizado
       INPUT-OUTPUT SECTION.
      *Sess�o para se definir arquivos.
       FILE-CONTROL.
      *Definir arquivos espec�ficos desse programa.
      *Select ir� associar a parte l�gica ao arquivo f�sico.
           SELECT OPTIONAL ARQUIVO-CLIENTE
           ASSIGN TO 'clientes.dat'
           ORGANIZATION IS SEQUENTIAL.

      *-----------------------------------------------------------------
       DATA DIVISION.
      *-----------------------------------------------------------------
       FILE SECTION.
      *Cont�m a parte l�gica do registro.
       FD  ARQUIVO-CLIENTE.
      *Descri��o do arquivo. Cont�m a defini��o da parte l�gica.
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
      *EXTEND - Se um arquivo n�o existe ele � criado e novos registros
      *s�o add. Se ele existir ele � aberto.
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
