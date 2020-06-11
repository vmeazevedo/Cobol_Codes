      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID.     06_IF_EVALUATE.
       AUTHOR.         VINICIUS AZEVEDO.
       DATE-WRITTEN.   10/06/2020.
       DATE-COMPILED.
       SECURITY.       NAO E CONFIDENCIAL.
      ******************************************************************
      * TEXTO: Exemplificação da utilização do IF e do comando
      *    EVALUATE.
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
       01  WS-AREAS-A-USAR.
           05 WS-OPCAO-MENU        PIC X(01).
           05 WS-RESULTADO         PIC X(09).

      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-BEGIN.

           DISPLAY 'DIGITE A OPCAO: '
           ACCEPT WS-OPCAO-MENU

           EVALUATE WS-OPCAO-MENU
             WHEN 'A'
               MOVE 'ALTA' TO WS-RESULTADO
             WHEN 'B'
               MOVE 'BAIXA' TO WS-RESULTADO
             WHEN 'C'
               MOVE 'CAMBIO' TO WS-RESULTADO
             WHEN '1' THRU '5'
               MOVE 'SEGUINTE' TO WS-RESULTADO
             WHEN OTHER
               MOVE 'ERROR' TO WS-RESULTADO
           END-EVALUATE
           DISPLAY 'A OPCAO DO MENU COM EVALUATE E: ' WS-RESULTADO.


           IF WS-OPCAO-MENU = 'A'
           THEN
               MOVE 'ALTA' TO WS-RESULTADO
           ELSE
              IF WS-OPCAO-MENU = 'B'
              THEN
                  MOVE 'BAIXA' TO WS-RESULTADO
              ELSE
                  IF WS-OPCAO-MENU = 'C'
                  THEN
                      MOVE 'CAMBIO' TO WS-RESULTADO
                  ELSE
                     IF (WS-OPCAO-MENU >= '1')
                         AND (WS-OPCAO-MENU <= '5')
                     THEN
                         MOVE 'SEGUINTE' TO WS-RESULTADO
                     ELSE
                         MOVE 'ERROR' TO WS-RESULTADO
                     END-IF
                  END-IF
              END-IF
           END-IF

           DISPLAY 'A OPCAO DO MENU COM IF E: ' WS-RESULTADO.

       PROGRAM-DONE.
           GOBACK.
