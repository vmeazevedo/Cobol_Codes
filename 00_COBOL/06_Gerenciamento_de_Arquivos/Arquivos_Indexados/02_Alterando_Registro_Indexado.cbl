      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID.     02_Alterando_Registro_Indexado.
       AUTHOR.         VINICIUS AZEVEDO.
       DATE-WRITTEN.   15/06/2020.
       DATE-COMPILED.
       SECURITY.       NAO E CONFIDENCIAL.
      ******************************************************************
      * TEXTO: Exemplo de alteração de registro em um arquivo indexado.
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
       01  WS-STUDENT.
           05  WS-STUDENT-ID           PIC 9(5).
           05  FILLER                  PIC X(1).
           05  WS-STUDENT-NAME         PIC X(25).
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-BEGIN.

           DISPLAY 'STUDENT-ID: '
           ACCEPT WS-STUDENT-ID.
           DISPLAY 'NAME: '
           ACCEPT WS-STUDENT-NAME.

           OPEN I-O STUDENT.
               MOVE WS-STUDENT TO STUDENT-FILE.
               WRITE STUDENT-FILE
               END-WRITE.
           CLOSE STUDENT.
           GOBACK.

       PROGRAM-DONE.
