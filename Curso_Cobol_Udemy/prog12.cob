       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG11.
      *programas para exibir mensagens. Paragráfos aninhados.

       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 MINHA-MENSAGEM PIC X(80).
       01 ID-MENSAGEM PIC 9(2).

       PROCEDURE DIVISION.
       PROGRAM-BEGIN.
           MOVE 0 TO ID-MENSAGEM.

      *    PRIMEIRA MENSAGEM
           MOVE ' Maria marque uma reuniao com nossos fornecedores'
            TO MINHA-MENSAGEM
           PERFORM ADICIONA-ID-E-EXIBE.

      *    SEGUNDA MENSAGEM
           MOVE ' Paulo agora voce e responsavel pelo setor de Vendas'
           TO MINHA-MENSAGEM
           PERFORM ADICIONA-ID-E-EXIBE.

       PROGRAM-DONE.
           STOP RUN.

       ADICIONA-ID-E-EXIBE.
           PERFORM AUMENTA-ID.
           PERFORM EXIBE-MENSAGEM.

       AUMENTA-ID.
           ADD 1 TO ID-MENSAGEM.

       EXIBE-MENSAGEM.
           DISPLAY ID-MENSAGEM MINHA-MENSAGEM.
