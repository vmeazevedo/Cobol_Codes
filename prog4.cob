       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG4.
      *programas que demonstra o uso de variáveis de texto

       ENVIRONMENT DIVISION.
       DATA DIVISION.

       WORKING-STORAGE SECTION.
      *01 NOME PICTURE IS XXXXXXXXXX.
       01 NOME PIC X(10).

       PROCEDURE DIVISION.

       PROGRAM-BEGIN.

           DISPLAY 'Qual o seu nome? '.
           ACCEPT NOME.
           DISPLAY 'Ola ' NOME.

       PROGRAM-DONE.
           STOP-RUN.
