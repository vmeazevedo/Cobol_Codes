      *=================================================================
       IDENTIFICATION                                  DIVISION.
      *=================================================================
       PROGRAM-ID. CalcArea - IF-END-IF.
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
       77 largura                  pic 9(003) value zeros.
       77 altura                   pic 9(003) value zeros.
       77 area-result              pic 9(006) value zeros.

      *=================================================================
       PROCEDURE                                       DIVISION.
      *=================================================================

           DISPLAY 'Calculo de area (Quadrados/Retangulos)' at 0521
           DISPLAY 'Largura:' at 1010
           DISPLAY 'Altura:' at 1210
           ACCEPT largura at 1019
           ACCEPT altura at 1219
           MULTIPLY largura BY altura GIVING area-result
           DISPLAY 'Area:' at 1410 area-result

           IF area-result IS GREATER THAN 100 THEN
               DISPLAY "O calculo de sua area e grande." at 1610
           ELSE
               DISPLAY "O calculo de sua area é pequeno." at 1610
           END-IF
           STOP RUN.
