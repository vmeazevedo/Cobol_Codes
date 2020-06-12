      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID.     01_Lendo_Arquivos.
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
           ORGANIZATION IS LINE SEQUENTIAL.

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
           05  WS-NAME             PIC A(25).
       01  WS-EOF                  PIC A(1).

      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-BEGIN.

           OPEN INPUT STUDENT.
           PERFORM UNTIL WS-EOF = 'Y'
               READ STUDENT INTO WS-STUDENT AT END MOVE 'Y' TO WS-EOF
               NOT AT END DISPLAY WS-STUDENT
               END-READ
           END-PERFORM.
           CLOSE STUDENT.
           GOBACK.

       PROGRAM-DONE.
