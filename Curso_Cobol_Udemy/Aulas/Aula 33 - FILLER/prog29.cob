       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG29.
      *     DEMONSTRAÇÃO DE FILLER

       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  FUNCIONARIO.
           05 CODIGO PIC 9(2).
           05 FILLER PIC X(2) VALUE "--".
           05 NOME PIC X(10).
           05 FILLER PIC X(4) VALUE "====".
           05 ENDERECO PIC X(30).
           05 FILLER PIC X(1) VALUE "*".
           05 SALARIO PIC 9(4)V9(2).

       PROCEDURE DIVISION.
       PROGRAM-BEGIN.

           MOVE 33 TO CODIGO.
           MOVE "JOSE" TO NOME.
           MOVE "Rua pincipal n 54" TO ENDERECO.
           MOVE 2500.00 TO SALARIO.

           DISPLAY FUNCIONARIO.
