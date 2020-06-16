       identification division.
       program-id.    Menu_interativo.

      *----------------------------------------------------------------+
      *    analista:     Muriel Rissetto                               |
      *    programador : Muriel Rissetto                               |
      *    data:         ??/ ?? / ????                                 |
      *    finalidade:   ?????????????????????????????????????         |
      *    alteracoes                                                  |
      *-------------+---------+----------------------------------------+
      * Responsavel |   Data  | Descri‡Æo da altera‡Æo                 |
      * ----------- + ------- + -------------------------------------- |
      *             |         |                                        |
      *             |         |                                        |
      *-------------+---------+----------------------------------------+

       environment division.
       configuration section.
       special-names.
               decimal-point is comma
               console       is crt
               crt status    is ws-funcao.
       input-output section.
       file-control.

       data division.
       file section.

       working-storage section.
       01 ws-auxiliares.
          05  ws-dataat.
              10  ws-anoatu        pic 9(02).
              10  ws-mesatu        pic 9(02).
              10  ws-diaatu        pic 9(02).
          05  ws-horaat.
              10  ws-horatu        pic 9(02).
              10  ws-minatu        pic 9(02).
              10  ws-segatu        pic 9(02).
          05  ws-opc               pic 9(01) value zeroes.
          05  retorno              pic x(02) value spaces.
              88 esc                         value "01"  .
          05  ws-funcao            pic 9(04)  value zeros.
          05  FILLER REDEFINES     WS-FUNCAO.
              10  FILLER           PIC  X(001).
              10  WS-PFS           PIC  X(001).
                   88  WS-PF0      VALUE X"00".
                   88  WS-PF1      VALUE X"01".
                   88  WS-PF2      VALUE X"02".
                   88  WS-PF3      VALUE X"03".
                   88  WS-PF4      VALUE X"04".
                   88  WS-PF5      VALUE X"05".
                   88  WS-PF6      VALUE X"06".
                   88  WS-PF7      VALUE X"07".
                   88  WS-PF8      VALUE X"08".
                   88  WS-PF9      VALUE X"09".
                   88  WS-PF10     VALUE X"0A".
                   88  WS-PF11     VALUE X"0B".
                   88  WS-PF12     VALUE X"0C".
              10  FILLER           PIC  X(001).


       screen section.
       01 tela1.
          01 TELA-PRINCIPAL .
          05 LINE 01 COLUMN 01 VALUE
          'ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ'
          background-color 0 foreground-color 7 highlight .
          05 LINE 01 COLUMN 41 VALUE
          'ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿'
          background-color 0 foreground-color 7 highlight .
          05 LINE 02 COLUMN 01 VALUE
          '³ EMPRESA : Vinicius Azevedo                         '
          background-color 0 foreground-color 7 highlight .
          05 LINE 02 COLUMN 41 VALUE
          '                                      ³'
          background-color 0 foreground-color 7 highlight .
          05 LINE 03 COLUMN 01 VALUE
          '³ DATA : .. \ .. \ ....                 '
          background-color 0 foreground-color 7 highlight .
          05 LINE 03 COLUMN 41 VALUE
          '                  HORA : .. : .. : .. ³'
          background-color 0 foreground-color 7 highlight .
          05 LINE 04 COLUMN 01 VALUE
          'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ'
          background-color 0 foreground-color 7 highlight .
          05 LINE 04 COLUMN 41 VALUE
          'ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´'
          background-color 0 foreground-color 7 highlight .
          05 LINE 05 COLUMN 01 VALUE
          '³                                       '
          background-color 0 foreground-color 7 highlight .
          05 LINE 05 COLUMN 41 VALUE
          '                                      ³'
          background-color 0 foreground-color 7 highlight .
          05 LINE 06 COLUMN 01 VALUE
          '³                                       '
          background-color 0 foreground-color 7 highlight .
          05 LINE 06 COLUMN 41 VALUE
          '                                      ³'
          background-color 0 foreground-color 7 highlight .
          05 LINE 07 COLUMN 01 VALUE
          '³                                       '
          background-color 0 foreground-color 7 highlight .
          05 LINE 07 COLUMN 41 VALUE
          '                                      ³'
          background-color 0 foreground-color 7 highlight .
          05 LINE 08 COLUMN 01 VALUE
          '³                                       '
          background-color 0 foreground-color 7 highlight .
          05 LINE 08 COLUMN 41 VALUE
          '                                      ³'
          background-color 0 foreground-color 7 highlight .
          05 LINE 09 COLUMN 01 VALUE
          '³                                       '
          background-color 0 foreground-color 7 highlight .
          05 LINE 09 COLUMN 41 VALUE
          '                                      ³'
          background-color 0 foreground-color 7 highlight .
          05 LINE 10 COLUMN 01 VALUE
          '³                                       '
          background-color 0 foreground-color 7 highlight .
          05 LINE 10 COLUMN 41 VALUE
          '                                      ³'
          background-color 0 foreground-color 7 highlight .
          05 LINE 11 COLUMN 01 VALUE
          '³                                       '
          background-color 0 foreground-color 7 highlight .
          05 LINE 11 COLUMN 41 VALUE
          '                                      ³'
          background-color 0 foreground-color 7 highlight .
          05 LINE 12 COLUMN 01 VALUE
          '³                                       '
          background-color 0 foreground-color 7 highlight .
          05 LINE 12 COLUMN 41 VALUE
          '                                      ³'
          background-color 0 foreground-color 7 highlight .
          05 LINE 13 COLUMN 01 VALUE
          '³                                       '
          background-color 0 foreground-color 7 highlight .
          05 LINE 13 COLUMN 41 VALUE
          '                                      ³'
          background-color 0 foreground-color 7 highlight .
          05 LINE 14 COLUMN 01 VALUE
          '³                                       '
          background-color 0 foreground-color 7 highlight .
          05 LINE 14 COLUMN 41 VALUE
          '                                      ³'
          background-color 0 foreground-color 7 highlight .
          05 LINE 15 COLUMN 01 VALUE
          '³                                       '
          background-color 0 foreground-color 7 highlight .
          05 LINE 15 COLUMN 41 VALUE
          '                                      ³'
          background-color 0 foreground-color 7 highlight .
          05 LINE 16 COLUMN 01 VALUE
          '³                                       '
          background-color 0 foreground-color 7 highlight .
          05 LINE 16 COLUMN 41 VALUE
          '                                      ³'
          background-color 0 foreground-color 7 highlight .
          05 LINE 17 COLUMN 01 VALUE
          '³                                       '
          background-color 0 foreground-color 7 highlight .
          05 LINE 17 COLUMN 41 VALUE
          '                                      ³'
          background-color 0 foreground-color 7 highlight .
          05 LINE 18 COLUMN 01 VALUE
          '³                                       '
          background-color 0 foreground-color 7 highlight .
          05 LINE 18 COLUMN 41 VALUE
          '                                      ³'
          background-color 0 foreground-color 7 highlight .
          05 LINE 19 COLUMN 01 VALUE
          '³                                       '
          background-color 0 foreground-color 7 highlight .
          05 LINE 19 COLUMN 41 VALUE
          '                                      ³'
          background-color 0 foreground-color 7 highlight .
          05 LINE 20 COLUMN 01 VALUE
          '³                                       '
          background-color 0 foreground-color 7 highlight .
          05 LINE 20 COLUMN 41 VALUE
          '                                      ³'
          background-color 0 foreground-color 7 highlight .
          05 LINE 21 COLUMN 01 VALUE
          '³                                       '
          background-color 0 foreground-color 7 highlight .
          05 LINE 21 COLUMN 41 VALUE
          '                                      ³'
          background-color 0 foreground-color 7 highlight .
          05 LINE 22 COLUMN 01 VALUE
          'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ'
          background-color 0 foreground-color 7 highlight .
          05 LINE 22 COLUMN 41 VALUE
          'ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´'
          background-color 0 foreground-color 7 highlight .
          05 LINE 23 COLUMN 01 VALUE
          '³ MENSAGEM :                           '
          background-color 0 foreground-color 7 highlight .
          05 LINE 23 COLUMN 40 VALUE
          '                                       ³'
          background-color 0 foreground-color 7 highlight .
          05 LINE 24 COLUMN 01 VALUE
          'ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ'
          background-color 0 foreground-color 7 highlight .
          05 LINE 24 COLUMN 41 VALUE
          'ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ'
          background-color 0 foreground-color 7 highlight .

       01 QUADRO.
          05 LINE 07 COLUMN 20 VALUE
          'ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ'
          background-color 0 foreground-color 7 highlight .
          05 LINE 07 COLUMN 38 VALUE
          'ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿'
          background-color 0 foreground-color 7 highlight .
          05 LINE 08 COLUMN 20 VALUE
          '³                  '
          background-color 0 foreground-color 7 highlight .
          05 LINE 08 COLUMN 38 VALUE
          '                  ³'
          background-color 0 foreground-color 7 highlight .
          05 LINE 09 COLUMN 20 VALUE
          '³                  '
          background-color 0 foreground-color 7 highlight .
          05 LINE 09 COLUMN 38 VALUE
          '                  ³'
          background-color 0 foreground-color 7 highlight .
          05 LINE 10 COLUMN 20 VALUE
          '³                  '
          background-color 0 foreground-color 7 highlight .
          05 LINE 10 COLUMN 38 VALUE
          '                  ³'
          background-color 0 foreground-color 7 highlight .
          05 LINE 11 COLUMN 20 VALUE
          '³                  '
          background-color 0 foreground-color 7 highlight .
          05 LINE 11 COLUMN 38 VALUE
          '                  ³'
          background-color 0 foreground-color 7 highlight .
          05 LINE 12 COLUMN 20 VALUE
          '³                  '
          background-color 0 foreground-color 7 highlight .
          05 LINE 12 COLUMN 38 VALUE
          '                  ³'
          background-color 0 foreground-color 7 highlight .
          05 LINE 13 COLUMN 20 VALUE
          '³                  '
          background-color 0 foreground-color 7 highlight .
          05 LINE 13 COLUMN 38 VALUE
          '                  ³'
          background-color 0 foreground-color 7 highlight .
          05 LINE 14 COLUMN 20 VALUE
          '³                  '
          background-color 0 foreground-color 7 highlight .
          05 LINE 14 COLUMN 38 VALUE
          '                  ³'
          background-color 0 foreground-color 7 highlight .
          05 LINE 15 COLUMN 20 VALUE
          '³                  '
          background-color 0 foreground-color 7 highlight .
          05 LINE 15 COLUMN 38 VALUE
          '                  ³'
          background-color 0 foreground-color 7 highlight .
          05 LINE 16 COLUMN 20 VALUE
          '³                  '
          background-color 0 foreground-color 7 highlight .
          05 LINE 16 COLUMN 38 VALUE
          '                  ³'
          background-color 0 foreground-color 7 highlight .
          05 LINE 17 COLUMN 20 VALUE
          'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ'
          background-color 0 foreground-color 7 highlight .
          05 LINE 17 COLUMN 38 VALUE
          'ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´'
          background-color 0 foreground-color 7 highlight .
           05 LINE 18 COLUMN 20 VALUE
          '³                  '
          background-color 0 foreground-color 7 highlight .
          05 LINE 18 COLUMN 38 VALUE
          '                  ³'
          background-color 0 foreground-color 7 highlight .
          05 LINE 19 COLUMN 20 VALUE
          'ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ'
          background-color 0 foreground-color 7 highlight .
          05 LINE 19 COLUMN 38 VALUE
          'ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ'
          background-color 0 foreground-color 7 highlight .


       01 limpa-23.
          05 LINE 23 COLUMN 01 VALUE
          '³ MENSAGEM :                           '
          background-color 0 foreground-color 7 highlight .
          05 LINE 23 COLUMN 40 VALUE
          '                                       ³'
          background-color 0 foreground-color 7 highlight .

       01 linha-amarela.
          05 LINE 23 COLUMN 01 VALUE
          '³ MENSAGEM :                           '
          background-color 0 foreground-color 6 highlight .
          05 LINE 23 COLUMN 40 VALUE
          '                                       ³'
          background-color 0 foreground-color 6 highlight .


      *-----------------------------------------------------------------
       procedure division.
       000-inicio.
           display ' '
           accept ws-dataat from date
           display tela-principal
           display tela1

           accept ws-dataat from date
           display "20"      at 0320   *> evita! o .bug. burro
           display ws-anoatu at 0322   *> mostra o ano do sistem
           display ws-mesatu at 0315   *> mostra o mes do sistem
           display ws-diaatu at 0310   *> mostra o dia do sistem

           accept ws-horaat from time
           display ws-horatu at 0366
           display ws-minatu at 0371
           display ws-segatu at 0376.

           display quadro.

           display "MENU PRINCIPAL"      at 0732.
           display "1) CADASTROS "       at 0925
           display "2) RELATORIOS"       at 1125
           display "3) EXECUTAR  "       at 1325
           display "4) SAIR DO SISTEMA"  at 1525.
           display "   OPC: ?         "  at 1825.

       001-testa-opc.
           display limpa-23
           display linha-amarela.
           display "Defina a Op‡ao desejada ou ESC para finalizar"
           at 2320
           move zeros to ws-opc
           accept ws-opc at 1833 with prompt auto-skip
           accept retorno from escape key
           if esc
                 display ' '
                 stop run.
           if ws-opc < 1 or ws-opc > 4
                 go to 001-testa-opc.

           if ws-opc = 1
                 display limpa-23
                 display "OPC = 1 ---> INCLUSAO ... tecle enter"
                 at 2320
                 stop " "
                 go to 999-fim-do-programa.

           if ws-opc = 2
                 display limpa-23
                 display "OPC = 2 ---> ALTERACAO... tecle enter"
                 at 2320
                 stop " "
                 go to 999-fim-do-programa.

           if ws-opc = 3
                 display limpa-23
                 display "OPC = 3 ---> CONSULTA ... tecle enter"
                 at 2320
                 stop " "
                 go to 999-fim-do-programa.

           if ws-opc = 4
                 display limpa-23
                 display "OPC = 4 ---> EXCLUSAO ... tecle enter"
                 at 2320
                 stop " "
                 go to 999-fim-do-programa.



       999-fim-do-programa.
           display ' Até logo. '
           stop run  .
