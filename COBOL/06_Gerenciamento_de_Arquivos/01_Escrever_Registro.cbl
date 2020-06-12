      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID.     03_Escrever_Registro.
       AUTHOR.         VINICIUS AZEVEDO.
       DATE-WRITTEN.   12/06/2020.
       DATE-COMPILED.
       SECURITY.       NAO E CONFIDENCIAL.
      ******************************************************************
      * TEXTO: Exemplificação de leitura de um arquivo.
      *    Foi aberto um arquivo .txt e apresentado no external log.
      *    É importante lembrar que o .txt deve estar na pasta bin
      *do diretório do programa.
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
           SELECT STUDENT ASSIGN TO 'input3.txt'
           ORGANIZATION IS LINE SEQUENTIAL
           ACCESS IS SEQUENTIAL.

      *-----------------------------------------------------------------
       DATA DIVISION.
      *-----------------------------------------------------------------
       FILE SECTION.
       FD  STUDENT.
       01  STUDENT-FILE.
           05  STUDENT-ID  PIC 9(5).
           05  NAME        PIC A(25).

       WORKING-STORAGE SECTION.
       01  WS-STUDENT.
           05  WS-STUDENT-ID       PIC 9(05).
           05  FILLER              PIC X(01) VALUE SPACES.
           05  WS-NAME             PIC A(25).

      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-BEGIN.

           DISPLAY 'STUDENT-ID: '
           ACCEPT WS-STUDENT-ID.
           DISPLAY 'NAME: '
           ACCEPT WS-NAME.

           OPEN OUTPUT STUDENT.
               WRITE STUDENT-FILE FROM WS-STUDENT
               WRITE STUDENT-FILE FROM WS-NAME
               END-WRITE.
           CLOSE STUDENT.
           GOBACK.

       PROGRAM-DONE.
