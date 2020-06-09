      *=================================================================
       IDENTIFICATION                                  DIVISION.
      *=================================================================
       PROGRAM-ID. ComandosAritméticos-4.
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
       77 WRK-SALDO             PIC 9(5) VALUE ZEROS.
       77 WRK-RESULTADO         PIC 9(5) VALUE ZEROS.
       77 WRK-VALOR             PIC 9(5) VALUE 60.
       77 WRK-VALOR2             PIC 9(5) VALUE 60.
       77 WRK-VALOR3             PIC 9(5) VALUE 51.
       77 WRK-RESTO             PIC 9(5) VALUE ZEROS.



      *=================================================================
       PROCEDURE                                       DIVISION.
      *=================================================================
      *O DIVIDE EFETUA UMA DIVISAO E DISPONIBILIZA O QUOCIENTE E O RESTO

           DIVIDE 2 INTO WRK-VALOR.
           DISPLAY 'RESULTADO: ' WRK-VALOR

      *PEGAMOS O VALOR CALCULADO DO VALOR E DIV POR 2 E JOGAMOS ELE NO
      *WRK-RESULTADO. SERÁ APRESENTADO VALOR=15

           DIVIDE 2 INTO WRK-VALOR GIVING WRK-RESULTADO
           DISPLAY 'RESULTADO2: ' WRK-RESULTADO
           DISPLAY 'VALOR DA VARIAVEL VALOR: ' WRK-VALOR

      *OUTRA SINTAXE PARA O COMANDO DIVIDE, MAIS SIMPLES.
           DIVIDE WRK-VALOR2 BY 2 GIVING WRK-RESULTADO
           DISPLAY WRK-RESULTADO

      *TRABALHAR COM O RESTO DA DIVISAO DE UM VALOR
           DIVIDE WRK-VALOR3 BY 2 GIVING WRK-RESULTADO
           REMAINDER WRK-RESTO
           DISPLAY 'RESULTADO:'WRK-RESULTADO '' 'RESTO DIV:' WRK-RESTO


           STOP RUN.
