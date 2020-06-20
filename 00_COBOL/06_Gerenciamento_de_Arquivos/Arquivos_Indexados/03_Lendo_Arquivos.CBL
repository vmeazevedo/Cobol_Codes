      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID.     01_Lendo_Arquivos_Indexados.
       AUTHOR.         VINICIUS AZEVEDO.
       DATE-WRITTEN.   15/06/2020.
       DATE-COMPILED.
       SECURITY.       NAO E CONFIDENCIAL.
      ******************************************************************
      * TEXTO: Exemplo de leitura de um arquivo indexado.
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
           05  STUDENT-NAME         PIC X(25).

       WORKING-STORAGE SECTION.
       01  WS-EOF                   PIC X(1).
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-BEGIN.

           OPEN INPUT STUDENT.

           PERFORM UNTIL WS-EOF = 'Y'
               READ STUDENT AT END MOVE 'Y' TO WS-EOF
               END-READ
           END-PERFORM.

           DISPLAY STUDENT-FILE.
           CLOSE STUDENT.
           GOBACK.

       PROGRAM-DONE.
