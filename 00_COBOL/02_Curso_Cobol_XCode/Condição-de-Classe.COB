      *=================================================================
       IDENTIFICATION                                  DIVISION.
      *=================================================================
       PROGRAM-ID. Condi��o-de-Classe.
      *******************************************************************
      * Author: Vin�cius Azevedo
      * Date: 13 /04/2020
      * Purpose: Acad�mico
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
       77 WRK-VALOR1       PIC 9(10)   VALUE 51.
       77 WRK-VALOR2       PIC X(10)   VALUE '3'.
       77 WRK-VALOR3       PIC X(10)   VALUE 'A'.


      *=================================================================
       PROCEDURE                                       DIVISION.
      *=================================================================
      *REALIZANDO UM TESTE DE CLASSE PARA VERIFICAR SE A VAR � NUMERIC
           IF WRK-VALOR1 IS NUMERIC
               DISPLAY WRK-VALOR1
           END-IF.

           IF WRK-VALOR1 IS NOT NUMERIC
               DISPLAY WRK-VALOR1
           END-IF.

      *REALIZANDO UM TESTE DE CLASSE PARA VERIFICAR SE A VAR � ALPHABETIC
           IF WRK-VALOR3 IS ALPHABETIC
               DISPLAY WRK-VALOR3
           END-IF.

           STOP RUN.
