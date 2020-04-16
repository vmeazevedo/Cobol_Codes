      ******************************************************************
      * Author: Vinicius Azevedo
      * Date: 16/04/2020
      * Purpose: Acadêmico
      * Tectonics: cobc
      ******************************************************************
      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. PROG23.
      *Inicialização de variáveis
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       DATA DIVISION.
      *-----------------------------------------------------------------
       WORKING-STORAGE SECTION.
       01  NUMERO           PIC 9(2)   VALUE 15.
       01  MENSAGEM         PIC X(20)  VALUE 'CURSO DE COBOL'.
       01  NUMERO2          PIC 9(4)   VALUE ZERO.
       01  TEXTO            PIC X(30)  VALUE SPACE.
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-BEGIN.
           DISPLAY 'NUMERO: ' NUMERO.
           DISPLAY 'MENSAGEM: ' MENSAGEM.
           DISPLAY '------'.
           DISPLAY 'NUMERO2: ' NUMERO2.
           DISPLAY 'TEXTO: ' TEXTO.

           DISPLAY 'ATRIBUINDO VALORES'.
           ADD 20 TO NUMERO2.
           DISPLAY 'NUMERO2: ' NUMERO2.

           DISPLAY '------'.
           DISPLAY 'ATRIBUINDO NOVOS VALORES'.
           MOVE 2 TO NUMERO2.
           DISPLAY 'NOVO NUMERO2: ' NUMERO2.

       PROGRAM-DONE.
           STOP RUN.
