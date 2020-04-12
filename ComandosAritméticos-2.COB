      *=================================================================
       IDENTIFICATION                                  DIVISION.
      *=================================================================
       PROGRAM-ID. ComandosAritméticos-2.
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
       77 WRK-VALOR            PIC 9(3)    VALUE 100.
       77 WRK-VALOR2           PIC 9(2)    VALUE 2.
       77 WRK-VALOR3           PIC 9(3)    VALUE ZEROS.
       77 WRK-VALOR4           PIC 9(3)    VALUE 100.
       77 WRK-VALOR5           PIC 9(2)    VALUE 2.
       77 WRK-VALOR6           PIC 9(2)    VALUE ZEROS.

      *=================================================================
       PROCEDURE                                       DIVISION.
      *=================================================================
      *COM O COMANDO COMPUTE AS OPERAÇÕES ARITMÉTICAS PODEM SER COMBI
      *EM FORMULAS SEM RESTRIÇÕES IMPOSTAS PARA O CAMPO.
      *SINAIS POSSÍVEIS: + ,- ,* ,/ ,** ,() ,=

           COMPUTE WRK-VALOR3 = WRK-VALOR + WRK-VALOR2.
           DISPLAY 'SOMA = ' WRK-VALOR3

           COMPUTE WRK-VALOR3 = WRK-VALOR - WRK-VALOR2.
           DISPLAY 'SUBTRACAO = ' WRK-VALOR3

           COMPUTE WRK-VALOR3 = WRK-VALOR *3.
           DISPLAY 'MULTIPLICACAO = 'WRK-VALOR3.

           COMPUTE WRK-VALOR3 = WRK-VALOR /2.
           DISPLAY 'DIVISAO = ' WRK-VALOR3.

           COMPUTE WRK-VALOR3 = WRK-VALOR2 **2.
           DISPLAY 'EXPONENCIAL = ' WRK-VALOR3

           COMPUTE WRK-VALOR3 = (WRK-VALOR + WRK-VALOR2) / 2.
           DISPLAY 'EXPRESSAO = ' WRK-VALOR3

           COMPUTE WRK-VALOR6 = WRK-VALOR4 * WRK-VALOR5
           ON SIZE ERROR
           DISPLAY 'Ocorreu um erro, por favor verifica a variavel.'
           END-COMPUTE

           STOP RUN.
