      ******************************************************************
      * Author: Vinicius Azevedo
      * Date: 16/04/2020
      * Purpose: Acadêmico
      * Tectonics: cobc
      ******************************************************************
      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. PROG24.
      *Variaveis truncadas.
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       DATA DIVISION.
      *-----------------------------------------------------------------
       WORKING-STORAGE SECTION.
       01  6-BYTES PIC X(6).
       01  5-BYTES PIC X(5).
       01  4-BYTES PIC X(4).
       01  3-BYTES PIC X(3).
       01  2-BYTES PIC X(2).
       01  1-BYTES PIC X(1).

       01  5-DIGITOS   PIC 9(5).
       01  4-DIGITOS   PIC 9(4).
       01  3-DIGITOS   PIC 9(3).
       01  2-DIGITOS   PIC 9(2).
       01  1-DIGITOS   PIC 9(1).

      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-BEGIN.
           MOVE 'Paulo' TO 6-BYTES.
           MOVE 'Paulo' TO 5-BYTES.
           MOVE 'Paulo' TO 4-BYTES.
           MOVE 'Paulo' TO 3-BYTES.
           MOVE 'Paulo' TO 2-BYTES.
           MOVE 'Paulo' TO 1-BYTES.

           MOVE 2397 TO 5-DIGITOS.
           MOVE 2397 TO 4-DIGITOS.
           MOVE 2397 TO 3-DIGITOS.
           MOVE 2397 TO 2-DIGITOS.
           MOVE 2397 TO 1-DIGITOS.

           DISPLAY 6-BYTES.
           DISPLAY 5-BYTES.
           DISPLAY 4-BYTES.
           DISPLAY 3-BYTES.
           DISPLAY 2-BYTES.
           DISPLAY 1-BYTES.

           DISPLAY '========'.

           DISPLAY 5-DIGITOS.
           DISPLAY 4-DIGITOS.
           DISPLAY 3-DIGITOS.
           DISPLAY 2-DIGITOS.
           DISPLAY 1-DIGITOS.

       PROGRAM-DONE.
           STOP RUN.
