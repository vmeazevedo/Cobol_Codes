      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID.     02_ACCEPT.
       AUTHOR.         VINICIUS AZEVEDO.
       DATE-WRITTEN.   08/06/2020.
       DATE-COMPILED.
       SECURITY.       NAO E CONFIDENCIAL.
      ******************************************************************
      * TEXTO: PROGRAMA QUE APRESENTA AS FUNCIONALIDADES DO COMANDO
      *    ACCEPT.
      *
      *
      ******************************************************************
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.           IBM-3083.
       OBJECT-COMPUTER.           IBM-3083.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
      *-----------------------------------------------------------------
       DATA DIVISION.
      *-----------------------------------------------------------------
       WORKING-STORAGE SECTION.
       01  WS-AREAS-A-USAR.
           05 WS-CONTA         PIC 9(05).
           05 WS-DATA          PIC 9(06).
           05 WS-DIAS-TRANSCORRIDOS.
               10 WS-ANO       PIC 9(02).
               10 WS-DIAS      PIC 9(03).
           05 WS-DIA-SEMANA    PIC 9(01).
           05 WS-HORA          PIC 9(08).
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-BEGIN.

           DISPLAY 'TECLE O NUMERO DA CONTA: '
           ACCEPT WS-CONTA
           DISPLAY 'A CONTA E: ' WS-CONTA
           DISPLAY ' '

           ACCEPT WS-DATA FROM DATE
           DISPLAY 'A DATA DO DIA E: ' WS-DATA
           DISPLAY ' '

           ACCEPT WS-DIAS-TRANSCORRIDOS FROM DAY
           DISPLAY 'OS DIAS TRANSCORRIDOS SAO: ' WS-DIAS-TRANSCORRIDOS
           DISPLAY ' '

           ACCEPT WS-DIA-SEMANA FROM DAY-OF-WEEK
           DISPLAY 'O DIA DA SEMANA E: ' WS-DIA-SEMANA
           DISPLAY ' '

           ACCEPT WS-HORA FROM TIME
           DISPLAY 'A HORA DO DIA E: ' WS-HORA.

       PROGRAM-DONE.
           STOP RUN.
