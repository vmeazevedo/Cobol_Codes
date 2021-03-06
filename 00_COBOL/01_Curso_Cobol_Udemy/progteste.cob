      ******************************************************************
      * Author: Vinicius Azevedo
      * Date: 18/04/2020
      * Purpose: AcadÍmico
      * Tectonics: cobc
      ******************************************************************
      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. PROGTESTE.
      *Faz a leitura dos dados dentro do arquivo FUNCIONARIOS.
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           COPY 'SELFUNCIONARIO.cob'.
      *-----------------------------------------------------------------
       DATA DIVISION.
      *-----------------------------------------------------------------
       FILE SECTION.
           COPY 'FDFUNCIONARIO.cob'.

       WORKING-STORAGE SECTION.
       01  FINAL-ARQUIVO PIC X.
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-BEGIN.

           OPEN INPUT ARQUIVO-FUNCIONARIO.
           MOVE 'N' TO FINAL-ARQUIVO.

           PERFORM LEIA-PROXIMO-REGISTRO.

           PERFORM EXIBA-REGISTROS
               UNTIL FINAL-ARQUIVO = 'S'.

           CLOSE ARQUIVO-FUNCIONARIO.

       PROGRAM-DONE.
           STOP RUN.

       LEIA-PROXIMO-REGISTRO.
           READ ARQUIVO-FUNCIONARIO RECORD AT END
           MOVE 'S' TO FINAL-ARQUIVO.

       EXIBA-REGISTROS.
           PERFORM EXIBA-CAMPOS.
           PERFORM LEIA-PROXIMO-REGISTRO.

       EXIBA-CAMPOS.
           DISPLAY 'NOME: ' FUNCIONARIO-NOME.
           DISPLAY 'ENDERECO : ' FUNCIONARIO-ENDERECO.
           DISPLAY 'TELEFONE : ' FUNCIONARIO-TELEFONE.
           DISPLAY 'EMAIL : ' FUNCIONARIO-EMAIL.
           DISPLAY '=================='.
