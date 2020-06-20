      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID.     01_Escrever_Registro_Indexado.
       AUTHOR.         VINICIUS AZEVEDO.
       DATE-WRITTEN.   15/06/2020.
       DATE-COMPILED.
       SECURITY.       NAO E CONFIDENCIAL.
      ******************************************************************
      * TEXTO: Exemplo de adição de registro em um arquivo indexado.
      *
      *
      *
      ******************************************************************
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.           IBM-3083.
       OBJECT-COMPUTER.           IBM-3083.
       SPECIAL-NAMES.             DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT STUDENT ASSIGN TO 'student.dat'
           ORGANIZATION IS INDEXED
           ACCESS MODE IS DYNAMIC
           RECORD KEY IS STUDENT-ID.

      *-----------------------------------------------------------------
       DATA DIVISION.
      *-----------------------------------------------------------------
       FILE SECTION.
       FD  STUDENT.
       01  STUDENT-FILE.
           05  STUDENT-ID           PIC 9(5).
           05  FILLER               PIC X(1).
           05  STUDENT-NAME         PIC X(25).

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
