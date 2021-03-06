      *=================================================================
       IDENTIFICATION                                  DIVISION.
      *=================================================================
       PROGRAM-ID. Condi��o-de-rela��o.
      *******************************************************************
      * Author: Vin�cius Azevedo
      * Date: 13/04/2020
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
       77 WRK-VALOR             PIC 9(10) VALUE 20.
       77 WRK-NUMERO            PIC 9(10) VALUE 10.

      *=================================================================
       PROCEDURE                                       DIVISION.
      *=================================================================
      *VERIFICA��O DE ALGUMAS CONDI��ES RELACIONAIS.
      *CONDI��O RELACIONAL EQUAL
           IF WRK-VALOR EQUAL WRK-NUMERO
               DISPLAY 'VALORES IGUAIS.'
           ELSE
               DISPLAY 'VALORES DIFERENTES'
           END-IF.

      *CONDI��O RELACIONAL NOT EQUAL
           IF WRK-VALOR NOT EQUAL WRK-NUMERO
               DISPLAY 'VALORES NAO IGUAIS.'
           ELSE
               DISPLAY 'VALORES IGUAIS.'
           END-IF.

      *CONDI��O RELACIONAL GREATER
           IF WRK-VALOR GREATER WRK-NUMERO
               DISPLAY 'VALOR MAIOR.'
           ELSE
               DISPLAY 'VALOR MENOR.'
           END-IF.

      *CONDI��O RELACIONAL GREATER
           IF WRK-VALOR NOT GREATER WRK-NUMERO
               DISPLAY 'WRK-VALOR E MENOR.'
           ELSE
               DISPLAY 'WRK-VALOR E MAIOR.'
           END-IF.

      *VERIFICA��O DE ALGUMAS CONDI��ES RELACIONAIS COMPOSTA.
           IF (WRK-VALOR GREATER 1) AND (WRK-NUMERO >0)
               DISPLAY 'CONDICAO VERDADEIRA.'
           ELSE
               DISPLAY 'CONDICAO FALSA.'
           END-IF.

           IF (WRK-VALOR GREATER 1) OR (WRK-NUMERO >0)
               DISPLAY 'CONDICAO VERDADEIRA.'
           ELSE
               DISPLAY 'CONDICAO FALSA.'
           END-IF.

           STOP RUN.
