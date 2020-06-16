      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID.     COMANDO_COPY.
       AUTHOR.         VINICIUS AZEVEDO.
       DATE-WRITTEN.   15/06/2020.
       DATE-COMPILED.
       SECURITY.       NAO E CONFIDENCIAL.
      ******************************************************************
      * TEXTO: Exemplo de uso do comando COPY em um programa.
      *
      ******************************************************************
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           COPY 'SL_STUDENT.cbl'.
      *Trazemos a estrutra do SELECT a ser usado salvo em outro arquivo
      *no caso o arquivo SL_STUDENT.cbl
      *-----------------------------------------------------------------
       DATA DIVISION.
      *-----------------------------------------------------------------
       FILE SECTION.
           COPY 'FD_STUDENT.cbl'.
      *Trazemos a estrutra do FD a ser usado salvo em outro arquivo
      *no caso o arquivo FD_STUDENT.cbl

       WORKING-STORAGE SECTION.

      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-BEGIN.

      *Modo insumo é utilizado para ler e reescrever os registros de um arquivo.
           OPEN I-O STUDENT.
           PERFORM LER-E-ESCREVER-REGISTRO.
           CLOSE STUDENT.
           GOBACK.

       LER-E-ESCREVER-REGISTRO.
           MOVE SPACE TO STUDENT-FILE.
           DISPLAY 'Informe a ID: '.
           ACCEPT STUDENT-ID.
           DISPLAY 'Informe o nome: '.
           ACCEPT STUDENT-NAME.
           WRITE STUDENT-FILE.

       PROGRAM-DONE.
