      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID.     07_GOTO_DEPENDING_ON.
       AUTHOR.         VINICIUS AZEVEDO.
       DATE-WRITTEN.   10/06/2020.
       DATE-COMPILED.
       SECURITY.       NAO E CONFIDENCIAL.
      ******************************************************************
      * TEXTO: Exemplificação do comando GO TO DEPENDING ON.
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

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
      *-----------------------------------------------------------------
       DATA DIVISION.
      *-----------------------------------------------------------------
       WORKING-STORAGE SECTION.
       01  WS-AREAS-A-USAR.
           05 WS-OPCAO-MENU            PIC 9(01).


      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-BEGIN.

           DISPLAY 'DIGITE A OPCAO: '
           ACCEPT WS-OPCAO-MENU
           GO TO   010-ALTA
                   020-BAIXA
                   030-CAMBIO
           DEPENDING ON WS-OPCAO-MENU
           DISPLAY 'OPCAO INVALIDA'
           GOBACK.

           010-ALTA.
               DISPLAY 'A OPCAO DO MENU E ALTA.'.
               GOBACK.
           020-BAIXA.
               DISPLAY 'A OPCAO DO MENU E BAIXA.'.
               GOBACK.
           030-CAMBIO.
               DISPLAY 'A OPCAO DO MENU E CAMBIO'.
               GOBACK.

       PROGRAM-DONE.
           GOBACK.
