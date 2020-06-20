       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG5.
       ENVIRONMENT DIVISION.
       DATA DIVISION.

       WORKING-STORAGE SECTION.

       01  MINHA-MENSAGEM PIC X(20).
       01  NOME PIC X(10).
       01  NUMERO PIC 9(2).

       PROCEDURE DIVISION.

           DISPLAY "Qual eh o seu nome?".
           ACCEPT NOME.
           MOVE "Ola " TO MINHA-MENSAGEM.
           MOVE 1 TO NUMERO.
           DISPLAY "Mensagem " NUMERO ": " MINHA-MENSAGEM NOME.

           MOVE "Tchau " TO MINHA-MENSAGEM.

           MOVE 2 TO NUMERO.
           DISPLAY "Mensagem " NUMERO ": " MINHA-MENSAGEM NOME.

       PROGRAM-DONE.
           STOP RUN.
