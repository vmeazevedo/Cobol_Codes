      *=================================================================
       IDENTIFICATION                                  DIVISION.
      *=================================================================
       PROGRAM-ID. ComandosAritméticos.
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
       77 WRK-ACUMULADOR       PIC 9(2)    VALUE ZEROS.
       77 WRK-ACUMULADOR2      PIC 9(2)    VALUE ZEROS.
       77 WRK-ACUMULADOR3      PIC 9(2)    VALUE ZEROS.
       77 WRK-ACUMULADOR4      PIC 9(2)    VALUE ZEROS.
       77 WRK-ACUMULADOR5      PIC 9(2)    VALUE 10.
       77 WRK-ACUMULADOR6      PIC 9(2)    VALUE 99.

      *=================================================================
       PROCEDURE                                       DIVISION.
      *=================================================================
      *O COMANDO ADD ACUMULA 2 OU MAIS OPERADORES NÚMERICOS E ARMAZENA O
      *RESULTADO. EXEMPLO: VAR = VAR +1 OU VAR +=1

           ADD 1 TO WRK-ACUMULADOR.
           DISPLAY 'CUM ' WRK-ACUMULADOR.

      *O COMANDO ADD 1 E DEPOIS ADD +1 AO ACUMULADOR
           ADD 1 1 TO WRK-ACUMULADOR2.
           DISPLAY 'CUM2 'WRK-ACUMULADOR2.

      *O CUM3 IRÁ RECEBER O VALOR DE 6 E O CUM4 IRÁ RECEBER O VALOR
      *SOMENTE DA SEGUNDA LINHA QUE É 2.
           ADD 1 3 TO WRK-ACUMULADOR3.
           ADD 1 1 TO WRK-ACUMULADOR3
                      WRK-ACUMULADOR4
           DISPLAY 'CUM3 'WRK-ACUMULADOR3 ' CUM4 ' WRK-ACUMULADOR4

      *DECLARAMOS UMS VAR DE 2 BYTES, ONDE O MAX É APRESENTADO SERIA
      *99, SE PEDIMOS PARA ADD MAIS UM VALOR IRIA ESTOURAR A QUANTIDADE
      *POIS SERIA 3 BYTES AGORA, ENTÃO PEDIMOS PARA IMPRIMIR UMA MSG.
           ADD 1 TO WRK-ACUMULADOR6
           ON SIZE ERROR
              DISPLAY 'ERRO NO ACUMULADOR6'
           END-ADD

      *O GIVING SOMENTE ATRIBUI UM NOVO VALOR A VAR ACUMULADOR5.
           ADD 1 GIVING WRK-ACUMULADOR5
           DISPLAY 'CUM5 ' WRK-ACUMULADOR5

           STOP RUN.
