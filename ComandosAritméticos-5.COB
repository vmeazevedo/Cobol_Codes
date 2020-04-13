      *=================================================================
       IDENTIFICATION                                  DIVISION.
      *=================================================================
       PROGRAM-ID. ComandosAritméticos-5.
      *******************************************************************
      * Author: Vinícius Azevedo
      * Date: 13/04/2020
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
       77 WRK-SALDO             PIC 9(10) VALUE ZEROS.
       77 WRK-RESULTADO         PIC 9(10) VALUE ZEROS.
       77 WRK-VALOR             PIC 9(10) VALUE 51.
       77 WRK-RESTO             PIC 9(10) VALUE ZEROS.




      *=================================================================
       PROCEDURE                                       DIVISION.
      *=================================================================
      *MULTIPLICA UMA VAR OU UM VALOR DE ACCEPT POR ALGUMA COISA.

           MULTIPLY 2 BY WRK-VALOR
           DISPLAY WRK-VALOR.

           MULTIPLY 2 BY WRK-VALOR GIVING WRK-RESULTADO
           DISPLAY WRK-RESULTADO

           MULTIPLY WRK-VALOR BY 2 GIVING WRK-RESULTADO
           DISPLAY WRK-RESULTADO


           STOP RUN.
