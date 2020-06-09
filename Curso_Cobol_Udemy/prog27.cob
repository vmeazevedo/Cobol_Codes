      ******************************************************************
      * Author: Vinicius Azevedo
      * Date: 17/04/2020
      * Purpose: Acadêmico
      * Tectonics: cobc
      ******************************************************************
      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. PROG27.
      *ADD, SUBTRACT,MULTIPLY, DIVIDE.
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       DATA DIVISION.
      *-----------------------------------------------------------------
       WORKING-STORAGE SECTION.
       01  VALOR1  PIC 99   VALUE 20.
       01  VALOR2  PIC 9   VALUE 5.
       01  VALOR3  PIC 99  VALUE 15.
       01  RESULTADO  PIC 99.
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-BEGIN.
           DISPLAY 'VALORES INICIAIS'

           PERFORM EXIBE-VALORES.
      *    VALOR1 = VALOR2 + VALOR1
           ADD VALOR2 TO VALOR1.
           DISPLAY 'VALOR1 ADD VALOR2'.

           PERFORM EXIBE-VALORES.
      *    VALOR1 = VALOR1 - VALOR3
           SUBTRACT VALOR3 FROM VALOR1
           DISPLAY 'VALOR3 SUBTRACT VALOR1'.

           PERFORM EXIBE-VALORES.
      *    VALOR3 = VALOR2 * VALOR3
           MULTIPLY VALOR2 BY VALOR3
           DISPLAY 'VALOR2 MULTIPLY VALOR3'.

           PERFORM EXIBE-VALORES.
      *    VALOR3 = VALOR3 / VALOR2
           DIVIDE VALOR2 INTO VALOR3
           DISPLAY ' DIVIDE VALOR2 INTO VALOR3'.

           PERFORM EXIBE-VALORES.

       PROGRAM-DONE.
           STOP RUN.

       EXIBE-VALORES.
           DISPLAY '=========='
           DISPLAY 'VALOR1: ' VALOR1.
           DISPLAY 'VALOR2: ' VALOR2.
           DISPLAY 'VALOR3: ' VALOR3.
           DISPLAY '=========='.
