      ******************************************************************
      * Author: Vinicius Azevedo
      * Date: 18/04/2020
      * Purpose: Acad�mico
      * Tectonics: cobc
      ******************************************************************
      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. PROG33.
      *Programa para leitura de arquivos.
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

       01  CLIENTE-REGISTRO.
           05 CLIENTE-NOME PIC X(20).
           05 CLIENTE-ENDERECO PIC X(30).
           05 CLIENTE-TELEFONE PIC X(15).
           05 CLIENTE-EMAIL PIC X(30).

       WORKING-STORAGE SECTION.
       01  FINAL-ARQUIVO    PIC X.
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-BEGIN.
      *EXTEND - Se um arquivo n�o existe ele � criado e novos registros
      *s�o add. Se ele existir ele � aberto.
           OPEN INPUT ARQUIVO-CLIENTE.
      *Permitir� opera��o de entradas ou seja ler o arquivo.
           MOVE 'N' TO FINAL-ARQUIVO.
           PERFORM LEIA-PROXIMO-REGISTRO.
           PERFORM EXIBA-REGISTROS
               UNTIL FINAL-ARQUIVO = 'S'.

           CLOSE ARQUIVO-CLIENTE.

       PROGRAM-DONE.
           STOP RUN.

       LEIA-PROXIMO-REGISTRO.
           READ ARQUIVO-CLIENTE RECORD AT END
           MOVE 'S' TO FINAL-ARQUIVO.

       EXIBA-REGISTROS.
           PERFORM EXIBA-CAMPOS.
           PERFORM LEIA-PROXIMO-REGISTRO.

       EXIBA-CAMPOS.
           DISPLAY 'NOME: ' CLIENTE-NOME.
           DISPLAY 'ENDERECO : ' CLIENTE-ENDERECO.
           DISPLAY 'TELEFONE : ' CLIENTE-TELEFONE.
           DISPLAY 'EMAIL : ' CLIENTE-EMAIL.
           DISPLAY '=================='.
