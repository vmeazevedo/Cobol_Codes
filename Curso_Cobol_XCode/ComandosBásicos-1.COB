      *=================================================================
       IDENTIFICATION                                  DIVISION.
      *=================================================================
       PROGRAM-ID. ComandosBásicos-1.
      *******************************************************************
      * Author: Vinícius Azevedo
      * Date: 10/04/2020
      * Purpose: Acadêmico
      * Tectonics: cobc
      ******************************************************************
      *=================================================================
       ENVIRONMENT                                     DIVISION.
      *=================================================================
      *-----------------------------------------------------------------
       CONFIGURATION                           SECTION.
      *-----------------------------------------------------------------

       SPECIAL-NAMES.

      *-----------------------------------------------------------------
       INPUT-OUTPUT                            SECTION.
      *-----------------------------------------------------------------

       FILE-CONTROL.

      *=================================================================
       DATA                                            DIVISION.
      *=================================================================
      *-----------------------------------------------------------------
       WORKING-STORAGE                         SECTION.
      *-----------------------------------------------------------------
      *TODO NOME DE VAR DA WORKING-STORAGE SECTION SE INICIA COM WRK
       77 WRK-NOME             PIC X(20) VALUE 'SPACES'.
       77 WRK-DATA             PIC 9(6) VALUE ZEROS.
       77 WRK-DATA-JULIANA     PIC 9(5) VALUE ZEROS.
       77 WRK-DIA-SEMANA       PIC 9(1) VALUE ZERO.
       77 WRK-HORA             PIC 9(8) VALUE ZEROS.


      *=================================================================
       PROCEDURE                                       DIVISION.
      *=================================================================
      *ACCEPT RECEBE O VALOR DE UMA VAR QUE DEFINIMOS, PODENDO SER UM
      *NOME, DATA, VALOR, ETC.

           ACCEPT WRK-NOME
           DISPLAY "OLA!" WRK-NOME.

           ACCEPT WRK-DATA FROM DATE.
           DISPLAY 'Data:' WRK-DATA.

           ACCEPT WRK-DATA-JULIANA FROM DAY.
           DISPLAY 'Data Juliana:' WRK-DATA-JULIANA.

      *OS DIAS DA SEMANA COMEÇAM COM 1-SEG E TERMINA COM 7-DOM.
           ACCEPT WRK-DIA-SEMANA FROM DAY-OF-WEEK.
           DISPLAY 'Dia da semana:' WRK-DIA-SEMANA.

      *HORA APRESENTA = hh mm ss cc
           ACCEPT WRK-HORA FROM TIME.
           DISPLAY 'Hora:' WRK-HORA.

           STOP RUN.
