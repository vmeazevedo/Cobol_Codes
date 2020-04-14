       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG5.
      *programas que demonstra o uso do MOVE
      *MOVE é um comando para atribuir um valor a uma variável
       ENVIRONMENT DIVISION.
       DATA DIVISION.

       WORKING-STORAGE SECTION.
       01 MINHA-MENSAGEM PIC X(20).
       01 NOME PIC X(10).
       01 NUMERO PIC 9(2).

       PROCEDURE DIVISION.

       PROGRAM-BEGIN.

           DISPLAY 'Qual o seu nome? '.
           ACCEPT NOME.
           MOVE 'Ola ' TO MINHA-MENSAGEM.
           MOVE 1 TO NUMERO.
           DISPLAY 'Mensagem ' NUMERO ': ' MINHA-MENSAGEM NOME.

           MOVE 'Tchau ' TO MINHA-MENSAGEM.

           MOVE 2 TO NUMERO.
           DISPLAY 'Mensagem ' NUMERO ': ' MINHA-MENSAGEM NOME.

       PROGRAM-DONE.
           STOP-RUN.
