      *=================================================================
       IDENTIFICATION                                  DIVISION.
      *=================================================================
       PROGRAM-ID. ComandosBásicos-2.
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
       77 WRK-VALOR            PIC 9(10)   VALUE 10.
       77 WRK-VALOR2           PIC 9(10)   VALUE ZEROS.
       77 WRK-VALOR3           PIC 9(10)   VALUE ZEROS.
       77 WRK-VALOR4           PIC 9(10)   VALUE ZEROS.
       77 WRK-VALOR5           PIC 9(10)   VALUE ZEROS.

       01 WRK-TOT.
           05 WRK-TOTAL        PIC 9(5)    VALUE 19.

       01 WRK-TOT2.
           05 WRK-TOTAL        PIC 9(5)    VALUE ZEROS.

      *=================================================================
       PROCEDURE                                       DIVISION.
      *=================================================================
      *O MOVE AGREGA UMA VALOR A UMA VARIÁVEL, COMO POR EXEMPLO EM OUTRAS
      *LINGUAGENS, SERIA ALGO COMO: VALOR2 = 20

           MOVE WRK-VALOR TO WRK-VALOR2.
           DISPLAY 'VALOR2 '   WRK-VALOR2.
           DISPLAY 'VALOR '    WRK-VALOR

           MOVE 70 TO WRK-VALOR3 WRK-VALOR4.
           DISPLAY 'VALOR3 '   WRK-VALOR3.
           DISPLAY 'VALOR4 '   WRK-VALOR4.

      *ATRIBUINDO UM VALOR A UMA VAR QUE EXISTE EM 2 ITEM GRUPO COM O
      *COMANDO "OF" QUE INDICA DE ONDE IREMOS PEGAR ELA.

           MOVE WRK-TOTAL OF WRK-TOT TO WRK-VALOR5.
           DISPLAY 'VALOR5 '   WRK-VALOR5.

           STOP RUN.
