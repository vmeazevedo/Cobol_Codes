      ******************************************************************
      * Author: Vinicius Azevedo
      * Date: 18/04/2020
      * Purpose: Acadêmico
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
      *EXTEND - Se um arquivo não existe ele é criado e novos registros
      *são add. Se ele existir ele é aberto.
           OPEN INPUT ARQUIVO-CLIENTE.
      *Permitirá operação de entradas ou seja ler o arquivo.
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
