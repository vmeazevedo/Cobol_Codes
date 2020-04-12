      *=================================================================
       IDENTIFICATION                                  DIVISION.
      *=================================================================
       PROGRAM-ID. ComandosAritméticos-3.
      *******************************************************************
      * Author: Vinícius Azevedo
      * Date: 12/04/2020
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
       77 WRK-SALDO            PIC 9(10) VALUE ZEROS.
       77 WRK-RESULTADO        PIC 9(10)    VALUE ZEROS.
       77 WRK-VALOR            PIC 9(10)   VALUE ZEROS.

      *=================================================================
       PROCEDURE                                       DIVISION.
      *=================================================================
      *O SUBTRACT IRÁ REALIZAR A SUB DE UM OU MAIS OPERADORES NUMÉRICO
      *E ARMAZENARÁ O RESULTADO.

           MOVE 100    TO  WRK-SALDO.
           DISPLAY WRK-SALDO.
           SUBTRACT 50 FROM WRK-SALDO.
           DISPLAY WRK-SALDO.

      *MOSTRAMOS O VALOR DO SALDO ANTES E DEPOIS DA REALIZACAO DA SUB.
           MOVE 100    TO WRK-SALDO
           MOVE 50     TO WRK-VALOR
           DISPLAY 'Saldo antes da subtracao: ' WRK-SALDO
           SUBTRACT WRK-VALOR FROM WRK-SALDO
           DISPLAY 'Saldo apos a subtracao: ' WRK-SALDO

      *MOSTRAMOS O VALOR DO RESULTADO ANTES E DEPOIS DA SUB
      *REALIZA A SUB DO 'VALOR' EM 'SALDO' E JOGA O RESULTADO NA VAR
      *WRK-RESULTADO.

           MOVE 100    TO WRK-SALDO
           MOVE 50     TO WRK-VALOR
           DISPLAY 'Saldo antes da subtracao: ' WRK-RESULTADO
           SUBTRACT WRK-VALOR FROM WRK-SALDO GIVING WRK-RESULTADO
           DISPLAY 'Saldo apos a subtracao: ' WRK-RESULTADO

      *PARA REALIZAR A SUB DE 2 CONSTANTES USAMOS O GIVING PARA ARMAZEN
      *O VALOR DO CALCULO.

           SUBTRACT 60 FROM 100 GIVING WRK-RESULTADO
           DISPLAY 'RESULTADO: ' WRK-RESULTADO

      *POREM É POSSIVEL REALIZAR A SUB DE UMA VAR POR UMA CONSTANTE
           MOVE 100    TO WRK-SALDO
           SUBTRACT 60 FROM WRK-SALDO
           DISPLAY 'RESULTADO: ' WRK-SALDO

           STOP RUN.
