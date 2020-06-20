       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG30.
      *     DEMONSTRAÇÃO DE RECORDS ANINHADOS

       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  FUNCIONARIO.
           05 CODIGO PIC 9(2).
           05 FILLER PIC X(2) VALUE "--".
           05 NOME PIC X(10) VALUE "JOSE".
           05 FILLER PIC X(4) VALUE "====".
           05 ENDERECO PIC X(30) VALUE "Rua principal n. 50".
           05 FILLER PIC X(1) VALUE "*".
           05 SALARIO PIC 9(4)V9(2) VALUE 1500.00.
           05 FILLLER PIC X(1) VALUE "*".
           05 FUNCAO.
              10 DEPARTAMENTO PIC X(10).
              10 FILLER PIC X(1) VALUE "-".
              10 TAREFA PIC X(100).

       PROCEDURE DIVISION.
       PROGRAM-BEGIN.

           MOVE "Marketing" TO DEPARTAMENTO.
           MOVE "CRIAR UMA CAMPANHA DE MARKETING PARA O NATAL"
           TO TAREFA.
           MOVE 1 TO CODIGO.
           DISPLAY FUNCIONARIO

           MOVE "Financeiro" TO DEPARTAMENTO.
           MOVE "TRAGA O RELATORIO COM TODAS AS CONTAS A PAGAR"
           TO TAREFA.
           ADD 1 TO CODIGO.
           MOVE "ANA" TO NOME.
           DISPLAY FUNCIONARIO.
       PROGRAM-DONE.
           STOP RUN.
