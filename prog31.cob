      ******************************************************************
      * Author: Vinicius Azevedo
      * Date: 18/04/2020
      * Purpose: Acadêmico
      * Tectonics: cobc
      ******************************************************************
      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. PROG31.
      *Variáveis de nível 66 77 e 88
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       DATA DIVISION.
      *-----------------------------------------------------------------
       WORKING-STORAGE SECTION.
      *77 Não pode ser dividida ou seja não pode ser um registro
       77  NOME    PIC X(10).

      *88 são usadas para otimização, interpretadas de forma mais rapida
      *são mais usadas em IFs.
       01  PESSOA.
           05 PESSOA-ESCOLARIDADE PIC X.
               88 ENSINO-FUNDAMENTAL VALUE 'F'.
               88 ENSINO-MEDIO VALUE 'M'.
               88 ENSINO-SUPERIOR VALUE 'S'.

      *66 são usadas para renomear itens de um registro para apresentar
      *depois em alguma outra variavel.
       01  FUNCIONARIO.
           05 COD PIC 99.
           05 FILLER PIC X(1) VALUE ' '.
           05 IDADE PIC 99.
           05 FILLER PIC X(1) VALUE ' '.
           05 ENDERECO PIC X(20).

       66  FUNCIONARIO-DETALHES RENAMES COD THRU IDADE.

      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-BEGIN.
           DISPLAY '=== Variaveis nivel 77 e 88 ==='.
           DISPLAY 'Qual e o seu nome?'.
           ACCEPT NOME.
           DISPLAY 'Qual e a sua escolaridade?'.
           DISPLAY 'F=Fundamental/ M=Medio/ S=Superior'.
           ACCEPT PESSOA-ESCOLARIDADE.

           IF PESSOA-ESCOLARIDADE = 'F'
               DISPLAY NOME 'Voce ainda esta no inicio dos estudos.'.
           IF PESSOA-ESCOLARIDADE = 'M'
               DISPLAY NOME 'Voce esta na metade do caminho.'.
           IF PESSOA-ESCOLARIDADE = 'S'
               DISPLAY NOME 'Voce esta na universidade.'.

           DISPLAY '=== Variável nivel 66 ==='.
           DISPLAY 'Informe o codigo do funcionario'.
           ACCEPT COD.
           DISPLAY 'Informe a idade do funcionario'.
           ACCEPT IDADE.
           DISPLAY 'Informe o endereco do funcionario'.
           ACCEPT ENDERECO.

           DISPLAY '--- Exibindo FUNCIONARIO-DETALHES ---'.
           DISPLAY FUNCIONARIO-DETALHES.

       PROGRAM-DONE.
           STOP RUN.
