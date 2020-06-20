           SELECT ARQUIVO-FUNCIONARIO
           ASSIGN TO 'funcionarios.dat'
           ORGANIZATION IS INDEXED
      *Arquivo sera indexado agora
           RECORD KEY IS FUNCIONARIO-CODIGO
      *Sera criado uma key para cada input do arquivo.
           ACCESS MODE IS DYNAMIC.
      *Modo de acesso é dinâmico.
