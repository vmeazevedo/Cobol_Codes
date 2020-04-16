       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG19.
      *Testar o comando GOTO

       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 RESPOSTA   PIC X.

       PROCEDURE DIVISION.
       PROGRAM-BEGIN.
           DISPLAY 'INICIO DO PROGRAMA';
           PERFORM CONTINUAR-EXECUCAO.
           IF RESPOSTA = 'N'
               GO TO EXIBIR-MENSAGEM.

           DISPLAY 'SEGUNDA PARTE DO PROGRAMA'.
           PERFORM LOGICA-PROGRAMA.
       PROGRAM-DONE.
           GOBACK.

       CONTINUAR-EXECUCAO.
           DISPLAY 'Deseja continuar [S/N]?'.
           ACCEPT RESPOSTA.
           IF RESPOSTA = 'n'
               MOVE 'N' TO RESPOSTA.

       LOGICA-PROGRAMA.
           DISPLAY 'O programa apenas exibe uma mensagem.'.

      *GOTO irá executar a partir da linha abaixo em diante, não retornando
      *igual o PERFORM faz.
       EXIBIR-MENSAGEM.
           DISPLAY 'Bom dia.'.

       EXIBIR-PROFISSAO.
           DISPLAY 'Programador'.
