      *=================================================================
       IDENTIFICATION                                  DIVISION.
      *=================================================================
       PROGRAM-ID. Variaveis-3.
      *******************************************************************
      * Author: Vinícius Azevedo
      * Date: 10/04/2020
      * Purpose: Acadêmico
      * Tectonics: cobc
      ******************************************************************
      *=================================================================
       ENVIRONMENT                                     DIVISION.
      *=================================================================
      *-----------------------------------------------------------------
       CONFIGURATION                           SECTION.
      *-----------------------------------------------------------------

       SPECIAL-NAMES.

      *-----------------------------------------------------------------
       INPUT-OUTPUT                            SECTION.
      *-----------------------------------------------------------------

       FILE-CONTROL.

      *=================================================================
       DATA                                            DIVISION.
      *=================================================================
      *-----------------------------------------------------------------
       WORKING-STORAGE                         SECTION.
      *-----------------------------------------------------------------

      *66 SERVE PARA RENOMEAR OUTRAS VARIAVEIS
       01 CLIENTE.
           02 NOME      PIC X(20) VALUE 'VINICIUS AZEVEDO'.
           02 RG        PIC X(11) VALUE '00000000000'.
           02 CPF       PIC X(11) VALUE '11111111111'.
           02 ENDERECO  PIC X(20) VALUE 'RUA X07075'.
           02 DATANASC.
               03 DIA  PIC X(02) VALUE '11'.
               03 MES  PIC X(02) VALUE '02'.
               03 ANO  PIC X(04) VALUE '1992'.
      ******** RENOMEAMOS UMA VAR QUE CONTENHA 2 VAR
               66 MES-ANO RENAMES MES THRU ANO.

      *78 SERVE PARA DECLARAR CONSTANTES DENTRO DE UM PROGRAMA.
       78 MASCULINO VALUE 'M'.
       78 FEMININO VALUE 'F'.

      *88 DEFINE NOMES E CONDICOES QUE DEVEM SER ASSOCIADOS A VALORES
      *DEFINIDOS.
       01 GENERO   PIC X.
           88 MASCULINOX VALUE 'M'.
           88 FEMININOX VALUE 'F'.


      *=================================================================
       PROCEDURE                                       DIVISION.
      *=================================================================
           DISPLAY MES-ANO.

           SET MASCULINOX TO TRUE.
           DISPLAY GENERO.
           STOP RUN.
