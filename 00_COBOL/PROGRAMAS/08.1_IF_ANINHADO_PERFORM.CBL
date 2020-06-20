      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID.     08.1_IF_ANINHADO_PERFORM.
       AUTHOR.         VINICIUS AZEVEDO.
       DATE-WRITTEN.   11/06/2020.
       DATE-COMPILED.
       SECURITY.       NAO E CONFIDENCIAL.
      ******************************************************************
      * TEXTO: Exemplificação do uso de IF aninhado com a utilização de
      *    PERFORM.
      *
      *
      ******************************************************************
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.           IBM-3083.
       OBJECT-COMPUTER.           IBM-3083.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
      *-----------------------------------------------------------------
       DATA DIVISION.
      *-----------------------------------------------------------------
       WORKING-STORAGE SECTION.
       01  CAMPO-A              PIC 9(3)    VALUE ZEROS.
       01  CAMPO-B              PIC 9(3)    VALUE ZEROS.
       01  CAMPO-C              PIC 9(3)    VALUE ZEROS.
       01  CAMPO-D              PIC 9(3)    VALUE ZEROS.
       01  CAMPO-E              PIC 9(3)    VALUE ZEROS.
       01  CAMPO-F              PIC 9(3)    VALUE ZEROS.
       01  CAMPO-G              PIC 9(3)    VALUE ZEROS.
       01  CAMPO-H              PIC 9(3)    VALUE ZEROS.

      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-BEGIN.

           DISPLAY 'ENTRE COM OS VALORES: '
           DISPLAY 'CAMPO-A: '
           ACCEPT CAMPO-A
           DISPLAY 'CAMPO-B: '
           ACCEPT CAMPO-B
           DISPLAY 'CAMPO-C: '
           ACCEPT CAMPO-C
           DISPLAY 'CAMPO-D: '
           ACCEPT CAMPO-D
           DISPLAY 'CAMPO-E: '
           ACCEPT CAMPO-E
           DISPLAY 'CAMPO-F: '
           ACCEPT CAMPO-F
           DISPLAY 'CAMPO-G: '
           ACCEPT CAMPO-G
           DISPLAY 'CAMPO-H: '
           ACCEPT CAMPO-H.

           010-ANIDADOS.
           IF CAMPO-A IS GREATER CAMPO-B
              IF CAMPO-E < CAMPO-F
                 PERFORM 020-CALCULO-01 THRU 020-FIM
              ELSE
                 PERFORM 030-CALCULO-02 THRU 030-FIM
              END-IF
           ELSE
              IF CAMPO-C EQUAL CAMPO-D
                 IF CAMPO-G = CAMPO-H
                    NEXT SENTENCE
                 ELSE
                    PERFORM 040-CALCULO-04 THRU 040-FIM
                 END-IF
              ELSE
                 PERFORM 050-CALCULO-03 THRU 050-FIM
              END-IF
           END-IF
           PERFORM 060-CALCULO-05 THRU 060-FIM.


           020-CALCULO-01.
               DISPLAY 'CALCULO-01'
               GOBACK.
           020-FIM. EXIT.

           030-CALCULO-02.
               DISPLAY 'CALCULO-02'
               GOBACK.
           030-FIM. EXIT.

           040-CALCULO-04.
               DISPLAY 'CALCULO-04'
               GOBACK.
           040-FIM. EXIT.

           050-CALCULO-03.
               DISPLAY 'CALCULO-03'
               GOBACK.
           050-FIM. EXIT.

           060-CALCULO-05.
               DISPLAY 'CALCULO-05'
               GOBACK.
           060-FIM. EXIT.

       PROGRAM-DONE.
           GOBACK.
