object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 1418
  Width = 1264
  object fd: TFDConnection
    Params.Strings = (
      'Database=pdv'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    BeforeConnect = fdBeforeConnect
    Left = 32
    Top = 24
  end
  object driver: TFDPhysMySQLDriverLink
    VendorLib = 'C:\SistemaClickVendas\Win32\Debug\BD\LibMysql\libMysql.dll'
    OnDriverDestroying = driverDriverDestroying
    Left = 768
    Top = 16
  end
  object tb_Cargos: TFDTable
    IndexFieldNames = 'id'
    Connection = fd
    UpdateOptions.UpdateTableName = 'pdv.cargos'
    TableName = 'pdv.cargos'
    Left = 40
    Top = 104
  end
  object query_cargos: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from cargos order by cargo asc')
    Left = 40
    Top = 168
    object query_cargosid: TFDAutoIncField
      DisplayLabel = 'ID'
      DisplayWidth = 7
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object query_cargoscargo: TStringField
      DisplayLabel = 'Cargo'
      DisplayWidth = 20
      FieldName = 'cargo'
      Origin = 'cargo'
      Required = True
      Size = 25
    end
  end
  object DSCargos: TDataSource
    DataSet = query_cargos
    Left = 104
    Top = 168
  end
  object tb_func: TFDTable
    IndexFieldNames = 'id'
    Connection = fd
    UpdateOptions.UpdateTableName = 'pdv.funcionarios'
    TableName = 'pdv.funcionarios'
    Left = 104
    Top = 104
  end
  object query_func: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from funcionarios')
    Left = 184
    Top = 168
    object query_funcid: TFDAutoIncField
      DisplayLabel = 'ID'
      DisplayWidth = 7
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object query_funcnome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 15
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 30
    end
    object query_funccpf: TStringField
      DisplayLabel = 'CPF'
      DisplayWidth = 15
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
    end
    object query_functelefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 15
    end
    object query_funcendereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 20
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 50
    end
    object query_funccargo: TStringField
      DisplayLabel = 'Cargo'
      DisplayWidth = 15
      FieldName = 'cargo'
      Origin = 'cargo'
      Required = True
      Size = 25
    end
    object query_funcdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data'
      Origin = 'data'
      Required = True
    end
  end
  object DSFunc: TDataSource
    DataSet = query_func
    Left = 248
    Top = 168
  end
  object tb_usuarios: TFDTable
    Connection = fd
    UpdateOptions.UpdateTableName = 'pdv.usuarios'
    TableName = 'pdv.usuarios'
    Left = 160
    Top = 104
  end
  object query_usuarios: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from usuarios')
    Left = 328
    Top = 168
    object query_usuariosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object query_usuariosnome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 15
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 30
    end
    object query_usuariosusuario: TStringField
      DisplayLabel = 'Usuario'
      DisplayWidth = 15
      FieldName = 'usuario'
      Origin = 'usuario'
      Required = True
      Size = 25
    end
    object query_usuariossenha: TStringField
      DisplayLabel = 'Senha'
      DisplayWidth = 10
      FieldName = 'senha'
      Origin = 'senha'
      Required = True
      Size = 25
    end
    object query_usuarioscargo: TStringField
      DisplayLabel = 'Cargo'
      DisplayWidth = 15
      FieldName = 'cargo'
      Origin = 'cargo'
      Required = True
      Size = 25
    end
    object query_usuariosid_funcionario: TIntegerField
      FieldName = 'id_funcionario'
      Origin = 'id_funcionario'
      Required = True
      Visible = False
    end
  end
  object DSUsuarios: TDataSource
    DataSet = query_usuarios
    Left = 400
    Top = 168
  end
  object tb_forn: TFDTable
    Connection = fd
    UpdateOptions.UpdateTableName = 'pdv.fornecedores'
    TableName = 'pdv.fornecedores'
    Left = 216
    Top = 104
  end
  object query_forn: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from fornecedores')
    Left = 472
    Top = 168
    object query_fornid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object query_fornnome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 13
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 25
    end
    object query_fornproduto: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 15
      FieldName = 'produto'
      Origin = 'produto'
      Required = True
      Size = 25
    end
    object query_fornendereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 17
      FieldName = 'endereco'
      Origin = 'endereco'
      Required = True
      Size = 30
    end
    object query_forntelefone: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 16
      FieldName = 'telefone'
      Origin = 'telefone'
      Required = True
      Size = 15
    end
    object query_forndata: TDateField
      DisplayLabel = 'Data de Cadastro'
      DisplayWidth = 12
      FieldName = 'data'
      Origin = 'data'
      Required = True
    end
    object query_forndia_vencimento: TIntegerField
      DisplayLabel = 'Dias de Vencimento'
      FieldName = 'dia_vencimento'
      Origin = 'dia_vencimento'
      Required = True
    end
    object query_forncnpj: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CNPJ'
      FieldName = 'cnpj'
      Origin = 'cnpj'
      Size = 25
    end
  end
  object DSForn: TDataSource
    DataSet = query_forn
    Left = 528
    Top = 168
  end
  object tb_produtos: TFDTable
    Connection = fd
    UpdateOptions.UpdateTableName = 'pdv.produtos'
    TableName = 'pdv.produtos'
    Left = 264
    Top = 88
  end
  object query_produtos: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from produtos')
    Left = 592
    Top = 168
    object query_produtosid: TFDAutoIncField
      DisplayLabel = 'Cod. Autom'#225'tico'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object query_produtoscodigo: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 15
      FieldName = 'codigo'
      Origin = 'C'#243'digo'
      Required = True
      Size = 50
    end
    object query_produtosnome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 15
      FieldName = 'nome'
      Origin = 'Nome'
      Required = True
      Size = 25
    end
    object query_produtosdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 18
      FieldName = 'descricao'
      Origin = 'Descri'#231#227'o'
      Required = True
      Size = 35
    end
    object query_produtosvalor: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Origin = 'Valor'
      Required = True
      currency = True
      Precision = 10
      Size = 2
    end
    object query_produtosdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data'
      Origin = 'data'
      Required = True
    end
    object query_produtosimagem: TBlobField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Imagem'
      FieldName = 'imagem'
      Origin = 'imagem'
      Visible = False
    end
    object query_produtosultima_compra: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = #218'ltima Compra'
      FieldName = 'ultima_compra'
      Origin = 'ultima_compra'
    end
    object query_produtosestoque: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'estoque'
      Origin = 'estoque'
      Precision = 10
      Size = 2
    end
    object query_produtosvalorcusto: TBCDField
      FieldName = 'valorcusto'
      Origin = 'valorcusto'
      Required = True
      Visible = False
      currency = True
      Precision = 10
      Size = 2
    end
  end
  object DSProdutos: TDataSource
    DataSet = query_produtos
    Left = 664
    Top = 168
  end
  object query_coringa: TFDQuery
    Connection = fd
    Left = 200
    Top = 24
  end
  object tb_entrada_pro: TFDTable
    Connection = fd
    UpdateOptions.UpdateTableName = 'pdv.entrada_produtos'
    TableName = 'pdv.entrada_produtos'
    Left = 336
    Top = 104
  end
  object query_entrada_pro: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from entrada_produtos')
    Left = 32
    Top = 248
    object query_entrada_proid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object query_entrada_proproduto: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 18
      FieldName = 'produto'
      Origin = 'produto'
      Required = True
      Size = 25
    end
    object query_entrada_profornecedor: TIntegerField
      DisplayLabel = 'Id Fornecedor'
      FieldName = 'fornecedor'
      Origin = 'fornecedor'
      Required = True
      Visible = False
    end
    object query_entrada_provalor: TBCDField
      DisplayLabel = 'Valor'
      DisplayWidth = 12
      FieldName = 'valor'
      Origin = 'valor'
      Required = True
      currency = True
      Precision = 10
      Size = 2
    end
    object query_entrada_prototal: TBCDField
      DisplayLabel = 'Total'
      DisplayWidth = 12
      FieldName = 'total'
      Origin = 'total'
      Required = True
      currency = True
      Precision = 10
      Size = 2
    end
    object query_entrada_prodata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data'
      Origin = 'data'
      Required = True
    end
    object query_entrada_proid_produto: TIntegerField
      FieldName = 'id_produto'
      Origin = 'id_produto'
      Required = True
      Visible = False
    end
    object query_entrada_pronome: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 15
      FieldName = 'nome'
      Size = 25
    end
    object query_entrada_protelefone: TStringField
      DisplayLabel = 'Tel Fornecedor'
      DisplayWidth = 16
      FieldName = 'telefone'
      Size = 15
    end
    object query_entrada_proquantidade: TBCDField
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Required = True
      Precision = 10
      Size = 2
    end
  end
  object DSEntradaProdutos: TDataSource
    DataSet = query_entrada_pro
    Left = 120
    Top = 248
  end
  object tb_saida_pro: TFDTable
    Connection = fd
    UpdateOptions.UpdateTableName = 'pdv.saida_produtos'
    TableName = 'pdv.saida_produtos'
    Left = 408
    Top = 104
  end
  object query_saida_pro: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from saida_produtos')
    Left = 224
    Top = 240
    object query_saida_proid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object query_saida_proproduto: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 18
      FieldName = 'produto'
      Origin = 'produto'
      Required = True
      Size = 25
    end
    object query_saida_promotivo: TStringField
      DisplayLabel = 'Motivo'
      DisplayWidth = 20
      FieldName = 'motivo'
      Origin = 'motivo'
      Required = True
      Size = 25
    end
    object query_saida_prodata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data'
      Origin = 'data'
      Required = True
    end
    object query_saida_proid_produto: TIntegerField
      FieldName = 'id_produto'
      Origin = 'id_produto'
      Required = True
      Visible = False
    end
    object query_saida_proquantidade: TBCDField
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Required = True
      Precision = 10
      Size = 2
    end
  end
  object DSSaidaProdutos: TDataSource
    DataSet = query_saida_pro
    Left = 296
    Top = 240
  end
  object tb_vendas: TFDTable
    Connection = fd
    UpdateOptions.UpdateTableName = 'pdv.vendas'
    TableName = 'pdv.vendas'
    Left = 472
    Top = 104
  end
  object query_vendas: TFDQuery
    Active = True
    Connection = fd
    SQL.Strings = (
      'select * from vendas')
    Left = 400
    Top = 240
    object query_vendasid: TFDAutoIncField
      DisplayLabel = 'ID'
      DisplayWidth = 7
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object query_vendasvalor: TBCDField
      DisplayLabel = 'Valor'
      DisplayWidth = 12
      FieldName = 'valor'
      Origin = 'valor'
      Required = True
      currency = True
      Precision = 10
      Size = 2
    end
    object query_vendasdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data'
      Origin = 'data'
      Required = True
    end
    object query_vendashora: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'hora'
      Origin = 'hora'
      Required = True
    end
    object query_vendasfuncionario: TStringField
      DisplayLabel = 'Funcion'#225'rio'
      DisplayWidth = 18
      FieldName = 'funcionario'
      Origin = 'funcionario'
      Required = True
      Size = 25
    end
    object query_vendasdesconto: TBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'desconto'
      Origin = 'desconto'
      Required = True
      Visible = False
      currency = True
      Precision = 10
      Size = 2
    end
    object query_vendasvalor_recebido: TBCDField
      DisplayLabel = 'Valor Recebido'
      DisplayWidth = 12
      FieldName = 'valor_recebido'
      Origin = 'valor_recebido'
      Required = True
      Visible = False
      Precision = 10
      Size = 2
    end
    object query_vendastroco: TBCDField
      FieldName = 'troco'
      Origin = 'troco'
      Required = True
      Visible = False
      Precision = 10
      Size = 2
    end
    object query_vendasstatus: TStringField
      DisplayLabel = 'Status'
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 12
    end
    object query_vendascliente: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cliente'
      DisplayWidth = 20
      FieldName = 'cliente'
      Origin = 'cliente'
      Size = 30
    end
    object query_vendasformadepagamento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'formadepagamento'
      Origin = 'formadepagamento'
      Size = 15
    end
    object query_vendascaixa: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'caixa'
      Origin = 'caixa'
      Visible = False
    end
  end
  object DSVendas: TDataSource
    DataSet = query_vendas
    Left = 472
    Top = 240
  end
  object tb_detalhes_vendas: TFDTable
    IndexFieldNames = 'id'
    Connection = fd
    UpdateOptions.UpdateTableName = 'pdv.detalhes_vendas'
    TableName = 'pdv.detalhes_vendas'
    Left = 528
    Top = 104
  end
  object query_det_vendas: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from detalhes_vendas')
    Left = 552
    Top = 240
    object query_det_vendasid: TFDAutoIncField
      DisplayLabel = 'C'#243'd Item'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object query_det_vendasid_venda: TIntegerField
      FieldName = 'id_venda'
      Origin = 'id_venda'
      Required = True
      Visible = False
    end
    object query_det_vendasproduto: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 16
      FieldName = 'produto'
      Origin = 'produto'
      Required = True
      Size = 25
    end
    object query_det_vendastotal: TBCDField
      DisplayLabel = 'Valor Total'
      DisplayWidth = 13
      FieldName = 'total'
      Origin = 'total'
      Required = True
      currency = True
      Precision = 10
      Size = 2
    end
    object query_det_vendasvalor: TBCDField
      DisplayLabel = 'Valor Unit'#225'rio'
      DisplayWidth = 12
      FieldName = 'valor'
      Origin = 'valor'
      Required = True
      Visible = False
      currency = True
      Precision = 10
      Size = 2
    end
    object query_det_vendasid_produto: TIntegerField
      FieldName = 'id_produto'
      Origin = 'id_produto'
      Required = True
      Visible = False
    end
    object query_det_vendasfuncionario: TStringField
      FieldName = 'funcionario'
      Origin = 'funcionario'
      Required = True
      Visible = False
      Size = 25
    end
    object query_det_vendasquantidade: TBCDField
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Required = True
      Precision = 10
      Size = 2
    end
    object query_det_vendasdata: TDateField
      FieldName = 'data'
      Origin = 'data'
      Required = True
      Visible = False
    end
  end
  object DSDetVendas: TDataSource
    DataSet = query_det_vendas
    Left = 640
    Top = 240
  end
  object tb_mov: TFDTable
    Connection = fd
    UpdateOptions.UpdateTableName = 'pdv.movimentacoes'
    TableName = 'pdv.movimentacoes'
    Left = 616
    Top = 104
  end
  object query_mov: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from movimentacoes')
    Left = 32
    Top = 320
  end
  object DSMovimentacoes: TDataSource
    DataSet = query_mov
    Left = 104
    Top = 336
  end
  object tb_gastos: TFDTable
    Connection = fd
    UpdateOptions.UpdateTableName = 'pdv.gastos'
    TableName = 'pdv.gastos'
    Left = 664
    Top = 104
  end
  object query_gastos: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from gastos')
    Left = 176
    Top = 320
    object query_gastosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object query_gastosmotivo: TStringField
      DisplayLabel = 'Motivo'
      DisplayWidth = 18
      FieldName = 'motivo'
      Origin = 'motivo'
      Required = True
      Size = 25
    end
    object query_gastosvalor: TBCDField
      DisplayLabel = 'Valor'
      DisplayWidth = 10
      FieldName = 'valor'
      Origin = 'valor'
      Required = True
      currency = True
      Precision = 10
      Size = 2
    end
    object query_gastosfuncionario: TStringField
      DisplayLabel = 'Funcion'#225'rio'
      DisplayWidth = 15
      FieldName = 'funcionario'
      Origin = 'funcionario'
      Required = True
    end
    object query_gastosdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data'
      Origin = 'data'
      Required = True
    end
  end
  object DSGastos: TDataSource
    DataSet = query_gastos
    Left = 240
    Top = 320
  end
  object tb_caixa: TFDTable
    Connection = fd
    UpdateOptions.UpdateTableName = 'pdv.caixa'
    TableName = 'pdv.caixa'
    Left = 720
    Top = 104
  end
  object query_caixa: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from caixa')
    Left = 304
    Top = 320
    object query_caixaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object query_caixadata_abertura: TDateField
      DisplayLabel = 'Data Abertura'
      FieldName = 'data_abertura'
      Origin = 'data_abertura'
      Required = True
    end
    object query_caixahora_abertura: TTimeField
      DisplayLabel = 'Hora Abertura'
      FieldName = 'hora_abertura'
      Origin = 'hora_abertura'
      Required = True
    end
    object query_caixavalor_abertura: TBCDField
      DisplayLabel = 'Valor Abertura'
      FieldName = 'valor_abertura'
      Origin = 'valor_abertura'
      Required = True
      currency = True
      Precision = 10
      Size = 2
    end
    object query_caixafuncionario_abertura: TStringField
      DisplayLabel = 'Funcion'#225'rio AB'
      DisplayWidth = 15
      FieldName = 'funcionario_abertura'
      Origin = 'funcionario_abertura'
      Required = True
      Size = 25
    end
    object query_caixadata_fechamento: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data Fechamento'
      DisplayWidth = 12
      FieldName = 'data_fechamento'
      Origin = 'data_fechamento'
    end
    object query_caixahora_fechamento: TTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Hora Fechamento'
      DisplayWidth = 12
      FieldName = 'hora_fechamento'
      Origin = 'hora_fechamento'
    end
    object query_caixavalor_fechamento: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor Fechamento'
      DisplayWidth = 12
      FieldName = 'valor_fechamento'
      Origin = 'valor_fechamento'
      currency = True
      Precision = 10
      Size = 2
    end
    object query_caixavalor_vendido: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Total Vendido'
      FieldName = 'valor_vendido'
      Origin = 'valor_vendido'
      currency = True
      Precision = 10
      Size = 2
    end
    object query_caixavalor_quebra: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor da Quebra'
      DisplayWidth = 12
      FieldName = 'valor_quebra'
      Origin = 'valor_quebra'
      currency = True
      Precision = 10
      Size = 2
    end
    object query_caixafuncionario_fechamento: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Func Fechamento'
      DisplayWidth = 18
      FieldName = 'funcionario_fechamento'
      Origin = 'funcionario_fechamento'
      Size = 25
    end
    object query_caixanum_caixa: TIntegerField
      DisplayLabel = 'Caixa'
      DisplayWidth = 6
      FieldName = 'num_caixa'
      Origin = 'num_caixa'
      Required = True
    end
    object query_caixaoperador: TStringField
      DisplayLabel = 'Operador'
      DisplayWidth = 15
      FieldName = 'operador'
      Origin = 'operador'
      Required = True
      Size = 25
    end
    object query_caixastatus: TStringField
      DisplayLabel = 'Status'
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 10
    end
  end
  object DSCaixa: TDataSource
    DataSet = query_caixa
    Left = 376
    Top = 320
  end
  object rel_Mov_Entradas: TFDQuery
    Connection = fd
    Left = 736
    Top = 392
  end
  object rel_Mov_Saidas: TFDQuery
    Connection = fd
    Left = 888
    Top = 400
  end
  object query_empresa: TFDQuery
    Active = True
    Connection = fd
    SQL.Strings = (
      'select * from empresa')
    Left = 592
    Top = 320
    object query_empresaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object query_empresaempresa: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 20
      FieldName = 'empresa'
      Origin = 'empresa'
      Required = True
      Size = 30
    end
    object query_empresaendereco: TStringField
      DisplayLabel = 'Endereco'
      DisplayWidth = 35
      FieldName = 'endereco'
      Origin = 'endereco'
      Required = True
      Size = 50
    end
    object query_empresatelefone: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 11
      FieldName = 'telefone'
      Origin = 'telefone'
      Required = True
      Size = 15
    end
    object query_empresacnpj: TStringField
      DisplayLabel = 'CNPJ'
      DisplayWidth = 13
      FieldName = 'cnpj'
      Origin = 'cnpj'
      Required = True
      Size = 15
    end
    object query_empresaie: TStringField
      DisplayLabel = 'IE'
      DisplayWidth = 13
      FieldName = 'ie'
      Origin = 'ie'
      Required = True
      Size = 15
    end
    object query_empresalogotipo: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'logotipo'
      Origin = 'logotipo'
      Visible = False
    end
    object query_empresaemail: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'email'
      Origin = 'email'
      Size = 30
    end
  end
  object DSEmpresa: TDataSource
    DataSet = query_empresa
    Left = 688
    Top = 320
  end
  object tb_empresa: TFDTable
    Connection = fd
    UpdateOptions.UpdateTableName = 'pdv.empresa'
    TableName = 'pdv.empresa'
    Left = 480
    Top = 320
  end
  object query_caixa_Coringa: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from caixa')
    Left = 328
    Top = 32
    object query_caixa_Coringadata_abertura: TDateField
      DisplayLabel = 'Data da Abertura'
      FieldName = 'data_abertura'
      Origin = 'data_abertura'
      Required = True
    end
    object query_caixa_Coringaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object query_caixa_Coringahora_abertura: TTimeField
      DisplayLabel = 'Hora da Abertura'
      DisplayWidth = 3
      FieldName = 'hora_abertura'
      Origin = 'hora_abertura'
      Required = True
    end
    object query_caixa_Coringavalor_abertura: TBCDField
      DisplayLabel = 'Valor da  Abertura'
      DisplayWidth = 4
      FieldName = 'valor_abertura'
      Origin = 'valor_abertura'
      Required = True
      currency = True
      Precision = 10
      Size = 2
    end
    object query_caixa_Coringafuncionario_abertura: TStringField
      DisplayLabel = 'Gerente  Abertura'
      DisplayWidth = 16
      FieldName = 'funcionario_abertura'
      Origin = 'funcionario_abertura'
      Required = True
      Size = 25
    end
    object query_caixa_Coringadata_fechamento: TDateField
      AutoGenerateValue = arDefault
      DisplayWidth = 8
      FieldName = 'data_fechamento'
      Origin = 'data_fechamento'
      Visible = False
    end
    object query_caixa_Coringahora_fechamento: TTimeField
      AutoGenerateValue = arDefault
      DisplayWidth = 8
      FieldName = 'hora_fechamento'
      Origin = 'hora_fechamento'
      Visible = False
    end
    object query_caixa_Coringavalor_fechamento: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 8
      FieldName = 'valor_fechamento'
      Origin = 'valor_fechamento'
      Visible = False
      Precision = 10
      Size = 2
    end
    object query_caixa_Coringavalor_vendido: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 8
      FieldName = 'valor_vendido'
      Origin = 'valor_vendido'
      Visible = False
      Precision = 10
      Size = 2
    end
    object query_caixa_Coringavalor_quebra: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 8
      FieldName = 'valor_quebra'
      Origin = 'valor_quebra'
      Visible = False
      Precision = 10
      Size = 2
    end
    object query_caixa_Coringafuncionario_fechamento: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 18
      FieldName = 'funcionario_fechamento'
      Origin = 'funcionario_fechamento'
      Visible = False
      Size = 25
    end
    object query_caixa_Coringanum_caixa: TIntegerField
      DisplayLabel = 'Caixa'
      DisplayWidth = 5
      FieldName = 'num_caixa'
      Origin = 'num_caixa'
      Required = True
    end
    object query_caixa_Coringaoperador: TStringField
      DisplayLabel = 'Operador'
      DisplayWidth = 18
      FieldName = 'operador'
      Origin = 'operador'
      Required = True
      Size = 25
    end
    object query_caixa_Coringastatus: TStringField
      DisplayLabel = 'Status'
      DisplayWidth = 8
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 10
    end
  end
  object DSCaixa_Coringa: TDataSource
    DataSet = query_caixa_Coringa
    Left = 440
    Top = 32
  end
  object tb_registro: TFDTable
    IndexFieldNames = 'id'
    Connection = fd
    UpdateOptions.UpdateTableName = 'pdv.registro'
    TableName = 'pdv.registro'
    Left = 40
    Top = 408
    object tb_registroid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tb_registroserialkey: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'serialkey'
      Origin = 'serialkey'
      Size = 50
    end
    object tb_registronumero: TStringField
      FieldName = 'numero'
      Origin = 'numero'
      Required = True
      Size = 50
    end
    object tb_registrodata: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data'
      Origin = 'data'
    end
  end
  object query_registro: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from registro')
    Left = 136
    Top = 400
    object query_registroid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object query_registronumero: TStringField
      FieldName = 'numero'
      Origin = 'numero'
      Required = True
      Size = 50
    end
    object query_registroserialkey: TStringField
      FieldName = 'serialkey'
      Origin = 'serialkey'
      Required = True
      Size = 50
    end
    object query_registrodata: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data'
      Origin = 'data'
    end
  end
  object DSRegistro: TDataSource
    DataSet = query_registro
    Left = 240
    Top = 408
  end
  object query_coringaReg: TFDQuery
    Connection = fd
    Left = 536
    Top = 24
  end
  object tb_clientes: TFDTable
    Connection = fd
    UpdateOptions.UpdateTableName = 'pdv.clientes'
    TableName = 'pdv.clientes'
    Left = 328
    Top = 424
  end
  object query_clientes: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from clientes')
    Left = 408
    Top = 416
    object query_clientesid: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 5
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object query_clientesnome: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 30
    end
    object query_clientesendereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 30
      FieldName = 'endereco'
      Origin = 'endereco'
      Required = True
      Size = 50
    end
    object query_clientestelefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Origin = 'telefone'
      Required = True
      Size = 15
    end
    object query_clientesdebito: TBCDField
      DisplayLabel = 'Debito'
      FieldName = 'debito'
      Origin = 'debito'
      Required = True
      currency = True
      Precision = 10
      Size = 2
    end
    object query_clientesdia_vencimento: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dia do Vencimento'
      FieldName = 'dia_vencimento'
      Origin = 'dia_vencimento'
      Size = 3
    end
  end
  object DSClientes: TDataSource
    DataSet = query_clientes
    Left = 504
    Top = 416
  end
  object tb_notadecompra: TFDTable
    IndexFieldNames = 'id'
    Connection = fd
    UpdateOptions.UpdateTableName = 'pdv.notadecompra'
    TableName = 'pdv.notadecompra'
    Left = 48
    Top = 504
    object tb_notadecompraid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tb_notadecompranumeronota: TStringField
      FieldName = 'numeronota'
      Origin = 'numeronota'
      Required = True
      Size = 50
    end
    object tb_notadecomprafornecedor: TStringField
      FieldName = 'fornecedor'
      Origin = 'fornecedor'
      Required = True
      Size = 15
    end
    object tb_notadecompratotal: TBCDField
      FieldName = 'total'
      Origin = 'total'
      Required = True
      Precision = 10
      Size = 2
    end
    object tb_notadecomprafuncionario: TStringField
      FieldName = 'funcionario'
      Origin = 'funcionario'
      Required = True
      Size = 30
    end
    object tb_notadecompradata: TDateField
      FieldName = 'data'
      Origin = 'data'
      Required = True
    end
  end
  object query_notadecompra: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from notadecompra')
    Left = 160
    Top = 512
    object query_notadecompranumeronota: TStringField
      DisplayLabel = 'N'#250'mero da Nota'
      FieldName = 'numeronota'
      Origin = 'numeronota'
      Required = True
      Size = 50
    end
    object query_notadecomprafornecedor: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'fornecedor'
      Origin = 'fornecedor'
      Required = True
      Size = 15
    end
    object query_notadecompratotal: TBCDField
      DisplayLabel = 'Total'
      FieldName = 'total'
      Origin = 'total'
      Required = True
      currency = True
      Precision = 10
      Size = 2
    end
    object query_notadecompradata: TDateField
      DisplayLabel = 'Data de Lan'#231'amento'
      FieldName = 'data'
      Origin = 'data'
      Required = True
    end
    object query_notadecompraid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
  end
  object DSNotadecompra: TDataSource
    DataSet = query_notadecompra
    Left = 280
    Top = 496
  end
  object tb_detalhes_notas: TFDTable
    IndexFieldNames = 'id'
    Connection = fd
    UpdateOptions.UpdateTableName = 'pdv.detalhes_notas'
    TableName = 'pdv.detalhes_notas'
    Left = 416
    Top = 496
    object tb_detalhes_notasid: TFDAutoIncField
      DisplayLabel = 'C'#243'd '#205'tem'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tb_detalhes_notasid_nota: TIntegerField
      FieldName = 'id_nota'
      Origin = 'id_nota'
      Required = True
      Visible = False
    end
    object tb_detalhes_notasproduto: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 15
      FieldName = 'produto'
      Origin = 'produto'
      Required = True
      Size = 25
    end
    object tb_detalhes_notasvalor: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Origin = 'valor'
      Required = True
      currency = True
      Precision = 10
      Size = 2
    end
    object tb_detalhes_notasquantidade: TBCDField
      DisplayLabel = 'Qtd'
      DisplayWidth = 5
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Required = True
      Precision = 10
      Size = 2
    end
    object tb_detalhes_notastotal: TBCDField
      DisplayLabel = 'Total'
      DisplayWidth = 15
      FieldName = 'total'
      Origin = 'total'
      Required = True
      currency = True
      Precision = 10
      Size = 2
    end
    object tb_detalhes_notasid_produto: TIntegerField
      FieldName = 'id_produto'
      Origin = 'id_produto'
      Required = True
      Visible = False
    end
    object tb_detalhes_notasfuncionario: TStringField
      FieldName = 'funcionario'
      Origin = 'funcionario'
      Required = True
      Visible = False
      Size = 25
    end
    object tb_detalhes_notasdata: TDateField
      FieldName = 'data'
      Origin = 'data'
      Required = True
      Visible = False
    end
  end
  object query_detalhes_notas: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from detalhes_notas')
    Left = 536
    Top = 488
    object query_detalhes_notasid: TFDAutoIncField
      DisplayLabel = 'C'#243'd. '#205'tem'
      DisplayWidth = 8
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object query_detalhes_notasid_nota: TIntegerField
      DisplayWidth = 6
      FieldName = 'id_nota'
      Origin = 'id_nota'
      Required = True
      Visible = False
    end
    object query_detalhes_notasproduto: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 12
      FieldName = 'produto'
      Origin = 'produto'
      Required = True
      Size = 25
    end
    object query_detalhes_notasvalor: TBCDField
      DisplayLabel = 'Valor '
      DisplayWidth = 10
      FieldName = 'valor'
      Origin = 'valor'
      Required = True
      currency = True
      Precision = 10
      Size = 2
    end
    object query_detalhes_notasquantidade: TBCDField
      DisplayLabel = 'Qtd.'
      DisplayWidth = 11
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Required = True
      Precision = 10
      Size = 2
    end
    object query_detalhes_notastotal: TBCDField
      DisplayLabel = 'Total'
      DisplayWidth = 9
      FieldName = 'total'
      Origin = 'total'
      Required = True
      currency = True
      Precision = 10
      Size = 2
    end
    object query_detalhes_notasid_produto: TIntegerField
      FieldName = 'id_produto'
      Origin = 'id_produto'
      Required = True
      Visible = False
    end
    object query_detalhes_notasfuncionario: TStringField
      FieldName = 'funcionario'
      Origin = 'funcionario'
      Required = True
      Visible = False
      Size = 25
    end
    object query_detalhes_notasdata: TDateField
      FieldName = 'data'
      Origin = 'data'
      Required = True
      Visible = False
    end
  end
  object DSDetalhesnotas: TDataSource
    DataSet = query_detalhes_notas
    Left = 640
    Top = 488
  end
  object query_consultaRankProdutos: TFDQuery
    Connection = fd
    SQL.Strings = (
      '')
    Left = 280
    Top = 560
  end
  object DSConsultarkProdut: TDataSource
    DataSet = query_consultaRankProdutos
    Left = 400
    Top = 552
  end
  object query_ConsultarVendedores: TFDQuery
    Connection = fd
    Left = 528
    Top = 552
  end
  object DSConsultarVendedores: TDataSource
    DataSet = query_ConsultarVendedores
    Left = 656
    Top = 552
  end
  object Query_wiew_pro_pdv: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from pro_pdv')
    Left = 880
    Top = 480
    object Query_wiew_pro_pdvid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object Query_wiew_pro_pdvnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 25
    end
    object Query_wiew_pro_pdvdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 35
    end
    object Query_wiew_pro_pdvdata: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data'
      Origin = 'data'
    end
    object Query_wiew_pro_pdvcodigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigo'
      Origin = 'codigo'
      Size = 50
    end
    object Query_wiew_pro_pdvvalor: TBCDField
      FieldName = 'valor'
      Origin = 'valor'
      Required = True
      Precision = 10
      Size = 2
    end
    object Query_wiew_pro_pdvestoque: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'estoque'
      Origin = 'estoque'
      Precision = 10
      Size = 2
    end
  end
  object tb_wiew_pro_pdv: TFDTable
    Connection = fd
    UpdateOptions.UpdateTableName = 'pro_pdv'
    TableName = 'pro_pdv'
    Left = 784
    Top = 504
  end
  object DS_wiew_pro_pdv: TDataSource
    DataSet = Query_wiew_pro_pdv
    Left = 992
    Top = 504
  end
  object query_configuracoes: TFDQuery
    Connection = fd
    SQL.Strings = (
      'SELECT * FROM configuracoes')
    Left = 880
    Top = 560
  end
  object tb_config: TFDTable
    Connection = fd
    UpdateOptions.UpdateTableName = 'pdv.configuracoes'
    TableName = 'pdv.configuracoes'
    Left = 784
    Top = 584
  end
  object DataSource_configuracoes: TDataSource
    DataSet = query_configuracoes
    Left = 992
    Top = 584
  end
  object Timer1: TTimer
    Interval = 30000
    OnTimer = Timer1Timer
    Left = 104
    Top = 40
  end
  object rel_comprovante: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43649.779677141200000000
    ReportOptions.LastChange = 43988.922409375000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 48
    Top = 984
    Datasets = <
      item
        DataSet = rel_DS_DetVendas
        DataSetName = 'DS_Det_Vendas'
      end
      item
        DataSet = rel_DS_Vendas
        DataSetName = 'DSVendas'
      end
      item
        DataSet = rel_DS_empresa
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 100.000000000000000000
      PaperHeight = 130.000000000000000000
      PaperSize = 256
      BackPicture.Data = {
        0A544A504547496D61676592220000FFD8FFE104C44578696600004D4D002A00
        0000080007011200030000000100010000011A00050000000100000062011B00
        05000000010000006A0128000300000001000200000131000200000022000000
        720132000200000014000000948769000400000001000000A8000000D4000AFC
        8000002710000AFC800000271041646F62652050686F746F73686F7020434320
        32303137202857696E646F77732900323031393A30333A31332032313A30313A
        3237000003A001000300000001FFFF0000A0020004000000010000011BA00300
        0400000001000001710000000000000006010300030000000100060000011A00
        050000000100000122011B0005000000010000012A0128000300000001000200
        0002010004000000010000013202020004000000010000038A00000000000000
        48000000010000004800000001FFD8FFED000C41646F62655F434D0002FFEE00
        0E41646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B
        11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E
        0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800A0007B03012200
        021101031101FFDD00040008FFC4013F00000105010101010101000000000000
        00030001020405060708090A0B01000105010101010101000000000000000100
        02030405060708090A0B1000010401030204020507060805030C330100021103
        04211231054151611322718132061491A1B14223241552C16233347282D14307
        259253F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3
        D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
        37475767778797A7B7C7D7E7F711000202010204040304050607070605350100
        021103213112044151617122130532819114A1B14223C152D1F0332462E17282
        92435315637334F1250616A2B283072635C2D2449354A317644555367465E2F2
        B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6
        E6F62737475767778797A7B7C7FFDA000C03010002110311003F00F504924950
        4A92492494A4924925292492494A4924925292492494A4924925292492494FFF
        D0F5049249504A92492494A4924925292492494A4924925292492494A4924925
        292492494FFFD1F5049249504A92492494A4924925292492494A492492529249
        2494A4924925292492494FFFD2F5049249504A92492494A4924925292492494A
        4924925292492494A4924925292492494FFFD3F5049249504A92492494A49249
        25292492494A4924925292492494A4924925292492494FFFD4F5049249504A92
        492494A4924925292492494A4924925292492494A4924925292492494FFFD5F5
        049249504A92492494A4924925292492494A4924925292492494A49249252924
        92494FFFD6F5049249504A92492494A4924925292492494A4924925292492494
        A4924925292492494FFFD7F5049249504A92492494A4924925292492494A4924
        925292492494A4924925292492494FFFD0F5049249504A92492494A492492529
        2492494A4924925292492494A4924925292492494FFFD9FFED0CD650686F746F
        73686F7020332E30003842494D04250000000000100000000000000000000000
        00000000003842494D043A000000000125000000100000000100000000000B70
        72696E744F7574707574000000050000000050737453626F6F6C010000000049
        6E7465656E756D00000000496E746500000000436C726D0000000F7072696E74
        5369787465656E426974626F6F6C000000000B7072696E7465724E616D655445
        585400000017004800500020004400650073006B006A00650074002000330035
        00310030002000730065007200690065007300000000000F7072696E7450726F
        6F6653657475704F626A63000000160043006F006E0066006900670075007200
        6100E700E3006F002000640065002000500072006F0076006100000000000A70
        726F6F6653657475700000000100000000426C746E656E756D0000000C627569
        6C74696E50726F6F660000000970726F6F66434D594B003842494D043B000000
        00022D00000010000000010000000000127072696E744F75747075744F707469
        6F6E7300000017000000004370746E626F6F6C0000000000436C6272626F6F6C
        00000000005267734D626F6F6C000000000043726E43626F6F6C000000000043
        6E7443626F6F6C00000000004C626C73626F6F6C00000000004E677476626F6F
        6C0000000000456D6C44626F6F6C0000000000496E7472626F6F6C0000000000
        42636B674F626A63000000010000000000005247424300000003000000005264
        2020646F7562406FE000000000000000000047726E20646F7562406FE0000000
        000000000000426C2020646F7562406FE000000000000000000042726454556E
        744623526C74000000000000000000000000426C6420556E744623526C740000
        0000000000000000000052736C74556E74462350786C40520000000000000000
        000A766563746F7244617461626F6F6C010000000050675073656E756D000000
        00506750730000000050675043000000004C656674556E744623526C74000000
        000000000000000000546F7020556E744623526C740000000000000000000000
        0053636C20556E74462350726340590000000000000000001063726F70576865
        6E5072696E74696E67626F6F6C000000000E63726F7052656374426F74746F6D
        6C6F6E67000000000000000C63726F70526563744C6566746C6F6E6700000000
        0000000D63726F705265637452696768746C6F6E67000000000000000B63726F
        7052656374546F706C6F6E6700000000003842494D03ED000000000010004800
        000001000200480000000100023842494D042600000000000E00000000000000
        0000003F8000003842494D040D0000000000040000005A3842494D0419000000
        0000040000001E3842494D03F300000000000900000000000000000100384249
        4D271000000000000A000100000000000000023842494D03F500000000004800
        2F66660001006C66660006000000000001002F6666000100A1999A0006000000
        000001003200000001005A00000006000000000001003500000001002D000000
        060000000000013842494D03F80000000000700000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03
        E800003842494D04080000000000100000000100000240000002400000000038
        42494D041E000000000004000000003842494D041A00000000034D0000000600
        00000000000000000001710000011B0000000C00530065006D0020005400ED00
        740075006C006F002D0031000000010000000000000000000000000000000000
        00000100000000000000000000011B0000017100000000000000000000000000
        0000000100000000000000000000000000000000000000100000000100000000
        00006E756C6C0000000200000006626F756E64734F626A630000000100000000
        0000526374310000000400000000546F70206C6F6E6700000000000000004C65
        66746C6F6E67000000000000000042746F6D6C6F6E6700000171000000005267
        68746C6F6E670000011B00000006736C69636573566C4C73000000014F626A63
        00000001000000000005736C6963650000001200000007736C69636549446C6F
        6E67000000000000000767726F757049446C6F6E6700000000000000066F7269
        67696E656E756D0000000C45536C6963654F726967696E0000000D6175746F47
        656E6572617465640000000054797065656E756D0000000A45536C6963655479
        706500000000496D672000000006626F756E64734F626A630000000100000000
        0000526374310000000400000000546F70206C6F6E6700000000000000004C65
        66746C6F6E67000000000000000042746F6D6C6F6E6700000171000000005267
        68746C6F6E670000011B0000000375726C54455854000000010000000000006E
        756C6C54455854000000010000000000004D7367655445585400000001000000
        000006616C74546167544558540000000100000000000E63656C6C5465787449
        7348544D4C626F6F6C010000000863656C6C5465787454455854000000010000
        00000009686F727A416C69676E656E756D0000000F45536C696365486F727A41
        6C69676E0000000764656661756C740000000976657274416C69676E656E756D
        0000000F45536C69636556657274416C69676E0000000764656661756C740000
        000B6267436F6C6F7254797065656E756D0000001145536C6963654247436F6C
        6F7254797065000000004E6F6E6500000009746F704F75747365746C6F6E6700
        0000000000000A6C6566744F75747365746C6F6E67000000000000000C626F74
        746F6D4F75747365746C6F6E67000000000000000B72696768744F7574736574
        6C6F6E6700000000003842494D042800000000000C000000023FF00000000000
        003842494D041100000000000101003842494D04140000000000040000000138
        42494D040C0000000003A6000000010000007B000000A0000001740000E88000
        00038A00180001FFD8FFED000C41646F62655F434D0002FFEE000E41646F6265
        00648000000001FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F
        1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E
        0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800A0007B03012200021101031101
        FFDD00040008FFC4013F00000105010101010101000000000000000300010204
        05060708090A0B01000105010101010101000000000000000100020304050607
        08090A0B1000010401030204020507060805030C330100021103042112310541
        51611322718132061491A1B14223241552C16233347282D14307259253F0E1F1
        63733516A2B283264493546445C2A3743617D255E265F2B384C3D375E3F34627
        94A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6374757677787
        97A7B7C7D7E7F711000202010204040304050607070605350100021103213112
        044151617122130532819114A1B14223C152D1F0332462E17282924353156373
        34F1250616A2B283072635C2D2449354A317644555367465E2F2B384C3D375E3
        F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F627374757
        67778797A7B7C7FFDA000C03010002110311003F00F5049249504A92492494A4
        924925292492494A4924925292492494A4924925292492494FFFD0F504924950
        4A92492494A4924925292492494A4924925292492494A4924925292492494FFF
        D1F5049249504A92492494A4924925292492494A4924925292492494A4924925
        292492494FFFD2F5049249504A92492494A4924925292492494A492492529249
        2494A4924925292492494FFFD3F5049249504A92492494A4924925292492494A
        4924925292492494A4924925292492494FFFD4F5049249504A92492494A49249
        25292492494A4924925292492494A4924925292492494FFFD5F5049249504A92
        492494A4924925292492494A4924925292492494A4924925292492494FFFD6F5
        049249504A92492494A4924925292492494A4924925292492494A49249252924
        92494FFFD7F5049249504A92492494A4924925292492494A4924925292492494
        A4924925292492494FFFD0F5049249504A92492494A4924925292492494A4924
        925292492494A4924925292492494FFFD93842494D042100000000005D000000
        01010000000F00410064006F00620065002000500068006F0074006F00730068
        006F00700000001700410064006F00620065002000500068006F0074006F0073
        0068006F00700020004300430020003200300031003700000001003842494D04
        060000000000070007010100010100FFE10CFD687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F003C3F787061636B657420626567696E3D
        22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B63
        3964223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A
        6E733A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F72
        6520352E362D633133382037392E3135393832342C20323031362F30392F3134
        2D30313A30393A30312020202020202020223E203C7264663A52444620786D6C
        6E733A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F30
        322F32322D7264662D73796E7461782D6E7323223E203C7264663A4465736372
        697074696F6E207264663A61626F75743D222220786D6C6E733A786D703D2268
        7474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C
        6E733A64633D22687474703A2F2F7075726C2E6F72672F64632F656C656D656E
        74732F312E312F2220786D6C6E733A786D704D4D3D22687474703A2F2F6E732E
        61646F62652E636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A737445
        76743D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F
        73547970652F5265736F757263654576656E74232220786D6C6E733A70686F74
        6F73686F703D22687474703A2F2F6E732E61646F62652E636F6D2F70686F746F
        73686F702F312E302F2220786D703A43726561746F72546F6F6C3D2241646F62
        652050686F746F73686F702043432032303137202857696E646F777329222078
        6D703A437265617465446174653D22323031392D30332D31335432313A30313A
        32372D30333A30302220786D703A4D65746164617461446174653D2232303139
        2D30332D31335432313A30313A32372D30333A30302220786D703A4D6F646966
        79446174653D22323031392D30332D31335432313A30313A32372D30333A3030
        222064633A666F726D61743D22696D6167652F6A7065672220786D704D4D3A49
        6E7374616E636549443D22786D702E6969643A62316535623364622D65343935
        2D393234302D386134312D6466356163313930646432362220786D704D4D3A44
        6F63756D656E7449443D22786D702E6469643A62316535623364622D65343935
        2D393234302D386134312D6466356163313930646432362220786D704D4D3A4F
        726967696E616C446F63756D656E7449443D22786D702E6469643A6231653562
        3364622D653439352D393234302D386134312D64663561633139306464323622
        2070686F746F73686F703A436F6C6F724D6F64653D2233223E203C786D704D4D
        3A486973746F72793E203C7264663A5365713E203C7264663A6C692073744576
        743A616374696F6E3D2263726561746564222073744576743A696E7374616E63
        6549443D22786D702E6969643A62316535623364622D653439352D393234302D
        386134312D646635616331393064643236222073744576743A7768656E3D2232
        3031392D30332D31335432313A30313A32372D30333A3030222073744576743A
        736F6674776172654167656E743D2241646F62652050686F746F73686F702043
        432032303137202857696E646F777329222F3E203C2F7264663A5365713E203C
        2F786D704D4D3A486973746F72793E203C2F7264663A4465736372697074696F
        6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020203C3F787061
        636B657420656E643D2277223F3EFFEE002141646F6265006440000000010300
        1003020306000000000000000000000000FFDB00840001010101010101010101
        0201010102020101010102020202020202020302030303030203030404040404
        0305050505050507070707070808080808080808080801010101020202040303
        0407050405070808080808080808080808080808080808080808080808080808
        0808080808080808080808080808080808080808080808FFC20011080171011B
        03011100021101031101FFC4005F000101000000000000000000000000000000
        0A01010101000000000000000000000000000005081001000000000000000000
        000000000000A01101000000000000000000000000000000A012010000000000
        00000000000000000000A0FFDA000C03010102110311000000BC2C8140000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000001FFDA00080102000105
        00539FFFDA0008010300010500539FFFDA0008010100010500539FFFDA000801
        0202063F00539FFFDA0008010302063F00539FFFDA0008010101063F00539FFF
        D9}
      Frame.Typ = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 275.905690000000000000
        Width = 377.953000000000000000
        DataSet = rel_DS_DetVendas
        DataSetName = 'DS_Det_Vendas'
        RowCount = 0
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Unit'#225'rio')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 196.535560000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 268.346630000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
        object DS_Det_Vendasproduto: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 18.897650000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'produto'
          DataSet = rel_DS_DetVendas
          DataSetName = 'DS_Det_Vendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DS_Det_Vendas."produto"]')
          ParentFont = False
        end
        object DS_Det_Vendasvalor: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'valor'
          DataSet = rel_DS_DetVendas
          DataSetName = 'DS_Det_Vendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DS_Det_Vendas."valor"]')
          ParentFont = False
        end
        object DS_Det_Vendasquantidade: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'quantidade'
          DataSet = rel_DS_DetVendas
          DataSetName = 'DS_Det_Vendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DS_Det_Vendas."quantidade"]')
          ParentFont = False
        end
        object DS_Det_Vendastotal: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 268.346630000000000000
          Top = 18.897650000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'total'
          DataSet = rel_DS_DetVendas
          DataSetName = 'DS_Det_Vendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DS_Det_Vendas."total"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 26.456710000000000000
          Width = 332.598640000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 234.330860000000000000
        Top = 18.897650000000000000
        Width = 377.953000000000000000
        object Memo2: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 22.677180000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."endereco"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 28.346475000000000000
          Top = 37.795300000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ [frxDBDataset1."cnpj"]      IE [frxDBDataset1."ie"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692950000000000000
          Top = 60.472480000000000000
          Width = 355.275820000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 60.472480000000000000
          Width = 355.275820000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 185.196970000000000000
          Top = 60.472480000000000000
          Width = 355.275820000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tel: [frxDBDataset1."telefone"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 68.031540000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
              '- - - - - - - - - - - ')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Top = 75.590600000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'RELAT'#211'RIO DE COMPRA')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 90.708720000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'COMPROVANTE DE PAGAMENTO')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 113.385900000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo da Venda')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 128.504020000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
              '- - - - - - - - - - - ')
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 128.504020000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Total da Compra')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 158.740260000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Total Pago')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 158.740260000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
              '- - - - - - - - - - - ')
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 173.858380000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Troco')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 173.858380000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
              '- - - - - - - - - - - ')
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 219.212740000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ITENS DA VENDA')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 143.622140000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
              '- - - - - - - - - - - ')
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 143.622140000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object DSVendasid: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 113.385900000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'id'
          DataSet = rel_DS_Vendas
          DataSetName = 'DSVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSVendas."id"]')
          ParentFont = False
        end
        object DSVendasvalor: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 130.393700790000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'valor'
          DataSet = rel_DS_Vendas
          DataSetName = 'DSVendas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSVendas."valor"]')
          ParentFont = False
        end
        object DSVendasdesconto: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 147.401670000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'desconto'
          DataSet = rel_DS_Vendas
          DataSetName = 'DSVendas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSVendas."desconto"]')
          ParentFont = False
        end
        object DSVendasvalor_recebido: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 162.519790000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'valor_recebido'
          DataSet = rel_DS_Vendas
          DataSetName = 'DSVendas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSVendas."valor_recebido"]')
          ParentFont = False
        end
        object DSVendastroco: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 177.637910000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'troco'
          DataSet = rel_DS_Vendas
          DataSetName = 'DSVendas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSVendas."troco"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 121.784855560000000000
          Top = 0.419947780000000000
          Width = 138.582766670000000000
          Height = 20.157493330000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."empresa"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 374.173470000000000000
        Width = 377.953000000000000000
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 3.779530000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'DESENVOLVIDO POR ADEMILSON PIRES - PONTO TI INFORM'#193'TICA')
          ParentFont = False
        end
      end
    end
  end
  object rel_DS_Vendas: TfrxDBDataset
    UserName = 'DSVendas'
    CloseDataSource = False
    DataSet = query_vendas
    BCDToCurrency = False
    Left = 136
    Top = 1056
  end
  object rel_DS_DetVendas: TfrxDBDataset
    UserName = 'DS_Det_Vendas'
    CloseDataSource = False
    DataSet = query_det_vendas
    BCDToCurrency = False
    Left = 232
    Top = 1064
  end
  object rel_caixa: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43650.612255775500000000
    ReportOptions.LastChange = 43998.584756250000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 40
    Top = 1176
    Datasets = <
      item
        DataSet = rel_DS_Caixa
        DataSetName = 'DSCaixa'
      end
      item
        DataSet = rel_DS_empresa
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'dataInicial'
        Value = Null
      end
      item
        Name = 'dataFinal'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      BackPicture.Data = {
        0A544A504547496D616765C9890000FFD8FFE106BA4578696600004D4D002A00
        0000080007011200030000000100010000011A00050000000100000062011B00
        05000000010000006A0128000300000001000200000131000200000022000000
        720132000200000014000000948769000400000001000000A8000000D4000AFC
        8000002710000AFC800000271041646F62652050686F746F73686F7020434320
        32303137202857696E646F77732900323031393A30333A31322031363A31373A
        3232000003A001000300000001FFFF0000A00200040000000100000253A00300
        04000000010000034A0000000000000006010300030000000100060000011A00
        050000000100000122011B0005000000010000012A0128000300000001000200
        0002010004000000010000013202020004000000010000058000000000000000
        48000000010000004800000001FFD8FFED000C41646F62655F434D0002FFEE00
        0E41646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B
        11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E
        0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800A0007103012200
        021101031101FFDD00040008FFC4013F00000105010101010101000000000000
        00030001020405060708090A0B01000105010101010101000000000000000100
        02030405060708090A0B1000010401030204020507060805030C330100021103
        04211231054151611322718132061491A1B14223241552C16233347282D14307
        259253F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3
        D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
        37475767778797A7B7C7D7E7F711000202010204040304050607070605350100
        021103213112044151617122130532819114A1B14223C152D1F0332462E17282
        92435315637334F1250616A2B283072635C2D2449354A317644555367465E2F2
        B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6
        E6F62737475767778797A7B7C7FFDA000C03010002110311003F00F414924948
        85249249294924924A5249249294924924A5249249294A8F52E6AFED7FDF55E5
        47A97357F6BFEFA90534D24924E43FFFD0F4AFB11FF49FF47FF324BEC47F7C7D
        DFED56924788A1ABF623FE907DDFED4DF623FE907DDFED56924ACA9ABF623FE9
        07DDFED4BEC47FD20FBBFDAAD249595357EC47FD20FBBFDA97D88FFA4FFA3FED
        569246CA9ABF623FE907DDFED4FF00623FE907DDFED565242CA9ADF623FBE3EE
        FF00CC92FB11FDFF00C3FF00325653A5654D5FB11FF49FF47FF32599D669F49D
        47BB76E0FED1C6C5BAB1FAFF00D2C7F83FFF0045A3126D45CA492494887FFFD1
        F530653A82903292174C9D2492B249248A1492499252E92694A5252E92694A52
        53258FD7FE963FC1FF00F7C5AFB96475F3EEC7F83FFEF88C770A72924925221F
        FFD2F538F24BE497C928F2450BA49BE49D05293274924AC924922858CA5253A6
        D5252B54B54B5F14B5F1494AD564F5F9DD8F3E0FFF00BE2D6D7C564F5EFA58FF
        0007FF00DF118EEA72924925221FFFD3F52DC96E5182941450CB725B9460A509
        2996E4B728A492996E4A5452494CA5295149252E9264A1252EB27AF7D2C7F83F
        FEF8B5564F5DFA58FF0007FF00DF118EEA73124925221FFFD4F5191E0948F04C
        92285E4782523C1324929791E0948F04C924A5E4782523C1324929791E0948F0
        4C924A5F4F04A4782649252F23C164F5EFA58FF07FFDF16AACAEBBF4B1FE0FFF
        00BE231DD4E5A4924A443FFFD5F50493A48A16493A49296493A49296493A4929
        6493A49296493A49296595D77E963FC1FF00F7C5ACB27AF7D2C7F83FFEF88C77
        539692492910FF00FFD6F53D12D132708A15A7825ED48A8A4A652D4B44C02749
        4AD12D3C1327494A81E09E0264E82950128092492550163F5FFA58FF0007FF00
        DF16C2C7EBFF004B1FE0FF00FBE231DC20B9492492950FFFD7F5209D249142C9
        25AF9A7494A4C927494A4E9248294924924A5249249254B1FAFF00D2C7F83FFE
        F8B6163F5FFA58FF0007FF00DF118EE145CA492494AB5FFFD0F5320A6DA567EF
        B3F7DDF794B7D9FBEEFBCA7521D18849676FB3F7DDF794B7D9FBEEFBCA5C2A74
        613ACDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF77DE5
        2E153A492CDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF
        77DE52E153A4B1FAFF00D2C7F83FFEF88DBECFDF77DE551EA6E71356E24E8EE4
        CFEEA206AA69249249E87FFFD9FFED0F1A50686F746F73686F7020332E300038
        42494D0425000000000010000000000000000000000000000000003842494D04
        3A000000000125000000100000000100000000000B7072696E744F7574707574
        000000050000000050737453626F6F6C0100000000496E7465656E756D000000
        00496E746500000000436C726D0000000F7072696E745369787465656E426974
        626F6F6C000000000B7072696E7465724E616D65544558540000001700480050
        0020004400650073006B006A0065007400200033003500310030002000730065
        007200690065007300000000000F7072696E7450726F6F6653657475704F626A
        63000000160043006F006E00660069006700750072006100E700E3006F002000
        640065002000500072006F0076006100000000000A70726F6F66536574757000
        00000100000000426C746E656E756D0000000C6275696C74696E50726F6F6600
        00000970726F6F66434D594B003842494D043B00000000022D00000010000000
        010000000000127072696E744F75747075744F7074696F6E7300000017000000
        004370746E626F6F6C0000000000436C6272626F6F6C00000000005267734D62
        6F6F6C000000000043726E43626F6F6C0000000000436E7443626F6F6C000000
        00004C626C73626F6F6C00000000004E677476626F6F6C0000000000456D6C44
        626F6F6C0000000000496E7472626F6F6C000000000042636B674F626A630000
        000100000000000052474243000000030000000052642020646F7562406FE000
        000000000000000047726E20646F7562406FE0000000000000000000426C2020
        646F7562406FE000000000000000000042726454556E744623526C7400000000
        0000000000000000426C6420556E744623526C74000000000000000000000000
        52736C74556E74462350786C40520000000000000000000A766563746F724461
        7461626F6F6C010000000050675073656E756D00000000506750730000000050
        675043000000004C656674556E744623526C7400000000000000000000000054
        6F7020556E744623526C7400000000000000000000000053636C20556E744623
        50726340590000000000000000001063726F705768656E5072696E74696E6762
        6F6F6C000000000E63726F7052656374426F74746F6D6C6F6E67000000000000
        000C63726F70526563744C6566746C6F6E67000000000000000D63726F705265
        637452696768746C6F6E67000000000000000B63726F7052656374546F706C6F
        6E6700000000003842494D03ED00000000001000480000000100020048000000
        0100023842494D042600000000000E000000000000000000003F800000384249
        4D040D0000000000040000005A3842494D04190000000000040000001E384249
        4D03F3000000000009000000000000000001003842494D271000000000000A00
        0100000000000000023842494D03F5000000000048002F66660001006C666600
        06000000000001002F6666000100A1999A000600000000000100320000000100
        5A00000006000000000001003500000001002D00000006000000000001384249
        4D03F80000000000700000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800003842494D040000
        000000000200023842494D04020000000000060000000000003842494D043000
        0000000003010101003842494D042D0000000000060001000000033842494D04
        08000000000010000000010000024000000240000000003842494D041E000000
        000004000000003842494D041A00000000035900000006000000000000000000
        00034A000002530000001200460055004E0044004F002000520045004C004100
        54004F00520049004F0020004100340000000100000000000000000000000000
        000000000000010000000000000000000002530000034A000000000000000000
        0000000000000001000000000000000000000000000000000000001000000001
        0000000000006E756C6C0000000200000006626F756E64734F626A6300000001
        000000000000526374310000000400000000546F70206C6F6E67000000000000
        00004C6566746C6F6E67000000000000000042746F6D6C6F6E670000034A0000
        0000526768746C6F6E670000025300000006736C69636573566C4C7300000001
        4F626A6300000001000000000005736C6963650000001200000007736C696365
        49446C6F6E67000000000000000767726F757049446C6F6E6700000000000000
        066F726967696E656E756D0000000C45536C6963654F726967696E0000000D61
        75746F47656E6572617465640000000054797065656E756D0000000A45536C69
        63655479706500000000496D672000000006626F756E64734F626A6300000001
        000000000000526374310000000400000000546F70206C6F6E67000000000000
        00004C6566746C6F6E67000000000000000042746F6D6C6F6E670000034A0000
        0000526768746C6F6E67000002530000000375726C5445585400000001000000
        0000006E756C6C54455854000000010000000000004D73676554455854000000
        01000000000006616C74546167544558540000000100000000000E63656C6C54
        657874497348544D4C626F6F6C010000000863656C6C54657874544558540000
        0001000000000009686F727A416C69676E656E756D0000000F45536C69636548
        6F727A416C69676E0000000764656661756C740000000976657274416C69676E
        656E756D0000000F45536C69636556657274416C69676E000000076465666175
        6C740000000B6267436F6C6F7254797065656E756D0000001145536C69636542
        47436F6C6F7254797065000000004E6F6E6500000009746F704F75747365746C
        6F6E67000000000000000A6C6566744F75747365746C6F6E6700000000000000
        0C626F74746F6D4F75747365746C6F6E67000000000000000B72696768744F75
        747365746C6F6E6700000000003842494D042800000000000C000000023FF000
        00000000003842494D041100000000000101003842494D041400000000000400
        0000083842494D040C00000000059C0000000100000071000000A00000015400
        00D4800000058000180001FFD8FFED000C41646F62655F434D0002FFEE000E41
        646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B1115
        0F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14
        140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800A00071030122000211
        01031101FFDD00040008FFC4013F000001050101010101010000000000000003
        0001020405060708090A0B010001050101010101010000000000000001000203
        0405060708090A0B1000010401030204020507060805030C3301000211030421
        1231054151611322718132061491A1B14223241552C16233347282D143072592
        53F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3D375
        E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F63747
        5767778797A7B7C7D7E7F7110002020102040403040506070706053501000211
        03213112044151617122130532819114A1B14223C152D1F0332462E172829243
        5315637334F1250616A2B283072635C2D2449354A317644555367465E2F2B384
        C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
        2737475767778797A7B7C7FFDA000C03010002110311003F00F4149249488524
        9249294924924A5249249294924924A5249249294A8F52E6AFED7FDF55E547A9
        7357F6BFEFA90534D24924E43FFFD0F4AFB11FF49FF47FF324BEC47F7C7DDFED
        56924788A1ABF623FE907DDFED4DF623FE907DDFED56924ACA9ABF623FE907DD
        FED4BEC47FD20FBBFDAAD249595357EC47FD20FBBFDA97D88FFA4FFA3FED5692
        46CA9ABF623FE907DDFED4FF00623FE907DDFED565242CA9ADF623FBE3EEFF00
        CC92FB11FDFF00C3FF00325653A5654D5FB11FF49FF47FF32599D669F49D47BB
        76E0FED1C6C5BAB1FAFF00D2C7F83FFF0045A3126D45CA492494887FFFD1F530
        653A82903292174C9D2492B249248A1492499252E92694A5252E92694A525325
        8FD7FE963FC1FF00F7C5AFB96475F3EEC7F83FFEF88C770A72924925221FFFD2
        F538F24BE497C928F2450BA49BE49D05293274924AC924922858CA5253A6D525
        2B54B54B5F14B5F1494AD564F5F9DD8F3E0FFF00BE2D6D7C564F5EFA58FF0007
        FF00DF118EEA72924925221FFFD3F52DC96E5182941450CB725B9460A5092996
        E4B728A492996E4A5452494CA5295149252E9264A1252EB27AF7D2C7F83FFEF8
        B5564F5DFA58FF0007FF00DF118EEA73124925221FFFD4F5191E0948F04C9228
        5E4782523C1324929791E0948F04C924A5E4782523C1324929791E0948F04C92
        4A5F4F04A4782649252F23C164F5EFA58FF07FFDF16AACAEBBF4B1FE0FFF00BE
        231DD4E5A4924A443FFFD5F50493A48A16493A49296493A49296493A49296493
        A49296493A49296595D77E963FC1FF00F7C5ACB27AF7D2C7F83FFEF88C775396
        92492910FF00FFD6F53D12D132708A15A7825ED48A8A4A652D4B44C027494AD1
        2D3C1327494A81E09E0264E82950128092492550163F5FFA58FF0007FF00DF16
        C2C7EBFF004B1FE0FF00FBE231DC20B9492492950FFFD7F5209D249142C925AF
        9A7494A4C927494A4E9248294924924A5249249254B1FAFF00D2C7F83FFEF8B6
        163F5FFA58FF0007FF00DF118EE145CA492494AB5FFFD0F5320A6DA567EFB3F7
        DDF794B7D9FBEEFBCA7521D18849676FB3F7DDF794B7D9FBEEFBCA5C2A74613A
        CDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF77DE52E15
        3A492CDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF77DE
        52E153A4B1FAFF00D2C7F83FFEF88DBECFDF77DE551EA6E71356E24E8EE4CFEE
        A206AA69249249E87FFFD93842494D042100000000005D00000001010000000F
        00410064006F00620065002000500068006F0074006F00730068006F00700000
        001700410064006F00620065002000500068006F0074006F00730068006F0070
        0020004300430020003200300031003700000001003842494D04060000000000
        070007010100010100FFE1120D687474703A2F2F6E732E61646F62652E636F6D
        2F7861702F312E302F003C3F787061636B657420626567696E3D22EFBBBF2220
        69643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E20
        3C783A786D706D65746120786D6C6E733A783D2261646F62653A6E733A6D6574
        612F2220783A786D70746B3D2241646F626520584D5020436F726520352E362D
        633133382037392E3135393832342C20323031362F30392F31342D30313A3039
        3A30312020202020202020223E203C7264663A52444620786D6C6E733A726466
        3D22687474703A2F2F7777772E77332E6F72672F313939392F30322F32322D72
        64662D73796E7461782D6E7323223E203C7264663A4465736372697074696F6E
        207264663A61626F75743D222220786D6C6E733A786D703D22687474703A2F2F
        6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C6E733A64633D
        22687474703A2F2F7075726C2E6F72672F64632F656C656D656E74732F312E31
        2F2220786D6C6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E
        636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A73744576743D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F
        5265736F757263654576656E74232220786D6C6E733A73745265663D22687474
        703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F52
        65736F75726365526566232220786D6C6E733A70686F746F73686F703D226874
        74703A2F2F6E732E61646F62652E636F6D2F70686F746F73686F702F312E302F
        2220786D703A43726561746F72546F6F6C3D2241646F62652050686F746F7368
        6F702043432032303137202857696E646F7773292220786D703A437265617465
        446174653D22323031392D30332D31325431363A31303A35392D30333A303022
        20786D703A4D65746164617461446174653D22323031392D30332D3132543136
        3A31373A32322D30333A30302220786D703A4D6F64696679446174653D223230
        31392D30332D31325431363A31373A32322D30333A3030222064633A666F726D
        61743D22696D6167652F6A7065672220786D704D4D3A496E7374616E63654944
        3D22786D702E6969643A62363966383932382D393063382D383934352D613530
        312D3862613432396534356232312220786D704D4D3A446F63756D656E744944
        3D2261646F62653A646F6369643A70686F746F73686F703A3665626435353434
        2D343466622D313165392D613635342D6335636565343334373364662220786D
        704D4D3A4F726967696E616C446F63756D656E7449443D22786D702E6469643A
        34316464636231302D613935342D373234322D616633642D6635663335396264
        66626233222070686F746F73686F703A436F6C6F724D6F64653D2233223E203C
        786D704D4D3A486973746F72793E203C7264663A5365713E203C7264663A6C69
        2073744576743A616374696F6E3D2263726561746564222073744576743A696E
        7374616E636549443D22786D702E6969643A34316464636231302D613935342D
        373234322D616633642D663566333539626466626233222073744576743A7768
        656E3D22323031392D30332D31325431363A31303A35392D30333A3030222073
        744576743A736F6674776172654167656E743D2241646F62652050686F746F73
        686F702043432032303137202857696E646F777329222F3E203C7264663A6C69
        2073744576743A616374696F6E3D227361766564222073744576743A696E7374
        616E636549443D22786D702E6969643A66313461373734302D396136622D3434
        34372D613462352D303737383032663837336362222073744576743A7768656E
        3D22323031392D30332D31325431363A31373A30392D30333A30302220737445
        76743A736F6674776172654167656E743D2241646F62652050686F746F73686F
        702043432032303137202857696E646F777329222073744576743A6368616E67
        65643D222F222F3E203C7264663A6C692073744576743A616374696F6E3D2273
        61766564222073744576743A696E7374616E636549443D22786D702E6969643A
        30393063613532612D396433612D626534392D623635632D6235363861333161
        36326530222073744576743A7768656E3D22323031392D30332D31325431363A
        31373A32322D30333A3030222073744576743A736F6674776172654167656E74
        3D2241646F62652050686F746F73686F702043432032303137202857696E646F
        777329222073744576743A6368616E6765643D222F222F3E203C7264663A6C69
        2073744576743A616374696F6E3D22636F6E766572746564222073744576743A
        706172616D65746572733D2266726F6D206170706C69636174696F6E2F766E64
        2E61646F62652E70686F746F73686F7020746F20696D6167652F6A706567222F
        3E203C7264663A6C692073744576743A616374696F6E3D226465726976656422
        2073744576743A706172616D65746572733D22636F6E7665727465642066726F
        6D206170706C69636174696F6E2F766E642E61646F62652E70686F746F73686F
        7020746F20696D6167652F6A706567222F3E203C7264663A6C69207374457674
        3A616374696F6E3D227361766564222073744576743A696E7374616E63654944
        3D22786D702E6969643A62363966383932382D393063382D383934352D613530
        312D386261343239653435623231222073744576743A7768656E3D2232303139
        2D30332D31325431363A31373A32322D30333A3030222073744576743A736F66
        74776172654167656E743D2241646F62652050686F746F73686F702043432032
        303137202857696E646F777329222073744576743A6368616E6765643D222F22
        2F3E203C2F7264663A5365713E203C2F786D704D4D3A486973746F72793E203C
        786D704D4D3A4465726976656446726F6D2073745265663A696E7374616E6365
        49443D22786D702E6969643A30393063613532612D396433612D626534392D62
        3635632D623536386133316136326530222073745265663A646F63756D656E74
        49443D22786D702E6469643A34316464636231302D613935342D373234322D61
        6633642D663566333539626466626233222073745265663A6F726967696E616C
        446F63756D656E7449443D22786D702E6469643A34316464636231302D613935
        342D373234322D616633642D663566333539626466626233222F3E203C70686F
        746F73686F703A446F63756D656E74416E636573746F72733E203C7264663A42
        61673E203C7264663A6C693E61646F62653A646F6369643A70686F746F73686F
        703A63383837363862342D336162612D313165392D396266372D626532623861
        3737326435633C2F7264663A6C693E203C2F7264663A4261673E203C2F70686F
        746F73686F703A446F63756D656E74416E636573746F72733E203C2F7264663A
        4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A786D706D
        6574613E20202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020203C3F787061636B657420656E643D2277223F3EFFEE002141646F62
        650064400000000103001003020306000000000000000000000000FFDB008400
        0101010101010101010102010101020201010101020202020202020203020303
        0303020303040404040403050505050505070707070708080808080808080808
        0101010102020204030304070504050708080808080808080808080808080808
        0808080808080808080808080808080808080808080808080808080808080808
        08FFC2001108034A025303011100021101031101FFC400CE0001010100020301
        010000000000000000000102030904070A060501010101010101010100000000
        0000000000010203060405071000020103020405040301000301000000000111
        0212131003203021144031041517330607375060323641220523110001020106
        070D06050204050500000001003111214191A1023220305161D133A41040B112
        4203D3E30405B536077181E135757660C122B4065013F0F16214A2247495A552
        921585161200010403010002030100000000000000006001310271A1B1322080
        40A05190FFDA000C03010102110311000000FB0AF59F98000000000000000000
        000000000000000000000000000000000075D9FAB8FCBEC07677F8FB00000000
        000000000000000000000000000000000000000000003AECFD5C7E5F603B3BFC
        7D80000000000000000000000000000000000000000000000000001D767EAE3F
        2FB01D9DFE3EC000000000000000000000000000000000000000000000000000
        0EBB3F571F97D80ECEFF001F6000000000000000000000000000000000000000
        000000000000075D9FAB8FCBEC07677F8FB00000000000000000000000000000
        000000000000000000000003AECFD5C7E5F603B3BFC7D8000000000000000000
        0000000000000000000000000000000001D767EAE3F2FB01D9DFE3EC00000000
        00000000000000000000000000000000000000000000EBB3F571F97D80ECEFF1
        F6000000000000000000000000000000000000000000000000000075D9FAB8FC
        BEC07677F8FB0000000000000000000000000000000000000000000000000000
        3AECFD5C7E5F603B3BFC7D800000000000000000000000000000000000000000
        00000000001D767EAE3F2FB01D9DFE3EC0000000000000000000000000000000
        000000000000000000000EBB3F571F97D80ECEFF001F60000000000000000000
        00000000000000000000000000000000075D9FAB8FCBEC077CDE1FEE0056B8B5
        9C6B000022D40000000000000059B025C0B340A012596680008014800882A81C
        F9E8C801480E957D97C1F82EF903E87FF9E7E90002B8379C6B24022D0800E2A0
        00A002000AA2255000214042B9337535400002805894956585A359BCB8D80001
        D117BCFCBF5DFD1903E87FF9E7E90000B75E36F9E759245A1000335C5B850000
        00000000002428896DB973635B9A00012BC8C6B774240A485B20881699A001D1
        17BCFCBF5DFD1903E87FF9E7E9000019B78378C59AB90000066B86CBAA000000
        0000001001168172E6C6B535400012C110000004DE7A7918D950259D11FBBFCC
        F5DFD1903E87FF009E7E90000545278FD312E400000335C5B000000000000099
        5A014032A73635B9A00019B9DCD6A68500080069778D0523A22F79F97EBBFA32
        07D0FF00F3CFD2000504095E3F4C4B9000000CD70EA5B4000000000224975409
        2555002C7373D6A6A800039F3A5A1900042821A5B9A3A22F79F97EBBFA3207D0
        FF00F3CFD200282001357C7DF39720000019AE2D8000000001248BAA001332DA
        A005CB9B3ADE74000066E753433723534258204D4BE4E7AB17A22F79F97EBBFA
        3207D0FF00F3CFD20141000026AF8DBC2E4800000C5716A5B400000022497540
        000490B6802C7373D6A6A80010E696CD0001424034B65E88BDDFE5FAEFE8C81F
        43FF00CF3F48290000029136F1B585840000062B8F60000004492EA800000224
        97540172E6C6B7340000724D000022550217A27F71F9DEBBFA3207D0FF00F3CF
        D252000000056F3BC78FAE79AA800000C5716A5B400842C9175400000001332D
        AA02C73F3D59AA000012C4B4C5CD00D4D429D157B7F83D79F4640FA1EFE7BFA5
        600000000559ACEA78DBE52AA00000315C7B002E521A2800000000020280B973
        635B9A0000B3C9C749282001681D11FB9FCCF5DFD1903E82FC27D65F379F4E7C
        6900000003537C7D39F8FAC4AA100000C570EB2CDD154B2E5AA0000000000224
        97540B1CDCF5A9AA003373C99DF3E365400001D117BCFCBF5DFD1903E813C3FD
        229FD3E3DF9F968000000568B8D63C7E9CC02000018AC994AB29A00000000000
        009996D50B973E35A9A000CDCF2675CF8E8940000E88BDE7E5FAEFE8C81F409E
        1FE9029FD4E3DF9B9E900000002B78DE3C7D7350202E2C08D2E2B29351680000
        0000000002495542C7373D6A6A8337356272677CF8E810001D117BCFCBF5DFD1
        903E813C3FD200B1FD4E5DB9B96C00000059BA7174C706F902887159A548519B
        26C0000000000000001124BAA2E5CF8D6A6B373A9A19B91CB9DF363A20003A22
        F79F97EBBFA3207D02787FA40029FD4E1DF9B1A40000000D37C3BE7C3BE6004D
        4AE3B988B0456A8000084405D40014202824821692C72E75652669608BCB9D72
        677598BB97933BE88FDDFE5FAEBE8C81F409E1FE9000165FEA71EBCDCF600000
        02DD55E1DF3E1BCCB5512B16096042B1B000211C7ACF8FBE79BA2405812AA422
        824B51A922AC1C990160A2ACB2CA2AFF005787D1D14FB7FCFF005DFD1903E813
        C3FD2000058FEA71EFCDCF640000000AE2DE784A5258B9E133B9562112ACB740
        00386E7C4E98D482000025A00B1A44B2CCDB64E4CB5340002168597A3CF63F37
        AF7BC03E813C3FD200000B2FF578F6E5E7A00000015A9670EA71DCB592010C51
        2AC4CDB34000124E2B38772A580005B6282255405B4458E6CDAD24145A8E6C6B
        95B47451EE3F3BD77F4640FA08F0BF50A0012A89A97FA5CBB6A56400002AA962
        70EF1C7AC08B5218A5225019A500000190902E8A02665D5002249755172E7CEE
        A80489579F1BE4CEBA22F77F99EBAFA3207D0C780FD1012800691036BAC80002
        ADA94335A9E3EF963590520E331A85B0A94A0000249E3EF9C582DA9010B10580
        149951516F2628325A44CAEE5E8EBD97CDEBEEF00FA04F0FF480000001A8FEA7
        1EFCB8D20142ADA9249A9D06758E0DF3C6B20B003082D23358DCAA00038D9F13
        A73CDA00000B20968000153979D0285113A3DF63C3D7DDE01F425E0BEF160290
        8A833ABA9059BF2716C05BA5952422353A089358F1F78CEB20A09C1A8A0866DD
        2680001971EB3E2EF0A8551A90010D012904B51691CD9A8AA42C4E8E3D9FCDEB
        DEF00FA0DF07F658540500AA02053CACF4E5C52DA922000353A133BC78FBC66E
        4028200071D6351680001249269A50400000005925B570E79BD4B2883A2BF6DF
        0FAF3E8C81F40FE1BEA804102A0028406A5FEA70FA39705A900006A7412E66A7
        8FBE59B000000071D6360000892716A67524514428000008322B79BB96CA64BD
        1B7B3F97D7BDE01F431E03F42C45D848B5742412DB150B8AD46A02000001A9D0
        6779F1B5CA6B2002900038EB1A8B404492DB867C4EBCF16800000000002C8397
        16A8E8F3D8FCFEBEEF00FA04F0FF004810A0080A416A4294B2FF004F8F7E5C50
        00006A7404C6F1E3EF9CB0005200071D63608925D508C33E275C44CDA00D4822
        8025002C0D49C99D17A3CF63F37AFBBC03E84BC17DE22DB2466C2EA494922D32
        8B4CD8559AF3B9F4B900001A9D0019DE3C6DF296000A0800E3AE3D445D500004
        13341001540500008CEE6B9B1AE8B3DB7C3EBCFA201F435FCFFF0054000262B5
        2DDE732D89A854586A4A962140001A9D000B31BCF8FBE510000A400715674500
        0018673480A000080000A65A5E8DBD9FC9EBDEF00FA1EFE7BFA400000290042A
        C0000000000D4E800C74C78FBE510000A08071D629A0000CC9E274E5C7AA0000
        00000001D217ADE1EBFEF00FA1FF00E7BFA4000042C280000000000000D4D800
        71EF1E3EF9900186EA6990071D63600008CA787D39E340000000000379747FEB
        F87AFF00BC03E82BC2FD600E3B38F59B28291400000000000000B1CD9D846779
        C2008AA40A090634CD116D800433600010011400017A41F5DC3D7FDE01F409E1
        FE9000E2DE78F50021410440001A6C0000000B97366D94442AAC010A01104B33
        650B650204A40A00000025511D1FFB0E1EBEEF00FA04F0FF0048000E2DE7152C
        1490AB2CB080005B29400000068E5C2CA000000000A2652CB54000000000019B
        2C551D1E7B1F9FD7DDE01DF6F87FA40CD962AC1400492ACAA040014000000008
        216168000204B45012D8D00000000000085003A50F5BC3F03DE01DF6787FA442
        80000002522800000000000020AB000000021400351A0000000000428003A51F
        5BC3F03DE01DF6787FA400000000008500000000000101400000000405000000
        0000010255000E947D8FCFF81EF00EFB3C3FD440000000000214000000000101
        40000000001014000000000D4D66C200001D28FB1F9FF03DE01DFB788FAB8AE4
        000000000010588000000002D320A80000000160B352C4000002A89672E7496D
        9C3720000749BEBF8FE07BC03BF8F17F4000000000000138AE4B400000400D4D
        40500000000101412C45500019B8DCD7262AB2716F3A9A00003A49F5DC3F01DA
        01DFDF89FA400000000000010B24B4000062CE2D66CD80000000000000292C45
        580A42B3C99D58C59C7B965280001D257AEE1F80ED00FA0EFE7FFA0000000000
        000001116D8004B2CA0000000000000000024B6C0A42ACAD44B240000007467E
        E3E1F5EFD1903E807C37D7400000000000000085008500000000000000000000
        03971AB5C361028000000747DECBE5F5F778077E9E2FBD5000000000000000CD
        CEA544D44B54000000000000000003373A9752D814E3D42800000003A49F5DC3
        F01DA01DFA78BEF54000000000000003373AC8B2CAD0000000000000000000CD
        CEE5DE2DAD4BC1ACAD000000000E927D770FC0768077E9E2FBD5000000000000
        0044966A6866E753400000000000000000009C99BA978F59C5168000000001D2
        4FAEE1F80ED00EFD3C5F7AA00000000000004B11540110550000000000000000
        227366C33671EB3A9B88AB2800000003A49F5DC3F01DA01DFA78BEF540000000
        000004B986A680004B05940000000000000CDCD379BACDD1C7A98B4500CDCD96
        A8000000E927D770FC0768077E9E2FBD500000000000097296A80000222ACA00
        0000000001139212EA2D7156358B3740009725B28000007493EBB87E03B403BF
        4F17F450000000000012C4550000000337365AA0000000003373A979B1752E6B
        8ECCE90A000019B9A59A000007493EBB87E03B403BF3F17DB4D000000000012E
        52D50000000009730D4D00000000066E772F262CAE3D3371A9B00000011259A9
        A00003A49F5DC3F01DA01DFA78CEF12CB5400000001966AD500000000002584B
        340000000088525500000000002588AA001D24FAEE1F80ED00EFD3C5FD149725
        B28000000CDCEA6800000000000044966A6800000066E6CB540000000000004B
        226A6801D24FAEE1F80ED00EFD3C5F7AA337365AA00000CDCEA6800000000000
        0002588AA00004415400000000000001105503A49F5DC3F01DA01DFA78BEF540
        892CD4D0000CDCEA68000002148500000000960B28004B115400000000000000
        00CDCD96AF493EBB87E03B403BF4F17DAA800440B02696594000000445B96373
        60000000082CB28102550014100000000000000895AE927D770FC0768077F1E2
        7A94000096EA4CDB6400000000BC7B89AE4CE0A000000000B5209560012B16D5
        DE72000000000000001D237AFE5F80EF00EFE7C4F51680089756245D64000000
        0048B0D2140000002512CDCDC230A001065695014000000000009443A46F5FCB
        D7FDE01DFE78CEE0002259A32550000000010005000000011059A22800000000
        000000000001194D7489EB787AFF00B80EFF003C5F7AB100960D4D0CDC92CD00
        0000000000000000290055CDC8B28000000000000000004B1157A43F5DC7D7FD
        A01F405E27E84000000085000000000000000002C4A000428000000000000000
        00000E8FBD870F5F77807D06F84FB00850000002140000000000000042800000
        10A00000000000000042800E8D3DA7C9EBDEF00FA1FF00E79FA4255100000012
        8580005000001000128580000001285800000000000012A88007449EEFF3FD77
        F4640FA1FF00E79FA59B752000000002545D480294000004204A028020000002
        50B00000000000095600007449EEFF003FD77F4640FA11F05F6D0000002D6B3A
        D000C94F1F78E1D60000003CBE7D779D0ABC7738DE5007367540000073E37602
        02928005000A44AAA80A201D11FBAFCEF5DFD1903E82FC1FD2000000391BE694
        0011C1B9E0F5E566400001E4E3BF95CF60B9B386F344D652F335C928000039B1
        D3931400001A9D000005466CD0BD20000E88BDC7E67AEBE8C81F417E0FE90000
        00D5D73E77500030781DB966E22D9000072E7AF9BCFA2325AE1D7396149BCEB9
        66824B6D2141BCEB9F1B812A8010353A00005912CD017A40001D117B8FCCF5D7
        D1903E82FC1FD200000B6F919DD000965781D7971DE6066DD2200D4DF9FCBB12
        04E2D670C6A685396DB1532D724D6359C5BBCE6CBE4F3D802AEB3B0A080353A0
        0B2259A000BD20007445EE3F33D75F4640FA0BF07F480000AE7CF4D800097C3E
        98F1F7C40025A4B15BF3F8F6A133666E38D986A695CD2D02B79D645C0E39D3CB
        E7740035376501410353A09722CD000017A4007445EE3F33D75F4640FA0BF07F
        4800069CB9DF2CA0028E0D67C2E9C4800000F2F1F473F3B8B1666CE399A08725
        D72CC896EB3A96E6E2C439F1D3932006A6ACD000050D67A4B91668000002F480
        7445EE3F33D75F4640FA0BF07F48000DB5CF340008C69FCFEBC632000146FC9E
        7D3C9E7D32CE759B6713280356DBBE5CF306ACD6359A88DE77CF8A00B2EA6C00
        00504B5AB28000000BD201D117B8FCCF5D7D1903E82FC1FD20069737C89BA000
        23C4E99C6B2000044DCDF95CBA66C8CB6E39890055E4D6B368DE33C937C7732C
        1BCEBC9E7400353A5800001402353A000000017A41D117B8FCCF5D7D1903E82F
        C1FD202AE9CFCFA680001C1A440A000B26B3BDCD66E66B0309862CD09672DDCB
        A49A4E4C6A8055F239EEE68805580000A2A4015ACF4000000005E93A22F71F99
        EBAFA3207D05F83FA4361CD8DF24A0008F1B73C5E9C400010D6F3AF231D3926B
        3BC6A4CA70A0D44396EA6B4359CEB376A0179F1BDE2800000001480028A9353A
        00000001D11FBCFCBF5D7D1903E82FC2FD2C9B6F1BE7940004250002150D4D40
        71EF1A9331C57165CD0E595BD8D4CD9AE4C801CB9E9CBCE80000000148000015
        66ACD0000000E88FDE7E5FAEBE8C81F417E13E946B579F1D2A000653F9FDB397
        35A00D4D25A72E75E573DE6F3CEE8E398400AE46E6A8D49CB8A00DE75CFCF600
        0000005200000000D4E8000001D117BCFCBF5DFD1903E82FC27D34E7CF4D0000
        38EB3400011A9656A25CCB25B8989002B99ACDACA69CD8B402CBE473E9600000
        000520000000015AB3400000E88BDE7E5FAEFE8C81F415E13EAE7CEB91400078
        BBCF0EB200006A5AD7938D5678F7522678E66A85723535A164DE6EA5A8266F93
        9DEB3400000000000000000353A4B916680007445EF3F2FD77F4640FA0FF0007
        F66E6F49500195F1778200009565E4979A5E3D496DCE78E6401BB574B472626E
        58B0D272E3A72E280000008500000000000D4E825C8B34001D117BCFCBF5DFD1
        903E857C17DA228A838CE1DE41002C22D39737965E3D633AD6B39E2990259B6A
        DD2D1A9397140171BF233AB00000012AC0000000000000D4E92E459A007445EF
        3F2FD77F4640FA15F05F681161A4F0778C6F12D08115572D1E772E99D31A5931
        33962CD0572DD66E926A4E4CEA8026BC9E7B292C0000128580000000000001A9
        D0446A336A8E88BDE7E5FAEFE8C81F42BE0BED000E1AA94000C9A11C8B8B25CE
        A4E2B712085392EE5A3526F2D28097C8C74D64250B0000255800000000000000
        0D4E825C96CBD117BCFCBF5DFD1903E857C17DA00F1F53C4E9C336D0044B7532
        5F2F9F6E6CDCEB14B262D96865E4635A9445D5BBC5956017500084AD40105580
        000000000000001A9D009723A23F77F9BEBBFA3207D0AF82FB40E3B3C0EDC648
        2B711512C839F3D7CCE7BCEB1C7AD8006B33979DE7CD0235C99D000000003342
        C2AC00000000000000001A9D0012E7A23F77F9BEBBFA3207D0AF82FB40F0F79C
        DC80585082B5E673DE2E71BA001ACCDE2F938A00D4E96000000001C7AA393300
        0000000000000000353A0026B3D11FBAFCDF5DFD1903E857C17DA00032B402A0
        18B38F7400127261E4F3D500D4DD94000000094850B000000000000000000006
        A749724E88FDDFE77AEFE8C81F42BE0BED000CB5A4202E574CCB38B4968006B3
        3C9E5ADC006F79A00000004A4500942C0000000000000000005692D5E88BDE7E
        5FAEFE8C81DD4794FA0012DB20000CDB2C00003797266812B534000000008500
        00000000000000000000002CD750FEA3E3FC4F6807677F8FB000000000000000
        00000000000000000000000000000000000003AECFD5C7E5F603B3BFC7D80000
        000000000000000000000000000000000000000000000001D767EAE3F2FB01D9
        DFE3EC0000000000000000000000000000000000000000000000000000EBB3F5
        71F97D80ECEFF1F6000000000000000000000000000000000000000000000000
        000075D9FAB8FCBEC07677F8FB00000000000000000000000000000000000000
        000000000000003AECFD5C7E5F603FFFDA0008010200010500FE8FB7FE7FA56D
        FF009FE95B7FE7FA56DFF9FE95B7FE7FA56DFF009FE95B7FE7FA56DFF9FE95B7
        FE7FA56DFF009FE95B7FE7FA56DFF9FE95B7FE75EFB74EFB74EFB74EFB747EB7
        745EB770EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370E
        F370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370
        EF370EF370EF370EF370EF370EF370EF370EF370EF374EF374EF370EF370EF37
        0EF374EF370EF370EF370EF370EF370EF370EF370EF374EF374EF374EF374EF3
        74EF374EF374EF374EF374EF370EF370EF3747EB774EFB74EFB74EFB74EFB74E
        FB74EFB74EFB74F4B537B5C94F97041041041041041041041041041041041041
        0411CAB8924B892492E2492791E8FE8F297293F0D248DEAD0F911AC11A24410C
        B48208E2F47F479484C9E4A6353E0D8C5C2C8E4469041041041041040D09F07A
        3FA3CC5CA4FC32E06343E4492492CB8B8B892E2E2E1BE1F47F479B3CA4C6A79E
        DF32391041690416969690410411AFA3FA3CD4C5CA4FC2C09F0B43F0703D3D1F
        D1E727CB4CF3F091CF6CB892492492492492493D1FD1E6B5A2722E527E2DA1F1
        B45A5A8B516A2D45A8B4B4B4B4B4B4F49F4BC5A679F0B291F3A09E0688E4CF04
        924F07A4FA5CF6313917293E17E0609E0687C6C6CB8B8B8B8B8B8B8B8B8F49F4
        B5B0B074C7393E5267993C0BC03E28E2631A1723D1FD1E16A4AA98E5B114BE5A
        7C097876B8E0688E47A3FA3C75531E1208D234425E1589F29150D09F17A3FA3C
        6D49528E6A7C53A493A27E1DA275687C6D0D717A3FA3C974C731F4170CF05A5B
        C9F32D2D2DE6753A9D482D2082082D2D1523A0B0B0B074E9E8FE9725A92A51CB
        A8A593C324E924E93C74E905A884416905A411A41047022081F29A2AA4F47F47
        94D0E98E6262279108845C4AE34F49249249249278FF00F2F4688E438140E993
        D2FD2E5B454A398842E2B4B48208E37D05517171797179797979717171717990
        559717978EA2E2E2E2E2E2E2F1D4C92E83D27D2D6E2E2E2E2E2E2F2E2F436344
        2E627C525C49717170B932492C964F2635688E381A7A7A3FA3AC104104104105
        A432D2DE4C93A27C882D2D65A2E4C169616969696A2D2D2D2D20821102A48442
        2D2358208D2D47A5FA5CE6874F31313E3924927934D5CA927C07A5FA5AE43217
        9797B2F65ECBCBCBD8F705B837C73C5227C524925C88278FC855124925C5C892
        4924B8B8B8B8924B8B8B87521D45C5C5C5E5E7A5FA5AE33198CB0B0C6632C319
        8CC6633198C74C13CB4C5CB4C6A790CB89D649249249249249192344717A4FA5
        ADC5C4971717124925CB49D5A92A51CC9E627C95496961616169696969696969
        6969696969696169696969E97E96B0C820B59D7586433A9D74EA753AE902E9CB
        427CB4C6A78E927C135C1E97E96B0410410410411A4105A8820843A4AA9E5A27
        989F1B62A89E64924924E8F5F4BF4B5BCBCBCBCBCBCBCC86432190C85E643219
        0C83A87CC5CC4C7CA75171717171717171771C11A7A4FA5CC83AEB0493CF4C9E
        627CA82C2C2D2D2C2D2D2D2C2C2C2C2C2C2D63A0C6CF4BF4BF829297CC4CF3E3
        42F05E9BE9F1C104704104104104104104104104104104104104409F313E4489
        F80A8F4DF4F5B4B4B4B4B0C6633198CC6633198CC6633198CC6633198CC66331
        98CC6633198CC6622C2C2C4585A5A8B4B4B4B4B4820B4B482D2082C2C2C2C238
        A0820820820820820F4DF4F909F8A688E19E5492492492492492492492492492
        4924925C49E9BE9F253E19D649F02C8E74788F4BF4B9524924F0492492492492
        4924924924924924F0492492493C3249226410410410410410410410411A4104
        107A6FA7FCAA64924924924924924924924924924927A6FA7FD2BD2FD2FE82C5
        C8F4BF4B82D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2
        D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2
        DD2048B4B4B4B4B4B4B4F4DF4F5820820820820820820820820823973E3DEA90
        B91E9BE9EB0410410410410410410410410416905A5A5A5A5A5A5A5A27E39888
        122393E9BE9EB9D99D99D99D99D99D99D99D99D99D99D99D99D99D99D99D99D9
        9D99D99D99D99CCECCECCECCECCECCECCECCECCECCECCECCECCECCECCECCECCE
        CCECCECCECCECCECCECCECCECCECCECCECCECCECEE199D99D99D99D999999999
        99D99CCECCECCECCECCECCECCECCECCECF48E76B5C48C48C48C48C48C48C48C4
        8C48C48C48C48C48C48C48C48C48C48C48C48C48C48C46246246246231189189
        1891891891891891891891891891891891891891891891891891891891891891
        8918918918918918D18D188C4623123123123123123123123123123123D2AFFF
        002F12FC73D3C87D443E77A6FA7E25F8E63D3CB45CEF4DF4FF009791B244BC07
        A6FA7FCC40A9F03E9BE9FF0026864E902F05E9BE9FF27237AA5E0FD37D3FE45F
        0411E13D37D3FE458F48F0DE9BE9FF004AF4DF4FFA57A6FA7FD2BD37D3FE95E9
        BE9EB24924924924924E924924924924924924EB2492492492492492493A4924
        E92492493AC92492492492492492492492492493A7A6FA7ABE54F313F0689E19
        F0F27A6FA7AC1041041046B0410410410410410411A433AE9041041041041041
        0468C488208208D7A90F582082082082082082082082082047A6FA7C12492493
        AC6924924924924924924F0C924924924924924F0C9249249249249249249249
        2492492492492492493AFA6FA7FD2234F4DF4F592E2592C92492492592CB8925
        92C964B2592C964B2592C964B2592C964B2592C964B2592C924B8964B2E2E249
        2592C964B2592C964B2592C964B2592C964B2592C964B2592C964925C4B3D2FD
        3D6F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F
        2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F
        2F2F2F2F2F2F2F2F3D2FD2F0F041041041047147F0DE8FE978682592C964B259
        2C964BE38208FE0FD1FD2D6C2C4588B11622C4588B11622C43A4B4B4B4B4B482
        0A682C2C4588B11622C4588B51622A42A4820815258584104104104104103238
        238A492492395E93E973678994D3CAA993AAD6091F25BF00B95E93E9783484B9
        353D208D11248DEB04F137C73E13D27D2E5B7C53A534F25B2758D172A746FC67
        A4FA5E060A572AA7AA5A473193E33D27D2E4A637C6972AAAB58E4CE890F56F98
        84FC07A4FA5CF6CA57264AAAE17C084F856ADF8EF49F4B8EAE44099722E45C8B
        91722E44A2E43AB9AF482082A7E3FD27D2E37C8B4B4B4B4B4B4B4B0B4B74489E
        521BE16FC7FA4FA5C2941237C4D1493C725C3625C086B8A389BFE03D27D2E1AB
        C043D1B12D18B54C6B810DF0B7FC0FA4FA5AFF00E46F8D212E26488AB85F0CEB
        E5C2FF0082F47F475FFCF2131D42A8B8B99732E65C4924E887C88247C0C9FE0B
        D1FD1D50F8E9A47496969696969696168C4B8DF03E16C6FF0083F47F4756F917
        17979797979797978EA122796DF0D4FF0084F47F479291696161616161696160
        D11C688E07C2DFF0BE8FE8F25124924924A24B912362E05C723E06362FE13D1F
        D1E45A5A5A41041043208D121F22491F0C8FF86F47F478E95AB5AC7054C489E2
        6C7512C964B249249249FE1FD1FD1E24B9553E4B7C13CD823C7FA3FA5C499717
        1722F2E2F2E2E1D648B890DF8262F1FE8FE97804B8EA7C2F9D24F8FF0047F479
        E909F13637C0DFF1FE8FE8EBEDC7B71EDC7B71EDC7B71EDC7B71EDC7B71EDC7B
        71EDE7607607607607607603FF00E71ED87B61ED87B69ED87B61ED87B61ED87B
        61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B6
        1ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61
        ED87B61ED87B61ED67A7A6DDBFE95B7FE7FA56DFF9FE95B7FE7FA56DFF009FE9
        5B7FE75FFFDA0008010300010500FE8EFF00A5BFE96FFA5BFE96FF00A5BFE96F
        FA5BFE96FF00A5BFE96FFA5BFE96F8315262A4C5498A916D523DA4588B11622C
        4588B11622C4588B11622C4588B11622C4588B11622C4588B11622C4588B1162
        31D263A4C749622C463A4C7498E931D263A4C7498D18E931D263A4C7498E916D
        A1D1498E931D263A4B292CA4B2931A31A31231A15148B6A930D261A4C3498693
        0D261A4C3495A87C96B973E0249249249D249249279369690416969616160A81
        53C8DCFF005CAA972A3C4C6AB8E04F592492759249278B73FD7290D0F94DF865
        C33C8924B8B8B8B8B8B8B8B891313E066E7FAE527A55FC32E34882C2C2D2D2D2
        D2D2C2C2D12E1DCFF5CD6B97E5E03CF973C8B8B8B8B8B8B8B8B8B8B8B8B89D77
        3FD739AFE1972275964BD64920913169B9FEBC4B5E3279091696969696904169
        69691A6E7FAE7B43FE1971A65C5C5C5C5C5C5C5C5E5E5E5C57FEB9E864729A3C
        BC5CF26DE0B4B4B782BF3F014952FE1D71A122D20B4B4B4B4B4B4B4DCFF5ADEC
        BD94D53CD6B99E42F153C54E93C9DCFF005C2994D53CBA468A97F0EB8A44C5C8
        DCFF005C74D53CB9132A5CA9249F173C305452F91B9FEB8D329AA796969553C5
        02A48208F1AB87CC4CA5F1EE7FAE4D354F310D70C12497171772E49249249E39
        2513A49249717176B714D66445E5E2AB4DCFF5C94E0A6A9E5D23435A411A470C
        7259248DEB3A4F0C6BD783A9D4EA753A89E89EA994D46E7FAE5262AA44F98D11
        ABD6DD3A9D4EA75E36B49249249249278A5923D193CA4E0ABCF969C14B9E5F4D
        1A1F1CE92895C687496969696B2D2D20B4B4B4B482D2D2D2D2D2D2D2D2D2C2C2
        C2D2C152588B0AFCF5B596B2D65A5A5A5ACB596B1213E6B5C4F58208F113C0A0
        9249211D0915449B9FEB5B8B8B8B8B8B8B8B8B894362AB9703435C725C493CAB
        8B9925C5C5CCBCB8B8B8964925C5C5C3A8B8965C5C49248C551732AF3E726535
        7318D731AE3A972208249E4412470A1F9EB8CC66331988C6632C2C3198CB0547
        1413C2D1035C505A432394E923582D2D65A5A4696B2D65A5A5A5A5A5A582A0B0
        B19616161579EB7979797979797991990C86432B323320AA9E5BD2A5E1639D1C
        13A410415F9EB696B20B590410410411A41027052E79690D0D78382E2E2E2E2E
        24B8B8B8B8B8B8B8B8BCB892E2F2E2F2E2E2AF3D6F44A2E44A25128944A25128
        84743A1D0E84A131F2D8D783635E0A04F5ABCF952492492C924924B8A5F2DA1A
        1F836881E92493AC10411C51A410CABCF5C66231188C43DB3118CC4CC6633198
        CC658636631524732A435CCF2238E082082082082082393257E7CC83AE9E6412
        493CE68A973239324971717171717171717171717171717171795F9EB2492492
        493C33E16AA7C231AF04FCFC7C924924C9553C4D8B9B6F827E7ADC5C5C5C5ECC
        86466432190C86432190C86432190C86432190C86432190C86432190C8642F65
        E5C5E642F2F2F2F2F2F2F2F2F2492492E2E2E2E249E182082082082082347E7C
        86883A1D3450743A1D38D41D0E8743A1D0E8743A1D08279D041075D3A1041041
        0410410410410410411AC0FCF9304104104104169690410411A4104104104104
        11AC6B0410411AC1046AD13E096B579F2638A08FE0649F10FCFC027E15BFE15F
        9FF4AABCF56BC7C78F81AE455E7AB249249249249249249249249D27993A493C
        D9249279324899248DF21F9EB24924924924924924924924925CC86753A9D4EA
        753A9D4EA752D248F09027C7E62E0AB90FCF5B91722E45C8B91722E45C8B9172
        2E45C8B91722E45C8B912892492492492492746BC33427C2C5AC971E7C87E7AE
        0460460460460460460460460460460460460460460460460460460460460460
        3023023023023023018118118118118118118118118118118118118118118118
        1181181181181181181181181181180C08C08C28C28C28C28C28C28C08C08C08
        C08C08C08C08C08C08AD43D72332332332332332332332332332332332332332
        3323323323323323323323323323323323323329919919919919919919919919
        9199199199199199199199199199199199199199199199199199199199199199
        197B3233233233233233233233233233233233233232AF3D5786A49D18978AA7
        5F2F00FCF55E1A910DF8CA74F2D5F39F9EABC2B625AB7E2DA168DF807E7AAF08
        D8970C09F8A91B129D1A279AFCF55E0DB12E3689F09514E923E3F213E5BF3D57
        82912E4B44F826411A468DF1B427CA7E7AAF03225CCF213E7D3C1237CA813E4B
        F3D67C0A5CE689E75232757CB68F2E43F3E0F213E779780684F9AD888F01027C
        4FCF55A409F2FCFC1B47972DB12F06D09F0BF3D56B027E3E04F90D89785689E0
        7E7AAE068F2F1ED09F13625E2204F47E7C98208208E6F973BCF8978A6B47E7AB
        E4C13CD6BC0C0993C33E21F9F0C92493C324924924924924924E924E92492492
        49249249248B8249249D649D649249249249249249249249249D1F9EB05A5A5A
        5A5BAC105A5A5A5A5A5A5A5A5A5A5A5A4104105A5A5A5A5A5A5A5A5A5A5A3425
        ADA5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A35A3F3D
        6749249D2756C9249249249249249249249249249249249249246C4493A32492
        49249249249249249249249249249249249249247E7C10410410410410411A41
        0410410410410410410410410410411A41041041041041041041041041041041
        041041041041041041041579EB616161616161616161616161618CB0B0B0B0B0
        B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0C65858585858
        585858585858585858585858585858585858585855E7FD2ABFF5FD2ABFF5ADE5
        E5E5E5E5E5E5E5E5E2AC5512492497125558B70C8CC8CC8CC8CC8CC8CC82AD97
        17124923A8BCBC550AA249249249249E382082082D2D2D2D20B448B4B4B4B4B4
        B4B4AFFD7352E248A9F2A94411A3D234812E4A5E07CF93B9FEB98971B654C5C8
        A56924923AB8249244F824929249279B3CBDCFF5CB4B91555C13C2A92092746C
        AB544EAB59D12E14B96D91CBDCFF005E0AA7C49EA8A50DEAD97094F174121EAB
        892F0FB9FEB94971B63E4245348F491BE15AB625A31890970A5E2373FD7252E3
        63AB9105348F4918B817025A2D570A5CBE9CEDCFF5C84B90D161616161616169
        60A9D1BD27931A345A5A25E3F73FD71AE43A855171717171717A2E2E5A3245A5
        4F542D57125E3F73FD71A5C7510C86432190C86416B2D121B1F147040B852FE0
        373FD7125CDE9A4224824918C6F542D57125E1BCF97B9FEB852E36C91B2592C9
        64BD5A29431F1A42E425FC16E7FAE18E368820820820B448B74A9948C6F86390
        97F07B9FEB5812E375179797979797978AB2747AC8F5485AB42235484BF83DCF
        F5AA5C8748A82C4588B11622C4582A11031BD678172578E9E2DCFF005C3235AB
        65C5E8BD17A2F45E8B8B8B89E4342E4AF1F04F0EE7FAE4B20820820B4B482048
        9E0A9EB491ACF0A5A4F8F8D275DCFF005C87512492492497124EAF47ACF0B447
        02FE1674DCFF005C753244C65CCB9923649225A4EAC82048820820B48208208F
        E1609373FD71363D5245A5BC14D3C8812E05FC6366E7FAE268C6633196161698
        CC625C8425FC8A2BFF005CA9E6A5C297F1DB9FEB9EC4F8D702FE3634DCFF005A
        E432190C86532190C86432190CA2DC32190C864321905B86532994CA673399CC
        E673399CCE673399CCE673399CCE673399CCE673399CCE673399CCE673399CCE
        673399CCE673399CCE673399CCE67339DC15397FD29FF4B7FD2DFF004B7FD2DF
        07FFDA0008010100010500FE8FF7BFFD9FF4AFBDFF00ECFF00A57DEFFF0067FD
        2BEF7FFB3FE95F7BFF00D9FF004AFBDFFECFFA57DEFF00F67FD2BEF7FF00B3FE
        95F7BFFD9FF4AFBDFF00ECFF00A57DEFFF0067FD2BEF7FFB3FE95F7BFF00D9EB
        F1B7D947C6DF651F1B7D947C6DF651F1B7D9457F8DFECDA4F8E7ECD3E39FB34F
        8E7ECD3E39FB34F8E7ECD3E39FB347F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7
        ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3
        E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E38F
        B30F8E3ECC3E38FB30F8E7ECD3E39FB30F8E7ECC3E39FB30F8E3ECC3E38FB30F
        8E3ECC3E39FB305F8E7ECD3E38FB30F8E3ECC3E38FB30F8E3ECC3E38FB30F8E3
        ECC3E39FB30F8E7ECC3E39FB30F8E7ECC3E39FB30F8E7ECC3E39FB30F8E7ECC3
        E39FB30F8E3ECC3E38FB305F8E7ECB95F8DBEC96BE35FB28F8D7ECA3E35FB28F
        8D7ECA3E35FB28F8D7ECA3E35FB28FCA9E9B63D17E50E4D745BC2E785CC5ECBD
        97B2F65ECBD97B2F65ECBD97B2F65ECBD97B2F66466466466465ECC8CBD99199
        199197B1549AE3892CA8B2A2CA8C7598EA31D463A8C5518EA31D4534D74BE3FC
        BDFB6793D0AA8B5EBE5C55533E2D369D2D35C4BA14D772D3A1D0E87425128BA9
        2EA4BA93A3E2FCBDFB6795575556DDA53C9AA991F865E5AA6D35526B8E512892
        4924924924928A9D2D435AB3F2F7ED9E53523529D163E4D54CF83F3E426D14B4
        F8D229A2E31331331331188C46231188C4534BA787F2F7ED9E6352AAA5D2F935
        533E07CF949B42A935C49B4D6E52D64A4BE92FA4BE82FA0BE92FA0BE92FA4BE9
        2FA44D3D7F2F7ED9E6D54AA934E97C9AA99E7F9F31368A5A7C89D7A9D759248D
        28A9D2D35523F2F7ED9E7554AA93A5D2F935533E1609E14DA1549F229A29A963
        A4C7498E931D263A4C7498E91EDD22DBA116522A552CFCBDFB679F552AA5552E
        97C9AA99E54C733CB85369D2D3E3A6A74BCA6532994CA653375CA6532994CA7E
        5E73F9639E8AE955269A27935533E2D369AA935C88E08208E0FCBBFB5F54D3E6
        A2BA5549A3CB935533C294B87E15382969AE2A5C34A86ADA4B692DA48A48A48A
        4B692DA4B693F2F7ED9D7B9DD4775BC6CEF2DD5CCAE8B8F2E5554C9E47412509
        52CA5B9F03E5C09B4D549AE14515DAD43E4FE5EFDB3C34D4E97B3BCB757290D1
        5D12B955D32269A50D28A7C2791E7AA6D09A6B8A8AEDE4FE5EFDB3C54D4E97B3
        BD4EEAE5A65744E913C0DC2BD17A2F45D4A2B74B1BA5F868E04DA69A6B5F3D19
        4576F23F2F7ED9E3A6A74BD9DEA77572A34AE89E17D56363DB6DE392C70E9716
        D5E2D382969A3CF5F324A2B8E3FCBDFB67914D4E97B3BB4EED3CCAE89E26DD25
        553464AA2FA8C8C6E7C4CA2EA455A4D6E50D64A0C941976CCBB665DB33ED147A
        ADB4773B2773B0773B06DEF6DEE33F2F7ED9E4D353A1ECEF53BB4F29695D1AB5
        047489150A2DA0B682DA0B291D1C8AEF325664ACBEB664ACC9597D65F517545C
        C9649249D04A5B490E981C09C34E4EA753A9D49E14DA7B1BEB757E5EFDB3CAA6
        A7455B3BCB769E66E510252293AD23F31F9DBA753A92C97C7B9B7710D3B4B482
        0B4B4B4B78544B83A5AA20A5C133CA4DD2FF002DB757E56E5D353A2AD9DEA776
        9E574D2BA14B7C2DC2BCC85E64A46D37C75EDDC60ACC15982A305460A8C0CC0C
        EDD981980EDD1811811811DBA305260A4C140B66942D8DB676D41DBD076F41DB
        D076FB676FB66DECECB3B6D93B7D83F2F24BF2C6B8774C3BA60DE306E98374C1
        BA60DE306F18378A76B7E8AA875554F32AA1D3AF968D4AB19632C658CB18E869
        781F3E4D2ED134F83A1D094515DC433F2FFED9D726D9936CC9B665DB32ED9976
        CCBB665DB32ED99768CBB6535D15723C89D2082BA2DD7AEB5B69CB2E65D5173E
        4B98CB5A79EA33B33D667A8CD599B70CBB8CCBB866DC32D665ACCB5197707B95
        9937117EE32FDC16EEE216E56CBF70C95992B2FAC75564D5392B3F2D75FCABCE
        A2BAA8AB6B769DDA787A42FF00DB85A2BA6D7AC8D265B49FFE67FF0099141141
        5243E3AF6D569A74BE2964B2110B909B5A470F43F2CFED4D7B4DB3B4DB3B5DB3
        B5DB3B6DA3B5DA3B5DA3B4DB3B4DB3B5DB3B5DA6769B653B14D1579F07467FEB
        1FF9E0686A4AA974BD7CB4B6A2D65B511516B21F22BDB55AB2B459598EB31D66
        2ACC7598EB315662ACC3598AB315661DC316E18B70C3B862ACC358B6AB42D8AD
        98370EDEB3B7ACEDEB3B7ACFCB4ADFCABAAF5559DDD6777B877551DD5477759D
        DD677551DDD4776CEED9DDB3BB6776D1B5BB4EED3CB84D554BA5F2AAA793D3C0
        79694D4E9134F482083F2EFED7D716E18F711656595965659596565B516D45AC
        B6A21EB45555156D6F53BAB9486935552E97CAAA9E479956EDA6746746747708
        CE8EE11DC23B847708EE11DC23B846793399D99DA33B29F51552D7A9677151DC
        5477159F969CFE55D6EA055D25D4A1574B528913489E0EBAF98940B99524D34E
        97CAAA9E198D6BA154AAA5D0FC07989C3D7F2CFED4E28E44B45CC9A855548BEB
        29DDDCA6ADADDA7769E5D54AA934D3E5554EB3025C1550AA5552E96886C86432
        190C86432190C86432190C86410C52886D4547E59FDA9AF6DB676DB676D41DB6
        D8FD2D076B4A7DAD27688ED51DA1DA33B36768D9DA5476959DA567695947A7DD
        A2A4E572EAA5549A69F2AAA639BD0E8743A72BC8A6AB44E4FCB9FB5F93D69254
        1723FF0053CC9549722D65AC8E7D74A6351CBAA88E4BAE9A4CB4196832ED9976
        CCBB666DB336D99B6CCDB665DB32ED9976CCBB665DB32ED99B6CCB414FA8A293
        F2DB557E56D6110884422110884744743A32085E16BA1549A8E2F2E1AA9E4554
        AA9574BA1A71E07F2C7ED3E57FE7C4D7426B869498FA70D54C721D29AAE87435
        D79F41F963F69EBDC6E9DC6E9DC6E9DC6E956FFA84775BE775BE777BE777BE77
        7BE775BE777BE777BE777BE777BE777BE777BE775BE775BE775BE775BE775BE7
        75BE775BE775EA0EEB7CEEB7CEEB7CEEB7CEEB7C5EAF7D35EA775AEE374EE378
        AB7B76A32EE19770CBB885BDB864ACCBB865DC9CDB866DC335666AC75D664DC3
        25664DC325664ACC95992B1D75B44924B2597171717125CCB99732491368FCB1
        FB4F915D30743A1D0E8283A1D0E9C6A0E8743A1D0E8743A1D0E840AA869CAD60
        853C8843A4B510422D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D1D2A6C45A7E59F
        DA9C9AA9D20823482082086432190C8E626D09CAD6190C864321EB0C8643D234
        EBE05B128D7F2CFED4D6592C965CD92D12CB99D4EA753A92C96896CEA753A9D4
        EA753A9D4EA753A9D4EA753A9D4EA753A89B2E67526A26A26A26A26A26A258DB
        2EA91351351351D4BAA2592C964B2592C964B2592C964B2592C964B2592C964B
        259F957F68F0CCF2DAF09E425CBF2F15F957F687F07E5CFF003F11F957F686AE
        9AA9F01E5CF6E08E7F992B9D452AD69AE47E55FDA1AD54D2A8C68C68C68C68C6
        8C68C68C68C68C68C68C68C68C68C68C68C68B2931A31A31A31A31A31A31A31A
        31A31A31A2C42DB48B116231A31A31A31A31A31A31A31A31A31A31A31A2C4588
        C68C6918D18D18D18D18D18D18D18D18D18D32C462DBA13A12A6AA29B31A31A3
        1A31A31A31A31A3F2B74FCA3AE6DC336E19B70CDB866DC336E19B70CDB866DC3
        36E19B70CDB866DC336E19B70CDB866DC1EF6E33A9D4EA753A9D4EA753A9D48F
        0E9F1F994BB6ADC54C34B70AADA697C8FCAFFB4B5CBB665DB32ED9976CCBB665
        DB32ED9976CCBB665DB32ED9976CCBB665DB32ED9976CCBB665DB32D065A0CBB
        68CB4196832D065A0CB4196832D0575D152F0F3C54ABAA75529B6A8753A19279
        F23F2BFED2D7DB364F6CD93DB364F6CD93DB364F6CD93DB364F6CD93DB364F6C
        D93DB364F6CD93DB364F6CD93DB364F6CD93DB364F6CD93DB364F6CD93DB364F
        6CDA17FF0037659ED9B27B66C9ED9B27B66C9EDBB33ED9B27B66C9ED9B27B66C
        9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B6
        6C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B6ECA3DB364
        F6CD917FF3B651EDBB285FFCEDA4DFFF003B62A6FF00F9FB551ED9B27B66C9ED
        9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9F96E9547E56D7DC3D49EE1
        EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A
        83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0
        F70F507B87A93DC3D41EE1EA0F70F527B87A83DC3D41EE1EA0F70F507B87A83D
        C3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70
        F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D
        41EE1EA0F70F507B87A93BCDF477BBF0FD7FA94DFF00F47D437EE1EA4F70F507
        B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83F2CD4EBF
        CA9AAF2F0A84BA7418BC52126CA69BC854555D355D57FEB45553A9F33F2BFED2
        D57978544A85E6FC5A29BA6D8A632AA5BA4AA53E6FE57FDA5AAF2F0A96ADF8B5
        4BA8A3FF0054BFF52B74AAB9FF0095FF00696ABCBC225E3EB6E9537EDBAFFF00
        5F3D1AE77E57FDA5AAF2F05225E3188DBA555565735D54A75572B87CB99F95FF
        00696ABCBC5B5E0D8E84E9A55293A9535BA36E92AA9D4DBF05F95FF697855CCF
        2F0085D44E9DA6D50E86E855535BA572A793F95FF697F228A5C3AB6EAA9D714D
        1CDF2E47E57FDA5C1E5CEF33CBF804DAF029F17E57FDA5E07CFC27972DBF091C
        5F95FF00696ABCB99E7E1D3E437E2FF2BFED2D579707971F9F888FE03CB5FCAF
        FB4B586432190C86432189496B2D6410D90C86432190C86432190C86433C910C
        86432190C86432190C86432190432190C86410C86432190F586432190C864321
        90C86432190C86432190C86432196BD3F2BFED2D52850C86432190C87A742191
        D6190C86432190C86432190C8634E1AD2190C86432190C86432190C86432190C
        54B218D74B486432190C869690C86432190C86432190C86432190C86432190C8
        64321907E57FDA5C524EB56889249249249249249D6116AD6492492492492757
        E4C5AC93C16A21704924924924924924924924EB5797E58FDA7AC10410411A42
        3A1088208208208208208208442211088208208208208208204B582082082082
        082082082082082082082082082082083A1F963F69F0F53A9D74E9AB6893A9D4
        EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9223A9D7593A9
        D4EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753AEBD4FCB1FB4
        F5B692CA4B692DA4B292CA4B292CA4B292CA4B692CA4B692DA4B692DA4B692DA
        4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4
        B292CA4B692DA4B292CA4B292DA4B692DA4B692DA4B692DA4B692DA4B692DA4B
        692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692CA4B292CA4B693F2CFE
        D4D7B4DD3B4DD3B4DD3B5DD6FB4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD
        3B5DD3B5DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4D
        D3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD1FA5DD42F49BA769BA
        769BA769BA769BA769BA769BA769BA769BA3F4BBC8ED774ED374ED374ED374ED
        374ED374ED374ED374ED374ED374ED374ED374ED374ED374ED374ED374ED374E
        D374ED374ED374ED374ED775BED374ED374ED374ED374FCB69D3F95B87CF993E
        0DB12E6273E0FCF8BF2F7ED9E0F3E77978094F44B9D3E07CF8FF002F7ED9D73D
        4CCF519EA33D467A8CF519EA33D467A8CF519EA16E56D64ACC95992B32565D5A
        3256CDEF515D2FB9DF3B9DF3B9DF3B9DF3B9DF3B9DF3B9DF3B9DF3B9DF28AF76
        D75D62AEA9756E4D5BB5A59B74CDBA66DD16EEEB6AADC8BEB2FACBEB2FACBEB2
        FACBEB1555CA4D2E182190C8643208208219044904104104107E5EFDB3CDA299
        E3DDAD514A7C9D9DB244FA4B6E5524BA9C6B4531C9DBA5AF03E7C9FCBFFB6799
        4D373885C3554A8A6AA9D4DA4CEAB8F6B6EFA9B4855175A5D45255537A492505
        E8B8BA04E74944A2514529B9F01E7CAFCBFF00B6796BABA55AB86616EEE64AB5
        8684E7828A1D55529509B85FE92A995391EB4A92235EAC4A07D4B58E0A55CD28
        F01E7CBFCBFF00B67974530B8B7F72789A139D14B746DA49BA5910A545754127
        9E8BA94A54AD3FF610DCEAA9753A6954AE04A1786FCBFF00B6795453C4D49BBB
        962E4ECED5ABA1524C86371C34D31AA50529A553829F243706DD16AE05C89F01
        F97FF6CF268A65F16E56A8A5B753E263A5D251B499E74FF9122552A67829479E
        ABA8DC27D47D046DD13C2972FA73BF2FFED9E4252D285C5B946ED6F06E98374C
        1BA60DD306E98374C3B861DD28F4ED35FF00E638436989153B9EB4AB9FFE745D
        5F449B6DDC5C50AE7D2383CBC4FE5FFDB3C8A69B57167A13EE283B8A0EE283B8
        A0EE283B8A0EE2817A8A1B55A9FF00D1BA9968FCABAA47AA4D9D16886E44A16A
        94B4952BC77E5FFDB3C7453C7BFB9690753A9D4EA75204AA652AA54EC6DD83AA
        1A527FE6A7034E539D6951ADC52B868A6D5E0BCB9BF97FF6CF1514CF1CA4743A
        1D0E8742693A17286E1A6EDAAA70948941368DB91A913295AD4534CF0EDD3E1B
        CF97F97FF6CF0D2AE710B86AA9534D753AEAE1A1D25915BAA69DAA3236C5FF00
        B1E6FAC373C14D2AA7D56A93AB868A6E7FC0FE5EFDB3C094BA69B571574535AC
        1B660DB30ED9876CC3B661DB16CED42DBA1BC7B4C487353A85E75552F54A5AE8
        79BEA85D44A16B4AB9A50BF81FCBDFB6759828A61716EEF34F2EE19B70CDB866
        DC336E19B70CDB82DDA9A5BB5D250AA54D5569E656E13D521285A2702A44F5F3
        74D36AF15E5C8FCBDFB675A29970D09A7C355D6F6F59DBD676F59DBD676F59DB
        D676F58BD3D6CEDAB36B66C6DC24A74A9C2E0A547052B469325AD36E8B7F84FC
        BDFB6785A13D6BA96DD3DC1DC9DC9DC9DC9DC9DC23B893B946DEE641B84DF525
        24DCBD194A2754A5F06DD1E3E09E1FCBDFB6789A4C96B4DCBF72AC7598EB31EE
        18F70C7B8595A31D6CB2B29DAAAA74D34D29BBB4892A72DEB4A9138D111D5285
        AD14BA9F911CA8F0DE5C1F97BF6CF21EE514BCDB666DB336D99B6CCDB666DB32
        EDB79B6C5B9B6D95329F22A7C090946AAA84970436E9A552B553FC04CE9F97BF
        6CF1EF6E5886BAA724104C289724B3676ED553856A3C90A9A5914914908A36A9
        4ACA0B281D14229A292DA4B282DA4B691534AE2EABF81FCBDFB678B73716DD2D
        B6F5871E4253AECEDDC3690BABE1B8DBA38129E6DC8552D174F1BF97BF6CF157
        46ED7560DC305660DC16C6E2787725EC6E3305660ACA7D3D6EA4924DDCF86A36
        E9B9EBE6251CDA20ABC723F2F7ED9E4CB9820885AD5571212BDA492D2509473A
        110BC7FE5EFDB3C899128D5A925AD2A709A8E248A29B56B4AE637FC079EBF97B
        F6CEBF319F319F319F318FF3149F319F319F319F319F319F319F31437F9824F9
        80F980F980F980F980F980A7F312A5FCCC7CCC7CCC2FCCB07CCE7CCE7CCE7CCE
        7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE
        7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE
        7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CD07CCE7CD07E4AF5BEE5F91BFA57DE
        FF00F67FD2BEF7FF00B3FE95F7BFFD9FF4AFBDFF00ECFF00A57DEFFF0067AFFF
        DA0008010202063F0043B22D916C8B645B22D916C8B645B22D916C8B645B7C27
        84F09E13C2784924924924924924924924924924924924924924924924924924
        92492492492492492492493C2784F09E12492493C2784F09E13C278493C27855
        DFF8C8BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BA
        E1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE
        1B88BAE1B88BAE19175C322EB8645D70DC45D70C8BAE19175C322EB86E22EB86
        45D70C8BAE19175C322EB8645D70C8BAE19175C322EB8645D70C8BAE19175C32
        2EB8645D70DC45D70C8BAE19175C322EB8645D70C8BAE19175C322EB8645D70C
        8BAE19175C322EB8645D70C8BAE19175C322EB8645D70C8BAE19175C322EB864
        5D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45
        D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D
        70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DCF84924924924924924
        9249249249249EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB
        47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB4
        7AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47
        AD156FE3322D916C8B645B22DBE1FFDA0008010302063F00FD03A08208208208
        1D16E8B745BA2DD16E8B745BA2DD16E8B745BA2DD16E8B745BA2DD16E8B745BF
        D2C7FA58E8B7FF0073DFF627745BA2DD16E8B745BA2DD16E8B745BA2DD16E8B7
        45BA2DD16E8B745BA2DD16E8B745BA2DD16E8B7FCC8208208208208208208208
        208208208208208208208208208208208208208208208208FAF9FFDA00080101
        01063F00FC0FFCBBEA9DBFF77CE7E0BFE5DF54EDFF00BBE73F05FF002EFAA76F
        FDDF39F82FF977D53B7FEEF9CFC17FCBBEA9DBFF0077CE7E0BFE5DF54EDFFBBE
        73F05FF2EFAA76FF00DDF39F82FF00977D53B7FEEF9CFC17FCBBEA9DBFF77CE7
        E0BFE5DF54EDFF00BBE73F05FF002EFAA76FFDDF39F82FF977D53B7FEEF9CFC1
        7FCBBEA9DBFF0077CE607C9769ED7D2AF92ED3DAFA55F25DA7B5F4ABE4BB4F6B
        E957C9769ED7D2A8FF00F0D27FD476AE957C9B68ED5D2AF936D1DABA55F26DA3
        B574ABE4DB476AE957C9B68ED5D2AF936D1DABA5501DCDB476AE957C9B68ED5D
        2AF936D1DABA55F26DA3B574ABE4DB476AE957C9B68ED5D2AF936D1DABA55F26
        DA3B574ABE4DB476AE957C9B68ED5D2AF936D1DABA55F26DA3B574ABE4DB476A
        E957C9B68ED5D2AF936D1DABA55F26DA3B574ABE4DB476AE957C9B68ED5D2AF9
        36D1DABA55F26DA3B574ABE4DB476AE957C9B68ED7D2AF936D1DAFA55F26DA3B
        5F4ABE4DB476BE957C9B68ED7D2AF93ED1DABA55F27DA3B574ABE4DB476BE957
        C9B68ED7D2AF936D1DAFA55F26DA3B5F4ABE4CF37FB8ED5D2AF936D1DAFA55F2
        6DA3B5F4ABE4DB476BE957C9B68ED7D2AF936D1DAFA55F26DA3B574ABE4DB476
        BE957C9B68ED7D2AF936D1DAFA55F27DA3B574ABE4DB476AE957C9B68ED5D2AF
        936D1DABA55F26DA7B574ABE4DB4F6AE957C9F68ED5D2AF936D1DABA552F7347
        37FB8ED7D2A88EE593FEA7B5F4ABE4BB4F6BE957C9769ED7D2AF92ED3DAFA55F
        25DA7B5F4ABE4BB4F6BE957C9769ED7D2AF92ED3DAFA55EA4763ECD63FB7D9BB
        277F77C766ECFCDC49E2D8E6FBC39EB36446D124C009F13C2A22E9AB064A7064
        7DC64C993264C993264C993264C993264C9934A993264C99328D231122BA6857
        4A65755DE04DC09AB09AB09AB4CA462F2E23D50FB8BBEFC4B9EC57B6651174F0
        EEF09C3887DF31DC88511EF18881BC2BDD74E9D3A714A70AF0A55E14ABC29510
        6385EA87DC5DF7E25CF62E0E0B8460C5BFC654464C4C43EFB8851A779E69C288
        310707D50FB8BBEFC4B9EC57E5B902C8CB1067C5443EF3E0C444288F78C44844
        9314E1384E2B4E9D3A74E9EA57AA57A42E307D50FB8BBEFC4B9EC5709DD8382A
        07DD8A887DE3F962A2149EF18608994A6072417F9A74F527A93D49D39A13A74E
        9D444BBBEA87DC5DF7E25CF63A07DC542D7B88C5443E3F34C30A4A30A214463D
        9327DC88972833A88DCF543EE2EFBF12E7B11C3864169910E3F2CD8A8879F1B1
        3EE189817C19144622209CE1394E5394E53953A9D4E9A59C9299446E7AA1F717
        7DF8973DBC20694431134D8A887C5C4FB862FF003C188F785118711EF0AED6AE
        D6AED6AED6AED6AED6A4B3416577DF14D5A6AD3569AB5EA81CBFC8BBECFF00E4
        B9EDE390CC510642A071310F9313C031B2518311EF5263201E73930FD4FF00B8
        7BEBC4B9EC0931D9E6502B362621E7C18292CC00DEB11EF0A230E51113C5022C
        829930F6ABA15D0AE8574264C997AA1F7177DF8973D812103DCAF0A028192D87
        18DCE18A815251898879C6E694496120032A801C522E90A36ADC26E2AC91961B
        C65A70223DE14461E5138524A32E27D50FB8BBEFC4B9EC216818112C540C96C5
        E18D887DCCF9567C4443CE14C6D8108146C992704E5512624301BD3F2C08D214
        66C2CCA1C99C28C6319F11EA87DC5DF7E25CF618B564C0862B25A0E31B117B87
        765A7762A753EE09224CBEE46D59FD3684A649913C5FD464CDBDA33E07085113
        E0C9B9032D9C47AA1F7177DF8973D8816AC9811282B25B17ACE3621F26090866
        960A366102EBF49973A02D484480E5500231739936F8969DDFC9472EE66DDC9B
        902DC187EA87DC5DF7E25CF6245AB260431592D8BD671A4D912CE32E0C6640D9
        311389D3FE92C5432E697718289C53A7C738578529C6795478C21ED0AF0A42BE
        290AF8A55F14ABE15F15A85AB724C6557EA3A15EA8ABC682B8B62D7EA78110DC
        F543EE2EFBF12E7B142D5930227592D0BD671BC61EF1F9EE4B27B5466C884265
        122400840549EB57AB57AB4F5A925CC7111B260722BD50578ABC55E2AF157AB0
        AF1A55F34957CD253D69CD29CD2A7A7720A597D8A2E3D9B92290EEBA7C204181
        1282140C9CE07197D8BD50FB8BBEFC4B9EC58B564C08C8B25B17ACE3499A70A5
        888B45716D52A318E50818C416CDB8705B111B3219F3AC89D3A74E9D3A74F820
        CCB4414232AD3BB2628106044A17A9B68BDAFE43DF44FBFBCB9EC60B564C0851
        6B42F59C6F185AF6013220DE124306299326DC88F7E2222F6E384E138AD5EE15
        7856AF0AD5E57EA57AA0AF2BCAF2BCAF2BC6A4E6A4E6A4E5441268D09CD2A7A5
        4F4A634A63494C692A16ACCB34A55CACAD5D76B4AF53C0900FE45DF600FF00EC
        B9EC0D595AB2AE1A95CE0573815CE05AB2AE15AB35216ACD92086281B567896A
        718A2770C99A289174BFB7773706E413EE3A994CB2E61BCB36273288C3817E14
        CBD50FB8BBEFC4B9EC0BD6691A15EB348D0AF59A46857ECD2342BF6691A15FB3
        48D0AF8A46857C5216B05216B054AF887B57E9B42D7B311C2570A9043732E651
        0DBBF96E8814E53A74F89307CEA0408870629856AE84C1327142F82CDEC4F527
        15274FC09EA57B814B6B815EF7ABC55E2AF957CD2AF9A55F349578D255E34957
        8D255E34952DB3495EA61CBFC83BE7C4B9EC78B564C0851125A17ACE070284E8
        C0640B3B152339F6E040CEEB28DDFCD4AA50997F9AFF0035352A6A5441F76232
        10C542D4D361BA74E9F787A99F7077CF88F3D80F6A9F827B54FC139A7E09CD3F
        04E691A15E348D0AF1A4684E691A139A468578FF008F7292D1AB427348D085AB
        36AD023D943604B2059D3BCAA4F60C294485669B099315F04C684C98E233862A
        E9F72BA55D2AEABAAE702B9C0AEF026E04C9B81370261526AD3569AB4C01F6A6
        14A614A04112E7F827149D09C57A138AF42BC2B57856BD4D05C7F21EFA1FF92E
        7B02E598E68ABA15C14957056AE057456AE8A4AB82B5705255CACAB9595AB14A
        D58A55CAD444845EB266DCCE26513898162B80E049461C47BC62BF2C7CBB99A7
        0A49F07D4FFB87BEBC4B9EC0D59A0AB87DB0570D0AE1A15C341570D055D34157
        4D0AE9A131A15D3426DD16ACC84288908BD64CD8C81503EEC5923DF888D08836
        7815D2AE9A95D5755D5755D5755D5755D5755D576B576B5764C9157692AE884F
        2ABA295745255D0AE8A4AF534973FC87BE89FF00B973D81785215E1EF2149681
        192215E1484F595785255E09EB4C9D356A6DC65003DA5087BF1B03EE2A069C5C
        47BC6144FB86E40D2A07FCF78E7C8B3607A99F7077CF88F3D8F73494E69578D2
        A4B4692AF9A4A1685A324C4A8871786320540B8C5C47BC6044FB86040FB8A81F
        7109AADC64C993549AA4D526A93549AA4C993264C684D5263051164D098D057A
        99F7077CF88F3D80E69F82E552342BC6AD0AF1A94968D4A5B66196015F3405AC
        3405ACABE2AFFF00C3F157E3EC1F157EA5273926581525B10F6157856AF057C2
        16ACDBB31F7CAA579E18C95D40BE2E23DE3733E29B1F9A70A2258AF53BEE1EFA
        F12E7B159464C8A224381FE9E150C0931F90CCA070A5A7078C3DE3132986457B
        855EE157AA2AF5455EA8ABD5157AA2AF5455EA8ABD5157AA2AF5455EA8ABD515
        7AA2AF54548639A055E927102BD4E218FF0021EFA23FEE5CF603264C993264CB
        228C37088489B7AE433152E2E21A718881956505AD268EF1F52FEE0EF9F11E7B
        FA2C43E14AA419B0623DE311033ACA32EF02BD4BFB83BE7C479EC0BE6A57CD4A
        F9A95F35288E70C3248B58681A16B4D4B5A680B59C0B5A680B5A680B58680B58
        680B58680B5A680B5A680B58680B5A681A16B4D0342D69A0685AD340D0B5A681
        A16B8D0342D71A0685AE340D0B5A681A16B4D0342D69A0685AD340D0B5A681A1
        4BCE139A4D0A22D9A95F352BE6A51E3CAAF9A16B0D014B6CD4AF1A95F352BE6A
        D0AF157D5F578ABC5445AA60AF702BD5057B815FE057B815EE057F8140DA8839
        60BE014D40535015D142BB52715A715A715A715A6180C134BB9EA5FDC1DF3E23
        CF626207B77D669C288C18D18B65F14E5394E5394E5394E9D394E5394E5394E5
        394E5394E5403EE395EA5FDC1DF3E23CF62A207BB072E29B17C2A2378326DE30
        0FC181EA67DC1DF3E23CF60394E5395089AD39A4A729CD69CD2539A4A73494E6
        929CD25484FB22539A4A73494E6929CD2539A4A73494E6929CD2539A4A73494E
        6929CD2539A4A73494E6929CD2539A4A73494E6929CD2539A4A735A73494E692
        9CD2539A4A73494E6929CD2539A4A73494E7DB129CD2539A4A73494E6929CD29
        CA729CA729CA729CA729CA729CA729CA729CA729CA729CA729CAF523EBFDF1E2
        3CF61494E2E21D427DE912F8BCDBEBD48FAFF7C788F3DBCE5A77944BE373EF29
        29C3F523EBFDF1E23CF604A200FB28DE19B7844BEF08638DB364DA31E28B2265
        2D9364168E23D48FAFF7C788F3D806CF1CDB2658E44E5394E5394E5394E5394E
        5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394
        E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E7DC
        9D016BF5DA7CC171F9B240325AB2608D936F8E498C42729CA729CA729CA72BD4
        9193BFFBE3C479EC0BD57C15EABE0AF55F057AAF82BD57C15EABE0AF55F057AA
        F82BD57C15EABE0AF55F057AAF82BD57C15EABE0AF55F057AAF82BD57C140DA7
        9186320B3EF4FCB120E440D91FA4F2865408B50B4C415C4B262498DA2313EA57
        D7FBE7C479EC0D48A56A452B52295A914AD48A56A452B52295A914AD48A56A45
        2B52295A914AD48A56A452B52295A914AD48A56A452B53656A42D48A56A6CAD4
        D95A9B2B53656A6CAD4D95A9B2A1679B160BC41DEF9F0C5968BA80B008139518
        46C5B11E2A02C8694938AF52BEBFDF3E23CF606B2D55A16B2D55A16B2D55A16B
        2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B
        2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B
        2D55A16B2D55A15FB5568527396AAD0B596AAD0B596AAD0B596AAD0B596AAD0A
        1C7B55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB5568
        5ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB5568
        5ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB5568
        5ACB55685ACB55685ACB50CB2685ACB55685ACB55685036AD1E3491934231B76
        B336842D59E72D187B3428FF0076D08CB09342BF6801206D0B596AAD0B596AAD
        0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD
        0BD4DB025163F90F7D5904E6EF2E78603D9FFDBF15C9A172685C9A172685C9A1
        72685C9A172685C9A172685C9A172685C9A172685C9A172685C9A172685C9A17
        2685C9A147F4FB609ECD0B9342E4D09ECD1F15C9A172685C9A172685C9A17268
        5C9A172685C9A172685C9A172685C9A172685C9A172685C9A172685C9A172685
        C9A172685C9A172685C9A172685C9A172685C995A4F8A85BB7641C90F8A81366
        5BB6A1270A20F141F67C57244D20F8AE4D0B9342E4D0B9342E4D0B9342E4D0B9
        342E4D0B9342E4D0BD4CB65ED7F20EF9B46194F78F3C77D839660A45ECDF9002
        2720444605C2B11319CC26448110588566C9BD1E3289F6637D4AFAFF007CF88F
        3DBEC08B4C9F811DF9FA5F32E358278C24B40BE791445F0E32AFEDDA3026E913
        2209899F1DEA57D7FBE7C479EFEB1FA447D8AD59278969C13911B766D71BFF00
        5E751B25E592482FCF1FEA57D7FBE7C479EDFDF96FAB366CC8211F6A26D4A6C9
        90D0B8A2CF162F0C0FCF1BEA57D7FBE7C479EDEF26FF009584A46552002CE4CC
        8036636611080038A04C30B3633D4AFAFF007CF88F3DBDA4C5CB4EF3E358960E
        11B76844300AC9E2C0112819D0B529B2E0289C4442CF8AF52BEBFDF3E23CF6F5
        863728DE200F628131B53C194230B36A5198A36A3C6B4D640951044419B159D4
        B89F52BEBFDF3E23CF607E7BC3F3C7C42CF8F0724AB8D64C41962ACD88C4DE30
        FF0019F1D9B11EA57D7FBE7C479EC00B28C7426CBBC73A81C7C86148DE1F961F
        A95F5FEF9F11E7B0A459F179BFAA4B83EA57D7FBE7C479EC3CFF00D03F2FE81F
        9E07A95F5FEF9F11E7B139BFA367DF9EA57D7FBE7C479EC01229D4EA753A9D49
        46E3264EB329D4EA753A9D4EA753A9D4EA7C09D4EA753A9D4EA753A9D4EA74CB
        F353A9D4E9A54CA753A9D4FBB3A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9
        D4E9B73D49FAFF007CF88F3D82E9D3A74E9D64F6A7F7C24518C7D8A51009D3A7
        4E9D3A74E9D3A7463BAE9D3A74E9D3A74E9D3A74E9D343DA9A3EC2A01674E9D3
        A7453EE3A74E9D3A74E9D3A74E9D3A74E9D3A74E9D44C9ED5EA57D7FBE7C479E
        C264C9936E0932AE04646907B13264C993264C993264C9B75B7193264C993264
        C993264C8C8994A37193264DBAC9B7593264C993264C993264C993264C993212
        457A95F7077CF88F3D8A852B2A6E14DFD7732F52FEE0EF9F11E7B0993265C384
        C993264C993264C993264C993264C993264C993264DBAC9B77F24C993264C993
        264C993264C993264C993264C993264CBF352265EA5FDC1DF3E23CF603264C99
        3264C993264DB8C993264C993264C993264C993264C993264C993264C993264C
        993264C993264C993264C993264C993264C993264C993264C9932F52FEE0EF9F
        11E7B026A54D4A9A952421398A9A95352A6A54D4A9A95352A6A54D4A9BD91534
        72454D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A5
        4D4A9A95352A6A54D198454B0A54D4A9A95352A6A54D4A9A95352A6A530232C5
        4D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A54D4A
        9A95352A6A54D4A92109CC54D4A9A95352A6A57A9B64BD9FE43DF40FBBBCB9EC
        2CD8C817DE79E618C928526F3FCF0BD50FB8BBEFC4B9EC1CD8ECD977848B2ACF
        39DFF9B2E1FAA1F7177DF8973D819BDD2E2B4C1024C233489F813F027E04FC0A
        4B5EE91486A0B8B66D40B93250B59559D0B59559D0B59559D0B59559D0B59559
        D0B59559D0B59559D0B59559D0A4B64FBACE85FAED46D3969332BD5043F5C685
        188C83FC414232FB95FA82BD5057AA0AF4A732BFEF82BD52BD52BD52BD52BD52
        BD52BD5290C72040131339DE39B11EA87DC5DF7E25CF63A25B0E4BE58FF8994B
        29329267C48B644BC9078533CA11B508C240142D07C88931244408224CF294FB
        B12F89897C9BC73627D50FB8BBEFC4B9EC6C29524984496E146D196356652A95
        B2E1C4DD0F09CE45087B00950B328394A811ED2A23F5648CCA2536EC48902629
        8A651DC74E9D44B0619D3EF0CD9315EA87DC5DF7E25CF6320A184F084E57FA45
        D1F9E048D93078B4E619D7143597421213292AD03C9962B3B44A8061819A7500
        D3EE90A01664CB2414260E5406FBF543EE2EFBF12E7B1919CE19B0185E861443
        AC877042532421957FA8DF8284200480850238D6728500200B99D407BF0009CA
        03766DC86E800C62A14EF0E0C67AA1F7177DF8973D8B89F761C05E2D986559E7
        C4F1EDCF25913A301FAB215C60D3ACC5C059CB60E7321C095D403E044DE356F0
        97DD8DF543EE2EFBF12E7B159861C4CA580CE89B4E5F10232878665C72C20409
        A2A13D998A249CC0297DA724513919470227DD811994548A40A2D95718B4C378
        7B31DEA87DC5DF7E25CF62A187187E96128902BB58576B0AED615DAC2BB58574
        5215D1484CEC22142D8005A9220C501C960A22D7B02043990852ACD930333AFD
        3BB184AB32804C997FA44CB363E18FF543EE2EFBF12E7B139CB9C3225C910245
        CAA172A85CAA172A85CAA172A853D0A001A159803688C8254D18CE8D978314E8
        162A01B2E0410130DD0A18100A01863736F2F543EE2EFBF12E7B1119CB61F12C
        DE37889826C39013056E485A9BD881E517CDED46072A82B2A1397510F9167C9B
        BC270225F07FD45CEF3CD971BEA87DC5DF7E25CF61C4B09F2E1BD2AF702BDC0A
        F702BDC0AF702BC2A57B8165E042C83002599120CA18A7847DCA44E892E5673B
        990E5502EA27DD8119B078C5E6FE83EA87DC5DF7E25CF61429425801844960B8
        D6A8C8371AA4D526A935488B424B53C2A42C9110FED0ADE41201EF405B120941
        CA14210166580A944EE44991669B02244814B28CB888961FD0BD50FB8BBEFC4B
        9EC186550A4E18E333C2298D2531A4A63494C69298D2531A4A89B318C8012540
        D9842510251FD0EE25752084180FF0EA561221B900C1F024F794042033EE4436
        4522860001A7391406F981C4FAA1F7177DF8973D819B2A8CE70F8B61C5E2AFD4
        AF1A95E352BC6A578D4AF1A95E352E2DAB7C522506447F5F1ED1900004E871CF
        1AD3C7F2500FBB00FC1819CA8527022C540C8774012C54279CFF0043F543EE2E
        FBF12E7B038C42886C8A4C13C572CAF034ABC2B57856AF0AD5E15ABC2B57856A
        22D0AD5E15AE35A2090D059F7419E618312FC18113B92A816CBB91378EFD9164
        C2F543EE2EFBF12E7B0A2242A0643BA6D1F70CEAE1A55CAD5CAD5CAD5CAD5CAD
        5DFF00895C30F6AB869448B3002494CEA2819B70C583295E6C0896189E338174
        6FFF00CD4B83EA87DC5DF7E25CF61CAA05B2EE4788602402069574D6AE9A0E95
        74D074ABA683A55D341D2AE9F7C5478861EC2AEDAAF4A8104672182003090291
        84FBB09860669D4BBB050C0CC2F1500A224389CF9167CBBEBD50FB8BBEFC4B9E
        C4DF1908C8AF857C2BE15F0AF857C289B608982BE1002D024B01B901BBC5133E
        0003D880CB812E040280A7025A77FC8BF2DCF543EE2EFBF12E7B11C5B378CF90
        6E443E04AA27DC3778D6AF160660B3E032FF0035FE6A0044A96CCA55DA95C575
        44D90322BA15D0AE857429043D985946FF00C9B9EA87DC5DF7E25CF61C4CA587
        B51265267DD90473ACF914A20A27DDBBC7224174652A25470A5A571AD0979230
        3364C6C92FB164390EFED0BD50FB8BBEFC4B9EC38F1601808891356135615DAC
        23256137BA210FD3ED64D584D585FAA41398CA800C0420B365C2072A89BB6702
        0A18DE159346FF00F543EE2EFBF12E7B1500C1CA787B13A94C7DB8107C3007BC
        A80DE1F96E326DFB22C8BD50FB8BBEFC4B9EC4C034E54376054B28CBB99F0C00
        224ACA673811A3199E61839F7F7AA1F7177DF8973D81E5CDB3A85E5CDB3A85E5
        CDB3A85E5CDB3A85E5DF6FFCDF50BCB9B6750BCB9B6750BCB9B6750BCB9B6750
        BCB9B6750BCB9B6750A4FE3B0193FDDF52BCBBB5F52BCBDB5F52BCBBB5F52BCB
        BB5F52BCBBB5F52BCBBB5F52BCBBB5F52A3FFE72266FF9CEA1796F6CEA1796F6
        CEA1796F6CEA1796E4FF00ACEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA17
        96F6CEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA179
        6F6CEA1796E5CBFEF3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A
        85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A8
        5E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85
        E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E
        5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5
        ADB3A85FCFFBC7FB5FD9FF007FDF7DEBDB7FB3C6E3713FBBDBF9DE738B1808C2
        2F0FC17FCBBEA9DBFF0077CE7E0BFE5DF54EDFFBBE73F05FF2EFAA76FF00DDF3
        9F82FF00977D53B7FEEF9CFC17FCBBEA9DBFF77CE607FFD9}
      Frame.Typ = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 222.992270000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date]')
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 368.054230950000000000
          Top = 5.399328570000000000
          Width = 218.672807140000000000
          Height = 39.595076190000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."empresa"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 369.314074290000000000
          Top = 26.456710000000000000
          Width = 53.273375240000000000
          Height = 28.796419050000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Cnpj:')
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 407.829284760000000000
          Top = 27.716553330000000000
          Width = 154.780752380000000000
          Height = 25.196866670000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."cnpj"]')
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 369.314074290000000000
          Top = 44.814427140000000000
          Width = 42.654695710000000000
          Height = 28.796419050000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Fone: ')
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 408.369217620000000000
          Top = 45.354360000000000000
          Width = 129.583885710000000000
          Height = 25.196866670000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."telefone"]')
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 367.154342860000000000
          Top = 12.778410950000000000
          Width = 208.774038100000000000
          Height = 35.995523810000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '....................................................')
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 154.960730000000000000
          Height = 105.826840000000000000
          DataField = 'logotipo'
          DataSet = rel_DS_empresa
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 733.228820000000000000
        Width = 718.110700000000000000
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."endereco"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#193'GINA : [Page]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 113.385900000000000000
        Top = 374.173470000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 15.118120000000000000
          Width = 359.055350000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RELAT'#211'RIO DE FLUXO DE CAIXA')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 49.133890000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Inicial:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 49.133890000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Final:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 464.882190000000000000
          Top = 49.133890000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dataFinal]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 287.244280000000000000
          Top = 49.133890000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dataInicial]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 510.236550000000000000
        Width = 718.110700000000000000
        DataSet = rel_DS_Caixa
        DataSetName = 'DSCaixa'
        RowCount = 0
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Abertura')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 241.889920000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Gerente')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 336.378170000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Vlr Vendido')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 442.205010000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quebra')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Caixa')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Operador')
          ParentFont = False
        end
        object DSCaixadata_abertura: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'data_abertura'
          DataSet = rel_DS_Caixa
          DataSetName = 'DSCaixa'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSCaixa."data_abertura"]')
        end
        object DSCaixavalor_abertura: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 22.677180000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'valor_abertura'
          DataSet = rel_DS_Caixa
          DataSetName = 'DSCaixa'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSCaixa."valor_abertura"]')
        end
        object DSCaixafuncionario_abertura: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 207.874150000000000000
          Top = 22.677180000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'funcionario_abertura'
          DataSet = rel_DS_Caixa
          DataSetName = 'DSCaixa'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSCaixa."funcionario_abertura"]')
        end
        object DSCaixavalor_vendido: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 332.598640000000000000
          Top = 22.677180000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'valor_vendido'
          DataSet = rel_DS_Caixa
          DataSetName = 'DSCaixa'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSCaixa."valor_vendido"]')
        end
        object DSCaixavalor_quebra: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'valor_quebra'
          DataSet = rel_DS_Caixa
          DataSetName = 'DSCaixa'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSCaixa."valor_quebra"]')
        end
        object DSCaixanum_caixa: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 22.677180000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'num_caixa'
          DataSet = rel_DS_Caixa
          DataSetName = 'DSCaixa'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSCaixa."num_caixa"]')
        end
        object DSCaixaoperador: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 22.677180000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'operador'
          DataSet = rel_DS_Caixa
          DataSetName = 'DSCaixa'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSCaixa."operador"]')
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 94.488250000000000000
        Top = 578.268090000000000000
        Width = 718.110700000000000000
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 45.354360000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Vendido:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 68.031540000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Quebras:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 45.354360000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DSCaixa."valor_vendido">,MasterData1)]')
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 68.031540000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DSCaixa."valor_quebra">,MasterData1)]')
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        DataSet = rel_DS_empresa
        DataSetName = 'frxDBDataset1'
        RowCount = 0
      end
    end
  end
  object rel_DS_Caixa: TfrxDBDataset
    UserName = 'DSCaixa'
    CloseDataSource = False
    DataSet = query_caixa
    BCDToCurrency = False
    Left = 416
    Top = 1136
  end
  object rel_movimentacoes: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43650.653389838000000000
    ReportOptions.LastChange = 43998.584458819450000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 40
    Top = 1232
    Datasets = <
      item
        DataSet = rel_DS_Mov
        DataSetName = 'DSMov'
      end
      item
        DataSet = rel_DS_empresa
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' Datas'
        Value = Null
      end
      item
        Name = 'dataInicial'
        Value = Null
      end
      item
        Name = 'dataFinal'
        Value = Null
      end
      item
        Name = ' Totais'
        Value = Null
      end
      item
        Name = 'totalEntradas'
        Value = ''
      end
      item
        Name = 'totalSaidas'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      BackPicture.Data = {
        0A544A504547496D616765C9890000FFD8FFE106BA4578696600004D4D002A00
        0000080007011200030000000100010000011A00050000000100000062011B00
        05000000010000006A0128000300000001000200000131000200000022000000
        720132000200000014000000948769000400000001000000A8000000D4000AFC
        8000002710000AFC800000271041646F62652050686F746F73686F7020434320
        32303137202857696E646F77732900323031393A30333A31322031363A31373A
        3232000003A001000300000001FFFF0000A00200040000000100000253A00300
        04000000010000034A0000000000000006010300030000000100060000011A00
        050000000100000122011B0005000000010000012A0128000300000001000200
        0002010004000000010000013202020004000000010000058000000000000000
        48000000010000004800000001FFD8FFED000C41646F62655F434D0002FFEE00
        0E41646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B
        11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E
        0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800A0007103012200
        021101031101FFDD00040008FFC4013F00000105010101010101000000000000
        00030001020405060708090A0B01000105010101010101000000000000000100
        02030405060708090A0B1000010401030204020507060805030C330100021103
        04211231054151611322718132061491A1B14223241552C16233347282D14307
        259253F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3
        D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
        37475767778797A7B7C7D7E7F711000202010204040304050607070605350100
        021103213112044151617122130532819114A1B14223C152D1F0332462E17282
        92435315637334F1250616A2B283072635C2D2449354A317644555367465E2F2
        B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6
        E6F62737475767778797A7B7C7FFDA000C03010002110311003F00F414924948
        85249249294924924A5249249294924924A5249249294A8F52E6AFED7FDF55E5
        47A97357F6BFEFA90534D24924E43FFFD0F4AFB11FF49FF47FF324BEC47F7C7D
        DFED56924788A1ABF623FE907DDFED4DF623FE907DDFED56924ACA9ABF623FE9
        07DDFED4BEC47FD20FBBFDAAD249595357EC47FD20FBBFDA97D88FFA4FFA3FED
        569246CA9ABF623FE907DDFED4FF00623FE907DDFED565242CA9ADF623FBE3EE
        FF00CC92FB11FDFF00C3FF00325653A5654D5FB11FF49FF47FF32599D669F49D
        47BB76E0FED1C6C5BAB1FAFF00D2C7F83FFF0045A3126D45CA492494887FFFD1
        F530653A82903292174C9D2492B249248A1492499252E92694A5252E92694A52
        53258FD7FE963FC1FF00F7C5AFB96475F3EEC7F83FFEF88C770A72924925221F
        FFD2F538F24BE497C928F2450BA49BE49D05293274924AC924922858CA5253A6
        D5252B54B54B5F14B5F1494AD564F5F9DD8F3E0FFF00BE2D6D7C564F5EFA58FF
        0007FF00DF118EEA72924925221FFFD3F52DC96E5182941450CB725B9460A509
        2996E4B728A492996E4A5452494CA5295149252E9264A1252EB27AF7D2C7F83F
        FEF8B5564F5DFA58FF0007FF00DF118EEA73124925221FFFD4F5191E0948F04C
        92285E4782523C1324929791E0948F04C924A5E4782523C1324929791E0948F0
        4C924A5F4F04A4782649252F23C164F5EFA58FF07FFDF16AACAEBBF4B1FE0FFF
        00BE231DD4E5A4924A443FFFD5F50493A48A16493A49296493A49296493A4929
        6493A49296493A49296595D77E963FC1FF00F7C5ACB27AF7D2C7F83FFEF88C77
        539692492910FF00FFD6F53D12D132708A15A7825ED48A8A4A652D4B44C02749
        4AD12D3C1327494A81E09E0264E82950128092492550163F5FFA58FF0007FF00
        DF16C2C7EBFF004B1FE0FF00FBE231DC20B9492492950FFFD7F5209D249142C9
        25AF9A7494A4C927494A4E9248294924924A5249249254B1FAFF00D2C7F83FFE
        F8B6163F5FFA58FF0007FF00DF118EE145CA492494AB5FFFD0F5320A6DA567EF
        B3F7DDF794B7D9FBEEFBCA7521D18849676FB3F7DDF794B7D9FBEEFBCA5C2A74
        613ACDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF77DE5
        2E153A492CDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF
        77DE52E153A4B1FAFF00D2C7F83FFEF88DBECFDF77DE551EA6E71356E24E8EE4
        CFEEA206AA69249249E87FFFD9FFED0F1A50686F746F73686F7020332E300038
        42494D0425000000000010000000000000000000000000000000003842494D04
        3A000000000125000000100000000100000000000B7072696E744F7574707574
        000000050000000050737453626F6F6C0100000000496E7465656E756D000000
        00496E746500000000436C726D0000000F7072696E745369787465656E426974
        626F6F6C000000000B7072696E7465724E616D65544558540000001700480050
        0020004400650073006B006A0065007400200033003500310030002000730065
        007200690065007300000000000F7072696E7450726F6F6653657475704F626A
        63000000160043006F006E00660069006700750072006100E700E3006F002000
        640065002000500072006F0076006100000000000A70726F6F66536574757000
        00000100000000426C746E656E756D0000000C6275696C74696E50726F6F6600
        00000970726F6F66434D594B003842494D043B00000000022D00000010000000
        010000000000127072696E744F75747075744F7074696F6E7300000017000000
        004370746E626F6F6C0000000000436C6272626F6F6C00000000005267734D62
        6F6F6C000000000043726E43626F6F6C0000000000436E7443626F6F6C000000
        00004C626C73626F6F6C00000000004E677476626F6F6C0000000000456D6C44
        626F6F6C0000000000496E7472626F6F6C000000000042636B674F626A630000
        000100000000000052474243000000030000000052642020646F7562406FE000
        000000000000000047726E20646F7562406FE0000000000000000000426C2020
        646F7562406FE000000000000000000042726454556E744623526C7400000000
        0000000000000000426C6420556E744623526C74000000000000000000000000
        52736C74556E74462350786C40520000000000000000000A766563746F724461
        7461626F6F6C010000000050675073656E756D00000000506750730000000050
        675043000000004C656674556E744623526C7400000000000000000000000054
        6F7020556E744623526C7400000000000000000000000053636C20556E744623
        50726340590000000000000000001063726F705768656E5072696E74696E6762
        6F6F6C000000000E63726F7052656374426F74746F6D6C6F6E67000000000000
        000C63726F70526563744C6566746C6F6E67000000000000000D63726F705265
        637452696768746C6F6E67000000000000000B63726F7052656374546F706C6F
        6E6700000000003842494D03ED00000000001000480000000100020048000000
        0100023842494D042600000000000E000000000000000000003F800000384249
        4D040D0000000000040000005A3842494D04190000000000040000001E384249
        4D03F3000000000009000000000000000001003842494D271000000000000A00
        0100000000000000023842494D03F5000000000048002F66660001006C666600
        06000000000001002F6666000100A1999A000600000000000100320000000100
        5A00000006000000000001003500000001002D00000006000000000001384249
        4D03F80000000000700000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800003842494D040000
        000000000200023842494D04020000000000060000000000003842494D043000
        0000000003010101003842494D042D0000000000060001000000033842494D04
        08000000000010000000010000024000000240000000003842494D041E000000
        000004000000003842494D041A00000000035900000006000000000000000000
        00034A000002530000001200460055004E0044004F002000520045004C004100
        54004F00520049004F0020004100340000000100000000000000000000000000
        000000000000010000000000000000000002530000034A000000000000000000
        0000000000000001000000000000000000000000000000000000001000000001
        0000000000006E756C6C0000000200000006626F756E64734F626A6300000001
        000000000000526374310000000400000000546F70206C6F6E67000000000000
        00004C6566746C6F6E67000000000000000042746F6D6C6F6E670000034A0000
        0000526768746C6F6E670000025300000006736C69636573566C4C7300000001
        4F626A6300000001000000000005736C6963650000001200000007736C696365
        49446C6F6E67000000000000000767726F757049446C6F6E6700000000000000
        066F726967696E656E756D0000000C45536C6963654F726967696E0000000D61
        75746F47656E6572617465640000000054797065656E756D0000000A45536C69
        63655479706500000000496D672000000006626F756E64734F626A6300000001
        000000000000526374310000000400000000546F70206C6F6E67000000000000
        00004C6566746C6F6E67000000000000000042746F6D6C6F6E670000034A0000
        0000526768746C6F6E67000002530000000375726C5445585400000001000000
        0000006E756C6C54455854000000010000000000004D73676554455854000000
        01000000000006616C74546167544558540000000100000000000E63656C6C54
        657874497348544D4C626F6F6C010000000863656C6C54657874544558540000
        0001000000000009686F727A416C69676E656E756D0000000F45536C69636548
        6F727A416C69676E0000000764656661756C740000000976657274416C69676E
        656E756D0000000F45536C69636556657274416C69676E000000076465666175
        6C740000000B6267436F6C6F7254797065656E756D0000001145536C69636542
        47436F6C6F7254797065000000004E6F6E6500000009746F704F75747365746C
        6F6E67000000000000000A6C6566744F75747365746C6F6E6700000000000000
        0C626F74746F6D4F75747365746C6F6E67000000000000000B72696768744F75
        747365746C6F6E6700000000003842494D042800000000000C000000023FF000
        00000000003842494D041100000000000101003842494D041400000000000400
        0000083842494D040C00000000059C0000000100000071000000A00000015400
        00D4800000058000180001FFD8FFED000C41646F62655F434D0002FFEE000E41
        646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B1115
        0F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14
        140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800A00071030122000211
        01031101FFDD00040008FFC4013F000001050101010101010000000000000003
        0001020405060708090A0B010001050101010101010000000000000001000203
        0405060708090A0B1000010401030204020507060805030C3301000211030421
        1231054151611322718132061491A1B14223241552C16233347282D143072592
        53F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3D375
        E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F63747
        5767778797A7B7C7D7E7F7110002020102040403040506070706053501000211
        03213112044151617122130532819114A1B14223C152D1F0332462E172829243
        5315637334F1250616A2B283072635C2D2449354A317644555367465E2F2B384
        C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
        2737475767778797A7B7C7FFDA000C03010002110311003F00F4149249488524
        9249294924924A5249249294924924A5249249294A8F52E6AFED7FDF55E547A9
        7357F6BFEFA90534D24924E43FFFD0F4AFB11FF49FF47FF324BEC47F7C7DDFED
        56924788A1ABF623FE907DDFED4DF623FE907DDFED56924ACA9ABF623FE907DD
        FED4BEC47FD20FBBFDAAD249595357EC47FD20FBBFDA97D88FFA4FFA3FED5692
        46CA9ABF623FE907DDFED4FF00623FE907DDFED565242CA9ADF623FBE3EEFF00
        CC92FB11FDFF00C3FF00325653A5654D5FB11FF49FF47FF32599D669F49D47BB
        76E0FED1C6C5BAB1FAFF00D2C7F83FFF0045A3126D45CA492494887FFFD1F530
        653A82903292174C9D2492B249248A1492499252E92694A5252E92694A525325
        8FD7FE963FC1FF00F7C5AFB96475F3EEC7F83FFEF88C770A72924925221FFFD2
        F538F24BE497C928F2450BA49BE49D05293274924AC924922858CA5253A6D525
        2B54B54B5F14B5F1494AD564F5F9DD8F3E0FFF00BE2D6D7C564F5EFA58FF0007
        FF00DF118EEA72924925221FFFD3F52DC96E5182941450CB725B9460A5092996
        E4B728A492996E4A5452494CA5295149252E9264A1252EB27AF7D2C7F83FFEF8
        B5564F5DFA58FF0007FF00DF118EEA73124925221FFFD4F5191E0948F04C9228
        5E4782523C1324929791E0948F04C924A5E4782523C1324929791E0948F04C92
        4A5F4F04A4782649252F23C164F5EFA58FF07FFDF16AACAEBBF4B1FE0FFF00BE
        231DD4E5A4924A443FFFD5F50493A48A16493A49296493A49296493A49296493
        A49296493A49296595D77E963FC1FF00F7C5ACB27AF7D2C7F83FFEF88C775396
        92492910FF00FFD6F53D12D132708A15A7825ED48A8A4A652D4B44C027494AD1
        2D3C1327494A81E09E0264E82950128092492550163F5FFA58FF0007FF00DF16
        C2C7EBFF004B1FE0FF00FBE231DC20B9492492950FFFD7F5209D249142C925AF
        9A7494A4C927494A4E9248294924924A5249249254B1FAFF00D2C7F83FFEF8B6
        163F5FFA58FF0007FF00DF118EE145CA492494AB5FFFD0F5320A6DA567EFB3F7
        DDF794B7D9FBEEFBCA7521D18849676FB3F7DDF794B7D9FBEEFBCA5C2A74613A
        CDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF77DE52E15
        3A492CDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF77DE
        52E153A4B1FAFF00D2C7F83FFEF88DBECFDF77DE551EA6E71356E24E8EE4CFEE
        A206AA69249249E87FFFD93842494D042100000000005D00000001010000000F
        00410064006F00620065002000500068006F0074006F00730068006F00700000
        001700410064006F00620065002000500068006F0074006F00730068006F0070
        0020004300430020003200300031003700000001003842494D04060000000000
        070007010100010100FFE1120D687474703A2F2F6E732E61646F62652E636F6D
        2F7861702F312E302F003C3F787061636B657420626567696E3D22EFBBBF2220
        69643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E20
        3C783A786D706D65746120786D6C6E733A783D2261646F62653A6E733A6D6574
        612F2220783A786D70746B3D2241646F626520584D5020436F726520352E362D
        633133382037392E3135393832342C20323031362F30392F31342D30313A3039
        3A30312020202020202020223E203C7264663A52444620786D6C6E733A726466
        3D22687474703A2F2F7777772E77332E6F72672F313939392F30322F32322D72
        64662D73796E7461782D6E7323223E203C7264663A4465736372697074696F6E
        207264663A61626F75743D222220786D6C6E733A786D703D22687474703A2F2F
        6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C6E733A64633D
        22687474703A2F2F7075726C2E6F72672F64632F656C656D656E74732F312E31
        2F2220786D6C6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E
        636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A73744576743D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F
        5265736F757263654576656E74232220786D6C6E733A73745265663D22687474
        703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F52
        65736F75726365526566232220786D6C6E733A70686F746F73686F703D226874
        74703A2F2F6E732E61646F62652E636F6D2F70686F746F73686F702F312E302F
        2220786D703A43726561746F72546F6F6C3D2241646F62652050686F746F7368
        6F702043432032303137202857696E646F7773292220786D703A437265617465
        446174653D22323031392D30332D31325431363A31303A35392D30333A303022
        20786D703A4D65746164617461446174653D22323031392D30332D3132543136
        3A31373A32322D30333A30302220786D703A4D6F64696679446174653D223230
        31392D30332D31325431363A31373A32322D30333A3030222064633A666F726D
        61743D22696D6167652F6A7065672220786D704D4D3A496E7374616E63654944
        3D22786D702E6969643A62363966383932382D393063382D383934352D613530
        312D3862613432396534356232312220786D704D4D3A446F63756D656E744944
        3D2261646F62653A646F6369643A70686F746F73686F703A3665626435353434
        2D343466622D313165392D613635342D6335636565343334373364662220786D
        704D4D3A4F726967696E616C446F63756D656E7449443D22786D702E6469643A
        34316464636231302D613935342D373234322D616633642D6635663335396264
        66626233222070686F746F73686F703A436F6C6F724D6F64653D2233223E203C
        786D704D4D3A486973746F72793E203C7264663A5365713E203C7264663A6C69
        2073744576743A616374696F6E3D2263726561746564222073744576743A696E
        7374616E636549443D22786D702E6969643A34316464636231302D613935342D
        373234322D616633642D663566333539626466626233222073744576743A7768
        656E3D22323031392D30332D31325431363A31303A35392D30333A3030222073
        744576743A736F6674776172654167656E743D2241646F62652050686F746F73
        686F702043432032303137202857696E646F777329222F3E203C7264663A6C69
        2073744576743A616374696F6E3D227361766564222073744576743A696E7374
        616E636549443D22786D702E6969643A66313461373734302D396136622D3434
        34372D613462352D303737383032663837336362222073744576743A7768656E
        3D22323031392D30332D31325431363A31373A30392D30333A30302220737445
        76743A736F6674776172654167656E743D2241646F62652050686F746F73686F
        702043432032303137202857696E646F777329222073744576743A6368616E67
        65643D222F222F3E203C7264663A6C692073744576743A616374696F6E3D2273
        61766564222073744576743A696E7374616E636549443D22786D702E6969643A
        30393063613532612D396433612D626534392D623635632D6235363861333161
        36326530222073744576743A7768656E3D22323031392D30332D31325431363A
        31373A32322D30333A3030222073744576743A736F6674776172654167656E74
        3D2241646F62652050686F746F73686F702043432032303137202857696E646F
        777329222073744576743A6368616E6765643D222F222F3E203C7264663A6C69
        2073744576743A616374696F6E3D22636F6E766572746564222073744576743A
        706172616D65746572733D2266726F6D206170706C69636174696F6E2F766E64
        2E61646F62652E70686F746F73686F7020746F20696D6167652F6A706567222F
        3E203C7264663A6C692073744576743A616374696F6E3D226465726976656422
        2073744576743A706172616D65746572733D22636F6E7665727465642066726F
        6D206170706C69636174696F6E2F766E642E61646F62652E70686F746F73686F
        7020746F20696D6167652F6A706567222F3E203C7264663A6C69207374457674
        3A616374696F6E3D227361766564222073744576743A696E7374616E63654944
        3D22786D702E6969643A62363966383932382D393063382D383934352D613530
        312D386261343239653435623231222073744576743A7768656E3D2232303139
        2D30332D31325431363A31373A32322D30333A3030222073744576743A736F66
        74776172654167656E743D2241646F62652050686F746F73686F702043432032
        303137202857696E646F777329222073744576743A6368616E6765643D222F22
        2F3E203C2F7264663A5365713E203C2F786D704D4D3A486973746F72793E203C
        786D704D4D3A4465726976656446726F6D2073745265663A696E7374616E6365
        49443D22786D702E6969643A30393063613532612D396433612D626534392D62
        3635632D623536386133316136326530222073745265663A646F63756D656E74
        49443D22786D702E6469643A34316464636231302D613935342D373234322D61
        6633642D663566333539626466626233222073745265663A6F726967696E616C
        446F63756D656E7449443D22786D702E6469643A34316464636231302D613935
        342D373234322D616633642D663566333539626466626233222F3E203C70686F
        746F73686F703A446F63756D656E74416E636573746F72733E203C7264663A42
        61673E203C7264663A6C693E61646F62653A646F6369643A70686F746F73686F
        703A63383837363862342D336162612D313165392D396266372D626532623861
        3737326435633C2F7264663A6C693E203C2F7264663A4261673E203C2F70686F
        746F73686F703A446F63756D656E74416E636573746F72733E203C2F7264663A
        4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A786D706D
        6574613E20202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020203C3F787061636B657420656E643D2277223F3EFFEE002141646F62
        650064400000000103001003020306000000000000000000000000FFDB008400
        0101010101010101010102010101020201010101020202020202020203020303
        0303020303040404040403050505050505070707070708080808080808080808
        0101010102020204030304070504050708080808080808080808080808080808
        0808080808080808080808080808080808080808080808080808080808080808
        08FFC2001108034A025303011100021101031101FFC400CE0001010100020301
        010000000000000000000102030904070A060501010101010101010100000000
        0000000000010203060405071000020103020405040301000301000000000111
        0212131003203021144031041517330607375060323641220523110001020106
        070D06050204050500000001003111214191A1023220305161D133A41040B112
        4203D3E30405B536077181E135757660C122B4065013F0F16214A2247495A552
        921585161200010403010002030100000000000000006001310271A1B1322080
        40A05190FFDA000C03010102110311000000FB0AF59F98000000000000000000
        000000000000000000000000000000000075D9FAB8FCBEC07677F8FB00000000
        000000000000000000000000000000000000000000003AECFD5C7E5F603B3BFC
        7D80000000000000000000000000000000000000000000000000001D767EAE3F
        2FB01D9DFE3EC000000000000000000000000000000000000000000000000000
        0EBB3F571F97D80ECEFF001F6000000000000000000000000000000000000000
        000000000000075D9FAB8FCBEC07677F8FB00000000000000000000000000000
        000000000000000000000003AECFD5C7E5F603B3BFC7D8000000000000000000
        0000000000000000000000000000000001D767EAE3F2FB01D9DFE3EC00000000
        00000000000000000000000000000000000000000000EBB3F571F97D80ECEFF1
        F6000000000000000000000000000000000000000000000000000075D9FAB8FC
        BEC07677F8FB0000000000000000000000000000000000000000000000000000
        3AECFD5C7E5F603B3BFC7D800000000000000000000000000000000000000000
        00000000001D767EAE3F2FB01D9DFE3EC0000000000000000000000000000000
        000000000000000000000EBB3F571F97D80ECEFF001F60000000000000000000
        00000000000000000000000000000000075D9FAB8FCBEC077CDE1FEE0056B8B5
        9C6B000022D40000000000000059B025C0B340A012596680008014800882A81C
        F9E8C801480E957D97C1F82EF903E87FF9E7E90002B8379C6B24022D0800E2A0
        00A002000AA2255000214042B9337535400002805894956585A359BCB8D80001
        D117BCFCBF5DFD1903E87FF9E7E90000B75E36F9E759245A1000335C5B850000
        00000000002428896DB973635B9A00012BC8C6B774240A485B20881699A001D1
        17BCFCBF5DFD1903E87FF9E7E9000019B78378C59AB90000066B86CBAA000000
        0000001001168172E6C6B535400012C110000004DE7A7918D950259D11FBBFCC
        F5DFD1903E87FF009E7E90000545278FD312E400000335C5B000000000000099
        5A014032A73635B9A00019B9DCD6A68500080069778D0523A22F79F97EBBFA32
        07D0FF00F3CFD2000504095E3F4C4B9000000CD70EA5B4000000000224975409
        2555002C7373D6A6A800039F3A5A1900042821A5B9A3A22F79F97EBBFA3207D0
        FF00F3CFD200282001357C7DF39720000019AE2D8000000001248BAA001332DA
        A005CB9B3ADE74000066E753433723534258204D4BE4E7AB17A22F79F97EBBFA
        3207D0FF00F3CFD20141000026AF8DBC2E4800000C5716A5B400000022497540
        000490B6802C7373D6A6A80010E696CD0001424034B65E88BDDFE5FAEFE8C81F
        43FF00CF3F48290000029136F1B585840000062B8F60000004492EA800000224
        97540172E6C6B7340000724D000022550217A27F71F9DEBBFA3207D0FF00F3CF
        D252000000056F3BC78FAE79AA800000C5716A5B400842C9175400000001332D
        AA02C73F3D59AA000012C4B4C5CD00D4D429D157B7F83D79F4640FA1EFE7BFA5
        600000000559ACEA78DBE52AA00000315C7B002E521A2800000000020280B973
        635B9A0000B3C9C749282001681D11FB9FCCF5DFD1903E82FC27D65F379F4E7C
        6900000003537C7D39F8FAC4AA100000C570EB2CDD154B2E5AA0000000000224
        97540B1CDCF5A9AA003373C99DF3E365400001D117BCFCBF5DFD1903E813C3FD
        229FD3E3DF9F968000000568B8D63C7E9CC02000018AC994AB29A00000000000
        009996D50B973E35A9A000CDCF2675CF8E8940000E88BDE7E5FAEFE8C81F409E
        1FE9029FD4E3DF9B9E900000002B78DE3C7D7350202E2C08D2E2B29351680000
        0000000002495542C7373D6A6A8337356272677CF8E810001D117BCFCBF5DFD1
        903E813C3FD200B1FD4E5DB9B96C00000059BA7174C706F902887159A548519B
        26C0000000000000001124BAA2E5CF8D6A6B373A9A19B91CB9DF363A20003A22
        F79F97EBBFA3207D02787FA40029FD4E1DF9B1A40000000D37C3BE7C3BE6004D
        4AE3B988B0456A8000084405D40014202824821692C72E75652669608BCB9D72
        677598BB97933BE88FDDFE5FAEBE8C81F409E1FE9000165FEA71EBCDCF600000
        02DD55E1DF3E1BCCB5512B16096042B1B000211C7ACF8FBE79BA2405812AA422
        824B51A922AC1C990160A2ACB2CA2AFF005787D1D14FB7FCFF005DFD1903E813
        C3FD2000058FEA71EFCDCF640000000AE2DE784A5258B9E133B9562112ACB740
        00386E7C4E98D482000025A00B1A44B2CCDB64E4CB5340002168597A3CF63F37
        AF7BC03E813C3FD200000B2FF578F6E5E7A00000015A9670EA71DCB592010C51
        2AC4CDB34000124E2B38772A580005B6282255405B4458E6CDAD24145A8E6C6B
        95B47451EE3F3BD77F4640FA08F0BF50A0012A89A97FA5CBB6A56400002AA962
        70EF1C7AC08B5218A5225019A500000190902E8A02665D5002249755172E7CEE
        A80489579F1BE4CEBA22F77F99EBAFA3207D0C780FD1012800691036BAC80002
        ADA94335A9E3EF963590520E331A85B0A94A0000249E3EF9C582DA9010B10580
        149951516F2628325A44CAEE5E8EBD97CDEBEEF00FA04F0FF480000001A8FEA7
        1EFCB8D20142ADA9249A9D06758E0DF3C6B20B003082D23358DCAA00038D9F13
        A73CDA00000B20968000153979D0285113A3DF63C3D7DDE01F425E0BEF160290
        8A833ABA9059BF2716C05BA5952422353A089358F1F78CEB20A09C1A8A0866DD
        2680001971EB3E2EF0A8551A90010D012904B51691CD9A8AA42C4E8E3D9FCDEB
        DEF00FA0DF07F658540500AA02053CACF4E5C52DA922000353A133BC78FBC66E
        4028200071D6351680001249269A50400000005925B570E79BD4B2883A2BF6DF
        0FAF3E8C81F40FE1BEA804102A0028406A5FEA70FA39705A900006A7412E66A7
        8FBE59B000000071D6360000892716A67524514428000008322B79BB96CA64BD
        1B7B3F97D7BDE01F431E03F42C45D848B5742412DB150B8AD46A02000001A9D0
        6779F1B5CA6B2002900038EB1A8B404492DB867C4EBCF16800000000002C8397
        16A8E8F3D8FCFEBEEF00FA04F0FF004810A0080A416A4294B2FF004F8F7E5C50
        00006A7404C6F1E3EF9CB0005200071D63608925D508C33E275C44CDA00D4822
        8025002C0D49C99D17A3CF63F37AFBBC03E84BC17DE22DB2466C2EA494922D32
        8B4CD8559AF3B9F4B900001A9D0019DE3C6DF296000A0800E3AE3D445D500004
        13341001540500008CEE6B9B1AE8B3DB7C3EBCFA201F435FCFFF0054000262B5
        2DDE732D89A854586A4A962140001A9D000B31BCF8FBE510000A400715674500
        0018673480A000080000A65A5E8DBD9FC9EBDEF00FA1EFE7BFA400000290042A
        C0000000000D4E800C74C78FBE510000A08071D629A0000CC9E274E5C7AA0000
        00000001D217ADE1EBFEF00FA1FF00E7BFA4000042C280000000000000D4D800
        71EF1E3EF9900186EA6990071D63600008CA787D39E340000000000379747FEB
        F87AFF00BC03E82BC2FD600E3B38F59B28291400000000000000B1CD9D846779
        C2008AA40A090634CD116D800433600010011400017A41F5DC3D7FDE01F409E1
        FE9000E2DE78F50021410440001A6C0000000B97366D94442AAC010A01104B33
        650B650204A40A00000025511D1FFB0E1EBEEF00FA04F0FF0048000E2DE7152C
        1490AB2CB080005B29400000068E5C2CA000000000A2652CB54000000000019B
        2C551D1E7B1F9FD7DDE01DF6F87FA40CD962AC1400492ACAA040014000000008
        216168000204B45012D8D00000000000085003A50F5BC3F03DE01DF6787FA442
        80000002522800000000000020AB000000021400351A0000000000428003A51F
        5BC3F03DE01DF6787FA400000000008500000000000101400000000405000000
        0000010255000E947D8FCFF81EF00EFB3C3FD440000000000214000000000101
        40000000001014000000000D4D66C200001D28FB1F9FF03DE01DFB788FAB8AE4
        000000000010588000000002D320A80000000160B352C4000002A89672E7496D
        9C3720000749BEBF8FE07BC03BF8F17F4000000000000138AE4B400000400D4D
        40500000000101412C45500019B8DCD7262AB2716F3A9A00003A49F5DC3F01DA
        01DFDF89FA400000000000010B24B4000062CE2D66CD80000000000000292C45
        580A42B3C99D58C59C7B965280001D257AEE1F80ED00FA0EFE7FFA0000000000
        000001116D8004B2CA0000000000000000024B6C0A42ACAD44B240000007467E
        E3E1F5EFD1903E807C37D7400000000000000085008500000000000000000000
        03971AB5C361028000000747DECBE5F5F778077E9E2FBD5000000000000000CD
        CEA544D44B54000000000000000003373A9752D814E3D42800000003A49F5DC3
        F01DA01DFA78BEF54000000000000003373AC8B2CAD0000000000000000000CD
        CEE5DE2DAD4BC1ACAD000000000E927D770FC0768077E9E2FBD5000000000000
        0044966A6866E753400000000000000000009C99BA978F59C5168000000001D2
        4FAEE1F80ED00EFD3C5F7AA00000000000004B11540110550000000000000000
        227366C33671EB3A9B88AB2800000003A49F5DC3F01DA01DFA78BEF540000000
        000004B986A680004B05940000000000000CDCD379BACDD1C7A98B4500CDCD96
        A8000000E927D770FC0768077E9E2FBD500000000000097296A80000222ACA00
        0000000001139212EA2D7156358B3740009725B28000007493EBB87E03B403BF
        4F17F450000000000012C4550000000337365AA0000000003373A979B1752E6B
        8ECCE90A000019B9A59A000007493EBB87E03B403BF3F17DB4D000000000012E
        52D50000000009730D4D00000000066E772F262CAE3D3371A9B00000011259A9
        A00003A49F5DC3F01DA01DFA78CEF12CB5400000001966AD500000000002584B
        340000000088525500000000002588AA001D24FAEE1F80ED00EFD3C5FD149725
        B28000000CDCEA6800000000000044966A6800000066E6CB540000000000004B
        226A6801D24FAEE1F80ED00EFD3C5F7AA337365AA00000CDCEA6800000000000
        0002588AA00004415400000000000001105503A49F5DC3F01DA01DFA78BEF540
        892CD4D0000CDCEA68000002148500000000960B28004B115400000000000000
        00CDCD96AF493EBB87E03B403BF4F17DAA800440B02696594000000445B96373
        60000000082CB28102550014100000000000000895AE927D770FC0768077F1E2
        7A94000096EA4CDB6400000000BC7B89AE4CE0A000000000B5209560012B16D5
        DE72000000000000001D237AFE5F80EF00EFE7C4F51680089756245D64000000
        0048B0D2140000002512CDCDC230A001065695014000000000009443A46F5FCB
        D7FDE01DFE78CEE0002259A32550000000010005000000011059A22800000000
        000000000001194D7489EB787AFF00B80EFF003C5F7AB100960D4D0CDC92CD00
        0000000000000000290055CDC8B28000000000000000004B1157A43F5DC7D7FD
        A01F405E27E84000000085000000000000000002C4A000428000000000000000
        00000E8FBD870F5F77807D06F84FB00850000002140000000000000042800000
        10A00000000000000042800E8D3DA7C9EBDEF00FA1FF00E79FA4255100000012
        8580005000001000128580000001285800000000000012A88007449EEFF3FD77
        F4640FA1FF00E79FA59B752000000002545D480294000004204A028020000002
        50B00000000000095600007449EEFF003FD77F4640FA11F05F6D0000002D6B3A
        D000C94F1F78E1D60000003CBE7D779D0ABC7738DE5007367540000073E37602
        02928005000A44AAA80A201D11FBAFCEF5DFD1903E82FC1FD2000000391BE694
        0011C1B9E0F5E566400001E4E3BF95CF60B9B386F344D652F335C928000039B1
        D3931400001A9D000005466CD0BD20000E88BDC7E67AEBE8C81F417E0FE90000
        00D5D73E77500030781DB966E22D9000072E7AF9BCFA2325AE1D7396149BCEB9
        66824B6D2141BCEB9F1B812A8010353A00005912CD017A40001D117B8FCCF5D7
        D1903E82FC1FD200000B6F919DD000965781D7971DE6066DD2200D4DF9FCBB12
        04E2D670C6A685396DB1532D724D6359C5BBCE6CBE4F3D802AEB3B0A080353A0
        0B2259A000BD20007445EE3F33D75F4640FA0BF07F480000AE7CF4D800097C3E
        98F1F7C40025A4B15BF3F8F6A133666E38D986A695CD2D02B79D645C0E39D3CB
        E7740035376501410353A09722CD000017A4007445EE3F33D75F4640FA0BF07F
        4800069CB9DF2CA0028E0D67C2E9C4800000F2F1F473F3B8B1666CE399A08725
        D72CC896EB3A96E6E2C439F1D3932006A6ACD000050D67A4B91668000002F480
        7445EE3F33D75F4640FA0BF07F48000DB5CF340008C69FCFEBC632000146FC9E
        7D3C9E7D32CE759B6713280356DBBE5CF306ACD6359A88DE77CF8A00B2EA6C00
        00504B5AB28000000BD201D117B8FCCF5D7D1903E82FC1FD20069737C89BA000
        23C4E99C6B2000044DCDF95CBA66C8CB6E39890055E4D6B368DE33C937C7732C
        1BCEBC9E7400353A5800001402353A000000017A41D117B8FCCF5D7D1903E82F
        C1FD202AE9CFCFA680001C1A440A000B26B3BDCD66E66B0309862CD09672DDCB
        A49A4E4C6A8055F239EEE68805580000A2A4015ACF4000000005E93A22F71F99
        EBAFA3207D05F83FA4361CD8DF24A0008F1B73C5E9C400010D6F3AF231D3926B
        3BC6A4CA70A0D44396EA6B4359CEB376A0179F1BDE2800000001480028A9353A
        00000001D11FBCFCBF5D7D1903E82FC2FD2C9B6F1BE7940004250002150D4D40
        71EF1A9331C57165CD0E595BD8D4CD9AE4C801CB9E9CBCE80000000148000015
        66ACD0000000E88FDE7E5FAEBE8C81F417E13E946B579F1D2A000653F9FDB397
        35A00D4D25A72E75E573DE6F3CEE8E398400AE46E6A8D49CB8A00DE75CFCF600
        0000005200000000D4E8000001D117BCFCBF5DFD1903E82FC27D34E7CF4D0000
        38EB3400011A9656A25CCB25B8989002B99ACDACA69CD8B402CBE473E9600000
        000520000000015AB3400000E88BDE7E5FAEFE8C81F415E13EAE7CEB91400078
        BBCF0EB200006A5AD7938D5678F7522678E66A85723535A164DE6EA5A8266F93
        9DEB3400000000000000000353A4B916680007445EF3F2FD77F4640FA0FF0007
        F66E6F49500195F1778200009565E4979A5E3D496DCE78E6401BB574B472626E
        58B0D272E3A72E280000008500000000000D4E825C8B34001D117BCFCBF5DFD1
        903E857C17DA228A838CE1DE41002C22D39737965E3D633AD6B39E2990259B6A
        DD2D1A9397140171BF233AB00000012AC0000000000000D4E92E459A007445EF
        3F2FD77F4640FA15F05F681161A4F0778C6F12D08115572D1E772E99D31A5931
        33962CD0572DD66E926A4E4CEA8026BC9E7B292C0000128580000000000001A9
        D0446A336A8E88BDE7E5FAEFE8C81F42BE0BED000E1AA94000C9A11C8B8B25CE
        A4E2B712085392EE5A3526F2D28097C8C74D64250B0000255800000000000000
        0D4E825C96CBD117BCFCBF5DFD1903E857C17DA00F1F53C4E9C336D0044B7532
        5F2F9F6E6CDCEB14B262D96865E4635A9445D5BBC5956017500084AD40105580
        000000000000001A9D009723A23F77F9BEBBFA3207D0AF82FB40E3B3C0EDC648
        2B711512C839F3D7CCE7BCEB1C7AD8006B33979DE7CD0235C99D000000003342
        C2AC00000000000000001A9D0012E7A23F77F9BEBBFA3207D0AF82FB40F0F79C
        DC80585082B5E673DE2E71BA001ACCDE2F938A00D4E96000000001C7AA393300
        0000000000000000353A0026B3D11FBAFCDF5DFD1903E857C17DA00032B402A0
        18B38F7400127261E4F3D500D4DD94000000094850B000000000000000000006
        A749724E88FDDFE77AEFE8C81F42BE0BED000CB5A4202E574CCB38B4968006B3
        3C9E5ADC006F79A00000004A4500942C0000000000000000005692D5E88BDE7E
        5FAEFE8C81DD4794FA0012DB20000CDB2C00003797266812B534000000008500
        00000000000000000000002CD750FEA3E3FC4F6807677F8FB000000000000000
        00000000000000000000000000000000000003AECFD5C7E5F603B3BFC7D80000
        000000000000000000000000000000000000000000000001D767EAE3F2FB01D9
        DFE3EC0000000000000000000000000000000000000000000000000000EBB3F5
        71F97D80ECEFF1F6000000000000000000000000000000000000000000000000
        000075D9FAB8FCBEC07677F8FB00000000000000000000000000000000000000
        000000000000003AECFD5C7E5F603FFFDA0008010200010500FE8FB7FE7FA56D
        FF009FE95B7FE7FA56DFF9FE95B7FE7FA56DFF009FE95B7FE7FA56DFF9FE95B7
        FE7FA56DFF009FE95B7FE7FA56DFF9FE95B7FE75EFB74EFB74EFB74EFB747EB7
        745EB770EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370E
        F370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370
        EF370EF370EF370EF370EF370EF370EF370EF370EF374EF374EF370EF370EF37
        0EF374EF370EF370EF370EF370EF370EF370EF370EF374EF374EF374EF374EF3
        74EF374EF374EF374EF374EF370EF370EF3747EB774EFB74EFB74EFB74EFB74E
        FB74EFB74EFB74F4B537B5C94F97041041041041041041041041041041041041
        0411CAB8924B892492E2492791E8FE8F297293F0D248DEAD0F911AC11A24410C
        B48208E2F47F479484C9E4A6353E0D8C5C2C8E4469041041041041040D09F07A
        3FA3CC5CA4FC32E06343E4492492CB8B8B892E2E2E1BE1F47F479B3CA4C6A79E
        DF32391041690416969690410411AFA3FA3CD4C5CA4FC2C09F0B43F0703D3D1F
        D1E727CB4CF3F091CF6CB892492492492492493D1FD1E6B5A2722E527E2DA1F1
        B45A5A8B516A2D45A8B4B4B4B4B4B4F49F4BC5A679F0B291F3A09E0688E4CF04
        924F07A4FA5CF6313917293E17E0609E0687C6C6CB8B8B8B8B8B8B8B8B8F49F4
        B5B0B074C7393E5267993C0BC03E28E2631A1723D1FD1E16A4AA98E5B114BE5A
        7C097876B8E0688E47A3FA3C75531E1208D234425E1589F29150D09F17A3FA3C
        6D49528E6A7C53A493A27E1DA275687C6D0D717A3FA3C974C731F4170CF05A5B
        C9F32D2D2DE6753A9D482D2082082D2D1523A0B0B0B074E9E8FE9725A92A51CB
        A8A593C324E924E93C74E905A884416905A411A41047022081F29A2AA4F47F47
        94D0E98E6262279108845C4AE34F49249249249278FF00F2F4688E438140E993
        D2FD2E5B454A398842E2B4B48208E37D05517171797179797979717171717990
        559717978EA2E2E2E2E2E2E2F1D4C92E83D27D2D6E2E2E2E2E2E2F2E2F436344
        2E627C525C49717170B932492C964F2635688E381A7A7A3FA3AC104104104105
        A432D2DE4C93A27C882D2D65A2E4C169616969696A2D2D2D2D20821102A48442
        2D2358208D2D47A5FA5CE6874F31313E3924927934D5CA927C07A5FA5AE43217
        9797B2F65ECBCBCBD8F705B837C73C5227C524925C88278FC855124925C5C892
        4924B8B8B8B8924B8B8B87521D45C5C5C5E5E7A5FA5AE33198CB0B0C6632C319
        8CC6633198C74C13CB4C5CB4C6A790CB89D649249249249249192344717A4FA5
        ADC5C4971717124925CB49D5A92A51CC9E627C95496961616169696969696969
        6969696969696169696969E97E96B0C820B59D7586433A9D74EA753AE902E9CB
        427CB4C6A78E927C135C1E97E96B0410410410411A4105A8820843A4AA9E5A27
        989F1B62A89E64924924E8F5F4BF4B5BCBCBCBCBCBCBCC86432190C85E643219
        0C83A87CC5CC4C7CA75171717171717171771C11A7A4FA5CC83AEB0493CF4C9E
        627CA82C2C2D2D2C2D2D2D2C2C2C2C2C2C2D63A0C6CF4BF4BF829297CC4CF3E3
        42F05E9BE9F1C104704104104104104104104104104104104104409F313E4489
        F80A8F4DF4F5B4B4B4B4B0C6633198CC6633198CC6633198CC6633198CC66331
        98CC6633198CC6622C2C2C4585A5A8B4B4B4B4B4820B4B482D2082C2C2C2C238
        A0820820820820820F4DF4F909F8A688E19E5492492492492492492492492492
        4924925C49E9BE9F253E19D649F02C8E74788F4BF4B9524924F0492492492492
        4924924924924924F0492492493C3249226410410410410410410410411A4104
        107A6FA7FCAA64924924924924924924924924924927A6FA7FD2BD2FD2FE82C5
        C8F4BF4B82D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2
        D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2
        DD2048B4B4B4B4B4B4B4F4DF4F5820820820820820820820820823973E3DEA90
        B91E9BE9EB0410410410410410410410410416905A5A5A5A5A5A5A5A27E39888
        122393E9BE9EB9D99D99D99D99D99D99D99D99D99D99D99D99D99D99D99D99D9
        9D99D99D99D99CCECCECCECCECCECCECCECCECCECCECCECCECCECCECCECCECCE
        CCECCECCECCECCECCECCECCECCECCECCECCECCECEE199D99D99D99D999999999
        99D99CCECCECCECCECCECCECCECCECCECF48E76B5C48C48C48C48C48C48C48C4
        8C48C48C48C48C48C48C48C48C48C48C48C48C48C48C46246246246231189189
        1891891891891891891891891891891891891891891891891891891891891891
        8918918918918918D18D188C4623123123123123123123123123123123D2AFFF
        002F12FC73D3C87D443E77A6FA7E25F8E63D3CB45CEF4DF4FF009791B244BC07
        A6FA7FCC40A9F03E9BE9FF0026864E902F05E9BE9FF27237AA5E0FD37D3FE45F
        0411E13D37D3FE458F48F0DE9BE9FF004AF4DF4FFA57A6FA7FD2BD37D3FE95E9
        BE9EB24924924924924E924924924924924924EB2492492492492492493A4924
        E92492493AC92492492492492492492492492493A7A6FA7ABE54F313F0689E19
        F0F27A6FA7AC1041041046B0410410410410410411A433AE9041041041041041
        0468C488208208D7A90F582082082082082082082082082047A6FA7C12492493
        AC6924924924924924924F0C924924924924924F0C9249249249249249249249
        2492492492492492493AFA6FA7FD2234F4DF4F592E2592C92492492592CB8925
        92C964B2592C964B2592C964B2592C964B2592C964B2592C924B8964B2E2E249
        2592C964B2592C964B2592C964B2592C964B2592C964B2592C964925C4B3D2FD
        3D6F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F
        2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F
        2F2F2F2F2F2F2F2F3D2FD2F0F041041041047147F0DE8FE978682592C964B259
        2C964BE38208FE0FD1FD2D6C2C4588B11622C4588B11622C43A4B4B4B4B4B482
        0A682C2C4588B11622C4588B51622A42A4820815258584104104104104103238
        238A492492395E93E973678994D3CAA993AAD6091F25BF00B95E93E9783484B9
        353D208D11248DEB04F137C73E13D27D2E5B7C53A534F25B2758D172A746FC67
        A4FA5E060A572AA7AA5A473193E33D27D2E4A637C6972AAAB58E4CE890F56F98
        84FC07A4FA5CF6CA57264AAAE17C084F856ADF8EF49F4B8EAE44099722E45C8B
        91722E44A2E43AB9AF482082A7E3FD27D2E37C8B4B4B4B4B4B4B4B0B4B74489E
        521BE16FC7FA4FA5C2941237C4D1493C725C3625C086B8A389BFE03D27D2E1AB
        C043D1B12D18B54C6B810DF0B7FC0FA4FA5AFF00E46F8D212E26488AB85F0CEB
        E5C2FF0082F47F475FFCF2131D42A8B8B99732E65C4924E887C88247C0C9FE0B
        D1FD1D50F8E9A47496969696969696168C4B8DF03E16C6FF0083F47F4756F917
        17979797979797978EA122796DF0D4FF0084F47F479291696161616161696160
        D11C688E07C2DFF0BE8FE8F25124924924A24B912362E05C723E06362FE13D1F
        D1E45A5A5A41041043208D121F22491F0C8FF86F47F478E95AB5AC7054C489E2
        6C7512C964B249249249FE1FD1FD1E24B9553E4B7C13CD823C7FA3FA5C499717
        1722F2E2F2E2E1D648B890DF8262F1FE8FE97804B8EA7C2F9D24F8FF0047F479
        E909F13637C0DFF1FE8FE8EBEDC7B71EDC7B71EDC7B71EDC7B71EDC7B71EDC7B
        71EDE7607607607607607603FF00E71ED87B61ED87B69ED87B61ED87B61ED87B
        61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B6
        1ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61
        ED87B61ED87B61ED67A7A6DDBFE95B7FE7FA56DFF9FE95B7FE7FA56DFF009FE9
        5B7FE75FFFDA0008010300010500FE8EFF00A5BFE96FFA5BFE96FF00A5BFE96F
        FA5BFE96FF00A5BFE96FFA5BFE96F8315262A4C5498A916D523DA4588B11622C
        4588B11622C4588B11622C4588B11622C4588B11622C4588B11622C4588B1162
        31D263A4C749622C463A4C7498E931D263A4C7498D18E931D263A4C7498E916D
        A1D1498E931D263A4B292CA4B2931A31A31231A15148B6A930D261A4C3498693
        0D261A4C3495A87C96B973E0249249249D249249279369690416969616160A81
        53C8DCFF005CAA972A3C4C6AB8E04F592492759249278B73FD7290D0F94DF865
        C33C8924B8B8B8B8B8B8B8B891313E066E7FAE527A55FC32E34882C2C2D2D2D2
        D2D2C2C2D12E1DCFF5CD6B97E5E03CF973C8B8B8B8B8B8B8B8B8B8B8B8B89D77
        3FD739AFE1972275964BD64920913169B9FEBC4B5E3279091696969696904169
        69691A6E7FAE7B43FE1971A65C5C5C5C5C5C5C5C5E5E5E5C57FEB9E864729A3C
        BC5CF26DE0B4B4B782BF3F014952FE1D71A122D20B4B4B4B4B4B4B4DCFF5ADEC
        BD94D53CD6B99E42F153C54E93C9DCFF005C2994D53CBA468A97F0EB8A44C5C8
        DCFF005C74D53CB9132A5CA9249F173C305452F91B9FEB8D329AA796969553C5
        02A48208F1AB87CC4CA5F1EE7FAE4D354F310D70C12497171772E49249249E39
        2513A49249717176B714D66445E5E2AB4DCFF5C94E0A6A9E5D23435A411A470C
        7259248DEB3A4F0C6BD783A9D4EA753A89E89EA994D46E7FAE5262AA44F98D11
        ABD6DD3A9D4EA75E36B49249249249278A5923D193CA4E0ABCF969C14B9E5F4D
        1A1F1CE92895C687496969696B2D2D20B4B4B4B482D2D2D2D2D2D2D2D2D2C2C2
        C2D2C152588B0AFCF5B596B2D65A5A5A5ACB596B1213E6B5C4F58208F113C0A0
        9249211D0915449B9FEB5B8B8B8B8B8B8B8B8B894362AB9703435C725C493CAB
        8B9925C5C5CCBCB8B8B8964925C5C5C3A8B8965C5C49248C551732AF3E726535
        7318D731AE3A972208249E4412470A1F9EB8CC66331988C6632C2C3198CB0547
        1413C2D1035C505A432394E923582D2D65A5A4696B2D65A5A5A5A5A5A582A0B0
        B19616161579EB7979797979797991990C86432B323320AA9E5BD2A5E1639D1C
        13A410415F9EB696B20B590410410411A41027052E79690D0D78382E2E2E2E2E
        24B8B8B8B8B8B8B8B8BCB892E2F2E2F2E2E2AF3D6F44A2E44A25128944A25128
        84743A1D0E84A131F2D8D783635E0A04F5ABCF952492492C924924B8A5F2DA1A
        1F836881E92493AC10411C51A410CABCF5C66231188C43DB3118CC4CC6633198
        CC658636631524732A435CCF2238E082082082082082393257E7CC83AE9E6412
        493CE68A973239324971717171717171717171717171717171795F9EB2492492
        493C33E16AA7C231AF04FCFC7C924924C9553C4D8B9B6F827E7ADC5C5C5C5ECC
        86466432190C86432190C86432190C86432190C86432190C86432190C8642F65
        E5C5E642F2F2F2F2F2F2F2F2F2492492E2E2E2E249E182082082082082347E7C
        86883A1D3450743A1D38D41D0E8743A1D0E8743A1D08279D041075D3A1041041
        0410410410410410411AC0FCF9304104104104169690410411A4104104104104
        11AC6B0410411AC1046AD13E096B579F2638A08FE0649F10FCFC027E15BFE15F
        9FF4AABCF56BC7C78F81AE455E7AB249249249249249249249249D27993A493C
        D9249279324899248DF21F9EB24924924924924924924924925CC86753A9D4EA
        753A9D4EA752D248F09027C7E62E0AB90FCF5B91722E45C8B91722E45C8B9172
        2E45C8B91722E45C8B912892492492492492746BC33427C2C5AC971E7C87E7AE
        0460460460460460460460460460460460460460460460460460460460460460
        3023023023023023018118118118118118118118118118118118118118118118
        1181181181181181181181181181180C08C08C28C28C28C28C28C28C08C08C08
        C08C08C08C08C08C08AD43D72332332332332332332332332332332332332332
        3323323323323323323323323323323323323329919919919919919919919919
        9199199199199199199199199199199199199199199199199199199199199199
        197B3233233233233233233233233233233233233232AF3D5786A49D18978AA7
        5F2F00FCF55E1A910DF8CA74F2D5F39F9EABC2B625AB7E2DA168DF807E7AAF08
        D8970C09F8A91B129D1A279AFCF55E0DB12E3689F09514E923E3F213E5BF3D57
        82912E4B44F826411A468DF1B427CA7E7AAF03225CCF213E7D3C1237CA813E4B
        F3D67C0A5CE689E75232757CB68F2E43F3E0F213E779780684F9AD888F01027C
        4FCF55A409F2FCFC1B47972DB12F06D09F0BF3D56B027E3E04F90D89785689E0
        7E7AAE068F2F1ED09F13625E2204F47E7C98208208E6F973BCF8978A6B47E7AB
        E4C13CD6BC0C0993C33E21F9F0C92493C324924924924924924E924E92492492
        49249249248B8249249D649D649249249249249249249249249D1F9EB05A5A5A
        5A5BAC105A5A5A5A5A5A5A5A5A5A5A5A4104105A5A5A5A5A5A5A5A5A5A5A3425
        ADA5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A35A3F3D
        6749249D2756C9249249249249249249249249249249249249246C4493A32492
        49249249249249249249249249249249249249247E7C10410410410410411A41
        0410410410410410410410410410411A41041041041041041041041041041041
        041041041041041041041579EB616161616161616161616161618CB0B0B0B0B0
        B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0C65858585858
        585858585858585858585858585858585858585855E7FD2ABFF5FD2ABFF5ADE5
        E5E5E5E5E5E5E5E5E2AC5512492497125558B70C8CC8CC8CC8CC8CC8CC82AD97
        17124923A8BCBC550AA249249249249E382082082D2D2D2D20B448B4B4B4B4B4
        B4B4AFFD7352E248A9F2A94411A3D234812E4A5E07CF93B9FEB98971B654C5C8
        A56924923AB8249244F824929249279B3CBDCFF5CB4B91555C13C2A92092746C
        AB544EAB59D12E14B96D91CBDCFF005E0AA7C49EA8A50DEAD97094F174121EAB
        892F0FB9FEB94971B63E4245348F491BE15AB625A31890970A5E2373FD7252E3
        63AB9105348F4918B817025A2D570A5CBE9CEDCFF5C84B90D161616161616169
        60A9D1BD27931A345A5A25E3F73FD71AE43A855171717171717A2E2E5A3245A5
        4F542D57125E3F73FD71A5C7510C86432190C86416B2D121B1F147040B852FE0
        373FD7125CDE9A4224824918C6F542D57125E1BCF97B9FEB852E36C91B2592C9
        64BD5A29431F1A42E425FC16E7FAE18E368820820820B448B74A9948C6F86390
        97F07B9FEB5812E375179797979797978AB2747AC8F5485AB42235484BF83DCF
        F5AA5C8748A82C4588B11622C4582A11031BD678172578E9E2DCFF005C3235AB
        65C5E8BD17A2F45E8B8B8B89E4342E4AF1F04F0EE7FAE4B20820820B4B482048
        9E0A9EB491ACF0A5A4F8F8D275DCFF005C87512492492497124EAF47ACF0B447
        02FE1674DCFF005C753244C65CCB9923649225A4EAC82048820820B48208208F
        E1609373FD71363D5245A5BC14D3C8812E05FC6366E7FAE268C6633196161698
        CC625C8425FC8A2BFF005CA9E6A5C297F1DB9FEB9EC4F8D702FE3634DCFF005A
        E432190C86532190C86432190CA2DC32190C864321905B86532994CA673399CC
        E673399CCE673399CCE673399CCE673399CCE673399CCE673399CCE673399CCE
        673399CCE673399CCE673399CCE67339DC15397FD29FF4B7FD2DFF004B7FD2DF
        07FFDA0008010100010500FE8FF7BFFD9FF4AFBDFF00ECFF00A57DEFFF0067FD
        2BEF7FFB3FE95F7BFF00D9FF004AFBDFFECFFA57DEFF00F67FD2BEF7FF00B3FE
        95F7BFFD9FF4AFBDFF00ECFF00A57DEFFF0067FD2BEF7FFB3FE95F7BFF00D9EB
        F1B7D947C6DF651F1B7D947C6DF651F1B7D9457F8DFECDA4F8E7ECD3E39FB34F
        8E7ECD3E39FB34F8E7ECD3E39FB347F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7
        ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3
        E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E38F
        B30F8E3ECC3E38FB30F8E7ECD3E39FB30F8E7ECC3E39FB30F8E3ECC3E38FB30F
        8E3ECC3E39FB305F8E7ECD3E38FB30F8E3ECC3E38FB30F8E3ECC3E38FB30F8E3
        ECC3E39FB30F8E7ECC3E39FB30F8E7ECC3E39FB30F8E7ECC3E39FB30F8E7ECC3
        E39FB30F8E3ECC3E38FB305F8E7ECB95F8DBEC96BE35FB28F8D7ECA3E35FB28F
        8D7ECA3E35FB28F8D7ECA3E35FB28FCA9E9B63D17E50E4D745BC2E785CC5ECBD
        97B2F65ECBD97B2F65ECBD97B2F65ECBD97B2F66466466466465ECC8CBD99199
        199197B1549AE3892CA8B2A2CA8C7598EA31D463A8C5518EA31D4534D74BE3FC
        BDFB6793D0AA8B5EBE5C55533E2D369D2D35C4BA14D772D3A1D0E87425128BA9
        2EA4BA93A3E2FCBDFB6795575556DDA53C9AA991F865E5AA6D35526B8E512892
        4924924924928A9D2D435AB3F2F7ED9E53523529D163E4D54CF83F3E426D14B4
        F8D229A2E31331331331188C46231188C4534BA787F2F7ED9E6352AAA5D2F935
        533E07CF949B42A935C49B4D6E52D64A4BE92FA4BE82FA0BE92FA0BE92FA4BE9
        2FA44D3D7F2F7ED9E6D54AA934E97C9AA99E7F9F31368A5A7C89D7A9D759248D
        28A9D2D35523F2F7ED9E7554AA93A5D2F935533E1609E14DA1549F229A29A963
        A4C7498E931D263A4C7498E91EDD22DBA116522A552CFCBDFB679F552AA5552E
        97C9AA99E54C733CB85369D2D3E3A6A74BCA6532994CA653375CA6532994CA7E
        5E73F9639E8AE955269A27935533E2D369AA935C88E08208E0FCBBFB5F54D3E6
        A2BA5549A3CB935533C294B87E15382969AE2A5C34A86ADA4B692DA48A48A48A
        4B692DA4B693F2F7ED9D7B9DD4775BC6CEF2DD5CCAE8B8F2E5554C9E47412509
        52CA5B9F03E5C09B4D549AE14515DAD43E4FE5EFDB3C34D4E97B3BCB757290D1
        5D12B955D32269A50D28A7C2791E7AA6D09A6B8A8AEDE4FE5EFDB3C54D4E97B3
        BD4EEAE5A65744E913C0DC2BD17A2F45D4A2B74B1BA5F868E04DA69A6B5F3D19
        4576F23F2F7ED9E3A6A74BD9DEA77572A34AE89E17D56363DB6DE392C70E9716
        D5E2D382969A3CF5F324A2B8E3FCBDFB67914D4E97B3BB4EED3CCAE89E26DD25
        553464AA2FA8C8C6E7C4CA2EA455A4D6E50D64A0C941976CCBB665DB33ED147A
        ADB4773B2773B0773B06DEF6DEE33F2F7ED9E4D353A1ECEF53BB4F29695D1AB5
        047489150A2DA0B682DA0B291D1C8AEF325664ACBEB664ACC9597D65F517545C
        C9649249D04A5B490E981C09C34E4EA753A9D49E14DA7B1BEB757E5EFDB3CAA6
        A7455B3BCB769E66E510252293AD23F31F9DBA753A92C97C7B9B7710D3B4B482
        0B4B4B4B78544B83A5AA20A5C133CA4DD2FF002DB757E56E5D353A2AD9DEA776
        9E574D2BA14B7C2DC2BCC85E64A46D37C75EDDC60ACC15982A305460A8C0CC0C
        EDD981980EDD1811811811DBA305260A4C140B66942D8DB676D41DBD076F41DB
        D076FB676FB66DECECB3B6D93B7D83F2F24BF2C6B8774C3BA60DE306E98374C1
        BA60DE306F18378A76B7E8AA875554F32AA1D3AF968D4AB19632C658CB18E869
        781F3E4D2ED134F83A1D094515DC433F2FFED9D726D9936CC9B665DB32ED9976
        CCBB665DB32ED99768CBB6535D15723C89D2082BA2DD7AEB5B69CB2E65D5173E
        4B98CB5A79EA33B33D667A8CD599B70CBB8CCBB866DC32D665ACCB5197707B95
        9937117EE32FDC16EEE216E56CBF70C95992B2FAC75564D5392B3F2D75FCABCE
        A2BAA8AB6B769DDA787A42FF00DB85A2BA6D7AC8D265B49FFE67FF0099141141
        5243E3AF6D569A74BE2964B2110B909B5A470F43F2CFED4D7B4DB3B4DB3B5DB3
        B5DB3B6DA3B5DA3B5DA3B4DB3B4DB3B5DB3B5DA6769B653B14D1579F07467FEB
        1FF9E0686A4AA974BD7CB4B6A2D65B511516B21F22BDB55AB2B459598EB31D66
        2ACC7598EB315662ACC3598AB315661DC316E18B70C3B862ACC358B6AB42D8AD
        98370EDEB3B7ACEDEB3B7ACFCB4ADFCABAAF5559DDD6777B877551DD5477759D
        DD677551DDD4776CEED9DDB3BB6776D1B5BB4EED3CB84D554BA5F2AAA793D3C0
        79694D4E9134F482083F2EFED7D716E18F711656595965659596565B516D45AC
        B6A21EB45555156D6F53BAB9486935552E97CAAA9E479956EDA6746746747708
        CE8EE11DC23B847708EE11DC23B846793399D99DA33B29F51552D7A9677151DC
        5477159F969CFE55D6EA055D25D4A1574B528913489E0EBAF98940B99524D34E
        97CAAA9E198D6BA154AAA5D0FC07989C3D7F2CFED4E28E44B45CC9A855548BEB
        29DDDCA6ADADDA7769E5D54AA934D3E5554EB3025C1550AA5552E96886C86432
        190C86432190C86432190C86410C52886D4547E59FDA9AF6DB676DB676D41DB6
        D8FD2D076B4A7DAD27688ED51DA1DA33B36768D9DA5476959DA567695947A7DD
        A2A4E572EAA5549A69F2AAA639BD0E8743A72BC8A6AB44E4FCB9FB5F93D69254
        1723FF0053CC9549722D65AC8E7D74A6351CBAA88E4BAE9A4CB4196832ED9976
        CCBB666DB336D99B6CCDB665DB32ED9976CCBB665DB32ED99B6CCB414FA8A293
        F2DB557E56D6110884422110884744743A32085E16BA1549A8E2F2E1AA9E4554
        AA9574BA1A71E07F2C7ED3E57FE7C4D7426B869498FA70D54C721D29AAE87435
        D79F41F963F69EBDC6E9DC6E9DC6E9DC6E956FFA84775BE775BE777BE777BE77
        7BE775BE777BE777BE777BE777BE777BE777BE775BE775BE775BE775BE775BE7
        75BE775BE775EA0EEB7CEEB7CEEB7CEEB7CEEB7C5EAF7D35EA775AEE374EE378
        AB7B76A32EE19770CBB885BDB864ACCBB865DC9CDB866DC335666AC75D664DC3
        25664DC325664ACC95992B1D75B44924B2597171717125CCB99732491368FCB1
        FB4F915D30743A1D0E8283A1D0E9C6A0E8743A1D0E8743A1D0E840AA869CAD60
        853C8843A4B510422D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D1D2A6C45A7E59F
        DA9C9AA9D20823482082086432190C8E626D09CAD6190C864321EB0C8643D234
        EBE05B128D7F2CFED4D6592C965CD92D12CB99D4EA753A92C96896CEA753A9D4
        EA753A9D4EA753A9D4EA753A9D4EA753A89B2E67526A26A26A26A26A26A258DB
        2EA91351351351D4BAA2592C964B2592C964B2592C964B2592C964B2592C964B
        259F957F68F0CCF2DAF09E425CBF2F15F957F687F07E5CFF003F11F957F686AE
        9AA9F01E5CF6E08E7F992B9D452AD69AE47E55FDA1AD54D2A8C68C68C68C68C6
        8C68C68C68C68C68C68C68C68C68C68C68C68B2931A31A31A31A31A31A31A31A
        31A31A31A2C42DB48B116231A31A31A31A31A31A31A31A31A31A31A31A2C4588
        C68C6918D18D18D18D18D18D18D18D18D18D32C462DBA13A12A6AA29B31A31A3
        1A31A31A31A31A3F2B74FCA3AE6DC336E19B70CDB866DC336E19B70CDB866DC3
        36E19B70CDB866DC336E19B70CDB866DC1EF6E33A9D4EA753A9D4EA753A9D48F
        0E9F1F994BB6ADC54C34B70AADA697C8FCAFFB4B5CBB665DB32ED9976CCBB665
        DB32ED9976CCBB665DB32ED9976CCBB665DB32ED9976CCBB665DB32D065A0CBB
        68CB4196832D065A0CB4196832D0575D152F0F3C54ABAA75529B6A8753A19279
        F23F2BFED2D7DB364F6CD93DB364F6CD93DB364F6CD93DB364F6CD93DB364F6C
        D93DB364F6CD93DB364F6CD93DB364F6CD93DB364F6CD93DB364F6CD93DB364F
        6CDA17FF0037659ED9B27B66C9ED9B27B66C9EDBB33ED9B27B66C9ED9B27B66C
        9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B6
        6C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B6ECA3DB364
        F6CD917FF3B651EDBB285FFCEDA4DFFF003B62A6FF00F9FB551ED9B27B66C9ED
        9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9F96E9547E56D7DC3D49EE1
        EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A
        83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0
        F70F507B87A93DC3D41EE1EA0F70F527B87A83DC3D41EE1EA0F70F507B87A83D
        C3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70
        F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D
        41EE1EA0F70F507B87A93BCDF477BBF0FD7FA94DFF00F47D437EE1EA4F70F507
        B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83F2CD4EBF
        CA9AAF2F0A84BA7418BC52126CA69BC854555D355D57FEB45553A9F33F2BFED2
        D57978544A85E6FC5A29BA6D8A632AA5BA4AA53E6FE57FDA5AAF2F0A96ADF8B5
        4BA8A3FF0054BFF52B74AAB9FF0095FF00696ABCBC225E3EB6E9537EDBAFFF00
        5F3D1AE77E57FDA5AAF2F05225E3188DBA555565735D54A75572B87CB99F95FF
        00696ABCBC5B5E0D8E84E9A55293A9535BA36E92AA9D4DBF05F95FF697855CCF
        2F0085D44E9DA6D50E86E855535BA572A793F95FF697F228A5C3AB6EAA9D714D
        1CDF2E47E57FDA5C1E5CEF33CBF804DAF029F17E57FDA5E07CFC27972DBF091C
        5F95FF00696ABCB99E7E1D3E437E2FF2BFED2D579707971F9F888FE03CB5FCAF
        FB4B586432190C86432189496B2D6410D90C86432190C86432190C86433C910C
        86432190C86432190C86432190432190C86410C86432190F586432190C864321
        90C86432190C86432190C86432196BD3F2BFED2D52850C86432190C87A742191
        D6190C86432190C86432190C8634E1AD2190C86432190C86432190C86432190C
        54B218D74B486432190C869690C86432190C86432190C86432190C86432190C8
        64321907E57FDA5C524EB56889249249249249249D6116AD6492492492492757
        E4C5AC93C16A21704924924924924924924924EB5797E58FDA7AC10410411A42
        3A1088208208208208208208442211088208208208208208204B582082082082
        082082082082082082082082082082083A1F963F69F0F53A9D74E9AB6893A9D4
        EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9223A9D7593A9
        D4EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753AEBD4FCB1FB4
        F5B692CA4B692DA4B292CA4B292CA4B292CA4B692CA4B692DA4B692DA4B692DA
        4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4
        B292CA4B692DA4B292CA4B292DA4B692DA4B692DA4B692DA4B692DA4B692DA4B
        692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692CA4B292CA4B693F2CFE
        D4D7B4DD3B4DD3B4DD3B5DD6FB4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD
        3B5DD3B5DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4D
        D3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD1FA5DD42F49BA769BA
        769BA769BA769BA769BA769BA769BA769BA3F4BBC8ED774ED374ED374ED374ED
        374ED374ED374ED374ED374ED374ED374ED374ED374ED374ED374ED374ED374E
        D374ED374ED374ED374ED775BED374ED374ED374ED374FCB69D3F95B87CF993E
        0DB12E6273E0FCF8BF2F7ED9E0F3E77978094F44B9D3E07CF8FF002F7ED9D73D
        4CCF519EA33D467A8CF519EA33D467A8CF519EA16E56D64ACC95992B32565D5A
        3256CDEF515D2FB9DF3B9DF3B9DF3B9DF3B9DF3B9DF3B9DF3B9DF3B9DF28AF76
        D75D62AEA9756E4D5BB5A59B74CDBA66DD16EEEB6AADC8BEB2FACBEB2FACBEB2
        FACBEB1555CA4D2E182190C8643208208219044904104104107E5EFDB3CDA299
        E3DDAD514A7C9D9DB244FA4B6E5524BA9C6B4531C9DBA5AF03E7C9FCBFFB6799
        4D373885C3554A8A6AA9D4DA4CEAB8F6B6EFA9B4855175A5D45255537A492505
        E8B8BA04E74944A2514529B9F01E7CAFCBFF00B6796BABA55AB86616EEE64AB5
        8684E7828A1D55529509B85FE92A995391EB4A92235EAC4A07D4B58E0A55CD28
        F01E7CBFCBFF00B67974530B8B7F72789A139D14B746DA49BA5910A545754127
        9E8BA94A54AD3FF610DCEAA9753A6954AE04A1786FCBFF00B6795453C4D49BBB
        962E4ECED5ABA1524C86371C34D31AA50529A553829F243706DD16AE05C89F01
        F97FF6CF268A65F16E56A8A5B753E263A5D251B499E74FF9122552A67829479E
        ABA8DC27D47D046DD13C2972FA73BF2FFED9E4252D285C5B946ED6F06E98374C
        1BA60DD306E98374C3B861DD28F4ED35FF00E638436989153B9EB4AB9FFE745D
        5F449B6DDC5C50AE7D2383CBC4FE5FFDB3C8A69B57167A13EE283B8A0EE283B8
        A0EE283B8A0EE2817A8A1B55A9FF00D1BA9968FCABAA47AA4D9D16886E44A16A
        94B4952BC77E5FFDB3C7453C7BFB9690753A9D4EA75204AA652AA54EC6DD83AA
        1A527FE6A7034E539D6951ADC52B868A6D5E0BCB9BF97FF6CF1514CF1CA4743A
        1D0E8742693A17286E1A6EDAAA70948941368DB91A913295AD4534CF0EDD3E1B
        CF97F97FF6CF0D2AE710B86AA9534D753AEAE1A1D25915BAA69DAA3236C5FF00
        B1E6FAC373C14D2AA7D56A93AB868A6E7FC0FE5EFDB3C094BA69B571574535AC
        1B660DB30ED9876CC3B661DB16CED42DBA1BC7B4C487353A85E75552F54A5AE8
        79BEA85D44A16B4AB9A50BF81FCBDFB6759828A61716EEF34F2EE19B70CDB866
        DC336E19B70CDB82DDA9A5BB5D250AA54D5569E656E13D521285A2702A44F5F3
        74D36AF15E5C8FCBDFB675A29970D09A7C355D6F6F59DBD676F59DBD676F59DB
        D676F58BD3D6CEDAB36B66C6DC24A74A9C2E0A547052B469325AD36E8B7F84FC
        BDFB6785A13D6BA96DD3DC1DC9DC9DC9DC9DC9DC23B893B946DEE641B84DF525
        24DCBD194A2754A5F06DD1E3E09E1FCBDFB6789A4C96B4DCBF72AC7598EB31EE
        18F70C7B8595A31D6CB2B29DAAAA74D34D29BBB4892A72DEB4A9138D111D5285
        AD14BA9F911CA8F0DE5C1F97BF6CF21EE514BCDB666DB336D99B6CCDB666DB32
        EDB79B6C5B9B6D95329F22A7C090946AAA84970436E9A552B553FC04CE9F97BF
        6CF1EF6E5886BAA724104C289724B3676ED553856A3C90A9A5914914908A36A9
        4ACA0B281D14229A292DA4B282DA4B691534AE2EABF81FCBDFB678B73716DD2D
        B6F5871E4253AECEDDC3690BABE1B8DBA38129E6DC8552D174F1BF97BF6CF157
        46ED7560DC305660DC16C6E2787725EC6E3305660ACA7D3D6EA4924DDCF86A36
        E9B9EBE6251CDA20ABC723F2F7ED9E4CB9820885AD5571212BDA492D2509473A
        110BC7FE5EFDB3C899128D5A925AD2A709A8E248A29B56B4AE637FC079EBF97B
        F6CEBF319F319F319F318FF3149F319F319F319F319F319F319F31437F9824F9
        80F980F980F980F980F980A7F312A5FCCC7CCC7CCC2FCCB07CCE7CCE7CCE7CCE
        7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE
        7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE
        7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CD07CCE7CD07E4AF5BEE5F91BFA57DE
        FF00F67FD2BEF7FF00B3FE95F7BFFD9FF4AFBDFF00ECFF00A57DEFFF0067AFFF
        DA0008010202063F0043B22D916C8B645B22D916C8B645B22D916C8B645B7C27
        84F09E13C2784924924924924924924924924924924924924924924924924924
        92492492492492492492493C2784F09E12492493C2784F09E13C278493C27855
        DFF8C8BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BA
        E1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE
        1B88BAE1B88BAE19175C322EB8645D70DC45D70C8BAE19175C322EB86E22EB86
        45D70C8BAE19175C322EB8645D70C8BAE19175C322EB8645D70C8BAE19175C32
        2EB8645D70DC45D70C8BAE19175C322EB8645D70C8BAE19175C322EB8645D70C
        8BAE19175C322EB8645D70C8BAE19175C322EB8645D70C8BAE19175C322EB864
        5D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45
        D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D
        70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DCF84924924924924924
        9249249249249EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB
        47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB4
        7AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47
        AD156FE3322D916C8B645B22DBE1FFDA0008010302063F00FD03A08208208208
        1D16E8B745BA2DD16E8B745BA2DD16E8B745BA2DD16E8B745BA2DD16E8B745BF
        D2C7FA58E8B7FF0073DFF627745BA2DD16E8B745BA2DD16E8B745BA2DD16E8B7
        45BA2DD16E8B745BA2DD16E8B745BA2DD16E8B7FCC8208208208208208208208
        208208208208208208208208208208208208208208208208FAF9FFDA00080101
        01063F00FC0FFCBBEA9DBFF77CE7E0BFE5DF54EDFF00BBE73F05FF002EFAA76F
        FDDF39F82FF977D53B7FEEF9CFC17FCBBEA9DBFF0077CE7E0BFE5DF54EDFFBBE
        73F05FF2EFAA76FF00DDF39F82FF00977D53B7FEEF9CFC17FCBBEA9DBFF77CE7
        E0BFE5DF54EDFF00BBE73F05FF002EFAA76FFDDF39F82FF977D53B7FEEF9CFC1
        7FCBBEA9DBFF0077CE607C9769ED7D2AF92ED3DAFA55F25DA7B5F4ABE4BB4F6B
        E957C9769ED7D2A8FF00F0D27FD476AE957C9B68ED5D2AF936D1DABA55F26DA3
        B574ABE4DB476AE957C9B68ED5D2AF936D1DABA5501DCDB476AE957C9B68ED5D
        2AF936D1DABA55F26DA3B574ABE4DB476AE957C9B68ED5D2AF936D1DABA55F26
        DA3B574ABE4DB476AE957C9B68ED5D2AF936D1DABA55F26DA3B574ABE4DB476A
        E957C9B68ED5D2AF936D1DABA55F26DA3B574ABE4DB476AE957C9B68ED5D2AF9
        36D1DABA55F26DA3B574ABE4DB476AE957C9B68ED7D2AF936D1DAFA55F26DA3B
        5F4ABE4DB476BE957C9B68ED7D2AF93ED1DABA55F27DA3B574ABE4DB476BE957
        C9B68ED7D2AF936D1DAFA55F26DA3B5F4ABE4CF37FB8ED5D2AF936D1DAFA55F2
        6DA3B5F4ABE4DB476BE957C9B68ED7D2AF936D1DAFA55F26DA3B574ABE4DB476
        BE957C9B68ED7D2AF936D1DAFA55F27DA3B574ABE4DB476AE957C9B68ED5D2AF
        936D1DABA55F26DA7B574ABE4DB4F6AE957C9F68ED5D2AF936D1DABA552F7347
        37FB8ED7D2A88EE593FEA7B5F4ABE4BB4F6BE957C9769ED7D2AF92ED3DAFA55F
        25DA7B5F4ABE4BB4F6BE957C9769ED7D2AF92ED3DAFA55EA4763ECD63FB7D9BB
        277F77C766ECFCDC49E2D8E6FBC39EB36446D124C009F13C2A22E9AB064A7064
        7DC64C993264C993264C993264C993264C9934A993264C99328D231122BA6857
        4A65755DE04DC09AB09AB09AB4CA462F2E23D50FB8BBEFC4B9EC57B6651174F0
        EEF09C3887DF31DC88511EF18881BC2BDD74E9D3A714A70AF0A55E14ABC29510
        6385EA87DC5DF7E25CF62E0E0B8460C5BFC654464C4C43EFB8851A779E69C288
        310707D50FB8BBEFC4B9EC57E5B902C8CB1067C5443EF3E0C444288F78C44844
        9314E1384E2B4E9D3A74E9EA57AA57A42E307D50FB8BBEFC4B9EC5709DD8382A
        07DD8A887DE3F962A2149EF18608994A6072417F9A74F527A93D49D39A13A74E
        9D444BBBEA87DC5DF7E25CF63A07DC542D7B88C5443E3F34C30A4A30A214463D
        9327DC88972833A88DCF543EE2EFBF12E7B11C3864169910E3F2CD8A8879F1B1
        3EE189817C19144622209CE1394E5394E53953A9D4E9A59C9299446E7AA1F717
        7DF8973DBC20694431134D8A887C5C4FB862FF003C188F785118711EF0AED6AE
        D6AED6AED6AED6AED6A4B3416577DF14D5A6AD3569AB5EA81CBFC8BBECFF00E4
        B9EDE390CC510642A071310F9313C031B2518311EF5263201E73930FD4FF00B8
        7BEBC4B9EC0931D9E6502B362621E7C18292CC00DEB11EF0A230E51113C5022C
        829930F6ABA15D0AE8574264C997AA1F7177DF8973D812103DCAF0A028192D87
        18DCE18A815251898879C6E694496120032A801C522E90A36ADC26E2AC91961B
        C65A70223DE14461E5138524A32E27D50FB8BBEFC4B9EC216818112C540C96C5
        E18D887DCCF9567C4443CE14C6D8108146C992704E5512624301BD3F2C08D214
        66C2CCA1C99C28C6319F11EA87DC5DF7E25CF618B564C0862B25A0E31B117B87
        765A7762A753EE09224CBEE46D59FD3684A649913C5FD464CDBDA33E07085113
        E0C9B9032D9C47AA1F7177DF8973D8816AC9811282B25B17ACE3621F26090866
        960A366102EBF49973A02D484480E5500231739936F8969DDFC9472EE66DDC9B
        902DC187EA87DC5DF7E25CF6245AB260431592D8BD671A4D912CE32E0C6640D9
        311389D3FE92C5432E697718289C53A7C738578529C6795478C21ED0AF0A42BE
        290AF8A55F14ABE15F15A85AB724C6557EA3A15EA8ABC682B8B62D7EA78110DC
        F543EE2EFBF12E7B142D5930227592D0BD671BC61EF1F9EE4B27B5466C884265
        122400840549EB57AB57AB4F5A925CC7111B260722BD50578ABC55E2AF157AB0
        AF1A55F34957CD253D69CD29CD2A7A7720A597D8A2E3D9B92290EEBA7C204181
        1282140C9CE07197D8BD50FB8BBEFC4B9EC58B564C08C8B25B17ACE3499A70A5
        888B45716D52A318E50818C416CDB8705B111B3219F3AC89D3A74E9D3A74F820
        CCB4414232AD3BB2628106044A17A9B68BDAFE43DF44FBFBCB9EC60B564C0851
        6B42F59C6F185AF6013220DE124306299326DC88F7E2222F6E384E138AD5EE15
        7856AF0AD5E57EA57AA0AF2BCAF2BCAF2BC6A4E6A4E6A4E5441268D09CD2A7A5
        4F4A634A63494C692A16ACCB34A55CACAD5D76B4AF53C0900FE45DF600FF00EC
        B9EC0D595AB2AE1A95CE0573815CE05AB2AE15AB35216ACD92086281B567896A
        718A2770C99A289174BFB7773706E413EE3A994CB2E61BCB36273288C3817E14
        CBD50FB8BBEFC4B9EC0BD6691A15EB348D0AF59A46857ECD2342BF6691A15FB3
        48D0AF8A46857C5216B05216B054AF887B57E9B42D7B311C2570A9043732E651
        0DBBF96E8814E53A74F89307CEA0408870629856AE84C1327142F82CDEC4F527
        15274FC09EA57B814B6B815EF7ABC55E2AF957CD2AF9A55F349578D255E34957
        8D255E34952DB3495EA61CBFC83BE7C4B9EC78B564C0851125A17ACE070284E8
        C0640B3B152339F6E040CEEB28DDFCD4AA50997F9AFF0035352A6A5441F76232
        10C542D4D361BA74E9F787A99F7077CF88F3D80F6A9F827B54FC139A7E09CD3F
        04E691A15E348D0AF1A4684E691A139A468578FF008F7292D1AB427348D085AB
        36AD023D943604B2059D3BCAA4F60C294485669B099315F04C684C98E233862A
        E9F72BA55D2AEABAAE702B9C0AEF026E04C9B81370261526AD3569AB4C01F6A6
        14A614A04112E7F827149D09C57A138AF42BC2B57856BD4D05C7F21EFA1FF92E
        7B02E598E68ABA15C14957056AE057456AE8A4AB82B5705255CACAB9595AB14A
        D58A55CAD444845EB266DCCE26513898162B80E049461C47BC62BF2C7CBB99A7
        0A49F07D4FFB87BEBC4B9EC0D59A0AB87DB0570D0AE1A15C341570D055D34157
        4D0AE9A131A15D3426DD16ACC84288908BD64CD8C81503EEC5923DF888D08836
        7815D2AE9A95D5755D5755D5755D5755D5755D576B576B5764C9157692AE884F
        2ABA295745255D0AE8A4AF534973FC87BE89FF00B973D81785215E1EF2149681
        192215E1484F595785255E09EB4C9D356A6DC65003DA5087BF1B03EE2A069C5C
        47BC6144FB86E40D2A07FCF78E7C8B3607A99F7077CF88F3D8F73494E69578D2
        A4B4692AF9A4A1685A324C4A8871786320540B8C5C47BC6044FB86040FB8A81F
        7109AADC64C993549AA4D526A93549AA4C993264C684D5263051164D098D057A
        99F7077CF88F3D80E69F82E552342BC6AD0AF1A94968D4A5B66196015F3405AC
        3405ACABE2AFFF00C3F157E3EC1F157EA5273926581525B10F6157856AF057C2
        16ACDBB31F7CAA579E18C95D40BE2E23DE3733E29B1F9A70A2258AF53BEE1EFA
        F12E7B159464C8A224381FE9E150C0931F90CCA070A5A7078C3DE3132986457B
        855EE157AA2AF5455EA8ABD5157AA2AF5455EA8ABD5157AA2AF5455EA8ABD515
        7AA2AF54548639A055E927102BD4E218FF0021EFA23FEE5CF603264C993264CB
        228C37088489B7AE433152E2E21A718881956505AD268EF1F52FEE0EF9F11E7B
        FA2C43E14AA419B0623DE311033ACA32EF02BD4BFB83BE7C479EC0BE6A57CD4A
        F9A95F35288E70C3248B58681A16B4D4B5A680B59C0B5A680B5A680B58680B58
        680B58680B5A680B5A680B58680B5A681A16B4D0342D69A0685AD340D0B5A681
        A16B8D0342D71A0685AE340D0B5A681A16B4D0342D69A0685AD340D0B5A681A1
        4BCE139A4D0A22D9A95F352BE6A51E3CAAF9A16B0D014B6CD4AF1A95F352BE6A
        D0AF157D5F578ABC5445AA60AF702BD5057B815FE057B815EE057F8140DA8839
        60BE014D40535015D142BB52715A715A715A715A6180C134BB9EA5FDC1DF3E23
        CF626207B77D669C288C18D18B65F14E5394E5394E5394E9D394E5394E5394E5
        394E5394E5403EE395EA5FDC1DF3E23CF62A207BB072E29B17C2A2378326DE30
        0FC181EA67DC1DF3E23CF60394E5395089AD39A4A729CD69CD2539A4A73494E6
        929CD25484FB22539A4A73494E6929CD2539A4A73494E6929CD2539A4A73494E
        6929CD2539A4A73494E6929CD2539A4A73494E6929CD2539A4A735A73494E692
        9CD2539A4A73494E6929CD2539A4A73494E7DB129CD2539A4A73494E6929CD29
        CA729CA729CA729CA729CA729CA729CA729CA729CA729CA729CAF523EBFDF1E2
        3CF61494E2E21D427DE912F8BCDBEBD48FAFF7C788F3DBCE5A77944BE373EF29
        29C3F523EBFDF1E23CF604A200FB28DE19B7844BEF08638DB364DA31E28B2265
        2D9364168E23D48FAFF7C788F3D806CF1CDB2658E44E5394E5394E5394E5394E
        5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394
        E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E7DC
        9D016BF5DA7CC171F9B240325AB2608D936F8E498C42729CA729CA729CA72BD4
        9193BFFBE3C479EC0BD57C15EABE0AF55F057AAF82BD57C15EABE0AF55F057AA
        F82BD57C15EABE0AF55F057AAF82BD57C15EABE0AF55F057AAF82BD57C140DA7
        9186320B3EF4FCB120E440D91FA4F2865408B50B4C415C4B262498DA2313EA57
        D7FBE7C479EC0D48A56A452B52295A914AD48A56A452B52295A914AD48A56A45
        2B52295A914AD48A56A452B52295A914AD48A56A452B53656A42D48A56A6CAD4
        D95A9B2B53656A6CAD4D95A9B2A1679B160BC41DEF9F0C5968BA80B008139518
        46C5B11E2A02C8694938AF52BEBFDF3E23CF606B2D55A16B2D55A16B2D55A16B
        2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B
        2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B
        2D55A16B2D55A15FB5568527396AAD0B596AAD0B596AAD0B596AAD0B596AAD0A
        1C7B55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB5568
        5ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB5568
        5ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB5568
        5ACB55685ACB55685ACB50CB2685ACB55685ACB55685036AD1E3491934231B76
        B336842D59E72D187B3428FF0076D08CB09342BF6801206D0B596AAD0B596AAD
        0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD
        0BD4DB025163F90F7D5904E6EF2E78603D9FFDBF15C9A172685C9A172685C9A1
        72685C9A172685C9A172685C9A172685C9A172685C9A172685C9A172685C9A17
        2685C9A147F4FB609ECD0B9342E4D09ECD1F15C9A172685C9A172685C9A17268
        5C9A172685C9A172685C9A172685C9A172685C9A172685C9A172685C9A172685
        C9A172685C9A172685C9A172685C9A172685C995A4F8A85BB7641C90F8A81366
        5BB6A1270A20F141F67C57244D20F8AE4D0B9342E4D0B9342E4D0B9342E4D0B9
        342E4D0B9342E4D0BD4CB65ED7F20EF9B46194F78F3C77D839660A45ECDF9002
        2720444605C2B11319CC26448110588566C9BD1E3289F6637D4AFAFF007CF88F
        3DBEC08B4C9F811DF9FA5F32E358278C24B40BE791445F0E32AFEDDA3026E913
        2209899F1DEA57D7FBE7C479EFEB1FA447D8AD59278969C13911B766D71BFF00
        5E751B25E592482FCF1FEA57D7FBE7C479EDFDF96FAB366CC8211F6A26D4A6C9
        90D0B8A2CF162F0C0FCF1BEA57D7FBE7C479EDEF26FF009584A46552002CE4CC
        8036636611080038A04C30B3633D4AFAFF007CF88F3DBDA4C5CB4EF3E358960E
        11B76844300AC9E2C0112819D0B529B2E0289C4442CF8AF52BEBFDF3E23CF6F5
        863728DE200F628131B53C194230B36A5198A36A3C6B4D640951044419B159D4
        B89F52BEBFDF3E23CF607E7BC3F3C7C42CF8F0724AB8D64C41962ACD88C4DE30
        FF0019F1D9B11EA57D7FBE7C479EC00B28C7426CBBC73A81C7C86148DE1F961F
        A95F5FEF9F11E7B0A459F179BFAA4B83EA57D7FBE7C479EC3CFF00D03F2FE81F
        9E07A95F5FEF9F11E7B139BFA367DF9EA57D7FBE7C479EC01229D4EA753A9D49
        46E3264EB329D4EA753A9D4EA753A9D4EA7C09D4EA753A9D4EA753A9D4EA74CB
        F353A9D4E9A54CA753A9D4FBB3A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9
        D4E9B73D49FAFF007CF88F3D82E9D3A74E9D64F6A7F7C24518C7D8A51009D3A7
        4E9D3A74E9D3A7463BAE9D3A74E9D3A74E9D3A74E9D343DA9A3EC2A01674E9D3
        A7453EE3A74E9D3A74E9D3A74E9D3A74E9D3A74E9D44C9ED5EA57D7FBE7C479E
        C264C9936E0932AE04646907B13264C993264C993264C9B75B7193264C993264
        C993264C8C8994A37193264DBAC9B7593264C993264C993264C993264C993212
        457A95F7077CF88F3D8A852B2A6E14DFD7732F52FEE0EF9F11E7B0993265C384
        C993264C993264C993264C993264C993264C993264DBAC9B77F24C993264C993
        264C993264C993264C993264C993264CBF352265EA5FDC1DF3E23CF603264C99
        3264C993264DB8C993264C993264C993264C993264C993264C993264C993264C
        993264C993264C993264C993264C993264C993264C993264C9932F52FEE0EF9F
        11E7B026A54D4A9A952421398A9A95352A6A54D4A9A95352A6A54D4A9BD91534
        72454D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A5
        4D4A9A95352A6A54D198454B0A54D4A9A95352A6A54D4A9A95352A6A530232C5
        4D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A54D4A
        9A95352A6A54D4A92109CC54D4A9A95352A6A57A9B64BD9FE43DF40FBBBCB9EC
        2CD8C817DE79E618C928526F3FCF0BD50FB8BBEFC4B9EC1CD8ECD977848B2ACF
        39DFF9B2E1FAA1F7177DF8973D819BDD2E2B4C1024C233489F813F027E04FC0A
        4B5EE91486A0B8B66D40B93250B59559D0B59559D0B59559D0B59559D0B59559
        D0B59559D0B59559D0B59559D0A4B64FBACE85FAED46D3969332BD5043F5C685
        188C83FC414232FB95FA82BD5057AA0AF4A732BFEF82BD52BD52BD52BD52BD52
        BD52BD5290C72040131339DE39B11EA87DC5DF7E25CF63A25B0E4BE58FF8994B
        29329267C48B644BC9078533CA11B508C240142D07C88931244408224CF294FB
        B12F89897C9BC73627D50FB8BBEFC4B9EC6C29524984496E146D196356652A95
        B2E1C4DD0F09CE45087B00950B328394A811ED2A23F5648CCA2536EC48902629
        8A651DC74E9D44B0619D3EF0CD9315EA87DC5DF7E25CF6320A184F084E57FA45
        D1F9E048D93078B4E619D7143597421213292AD03C9962B3B44A8061819A7500
        D3EE90A01664CB2414260E5406FBF543EE2EFBF12E7B1919CE19B0185E861443
        AC877042532421957FA8DF8284200480850238D6728500200B99D407BF0009CA
        03766DC86E800C62A14EF0E0C67AA1F7177DF8973D8B89F761C05E2D986559E7
        C4F1EDCF25913A301FAB215C60D3ACC5C059CB60E7321C095D403E044DE356F0
        97DD8DF543EE2EFBF12E7B159861C4CA580CE89B4E5F10232878665C72C20409
        A2A13D998A249CC0297DA724513919470227DD811994548A40A2D95718B4C378
        7B31DEA87DC5DF7E25CF62A187187E96128902BB58576B0AED615DAC2BB58574
        5215D1484CEC22142D8005A9220C501C960A22D7B02043990852ACD930333AFD
        3BB184AB32804C997FA44CB363E18FF543EE2EFBF12E7B139CB9C3225C910245
        CAA172A85CAA172A85CAA172A853D0A001A159803688C8254D18CE8D978314E8
        162A01B2E0410130DD0A18100A01863736F2F543EE2EFBF12E7B1119CB61F12C
        DE37889826C39013056E485A9BD881E517CDED46072A82B2A1397510F9167C9B
        BC270225F07FD45CEF3CD971BEA87DC5DF7E25CF61C4B09F2E1BD2AF702BDC0A
        F702BDC0AF702BC2A57B8165E042C83002599120CA18A7847DCA44E892E5673B
        990E5502EA27DD8119B078C5E6FE83EA87DC5DF7E25CF61429425801844960B8
        D6A8C8371AA4D526A935488B424B53C2A42C9110FED0ADE41201EF405B120941
        CA14210166580A944EE44991669B02244814B28CB888961FD0BD50FB8BBEFC4B
        9EC186550A4E18E333C2298D2531A4A63494C69298D2531A4A89B318C8012540
        D9842510251FD0EE25752084180FF0EA561221B900C1F024F794042033EE4436
        4522860001A7391406F981C4FAA1F7177DF8973D819B2A8CE70F8B61C5E2AFD4
        AF1A95E352BC6A578D4AF1A95E352E2DAB7C522506447F5F1ED1900004E871CF
        1AD3C7F2500FBB00FC1819CA8527022C540C8774012C54279CFF0043F543EE2E
        FBF12E7B038C42886C8A4C13C572CAF034ABC2B57856AF0AD5E15ABC2B57856A
        22D0AD5E15AE35A2090D059F7419E618312FC18113B92A816CBB91378EFD9164
        C2F543EE2EFBF12E7B0A2242A0643BA6D1F70CEAE1A55CAD5CAD5CAD5CAD5CAD
        5DFF00895C30F6AB869448B3002494CEA2819B70C583295E6C0896189E338174
        6FFF00CD4B83EA87DC5DF7E25CF61CAA05B2EE4788602402069574D6AE9A0E95
        74D074ABA683A55D341D2AE9F7C5478861EC2AEDAAF4A8104672182003090291
        84FBB09860669D4BBB050C0CC2F1500A224389CF9167CBBEBD50FB8BBEFC4B9E
        C4DF1908C8AF857C2BE15F0AF857C289B608982BE1002D024B01B901BBC5133E
        0003D880CB812E040280A7025A77FC8BF2DCF543EE2EFBF12E7B11C5B378CF90
        6E443E04AA27DC3778D6AF160660B3E032FF0035FE6A0044A96CCA55DA95C575
        44D90322BA15D0AE857429043D985946FF00C9B9EA87DC5DF7E25CF61C4CA587
        B51265267DD90473ACF914A20A27DDBBC7224174652A25470A5A571AD0979230
        3364C6C92FB164390EFED0BD50FB8BBEFC4B9EC38F1601808891356135615DAC
        23256137BA210FD3ED64D584D585FAA41398CA800C0420B365C2072A89BB6702
        0A18DE159346FF00F543EE2EFBF12E7B1500C1CA787B13A94C7DB8107C3007BC
        A80DE1F96E326DFB22C8BD50FB8BBEFC4B9EC4C034E54376054B28CBB99F0C00
        224ACA673811A3199E61839F7F7AA1F7177DF8973D81E5CDB3A85E5CDB3A85E5
        CDB3A85E5CDB3A85E5DF6FFCDF50BCB9B6750BCB9B6750BCB9B6750BCB9B6750
        BCB9B6750BCB9B6750A4FE3B0193FDDF52BCBBB5F52BCBDB5F52BCBBB5F52BCB
        BB5F52BCBBB5F52BCBBB5F52BCBBB5F52A3FFE72266FF9CEA1796F6CEA1796F6
        CEA1796F6CEA1796E4FF00ACEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA17
        96F6CEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA179
        6F6CEA1796E5CBFEF3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A
        85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A8
        5E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85
        E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E
        5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5
        ADB3A85FCFFBC7FB5FD9FF007FDF7DEBDB7FB3C6E3713FBBDBF9DE738B1808C2
        2F0FC17FCBBEA9DBFF0077CE7E0BFE5DF54EDFFBBE73F05FF2EFAA76FF00DDF3
        9F82FF00977D53B7FEEF9CFC17FCBBEA9DBFF77CE607FFD9}
      Frame.Typ = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 151.181200000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 7.559060000000000000
          Width = 218.672807140000000000
          Height = 39.595076190000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."empresa"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 413.228613340000000000
          Top = 50.753688570000000000
          Width = 42.654695710000000000
          Height = 28.796419050000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Fone: ')
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 452.283756670000000000
          Top = 51.293621430000000000
          Width = 201.394955710000000000
          Height = 17.637806670000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."telefone"]')
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 413.948523810000000000
          Top = 31.496083330000000000
          Width = 205.174485710000000000
          Height = 17.997761900000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Cnpj: [frxDBDataset1."cnpj"]')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401980000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date]')
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Width = 154.960730000000000000
          Height = 105.826840000000000000
          DataField = 'logotipo'
          DataSet = rel_DS_empresa
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 672.756340000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#193'GINA : [Page]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Width = 684.094930000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."endereco"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 408.189240000000000000
        Width = 718.110700000000000000
        DataSet = rel_DS_Mov
        DataSetName = 'DSMov'
        RowCount = 0
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 3.779530000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Movimento:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Funcion'#225'rio:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data:')
          ParentFont = False
        end
        object DSMovtipo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 26.456710000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'tipo'
          DataSet = rel_DS_Mov
          DataSetName = 'DSMov'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSMov."tipo"]')
        end
        object DSMovmovimento: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 154.960730000000000000
          Top = 26.456710000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'movimento'
          DataSet = rel_DS_Mov
          DataSetName = 'DSMov'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSMov."movimento"]')
        end
        object DSMovvalor: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 309.921460000000000000
          Top = 26.456710000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'valor'
          DataSet = rel_DS_Mov
          DataSetName = 'DSMov'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSMov."valor"]')
        end
        object DSMovfuncionario: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 26.456710000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'funcionario'
          DataSet = rel_DS_Mov
          DataSetName = 'DSMov'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSMov."funcionario"]')
        end
        object DSMovdata: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = 26.456710000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'data'
          DataSet = rel_DS_Mov
          DataSetName = 'DSMov'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSMov."data"]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 113.385900000000000000
        Top = 272.126160000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 15.118120000000000000
          Width = 359.055350000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RELAT'#211'RIO DE MOVIMENTA'#199#213'ES')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 49.133890000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Inicial:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 49.133890000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Final:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 464.882190000000000000
          Top = 49.133890000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dataFinal]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 287.244280000000000000
          Top = 49.133890000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dataInicial]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 132.283550000000000000
        Top = 480.000310000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 71.811070000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de Entradas:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 94.488250000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de Sa'#237'das:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 71.811070000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Saldo Total')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 90.708720000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'R$ [<totalEntradas> - <totalSaidas>]')
          ParentFont = False
        end
        object DSMovimentacoesvalor1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 71.811070000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSetName = 'DSMovEntradas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[totalEntradas]')
        end
        object DSMovimentacoesvalor2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 94.488250000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSetName = 'DSMovSaidas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[totalSaidas]')
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 230.551330000000000000
        Width = 718.110700000000000000
        DataSet = rel_DS_empresa
        DataSetName = 'frxDBDataset1'
        RowCount = 0
      end
    end
  end
  object rel_DS_Mov: TfrxDBDataset
    UserName = 'DSMov'
    CloseDataSource = False
    DataSet = query_mov
    BCDToCurrency = False
    Left = 408
    Top = 1208
  end
  object rel_produtos: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43650.683186342600000000
    ReportOptions.LastChange = 44012.035964085650000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 792
    Top = 712
    Datasets = <
      item
        DataSet = rel_DS_Prod
        DataSetName = 'DS_Produtos'
      end
      item
        DataSet = rel_DS_empresa
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      BackPicture.Data = {
        0A544A504547496D616765C9890000FFD8FFE106BA4578696600004D4D002A00
        0000080007011200030000000100010000011A00050000000100000062011B00
        05000000010000006A0128000300000001000200000131000200000022000000
        720132000200000014000000948769000400000001000000A8000000D4000AFC
        8000002710000AFC800000271041646F62652050686F746F73686F7020434320
        32303137202857696E646F77732900323031393A30333A31322031363A31373A
        3232000003A001000300000001FFFF0000A00200040000000100000253A00300
        04000000010000034A0000000000000006010300030000000100060000011A00
        050000000100000122011B0005000000010000012A0128000300000001000200
        0002010004000000010000013202020004000000010000058000000000000000
        48000000010000004800000001FFD8FFED000C41646F62655F434D0002FFEE00
        0E41646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B
        11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E
        0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800A0007103012200
        021101031101FFDD00040008FFC4013F00000105010101010101000000000000
        00030001020405060708090A0B01000105010101010101000000000000000100
        02030405060708090A0B1000010401030204020507060805030C330100021103
        04211231054151611322718132061491A1B14223241552C16233347282D14307
        259253F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3
        D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
        37475767778797A7B7C7D7E7F711000202010204040304050607070605350100
        021103213112044151617122130532819114A1B14223C152D1F0332462E17282
        92435315637334F1250616A2B283072635C2D2449354A317644555367465E2F2
        B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6
        E6F62737475767778797A7B7C7FFDA000C03010002110311003F00F414924948
        85249249294924924A5249249294924924A5249249294A8F52E6AFED7FDF55E5
        47A97357F6BFEFA90534D24924E43FFFD0F4AFB11FF49FF47FF324BEC47F7C7D
        DFED56924788A1ABF623FE907DDFED4DF623FE907DDFED56924ACA9ABF623FE9
        07DDFED4BEC47FD20FBBFDAAD249595357EC47FD20FBBFDA97D88FFA4FFA3FED
        569246CA9ABF623FE907DDFED4FF00623FE907DDFED565242CA9ADF623FBE3EE
        FF00CC92FB11FDFF00C3FF00325653A5654D5FB11FF49FF47FF32599D669F49D
        47BB76E0FED1C6C5BAB1FAFF00D2C7F83FFF0045A3126D45CA492494887FFFD1
        F530653A82903292174C9D2492B249248A1492499252E92694A5252E92694A52
        53258FD7FE963FC1FF00F7C5AFB96475F3EEC7F83FFEF88C770A72924925221F
        FFD2F538F24BE497C928F2450BA49BE49D05293274924AC924922858CA5253A6
        D5252B54B54B5F14B5F1494AD564F5F9DD8F3E0FFF00BE2D6D7C564F5EFA58FF
        0007FF00DF118EEA72924925221FFFD3F52DC96E5182941450CB725B9460A509
        2996E4B728A492996E4A5452494CA5295149252E9264A1252EB27AF7D2C7F83F
        FEF8B5564F5DFA58FF0007FF00DF118EEA73124925221FFFD4F5191E0948F04C
        92285E4782523C1324929791E0948F04C924A5E4782523C1324929791E0948F0
        4C924A5F4F04A4782649252F23C164F5EFA58FF07FFDF16AACAEBBF4B1FE0FFF
        00BE231DD4E5A4924A443FFFD5F50493A48A16493A49296493A49296493A4929
        6493A49296493A49296595D77E963FC1FF00F7C5ACB27AF7D2C7F83FFEF88C77
        539692492910FF00FFD6F53D12D132708A15A7825ED48A8A4A652D4B44C02749
        4AD12D3C1327494A81E09E0264E82950128092492550163F5FFA58FF0007FF00
        DF16C2C7EBFF004B1FE0FF00FBE231DC20B9492492950FFFD7F5209D249142C9
        25AF9A7494A4C927494A4E9248294924924A5249249254B1FAFF00D2C7F83FFE
        F8B6163F5FFA58FF0007FF00DF118EE145CA492494AB5FFFD0F5320A6DA567EF
        B3F7DDF794B7D9FBEEFBCA7521D18849676FB3F7DDF794B7D9FBEEFBCA5C2A74
        613ACDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF77DE5
        2E153A492CDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF
        77DE52E153A4B1FAFF00D2C7F83FFEF88DBECFDF77DE551EA6E71356E24E8EE4
        CFEEA206AA69249249E87FFFD9FFED0F1A50686F746F73686F7020332E300038
        42494D0425000000000010000000000000000000000000000000003842494D04
        3A000000000125000000100000000100000000000B7072696E744F7574707574
        000000050000000050737453626F6F6C0100000000496E7465656E756D000000
        00496E746500000000436C726D0000000F7072696E745369787465656E426974
        626F6F6C000000000B7072696E7465724E616D65544558540000001700480050
        0020004400650073006B006A0065007400200033003500310030002000730065
        007200690065007300000000000F7072696E7450726F6F6653657475704F626A
        63000000160043006F006E00660069006700750072006100E700E3006F002000
        640065002000500072006F0076006100000000000A70726F6F66536574757000
        00000100000000426C746E656E756D0000000C6275696C74696E50726F6F6600
        00000970726F6F66434D594B003842494D043B00000000022D00000010000000
        010000000000127072696E744F75747075744F7074696F6E7300000017000000
        004370746E626F6F6C0000000000436C6272626F6F6C00000000005267734D62
        6F6F6C000000000043726E43626F6F6C0000000000436E7443626F6F6C000000
        00004C626C73626F6F6C00000000004E677476626F6F6C0000000000456D6C44
        626F6F6C0000000000496E7472626F6F6C000000000042636B674F626A630000
        000100000000000052474243000000030000000052642020646F7562406FE000
        000000000000000047726E20646F7562406FE0000000000000000000426C2020
        646F7562406FE000000000000000000042726454556E744623526C7400000000
        0000000000000000426C6420556E744623526C74000000000000000000000000
        52736C74556E74462350786C40520000000000000000000A766563746F724461
        7461626F6F6C010000000050675073656E756D00000000506750730000000050
        675043000000004C656674556E744623526C7400000000000000000000000054
        6F7020556E744623526C7400000000000000000000000053636C20556E744623
        50726340590000000000000000001063726F705768656E5072696E74696E6762
        6F6F6C000000000E63726F7052656374426F74746F6D6C6F6E67000000000000
        000C63726F70526563744C6566746C6F6E67000000000000000D63726F705265
        637452696768746C6F6E67000000000000000B63726F7052656374546F706C6F
        6E6700000000003842494D03ED00000000001000480000000100020048000000
        0100023842494D042600000000000E000000000000000000003F800000384249
        4D040D0000000000040000005A3842494D04190000000000040000001E384249
        4D03F3000000000009000000000000000001003842494D271000000000000A00
        0100000000000000023842494D03F5000000000048002F66660001006C666600
        06000000000001002F6666000100A1999A000600000000000100320000000100
        5A00000006000000000001003500000001002D00000006000000000001384249
        4D03F80000000000700000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800003842494D040000
        000000000200023842494D04020000000000060000000000003842494D043000
        0000000003010101003842494D042D0000000000060001000000033842494D04
        08000000000010000000010000024000000240000000003842494D041E000000
        000004000000003842494D041A00000000035900000006000000000000000000
        00034A000002530000001200460055004E0044004F002000520045004C004100
        54004F00520049004F0020004100340000000100000000000000000000000000
        000000000000010000000000000000000002530000034A000000000000000000
        0000000000000001000000000000000000000000000000000000001000000001
        0000000000006E756C6C0000000200000006626F756E64734F626A6300000001
        000000000000526374310000000400000000546F70206C6F6E67000000000000
        00004C6566746C6F6E67000000000000000042746F6D6C6F6E670000034A0000
        0000526768746C6F6E670000025300000006736C69636573566C4C7300000001
        4F626A6300000001000000000005736C6963650000001200000007736C696365
        49446C6F6E67000000000000000767726F757049446C6F6E6700000000000000
        066F726967696E656E756D0000000C45536C6963654F726967696E0000000D61
        75746F47656E6572617465640000000054797065656E756D0000000A45536C69
        63655479706500000000496D672000000006626F756E64734F626A6300000001
        000000000000526374310000000400000000546F70206C6F6E67000000000000
        00004C6566746C6F6E67000000000000000042746F6D6C6F6E670000034A0000
        0000526768746C6F6E67000002530000000375726C5445585400000001000000
        0000006E756C6C54455854000000010000000000004D73676554455854000000
        01000000000006616C74546167544558540000000100000000000E63656C6C54
        657874497348544D4C626F6F6C010000000863656C6C54657874544558540000
        0001000000000009686F727A416C69676E656E756D0000000F45536C69636548
        6F727A416C69676E0000000764656661756C740000000976657274416C69676E
        656E756D0000000F45536C69636556657274416C69676E000000076465666175
        6C740000000B6267436F6C6F7254797065656E756D0000001145536C69636542
        47436F6C6F7254797065000000004E6F6E6500000009746F704F75747365746C
        6F6E67000000000000000A6C6566744F75747365746C6F6E6700000000000000
        0C626F74746F6D4F75747365746C6F6E67000000000000000B72696768744F75
        747365746C6F6E6700000000003842494D042800000000000C000000023FF000
        00000000003842494D041100000000000101003842494D041400000000000400
        0000083842494D040C00000000059C0000000100000071000000A00000015400
        00D4800000058000180001FFD8FFED000C41646F62655F434D0002FFEE000E41
        646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B1115
        0F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14
        140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800A00071030122000211
        01031101FFDD00040008FFC4013F000001050101010101010000000000000003
        0001020405060708090A0B010001050101010101010000000000000001000203
        0405060708090A0B1000010401030204020507060805030C3301000211030421
        1231054151611322718132061491A1B14223241552C16233347282D143072592
        53F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3D375
        E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F63747
        5767778797A7B7C7D7E7F7110002020102040403040506070706053501000211
        03213112044151617122130532819114A1B14223C152D1F0332462E172829243
        5315637334F1250616A2B283072635C2D2449354A317644555367465E2F2B384
        C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
        2737475767778797A7B7C7FFDA000C03010002110311003F00F4149249488524
        9249294924924A5249249294924924A5249249294A8F52E6AFED7FDF55E547A9
        7357F6BFEFA90534D24924E43FFFD0F4AFB11FF49FF47FF324BEC47F7C7DDFED
        56924788A1ABF623FE907DDFED4DF623FE907DDFED56924ACA9ABF623FE907DD
        FED4BEC47FD20FBBFDAAD249595357EC47FD20FBBFDA97D88FFA4FFA3FED5692
        46CA9ABF623FE907DDFED4FF00623FE907DDFED565242CA9ADF623FBE3EEFF00
        CC92FB11FDFF00C3FF00325653A5654D5FB11FF49FF47FF32599D669F49D47BB
        76E0FED1C6C5BAB1FAFF00D2C7F83FFF0045A3126D45CA492494887FFFD1F530
        653A82903292174C9D2492B249248A1492499252E92694A5252E92694A525325
        8FD7FE963FC1FF00F7C5AFB96475F3EEC7F83FFEF88C770A72924925221FFFD2
        F538F24BE497C928F2450BA49BE49D05293274924AC924922858CA5253A6D525
        2B54B54B5F14B5F1494AD564F5F9DD8F3E0FFF00BE2D6D7C564F5EFA58FF0007
        FF00DF118EEA72924925221FFFD3F52DC96E5182941450CB725B9460A5092996
        E4B728A492996E4A5452494CA5295149252E9264A1252EB27AF7D2C7F83FFEF8
        B5564F5DFA58FF0007FF00DF118EEA73124925221FFFD4F5191E0948F04C9228
        5E4782523C1324929791E0948F04C924A5E4782523C1324929791E0948F04C92
        4A5F4F04A4782649252F23C164F5EFA58FF07FFDF16AACAEBBF4B1FE0FFF00BE
        231DD4E5A4924A443FFFD5F50493A48A16493A49296493A49296493A49296493
        A49296493A49296595D77E963FC1FF00F7C5ACB27AF7D2C7F83FFEF88C775396
        92492910FF00FFD6F53D12D132708A15A7825ED48A8A4A652D4B44C027494AD1
        2D3C1327494A81E09E0264E82950128092492550163F5FFA58FF0007FF00DF16
        C2C7EBFF004B1FE0FF00FBE231DC20B9492492950FFFD7F5209D249142C925AF
        9A7494A4C927494A4E9248294924924A5249249254B1FAFF00D2C7F83FFEF8B6
        163F5FFA58FF0007FF00DF118EE145CA492494AB5FFFD0F5320A6DA567EFB3F7
        DDF794B7D9FBEEFBCA7521D18849676FB3F7DDF794B7D9FBEEFBCA5C2A74613A
        CDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF77DE52E15
        3A492CDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF77DE
        52E153A4B1FAFF00D2C7F83FFEF88DBECFDF77DE551EA6E71356E24E8EE4CFEE
        A206AA69249249E87FFFD93842494D042100000000005D00000001010000000F
        00410064006F00620065002000500068006F0074006F00730068006F00700000
        001700410064006F00620065002000500068006F0074006F00730068006F0070
        0020004300430020003200300031003700000001003842494D04060000000000
        070007010100010100FFE1120D687474703A2F2F6E732E61646F62652E636F6D
        2F7861702F312E302F003C3F787061636B657420626567696E3D22EFBBBF2220
        69643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E20
        3C783A786D706D65746120786D6C6E733A783D2261646F62653A6E733A6D6574
        612F2220783A786D70746B3D2241646F626520584D5020436F726520352E362D
        633133382037392E3135393832342C20323031362F30392F31342D30313A3039
        3A30312020202020202020223E203C7264663A52444620786D6C6E733A726466
        3D22687474703A2F2F7777772E77332E6F72672F313939392F30322F32322D72
        64662D73796E7461782D6E7323223E203C7264663A4465736372697074696F6E
        207264663A61626F75743D222220786D6C6E733A786D703D22687474703A2F2F
        6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C6E733A64633D
        22687474703A2F2F7075726C2E6F72672F64632F656C656D656E74732F312E31
        2F2220786D6C6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E
        636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A73744576743D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F
        5265736F757263654576656E74232220786D6C6E733A73745265663D22687474
        703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F52
        65736F75726365526566232220786D6C6E733A70686F746F73686F703D226874
        74703A2F2F6E732E61646F62652E636F6D2F70686F746F73686F702F312E302F
        2220786D703A43726561746F72546F6F6C3D2241646F62652050686F746F7368
        6F702043432032303137202857696E646F7773292220786D703A437265617465
        446174653D22323031392D30332D31325431363A31303A35392D30333A303022
        20786D703A4D65746164617461446174653D22323031392D30332D3132543136
        3A31373A32322D30333A30302220786D703A4D6F64696679446174653D223230
        31392D30332D31325431363A31373A32322D30333A3030222064633A666F726D
        61743D22696D6167652F6A7065672220786D704D4D3A496E7374616E63654944
        3D22786D702E6969643A62363966383932382D393063382D383934352D613530
        312D3862613432396534356232312220786D704D4D3A446F63756D656E744944
        3D2261646F62653A646F6369643A70686F746F73686F703A3665626435353434
        2D343466622D313165392D613635342D6335636565343334373364662220786D
        704D4D3A4F726967696E616C446F63756D656E7449443D22786D702E6469643A
        34316464636231302D613935342D373234322D616633642D6635663335396264
        66626233222070686F746F73686F703A436F6C6F724D6F64653D2233223E203C
        786D704D4D3A486973746F72793E203C7264663A5365713E203C7264663A6C69
        2073744576743A616374696F6E3D2263726561746564222073744576743A696E
        7374616E636549443D22786D702E6969643A34316464636231302D613935342D
        373234322D616633642D663566333539626466626233222073744576743A7768
        656E3D22323031392D30332D31325431363A31303A35392D30333A3030222073
        744576743A736F6674776172654167656E743D2241646F62652050686F746F73
        686F702043432032303137202857696E646F777329222F3E203C7264663A6C69
        2073744576743A616374696F6E3D227361766564222073744576743A696E7374
        616E636549443D22786D702E6969643A66313461373734302D396136622D3434
        34372D613462352D303737383032663837336362222073744576743A7768656E
        3D22323031392D30332D31325431363A31373A30392D30333A30302220737445
        76743A736F6674776172654167656E743D2241646F62652050686F746F73686F
        702043432032303137202857696E646F777329222073744576743A6368616E67
        65643D222F222F3E203C7264663A6C692073744576743A616374696F6E3D2273
        61766564222073744576743A696E7374616E636549443D22786D702E6969643A
        30393063613532612D396433612D626534392D623635632D6235363861333161
        36326530222073744576743A7768656E3D22323031392D30332D31325431363A
        31373A32322D30333A3030222073744576743A736F6674776172654167656E74
        3D2241646F62652050686F746F73686F702043432032303137202857696E646F
        777329222073744576743A6368616E6765643D222F222F3E203C7264663A6C69
        2073744576743A616374696F6E3D22636F6E766572746564222073744576743A
        706172616D65746572733D2266726F6D206170706C69636174696F6E2F766E64
        2E61646F62652E70686F746F73686F7020746F20696D6167652F6A706567222F
        3E203C7264663A6C692073744576743A616374696F6E3D226465726976656422
        2073744576743A706172616D65746572733D22636F6E7665727465642066726F
        6D206170706C69636174696F6E2F766E642E61646F62652E70686F746F73686F
        7020746F20696D6167652F6A706567222F3E203C7264663A6C69207374457674
        3A616374696F6E3D227361766564222073744576743A696E7374616E63654944
        3D22786D702E6969643A62363966383932382D393063382D383934352D613530
        312D386261343239653435623231222073744576743A7768656E3D2232303139
        2D30332D31325431363A31373A32322D30333A3030222073744576743A736F66
        74776172654167656E743D2241646F62652050686F746F73686F702043432032
        303137202857696E646F777329222073744576743A6368616E6765643D222F22
        2F3E203C2F7264663A5365713E203C2F786D704D4D3A486973746F72793E203C
        786D704D4D3A4465726976656446726F6D2073745265663A696E7374616E6365
        49443D22786D702E6969643A30393063613532612D396433612D626534392D62
        3635632D623536386133316136326530222073745265663A646F63756D656E74
        49443D22786D702E6469643A34316464636231302D613935342D373234322D61
        6633642D663566333539626466626233222073745265663A6F726967696E616C
        446F63756D656E7449443D22786D702E6469643A34316464636231302D613935
        342D373234322D616633642D663566333539626466626233222F3E203C70686F
        746F73686F703A446F63756D656E74416E636573746F72733E203C7264663A42
        61673E203C7264663A6C693E61646F62653A646F6369643A70686F746F73686F
        703A63383837363862342D336162612D313165392D396266372D626532623861
        3737326435633C2F7264663A6C693E203C2F7264663A4261673E203C2F70686F
        746F73686F703A446F63756D656E74416E636573746F72733E203C2F7264663A
        4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A786D706D
        6574613E20202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020203C3F787061636B657420656E643D2277223F3EFFEE002141646F62
        650064400000000103001003020306000000000000000000000000FFDB008400
        0101010101010101010102010101020201010101020202020202020203020303
        0303020303040404040403050505050505070707070708080808080808080808
        0101010102020204030304070504050708080808080808080808080808080808
        0808080808080808080808080808080808080808080808080808080808080808
        08FFC2001108034A025303011100021101031101FFC400CE0001010100020301
        010000000000000000000102030904070A060501010101010101010100000000
        0000000000010203060405071000020103020405040301000301000000000111
        0212131003203021144031041517330607375060323641220523110001020106
        070D06050204050500000001003111214191A1023220305161D133A41040B112
        4203D3E30405B536077181E135757660C122B4065013F0F16214A2247495A552
        921585161200010403010002030100000000000000006001310271A1B1322080
        40A05190FFDA000C03010102110311000000FB0AF59F98000000000000000000
        000000000000000000000000000000000075D9FAB8FCBEC07677F8FB00000000
        000000000000000000000000000000000000000000003AECFD5C7E5F603B3BFC
        7D80000000000000000000000000000000000000000000000000001D767EAE3F
        2FB01D9DFE3EC000000000000000000000000000000000000000000000000000
        0EBB3F571F97D80ECEFF001F6000000000000000000000000000000000000000
        000000000000075D9FAB8FCBEC07677F8FB00000000000000000000000000000
        000000000000000000000003AECFD5C7E5F603B3BFC7D8000000000000000000
        0000000000000000000000000000000001D767EAE3F2FB01D9DFE3EC00000000
        00000000000000000000000000000000000000000000EBB3F571F97D80ECEFF1
        F6000000000000000000000000000000000000000000000000000075D9FAB8FC
        BEC07677F8FB0000000000000000000000000000000000000000000000000000
        3AECFD5C7E5F603B3BFC7D800000000000000000000000000000000000000000
        00000000001D767EAE3F2FB01D9DFE3EC0000000000000000000000000000000
        000000000000000000000EBB3F571F97D80ECEFF001F60000000000000000000
        00000000000000000000000000000000075D9FAB8FCBEC077CDE1FEE0056B8B5
        9C6B000022D40000000000000059B025C0B340A012596680008014800882A81C
        F9E8C801480E957D97C1F82EF903E87FF9E7E90002B8379C6B24022D0800E2A0
        00A002000AA2255000214042B9337535400002805894956585A359BCB8D80001
        D117BCFCBF5DFD1903E87FF9E7E90000B75E36F9E759245A1000335C5B850000
        00000000002428896DB973635B9A00012BC8C6B774240A485B20881699A001D1
        17BCFCBF5DFD1903E87FF9E7E9000019B78378C59AB90000066B86CBAA000000
        0000001001168172E6C6B535400012C110000004DE7A7918D950259D11FBBFCC
        F5DFD1903E87FF009E7E90000545278FD312E400000335C5B000000000000099
        5A014032A73635B9A00019B9DCD6A68500080069778D0523A22F79F97EBBFA32
        07D0FF00F3CFD2000504095E3F4C4B9000000CD70EA5B4000000000224975409
        2555002C7373D6A6A800039F3A5A1900042821A5B9A3A22F79F97EBBFA3207D0
        FF00F3CFD200282001357C7DF39720000019AE2D8000000001248BAA001332DA
        A005CB9B3ADE74000066E753433723534258204D4BE4E7AB17A22F79F97EBBFA
        3207D0FF00F3CFD20141000026AF8DBC2E4800000C5716A5B400000022497540
        000490B6802C7373D6A6A80010E696CD0001424034B65E88BDDFE5FAEFE8C81F
        43FF00CF3F48290000029136F1B585840000062B8F60000004492EA800000224
        97540172E6C6B7340000724D000022550217A27F71F9DEBBFA3207D0FF00F3CF
        D252000000056F3BC78FAE79AA800000C5716A5B400842C9175400000001332D
        AA02C73F3D59AA000012C4B4C5CD00D4D429D157B7F83D79F4640FA1EFE7BFA5
        600000000559ACEA78DBE52AA00000315C7B002E521A2800000000020280B973
        635B9A0000B3C9C749282001681D11FB9FCCF5DFD1903E82FC27D65F379F4E7C
        6900000003537C7D39F8FAC4AA100000C570EB2CDD154B2E5AA0000000000224
        97540B1CDCF5A9AA003373C99DF3E365400001D117BCFCBF5DFD1903E813C3FD
        229FD3E3DF9F968000000568B8D63C7E9CC02000018AC994AB29A00000000000
        009996D50B973E35A9A000CDCF2675CF8E8940000E88BDE7E5FAEFE8C81F409E
        1FE9029FD4E3DF9B9E900000002B78DE3C7D7350202E2C08D2E2B29351680000
        0000000002495542C7373D6A6A8337356272677CF8E810001D117BCFCBF5DFD1
        903E813C3FD200B1FD4E5DB9B96C00000059BA7174C706F902887159A548519B
        26C0000000000000001124BAA2E5CF8D6A6B373A9A19B91CB9DF363A20003A22
        F79F97EBBFA3207D02787FA40029FD4E1DF9B1A40000000D37C3BE7C3BE6004D
        4AE3B988B0456A8000084405D40014202824821692C72E75652669608BCB9D72
        677598BB97933BE88FDDFE5FAEBE8C81F409E1FE9000165FEA71EBCDCF600000
        02DD55E1DF3E1BCCB5512B16096042B1B000211C7ACF8FBE79BA2405812AA422
        824B51A922AC1C990160A2ACB2CA2AFF005787D1D14FB7FCFF005DFD1903E813
        C3FD2000058FEA71EFCDCF640000000AE2DE784A5258B9E133B9562112ACB740
        00386E7C4E98D482000025A00B1A44B2CCDB64E4CB5340002168597A3CF63F37
        AF7BC03E813C3FD200000B2FF578F6E5E7A00000015A9670EA71DCB592010C51
        2AC4CDB34000124E2B38772A580005B6282255405B4458E6CDAD24145A8E6C6B
        95B47451EE3F3BD77F4640FA08F0BF50A0012A89A97FA5CBB6A56400002AA962
        70EF1C7AC08B5218A5225019A500000190902E8A02665D5002249755172E7CEE
        A80489579F1BE4CEBA22F77F99EBAFA3207D0C780FD1012800691036BAC80002
        ADA94335A9E3EF963590520E331A85B0A94A0000249E3EF9C582DA9010B10580
        149951516F2628325A44CAEE5E8EBD97CDEBEEF00FA04F0FF480000001A8FEA7
        1EFCB8D20142ADA9249A9D06758E0DF3C6B20B003082D23358DCAA00038D9F13
        A73CDA00000B20968000153979D0285113A3DF63C3D7DDE01F425E0BEF160290
        8A833ABA9059BF2716C05BA5952422353A089358F1F78CEB20A09C1A8A0866DD
        2680001971EB3E2EF0A8551A90010D012904B51691CD9A8AA42C4E8E3D9FCDEB
        DEF00FA0DF07F658540500AA02053CACF4E5C52DA922000353A133BC78FBC66E
        4028200071D6351680001249269A50400000005925B570E79BD4B2883A2BF6DF
        0FAF3E8C81F40FE1BEA804102A0028406A5FEA70FA39705A900006A7412E66A7
        8FBE59B000000071D6360000892716A67524514428000008322B79BB96CA64BD
        1B7B3F97D7BDE01F431E03F42C45D848B5742412DB150B8AD46A02000001A9D0
        6779F1B5CA6B2002900038EB1A8B404492DB867C4EBCF16800000000002C8397
        16A8E8F3D8FCFEBEEF00FA04F0FF004810A0080A416A4294B2FF004F8F7E5C50
        00006A7404C6F1E3EF9CB0005200071D63608925D508C33E275C44CDA00D4822
        8025002C0D49C99D17A3CF63F37AFBBC03E84BC17DE22DB2466C2EA494922D32
        8B4CD8559AF3B9F4B900001A9D0019DE3C6DF296000A0800E3AE3D445D500004
        13341001540500008CEE6B9B1AE8B3DB7C3EBCFA201F435FCFFF0054000262B5
        2DDE732D89A854586A4A962140001A9D000B31BCF8FBE510000A400715674500
        0018673480A000080000A65A5E8DBD9FC9EBDEF00FA1EFE7BFA400000290042A
        C0000000000D4E800C74C78FBE510000A08071D629A0000CC9E274E5C7AA0000
        00000001D217ADE1EBFEF00FA1FF00E7BFA4000042C280000000000000D4D800
        71EF1E3EF9900186EA6990071D63600008CA787D39E340000000000379747FEB
        F87AFF00BC03E82BC2FD600E3B38F59B28291400000000000000B1CD9D846779
        C2008AA40A090634CD116D800433600010011400017A41F5DC3D7FDE01F409E1
        FE9000E2DE78F50021410440001A6C0000000B97366D94442AAC010A01104B33
        650B650204A40A00000025511D1FFB0E1EBEEF00FA04F0FF0048000E2DE7152C
        1490AB2CB080005B29400000068E5C2CA000000000A2652CB54000000000019B
        2C551D1E7B1F9FD7DDE01DF6F87FA40CD962AC1400492ACAA040014000000008
        216168000204B45012D8D00000000000085003A50F5BC3F03DE01DF6787FA442
        80000002522800000000000020AB000000021400351A0000000000428003A51F
        5BC3F03DE01DF6787FA400000000008500000000000101400000000405000000
        0000010255000E947D8FCFF81EF00EFB3C3FD440000000000214000000000101
        40000000001014000000000D4D66C200001D28FB1F9FF03DE01DFB788FAB8AE4
        000000000010588000000002D320A80000000160B352C4000002A89672E7496D
        9C3720000749BEBF8FE07BC03BF8F17F4000000000000138AE4B400000400D4D
        40500000000101412C45500019B8DCD7262AB2716F3A9A00003A49F5DC3F01DA
        01DFDF89FA400000000000010B24B4000062CE2D66CD80000000000000292C45
        580A42B3C99D58C59C7B965280001D257AEE1F80ED00FA0EFE7FFA0000000000
        000001116D8004B2CA0000000000000000024B6C0A42ACAD44B240000007467E
        E3E1F5EFD1903E807C37D7400000000000000085008500000000000000000000
        03971AB5C361028000000747DECBE5F5F778077E9E2FBD5000000000000000CD
        CEA544D44B54000000000000000003373A9752D814E3D42800000003A49F5DC3
        F01DA01DFA78BEF54000000000000003373AC8B2CAD0000000000000000000CD
        CEE5DE2DAD4BC1ACAD000000000E927D770FC0768077E9E2FBD5000000000000
        0044966A6866E753400000000000000000009C99BA978F59C5168000000001D2
        4FAEE1F80ED00EFD3C5F7AA00000000000004B11540110550000000000000000
        227366C33671EB3A9B88AB2800000003A49F5DC3F01DA01DFA78BEF540000000
        000004B986A680004B05940000000000000CDCD379BACDD1C7A98B4500CDCD96
        A8000000E927D770FC0768077E9E2FBD500000000000097296A80000222ACA00
        0000000001139212EA2D7156358B3740009725B28000007493EBB87E03B403BF
        4F17F450000000000012C4550000000337365AA0000000003373A979B1752E6B
        8ECCE90A000019B9A59A000007493EBB87E03B403BF3F17DB4D000000000012E
        52D50000000009730D4D00000000066E772F262CAE3D3371A9B00000011259A9
        A00003A49F5DC3F01DA01DFA78CEF12CB5400000001966AD500000000002584B
        340000000088525500000000002588AA001D24FAEE1F80ED00EFD3C5FD149725
        B28000000CDCEA6800000000000044966A6800000066E6CB540000000000004B
        226A6801D24FAEE1F80ED00EFD3C5F7AA337365AA00000CDCEA6800000000000
        0002588AA00004415400000000000001105503A49F5DC3F01DA01DFA78BEF540
        892CD4D0000CDCEA68000002148500000000960B28004B115400000000000000
        00CDCD96AF493EBB87E03B403BF4F17DAA800440B02696594000000445B96373
        60000000082CB28102550014100000000000000895AE927D770FC0768077F1E2
        7A94000096EA4CDB6400000000BC7B89AE4CE0A000000000B5209560012B16D5
        DE72000000000000001D237AFE5F80EF00EFE7C4F51680089756245D64000000
        0048B0D2140000002512CDCDC230A001065695014000000000009443A46F5FCB
        D7FDE01DFE78CEE0002259A32550000000010005000000011059A22800000000
        000000000001194D7489EB787AFF00B80EFF003C5F7AB100960D4D0CDC92CD00
        0000000000000000290055CDC8B28000000000000000004B1157A43F5DC7D7FD
        A01F405E27E84000000085000000000000000002C4A000428000000000000000
        00000E8FBD870F5F77807D06F84FB00850000002140000000000000042800000
        10A00000000000000042800E8D3DA7C9EBDEF00FA1FF00E79FA4255100000012
        8580005000001000128580000001285800000000000012A88007449EEFF3FD77
        F4640FA1FF00E79FA59B752000000002545D480294000004204A028020000002
        50B00000000000095600007449EEFF003FD77F4640FA11F05F6D0000002D6B3A
        D000C94F1F78E1D60000003CBE7D779D0ABC7738DE5007367540000073E37602
        02928005000A44AAA80A201D11FBAFCEF5DFD1903E82FC1FD2000000391BE694
        0011C1B9E0F5E566400001E4E3BF95CF60B9B386F344D652F335C928000039B1
        D3931400001A9D000005466CD0BD20000E88BDC7E67AEBE8C81F417E0FE90000
        00D5D73E77500030781DB966E22D9000072E7AF9BCFA2325AE1D7396149BCEB9
        66824B6D2141BCEB9F1B812A8010353A00005912CD017A40001D117B8FCCF5D7
        D1903E82FC1FD200000B6F919DD000965781D7971DE6066DD2200D4DF9FCBB12
        04E2D670C6A685396DB1532D724D6359C5BBCE6CBE4F3D802AEB3B0A080353A0
        0B2259A000BD20007445EE3F33D75F4640FA0BF07F480000AE7CF4D800097C3E
        98F1F7C40025A4B15BF3F8F6A133666E38D986A695CD2D02B79D645C0E39D3CB
        E7740035376501410353A09722CD000017A4007445EE3F33D75F4640FA0BF07F
        4800069CB9DF2CA0028E0D67C2E9C4800000F2F1F473F3B8B1666CE399A08725
        D72CC896EB3A96E6E2C439F1D3932006A6ACD000050D67A4B91668000002F480
        7445EE3F33D75F4640FA0BF07F48000DB5CF340008C69FCFEBC632000146FC9E
        7D3C9E7D32CE759B6713280356DBBE5CF306ACD6359A88DE77CF8A00B2EA6C00
        00504B5AB28000000BD201D117B8FCCF5D7D1903E82FC1FD20069737C89BA000
        23C4E99C6B2000044DCDF95CBA66C8CB6E39890055E4D6B368DE33C937C7732C
        1BCEBC9E7400353A5800001402353A000000017A41D117B8FCCF5D7D1903E82F
        C1FD202AE9CFCFA680001C1A440A000B26B3BDCD66E66B0309862CD09672DDCB
        A49A4E4C6A8055F239EEE68805580000A2A4015ACF4000000005E93A22F71F99
        EBAFA3207D05F83FA4361CD8DF24A0008F1B73C5E9C400010D6F3AF231D3926B
        3BC6A4CA70A0D44396EA6B4359CEB376A0179F1BDE2800000001480028A9353A
        00000001D11FBCFCBF5D7D1903E82FC2FD2C9B6F1BE7940004250002150D4D40
        71EF1A9331C57165CD0E595BD8D4CD9AE4C801CB9E9CBCE80000000148000015
        66ACD0000000E88FDE7E5FAEBE8C81F417E13E946B579F1D2A000653F9FDB397
        35A00D4D25A72E75E573DE6F3CEE8E398400AE46E6A8D49CB8A00DE75CFCF600
        0000005200000000D4E8000001D117BCFCBF5DFD1903E82FC27D34E7CF4D0000
        38EB3400011A9656A25CCB25B8989002B99ACDACA69CD8B402CBE473E9600000
        000520000000015AB3400000E88BDE7E5FAEFE8C81F415E13EAE7CEB91400078
        BBCF0EB200006A5AD7938D5678F7522678E66A85723535A164DE6EA5A8266F93
        9DEB3400000000000000000353A4B916680007445EF3F2FD77F4640FA0FF0007
        F66E6F49500195F1778200009565E4979A5E3D496DCE78E6401BB574B472626E
        58B0D272E3A72E280000008500000000000D4E825C8B34001D117BCFCBF5DFD1
        903E857C17DA228A838CE1DE41002C22D39737965E3D633AD6B39E2990259B6A
        DD2D1A9397140171BF233AB00000012AC0000000000000D4E92E459A007445EF
        3F2FD77F4640FA15F05F681161A4F0778C6F12D08115572D1E772E99D31A5931
        33962CD0572DD66E926A4E4CEA8026BC9E7B292C0000128580000000000001A9
        D0446A336A8E88BDE7E5FAEFE8C81F42BE0BED000E1AA94000C9A11C8B8B25CE
        A4E2B712085392EE5A3526F2D28097C8C74D64250B0000255800000000000000
        0D4E825C96CBD117BCFCBF5DFD1903E857C17DA00F1F53C4E9C336D0044B7532
        5F2F9F6E6CDCEB14B262D96865E4635A9445D5BBC5956017500084AD40105580
        000000000000001A9D009723A23F77F9BEBBFA3207D0AF82FB40E3B3C0EDC648
        2B711512C839F3D7CCE7BCEB1C7AD8006B33979DE7CD0235C99D000000003342
        C2AC00000000000000001A9D0012E7A23F77F9BEBBFA3207D0AF82FB40F0F79C
        DC80585082B5E673DE2E71BA001ACCDE2F938A00D4E96000000001C7AA393300
        0000000000000000353A0026B3D11FBAFCDF5DFD1903E857C17DA00032B402A0
        18B38F7400127261E4F3D500D4DD94000000094850B000000000000000000006
        A749724E88FDDFE77AEFE8C81F42BE0BED000CB5A4202E574CCB38B4968006B3
        3C9E5ADC006F79A00000004A4500942C0000000000000000005692D5E88BDE7E
        5FAEFE8C81DD4794FA0012DB20000CDB2C00003797266812B534000000008500
        00000000000000000000002CD750FEA3E3FC4F6807677F8FB000000000000000
        00000000000000000000000000000000000003AECFD5C7E5F603B3BFC7D80000
        000000000000000000000000000000000000000000000001D767EAE3F2FB01D9
        DFE3EC0000000000000000000000000000000000000000000000000000EBB3F5
        71F97D80ECEFF1F6000000000000000000000000000000000000000000000000
        000075D9FAB8FCBEC07677F8FB00000000000000000000000000000000000000
        000000000000003AECFD5C7E5F603FFFDA0008010200010500FE8FB7FE7FA56D
        FF009FE95B7FE7FA56DFF9FE95B7FE7FA56DFF009FE95B7FE7FA56DFF9FE95B7
        FE7FA56DFF009FE95B7FE7FA56DFF9FE95B7FE75EFB74EFB74EFB74EFB747EB7
        745EB770EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370E
        F370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370
        EF370EF370EF370EF370EF370EF370EF370EF370EF374EF374EF370EF370EF37
        0EF374EF370EF370EF370EF370EF370EF370EF370EF374EF374EF374EF374EF3
        74EF374EF374EF374EF374EF370EF370EF3747EB774EFB74EFB74EFB74EFB74E
        FB74EFB74EFB74F4B537B5C94F97041041041041041041041041041041041041
        0411CAB8924B892492E2492791E8FE8F297293F0D248DEAD0F911AC11A24410C
        B48208E2F47F479484C9E4A6353E0D8C5C2C8E4469041041041041040D09F07A
        3FA3CC5CA4FC32E06343E4492492CB8B8B892E2E2E1BE1F47F479B3CA4C6A79E
        DF32391041690416969690410411AFA3FA3CD4C5CA4FC2C09F0B43F0703D3D1F
        D1E727CB4CF3F091CF6CB892492492492492493D1FD1E6B5A2722E527E2DA1F1
        B45A5A8B516A2D45A8B4B4B4B4B4B4F49F4BC5A679F0B291F3A09E0688E4CF04
        924F07A4FA5CF6313917293E17E0609E0687C6C6CB8B8B8B8B8B8B8B8B8F49F4
        B5B0B074C7393E5267993C0BC03E28E2631A1723D1FD1E16A4AA98E5B114BE5A
        7C097876B8E0688E47A3FA3C75531E1208D234425E1589F29150D09F17A3FA3C
        6D49528E6A7C53A493A27E1DA275687C6D0D717A3FA3C974C731F4170CF05A5B
        C9F32D2D2DE6753A9D482D2082082D2D1523A0B0B0B074E9E8FE9725A92A51CB
        A8A593C324E924E93C74E905A884416905A411A41047022081F29A2AA4F47F47
        94D0E98E6262279108845C4AE34F49249249249278FF00F2F4688E438140E993
        D2FD2E5B454A398842E2B4B48208E37D05517171797179797979717171717990
        559717978EA2E2E2E2E2E2E2F1D4C92E83D27D2D6E2E2E2E2E2E2F2E2F436344
        2E627C525C49717170B932492C964F2635688E381A7A7A3FA3AC104104104105
        A432D2DE4C93A27C882D2D65A2E4C169616969696A2D2D2D2D20821102A48442
        2D2358208D2D47A5FA5CE6874F31313E3924927934D5CA927C07A5FA5AE43217
        9797B2F65ECBCBCBD8F705B837C73C5227C524925C88278FC855124925C5C892
        4924B8B8B8B8924B8B8B87521D45C5C5C5E5E7A5FA5AE33198CB0B0C6632C319
        8CC6633198C74C13CB4C5CB4C6A790CB89D649249249249249192344717A4FA5
        ADC5C4971717124925CB49D5A92A51CC9E627C95496961616169696969696969
        6969696969696169696969E97E96B0C820B59D7586433A9D74EA753AE902E9CB
        427CB4C6A78E927C135C1E97E96B0410410410411A4105A8820843A4AA9E5A27
        989F1B62A89E64924924E8F5F4BF4B5BCBCBCBCBCBCBCC86432190C85E643219
        0C83A87CC5CC4C7CA75171717171717171771C11A7A4FA5CC83AEB0493CF4C9E
        627CA82C2C2D2D2C2D2D2D2C2C2C2C2C2C2D63A0C6CF4BF4BF829297CC4CF3E3
        42F05E9BE9F1C104704104104104104104104104104104104104409F313E4489
        F80A8F4DF4F5B4B4B4B4B0C6633198CC6633198CC6633198CC6633198CC66331
        98CC6633198CC6622C2C2C4585A5A8B4B4B4B4B4820B4B482D2082C2C2C2C238
        A0820820820820820F4DF4F909F8A688E19E5492492492492492492492492492
        4924925C49E9BE9F253E19D649F02C8E74788F4BF4B9524924F0492492492492
        4924924924924924F0492492493C3249226410410410410410410410411A4104
        107A6FA7FCAA64924924924924924924924924924927A6FA7FD2BD2FD2FE82C5
        C8F4BF4B82D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2
        D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2
        DD2048B4B4B4B4B4B4B4F4DF4F5820820820820820820820820823973E3DEA90
        B91E9BE9EB0410410410410410410410410416905A5A5A5A5A5A5A5A27E39888
        122393E9BE9EB9D99D99D99D99D99D99D99D99D99D99D99D99D99D99D99D99D9
        9D99D99D99D99CCECCECCECCECCECCECCECCECCECCECCECCECCECCECCECCECCE
        CCECCECCECCECCECCECCECCECCECCECCECCECCECEE199D99D99D99D999999999
        99D99CCECCECCECCECCECCECCECCECCECF48E76B5C48C48C48C48C48C48C48C4
        8C48C48C48C48C48C48C48C48C48C48C48C48C48C48C46246246246231189189
        1891891891891891891891891891891891891891891891891891891891891891
        8918918918918918D18D188C4623123123123123123123123123123123D2AFFF
        002F12FC73D3C87D443E77A6FA7E25F8E63D3CB45CEF4DF4FF009791B244BC07
        A6FA7FCC40A9F03E9BE9FF0026864E902F05E9BE9FF27237AA5E0FD37D3FE45F
        0411E13D37D3FE458F48F0DE9BE9FF004AF4DF4FFA57A6FA7FD2BD37D3FE95E9
        BE9EB24924924924924E924924924924924924EB2492492492492492493A4924
        E92492493AC92492492492492492492492492493A7A6FA7ABE54F313F0689E19
        F0F27A6FA7AC1041041046B0410410410410410411A433AE9041041041041041
        0468C488208208D7A90F582082082082082082082082082047A6FA7C12492493
        AC6924924924924924924F0C924924924924924F0C9249249249249249249249
        2492492492492492493AFA6FA7FD2234F4DF4F592E2592C92492492592CB8925
        92C964B2592C964B2592C964B2592C964B2592C964B2592C924B8964B2E2E249
        2592C964B2592C964B2592C964B2592C964B2592C964B2592C964925C4B3D2FD
        3D6F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F
        2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F
        2F2F2F2F2F2F2F2F3D2FD2F0F041041041047147F0DE8FE978682592C964B259
        2C964BE38208FE0FD1FD2D6C2C4588B11622C4588B11622C43A4B4B4B4B4B482
        0A682C2C4588B11622C4588B51622A42A4820815258584104104104104103238
        238A492492395E93E973678994D3CAA993AAD6091F25BF00B95E93E9783484B9
        353D208D11248DEB04F137C73E13D27D2E5B7C53A534F25B2758D172A746FC67
        A4FA5E060A572AA7AA5A473193E33D27D2E4A637C6972AAAB58E4CE890F56F98
        84FC07A4FA5CF6CA57264AAAE17C084F856ADF8EF49F4B8EAE44099722E45C8B
        91722E44A2E43AB9AF482082A7E3FD27D2E37C8B4B4B4B4B4B4B4B0B4B74489E
        521BE16FC7FA4FA5C2941237C4D1493C725C3625C086B8A389BFE03D27D2E1AB
        C043D1B12D18B54C6B810DF0B7FC0FA4FA5AFF00E46F8D212E26488AB85F0CEB
        E5C2FF0082F47F475FFCF2131D42A8B8B99732E65C4924E887C88247C0C9FE0B
        D1FD1D50F8E9A47496969696969696168C4B8DF03E16C6FF0083F47F4756F917
        17979797979797978EA122796DF0D4FF0084F47F479291696161616161696160
        D11C688E07C2DFF0BE8FE8F25124924924A24B912362E05C723E06362FE13D1F
        D1E45A5A5A41041043208D121F22491F0C8FF86F47F478E95AB5AC7054C489E2
        6C7512C964B249249249FE1FD1FD1E24B9553E4B7C13CD823C7FA3FA5C499717
        1722F2E2F2E2E1D648B890DF8262F1FE8FE97804B8EA7C2F9D24F8FF0047F479
        E909F13637C0DFF1FE8FE8EBEDC7B71EDC7B71EDC7B71EDC7B71EDC7B71EDC7B
        71EDE7607607607607607603FF00E71ED87B61ED87B69ED87B61ED87B61ED87B
        61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B6
        1ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61
        ED87B61ED87B61ED67A7A6DDBFE95B7FE7FA56DFF9FE95B7FE7FA56DFF009FE9
        5B7FE75FFFDA0008010300010500FE8EFF00A5BFE96FFA5BFE96FF00A5BFE96F
        FA5BFE96FF00A5BFE96FFA5BFE96F8315262A4C5498A916D523DA4588B11622C
        4588B11622C4588B11622C4588B11622C4588B11622C4588B11622C4588B1162
        31D263A4C749622C463A4C7498E931D263A4C7498D18E931D263A4C7498E916D
        A1D1498E931D263A4B292CA4B2931A31A31231A15148B6A930D261A4C3498693
        0D261A4C3495A87C96B973E0249249249D249249279369690416969616160A81
        53C8DCFF005CAA972A3C4C6AB8E04F592492759249278B73FD7290D0F94DF865
        C33C8924B8B8B8B8B8B8B8B891313E066E7FAE527A55FC32E34882C2C2D2D2D2
        D2D2C2C2D12E1DCFF5CD6B97E5E03CF973C8B8B8B8B8B8B8B8B8B8B8B8B89D77
        3FD739AFE1972275964BD64920913169B9FEBC4B5E3279091696969696904169
        69691A6E7FAE7B43FE1971A65C5C5C5C5C5C5C5C5E5E5E5C57FEB9E864729A3C
        BC5CF26DE0B4B4B782BF3F014952FE1D71A122D20B4B4B4B4B4B4B4DCFF5ADEC
        BD94D53CD6B99E42F153C54E93C9DCFF005C2994D53CBA468A97F0EB8A44C5C8
        DCFF005C74D53CB9132A5CA9249F173C305452F91B9FEB8D329AA796969553C5
        02A48208F1AB87CC4CA5F1EE7FAE4D354F310D70C12497171772E49249249E39
        2513A49249717176B714D66445E5E2AB4DCFF5C94E0A6A9E5D23435A411A470C
        7259248DEB3A4F0C6BD783A9D4EA753A89E89EA994D46E7FAE5262AA44F98D11
        ABD6DD3A9D4EA75E36B49249249249278A5923D193CA4E0ABCF969C14B9E5F4D
        1A1F1CE92895C687496969696B2D2D20B4B4B4B482D2D2D2D2D2D2D2D2D2C2C2
        C2D2C152588B0AFCF5B596B2D65A5A5A5ACB596B1213E6B5C4F58208F113C0A0
        9249211D0915449B9FEB5B8B8B8B8B8B8B8B8B894362AB9703435C725C493CAB
        8B9925C5C5CCBCB8B8B8964925C5C5C3A8B8965C5C49248C551732AF3E726535
        7318D731AE3A972208249E4412470A1F9EB8CC66331988C6632C2C3198CB0547
        1413C2D1035C505A432394E923582D2D65A5A4696B2D65A5A5A5A5A5A582A0B0
        B19616161579EB7979797979797991990C86432B323320AA9E5BD2A5E1639D1C
        13A410415F9EB696B20B590410410411A41027052E79690D0D78382E2E2E2E2E
        24B8B8B8B8B8B8B8B8BCB892E2F2E2F2E2E2AF3D6F44A2E44A25128944A25128
        84743A1D0E84A131F2D8D783635E0A04F5ABCF952492492C924924B8A5F2DA1A
        1F836881E92493AC10411C51A410CABCF5C66231188C43DB3118CC4CC6633198
        CC658636631524732A435CCF2238E082082082082082393257E7CC83AE9E6412
        493CE68A973239324971717171717171717171717171717171795F9EB2492492
        493C33E16AA7C231AF04FCFC7C924924C9553C4D8B9B6F827E7ADC5C5C5C5ECC
        86466432190C86432190C86432190C86432190C86432190C86432190C8642F65
        E5C5E642F2F2F2F2F2F2F2F2F2492492E2E2E2E249E182082082082082347E7C
        86883A1D3450743A1D38D41D0E8743A1D0E8743A1D08279D041075D3A1041041
        0410410410410410411AC0FCF9304104104104169690410411A4104104104104
        11AC6B0410411AC1046AD13E096B579F2638A08FE0649F10FCFC027E15BFE15F
        9FF4AABCF56BC7C78F81AE455E7AB249249249249249249249249D27993A493C
        D9249279324899248DF21F9EB24924924924924924924924925CC86753A9D4EA
        753A9D4EA752D248F09027C7E62E0AB90FCF5B91722E45C8B91722E45C8B9172
        2E45C8B91722E45C8B912892492492492492746BC33427C2C5AC971E7C87E7AE
        0460460460460460460460460460460460460460460460460460460460460460
        3023023023023023018118118118118118118118118118118118118118118118
        1181181181181181181181181181180C08C08C28C28C28C28C28C28C08C08C08
        C08C08C08C08C08C08AD43D72332332332332332332332332332332332332332
        3323323323323323323323323323323323323329919919919919919919919919
        9199199199199199199199199199199199199199199199199199199199199199
        197B3233233233233233233233233233233233233232AF3D5786A49D18978AA7
        5F2F00FCF55E1A910DF8CA74F2D5F39F9EABC2B625AB7E2DA168DF807E7AAF08
        D8970C09F8A91B129D1A279AFCF55E0DB12E3689F09514E923E3F213E5BF3D57
        82912E4B44F826411A468DF1B427CA7E7AAF03225CCF213E7D3C1237CA813E4B
        F3D67C0A5CE689E75232757CB68F2E43F3E0F213E779780684F9AD888F01027C
        4FCF55A409F2FCFC1B47972DB12F06D09F0BF3D56B027E3E04F90D89785689E0
        7E7AAE068F2F1ED09F13625E2204F47E7C98208208E6F973BCF8978A6B47E7AB
        E4C13CD6BC0C0993C33E21F9F0C92493C324924924924924924E924E92492492
        49249249248B8249249D649D649249249249249249249249249D1F9EB05A5A5A
        5A5BAC105A5A5A5A5A5A5A5A5A5A5A5A4104105A5A5A5A5A5A5A5A5A5A5A3425
        ADA5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A35A3F3D
        6749249D2756C9249249249249249249249249249249249249246C4493A32492
        49249249249249249249249249249249249249247E7C10410410410410411A41
        0410410410410410410410410410411A41041041041041041041041041041041
        041041041041041041041579EB616161616161616161616161618CB0B0B0B0B0
        B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0C65858585858
        585858585858585858585858585858585858585855E7FD2ABFF5FD2ABFF5ADE5
        E5E5E5E5E5E5E5E5E2AC5512492497125558B70C8CC8CC8CC8CC8CC8CC82AD97
        17124923A8BCBC550AA249249249249E382082082D2D2D2D20B448B4B4B4B4B4
        B4B4AFFD7352E248A9F2A94411A3D234812E4A5E07CF93B9FEB98971B654C5C8
        A56924923AB8249244F824929249279B3CBDCFF5CB4B91555C13C2A92092746C
        AB544EAB59D12E14B96D91CBDCFF005E0AA7C49EA8A50DEAD97094F174121EAB
        892F0FB9FEB94971B63E4245348F491BE15AB625A31890970A5E2373FD7252E3
        63AB9105348F4918B817025A2D570A5CBE9CEDCFF5C84B90D161616161616169
        60A9D1BD27931A345A5A25E3F73FD71AE43A855171717171717A2E2E5A3245A5
        4F542D57125E3F73FD71A5C7510C86432190C86416B2D121B1F147040B852FE0
        373FD7125CDE9A4224824918C6F542D57125E1BCF97B9FEB852E36C91B2592C9
        64BD5A29431F1A42E425FC16E7FAE18E368820820820B448B74A9948C6F86390
        97F07B9FEB5812E375179797979797978AB2747AC8F5485AB42235484BF83DCF
        F5AA5C8748A82C4588B11622C4582A11031BD678172578E9E2DCFF005C3235AB
        65C5E8BD17A2F45E8B8B8B89E4342E4AF1F04F0EE7FAE4B20820820B4B482048
        9E0A9EB491ACF0A5A4F8F8D275DCFF005C87512492492497124EAF47ACF0B447
        02FE1674DCFF005C753244C65CCB9923649225A4EAC82048820820B48208208F
        E1609373FD71363D5245A5BC14D3C8812E05FC6366E7FAE268C6633196161698
        CC625C8425FC8A2BFF005CA9E6A5C297F1DB9FEB9EC4F8D702FE3634DCFF005A
        E432190C86532190C86432190CA2DC32190C864321905B86532994CA673399CC
        E673399CCE673399CCE673399CCE673399CCE673399CCE673399CCE673399CCE
        673399CCE673399CCE673399CCE67339DC15397FD29FF4B7FD2DFF004B7FD2DF
        07FFDA0008010100010500FE8FF7BFFD9FF4AFBDFF00ECFF00A57DEFFF0067FD
        2BEF7FFB3FE95F7BFF00D9FF004AFBDFFECFFA57DEFF00F67FD2BEF7FF00B3FE
        95F7BFFD9FF4AFBDFF00ECFF00A57DEFFF0067FD2BEF7FFB3FE95F7BFF00D9EB
        F1B7D947C6DF651F1B7D947C6DF651F1B7D9457F8DFECDA4F8E7ECD3E39FB34F
        8E7ECD3E39FB34F8E7ECD3E39FB347F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7
        ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3
        E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E38F
        B30F8E3ECC3E38FB30F8E7ECD3E39FB30F8E7ECC3E39FB30F8E3ECC3E38FB30F
        8E3ECC3E39FB305F8E7ECD3E38FB30F8E3ECC3E38FB30F8E3ECC3E38FB30F8E3
        ECC3E39FB30F8E7ECC3E39FB30F8E7ECC3E39FB30F8E7ECC3E39FB30F8E7ECC3
        E39FB30F8E3ECC3E38FB305F8E7ECB95F8DBEC96BE35FB28F8D7ECA3E35FB28F
        8D7ECA3E35FB28F8D7ECA3E35FB28FCA9E9B63D17E50E4D745BC2E785CC5ECBD
        97B2F65ECBD97B2F65ECBD97B2F65ECBD97B2F66466466466465ECC8CBD99199
        199197B1549AE3892CA8B2A2CA8C7598EA31D463A8C5518EA31D4534D74BE3FC
        BDFB6793D0AA8B5EBE5C55533E2D369D2D35C4BA14D772D3A1D0E87425128BA9
        2EA4BA93A3E2FCBDFB6795575556DDA53C9AA991F865E5AA6D35526B8E512892
        4924924924928A9D2D435AB3F2F7ED9E53523529D163E4D54CF83F3E426D14B4
        F8D229A2E31331331331188C46231188C4534BA787F2F7ED9E6352AAA5D2F935
        533E07CF949B42A935C49B4D6E52D64A4BE92FA4BE82FA0BE92FA0BE92FA4BE9
        2FA44D3D7F2F7ED9E6D54AA934E97C9AA99E7F9F31368A5A7C89D7A9D759248D
        28A9D2D35523F2F7ED9E7554AA93A5D2F935533E1609E14DA1549F229A29A963
        A4C7498E931D263A4C7498E91EDD22DBA116522A552CFCBDFB679F552AA5552E
        97C9AA99E54C733CB85369D2D3E3A6A74BCA6532994CA653375CA6532994CA7E
        5E73F9639E8AE955269A27935533E2D369AA935C88E08208E0FCBBFB5F54D3E6
        A2BA5549A3CB935533C294B87E15382969AE2A5C34A86ADA4B692DA48A48A48A
        4B692DA4B693F2F7ED9D7B9DD4775BC6CEF2DD5CCAE8B8F2E5554C9E47412509
        52CA5B9F03E5C09B4D549AE14515DAD43E4FE5EFDB3C34D4E97B3BCB757290D1
        5D12B955D32269A50D28A7C2791E7AA6D09A6B8A8AEDE4FE5EFDB3C54D4E97B3
        BD4EEAE5A65744E913C0DC2BD17A2F45D4A2B74B1BA5F868E04DA69A6B5F3D19
        4576F23F2F7ED9E3A6A74BD9DEA77572A34AE89E17D56363DB6DE392C70E9716
        D5E2D382969A3CF5F324A2B8E3FCBDFB67914D4E97B3BB4EED3CCAE89E26DD25
        553464AA2FA8C8C6E7C4CA2EA455A4D6E50D64A0C941976CCBB665DB33ED147A
        ADB4773B2773B0773B06DEF6DEE33F2F7ED9E4D353A1ECEF53BB4F29695D1AB5
        047489150A2DA0B682DA0B291D1C8AEF325664ACBEB664ACC9597D65F517545C
        C9649249D04A5B490E981C09C34E4EA753A9D49E14DA7B1BEB757E5EFDB3CAA6
        A7455B3BCB769E66E510252293AD23F31F9DBA753A92C97C7B9B7710D3B4B482
        0B4B4B4B78544B83A5AA20A5C133CA4DD2FF002DB757E56E5D353A2AD9DEA776
        9E574D2BA14B7C2DC2BCC85E64A46D37C75EDDC60ACC15982A305460A8C0CC0C
        EDD981980EDD1811811811DBA305260A4C140B66942D8DB676D41DBD076F41DB
        D076FB676FB66DECECB3B6D93B7D83F2F24BF2C6B8774C3BA60DE306E98374C1
        BA60DE306F18378A76B7E8AA875554F32AA1D3AF968D4AB19632C658CB18E869
        781F3E4D2ED134F83A1D094515DC433F2FFED9D726D9936CC9B665DB32ED9976
        CCBB665DB32ED99768CBB6535D15723C89D2082BA2DD7AEB5B69CB2E65D5173E
        4B98CB5A79EA33B33D667A8CD599B70CBB8CCBB866DC32D665ACCB5197707B95
        9937117EE32FDC16EEE216E56CBF70C95992B2FAC75564D5392B3F2D75FCABCE
        A2BAA8AB6B769DDA787A42FF00DB85A2BA6D7AC8D265B49FFE67FF0099141141
        5243E3AF6D569A74BE2964B2110B909B5A470F43F2CFED4D7B4DB3B4DB3B5DB3
        B5DB3B6DA3B5DA3B5DA3B4DB3B4DB3B5DB3B5DA6769B653B14D1579F07467FEB
        1FF9E0686A4AA974BD7CB4B6A2D65B511516B21F22BDB55AB2B459598EB31D66
        2ACC7598EB315662ACC3598AB315661DC316E18B70C3B862ACC358B6AB42D8AD
        98370EDEB3B7ACEDEB3B7ACFCB4ADFCABAAF5559DDD6777B877551DD5477759D
        DD677551DDD4776CEED9DDB3BB6776D1B5BB4EED3CB84D554BA5F2AAA793D3C0
        79694D4E9134F482083F2EFED7D716E18F711656595965659596565B516D45AC
        B6A21EB45555156D6F53BAB9486935552E97CAAA9E479956EDA6746746747708
        CE8EE11DC23B847708EE11DC23B846793399D99DA33B29F51552D7A9677151DC
        5477159F969CFE55D6EA055D25D4A1574B528913489E0EBAF98940B99524D34E
        97CAAA9E198D6BA154AAA5D0FC07989C3D7F2CFED4E28E44B45CC9A855548BEB
        29DDDCA6ADADDA7769E5D54AA934D3E5554EB3025C1550AA5552E96886C86432
        190C86432190C86432190C86410C52886D4547E59FDA9AF6DB676DB676D41DB6
        D8FD2D076B4A7DAD27688ED51DA1DA33B36768D9DA5476959DA567695947A7DD
        A2A4E572EAA5549A69F2AAA639BD0E8743A72BC8A6AB44E4FCB9FB5F93D69254
        1723FF0053CC9549722D65AC8E7D74A6351CBAA88E4BAE9A4CB4196832ED9976
        CCBB666DB336D99B6CCDB665DB32ED9976CCBB665DB32ED99B6CCB414FA8A293
        F2DB557E56D6110884422110884744743A32085E16BA1549A8E2F2E1AA9E4554
        AA9574BA1A71E07F2C7ED3E57FE7C4D7426B869498FA70D54C721D29AAE87435
        D79F41F963F69EBDC6E9DC6E9DC6E9DC6E956FFA84775BE775BE777BE777BE77
        7BE775BE777BE777BE777BE777BE777BE777BE775BE775BE775BE775BE775BE7
        75BE775BE775EA0EEB7CEEB7CEEB7CEEB7CEEB7C5EAF7D35EA775AEE374EE378
        AB7B76A32EE19770CBB885BDB864ACCBB865DC9CDB866DC335666AC75D664DC3
        25664DC325664ACC95992B1D75B44924B2597171717125CCB99732491368FCB1
        FB4F915D30743A1D0E8283A1D0E9C6A0E8743A1D0E8743A1D0E840AA869CAD60
        853C8843A4B510422D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D1D2A6C45A7E59F
        DA9C9AA9D20823482082086432190C8E626D09CAD6190C864321EB0C8643D234
        EBE05B128D7F2CFED4D6592C965CD92D12CB99D4EA753A92C96896CEA753A9D4
        EA753A9D4EA753A9D4EA753A9D4EA753A89B2E67526A26A26A26A26A26A258DB
        2EA91351351351D4BAA2592C964B2592C964B2592C964B2592C964B2592C964B
        259F957F68F0CCF2DAF09E425CBF2F15F957F687F07E5CFF003F11F957F686AE
        9AA9F01E5CF6E08E7F992B9D452AD69AE47E55FDA1AD54D2A8C68C68C68C68C6
        8C68C68C68C68C68C68C68C68C68C68C68C68B2931A31A31A31A31A31A31A31A
        31A31A31A2C42DB48B116231A31A31A31A31A31A31A31A31A31A31A31A2C4588
        C68C6918D18D18D18D18D18D18D18D18D18D32C462DBA13A12A6AA29B31A31A3
        1A31A31A31A31A3F2B74FCA3AE6DC336E19B70CDB866DC336E19B70CDB866DC3
        36E19B70CDB866DC336E19B70CDB866DC1EF6E33A9D4EA753A9D4EA753A9D48F
        0E9F1F994BB6ADC54C34B70AADA697C8FCAFFB4B5CBB665DB32ED9976CCBB665
        DB32ED9976CCBB665DB32ED9976CCBB665DB32ED9976CCBB665DB32D065A0CBB
        68CB4196832D065A0CB4196832D0575D152F0F3C54ABAA75529B6A8753A19279
        F23F2BFED2D7DB364F6CD93DB364F6CD93DB364F6CD93DB364F6CD93DB364F6C
        D93DB364F6CD93DB364F6CD93DB364F6CD93DB364F6CD93DB364F6CD93DB364F
        6CDA17FF0037659ED9B27B66C9ED9B27B66C9EDBB33ED9B27B66C9ED9B27B66C
        9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B6
        6C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B6ECA3DB364
        F6CD917FF3B651EDBB285FFCEDA4DFFF003B62A6FF00F9FB551ED9B27B66C9ED
        9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9F96E9547E56D7DC3D49EE1
        EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A
        83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0
        F70F507B87A93DC3D41EE1EA0F70F527B87A83DC3D41EE1EA0F70F507B87A83D
        C3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70
        F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D
        41EE1EA0F70F507B87A93BCDF477BBF0FD7FA94DFF00F47D437EE1EA4F70F507
        B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83F2CD4EBF
        CA9AAF2F0A84BA7418BC52126CA69BC854555D355D57FEB45553A9F33F2BFED2
        D57978544A85E6FC5A29BA6D8A632AA5BA4AA53E6FE57FDA5AAF2F0A96ADF8B5
        4BA8A3FF0054BFF52B74AAB9FF0095FF00696ABCBC225E3EB6E9537EDBAFFF00
        5F3D1AE77E57FDA5AAF2F05225E3188DBA555565735D54A75572B87CB99F95FF
        00696ABCBC5B5E0D8E84E9A55293A9535BA36E92AA9D4DBF05F95FF697855CCF
        2F0085D44E9DA6D50E86E855535BA572A793F95FF697F228A5C3AB6EAA9D714D
        1CDF2E47E57FDA5C1E5CEF33CBF804DAF029F17E57FDA5E07CFC27972DBF091C
        5F95FF00696ABCB99E7E1D3E437E2FF2BFED2D579707971F9F888FE03CB5FCAF
        FB4B586432190C86432189496B2D6410D90C86432190C86432190C86433C910C
        86432190C86432190C86432190432190C86410C86432190F586432190C864321
        90C86432190C86432190C86432196BD3F2BFED2D52850C86432190C87A742191
        D6190C86432190C86432190C8634E1AD2190C86432190C86432190C86432190C
        54B218D74B486432190C869690C86432190C86432190C86432190C86432190C8
        64321907E57FDA5C524EB56889249249249249249D6116AD6492492492492757
        E4C5AC93C16A21704924924924924924924924EB5797E58FDA7AC10410411A42
        3A1088208208208208208208442211088208208208208208204B582082082082
        082082082082082082082082082082083A1F963F69F0F53A9D74E9AB6893A9D4
        EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9223A9D7593A9
        D4EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753AEBD4FCB1FB4
        F5B692CA4B692DA4B292CA4B292CA4B292CA4B692CA4B692DA4B692DA4B692DA
        4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4
        B292CA4B692DA4B292CA4B292DA4B692DA4B692DA4B692DA4B692DA4B692DA4B
        692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692CA4B292CA4B693F2CFE
        D4D7B4DD3B4DD3B4DD3B5DD6FB4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD
        3B5DD3B5DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4D
        D3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD1FA5DD42F49BA769BA
        769BA769BA769BA769BA769BA769BA769BA3F4BBC8ED774ED374ED374ED374ED
        374ED374ED374ED374ED374ED374ED374ED374ED374ED374ED374ED374ED374E
        D374ED374ED374ED374ED775BED374ED374ED374ED374FCB69D3F95B87CF993E
        0DB12E6273E0FCF8BF2F7ED9E0F3E77978094F44B9D3E07CF8FF002F7ED9D73D
        4CCF519EA33D467A8CF519EA33D467A8CF519EA16E56D64ACC95992B32565D5A
        3256CDEF515D2FB9DF3B9DF3B9DF3B9DF3B9DF3B9DF3B9DF3B9DF3B9DF28AF76
        D75D62AEA9756E4D5BB5A59B74CDBA66DD16EEEB6AADC8BEB2FACBEB2FACBEB2
        FACBEB1555CA4D2E182190C8643208208219044904104104107E5EFDB3CDA299
        E3DDAD514A7C9D9DB244FA4B6E5524BA9C6B4531C9DBA5AF03E7C9FCBFFB6799
        4D373885C3554A8A6AA9D4DA4CEAB8F6B6EFA9B4855175A5D45255537A492505
        E8B8BA04E74944A2514529B9F01E7CAFCBFF00B6796BABA55AB86616EEE64AB5
        8684E7828A1D55529509B85FE92A995391EB4A92235EAC4A07D4B58E0A55CD28
        F01E7CBFCBFF00B67974530B8B7F72789A139D14B746DA49BA5910A545754127
        9E8BA94A54AD3FF610DCEAA9753A6954AE04A1786FCBFF00B6795453C4D49BBB
        962E4ECED5ABA1524C86371C34D31AA50529A553829F243706DD16AE05C89F01
        F97FF6CF268A65F16E56A8A5B753E263A5D251B499E74FF9122552A67829479E
        ABA8DC27D47D046DD13C2972FA73BF2FFED9E4252D285C5B946ED6F06E98374C
        1BA60DD306E98374C3B861DD28F4ED35FF00E638436989153B9EB4AB9FFE745D
        5F449B6DDC5C50AE7D2383CBC4FE5FFDB3C8A69B57167A13EE283B8A0EE283B8
        A0EE283B8A0EE2817A8A1B55A9FF00D1BA9968FCABAA47AA4D9D16886E44A16A
        94B4952BC77E5FFDB3C7453C7BFB9690753A9D4EA75204AA652AA54EC6DD83AA
        1A527FE6A7034E539D6951ADC52B868A6D5E0BCB9BF97FF6CF1514CF1CA4743A
        1D0E8742693A17286E1A6EDAAA70948941368DB91A913295AD4534CF0EDD3E1B
        CF97F97FF6CF0D2AE710B86AA9534D753AEAE1A1D25915BAA69DAA3236C5FF00
        B1E6FAC373C14D2AA7D56A93AB868A6E7FC0FE5EFDB3C094BA69B571574535AC
        1B660DB30ED9876CC3B661DB16CED42DBA1BC7B4C487353A85E75552F54A5AE8
        79BEA85D44A16B4AB9A50BF81FCBDFB6759828A61716EEF34F2EE19B70CDB866
        DC336E19B70CDB82DDA9A5BB5D250AA54D5569E656E13D521285A2702A44F5F3
        74D36AF15E5C8FCBDFB675A29970D09A7C355D6F6F59DBD676F59DBD676F59DB
        D676F58BD3D6CEDAB36B66C6DC24A74A9C2E0A547052B469325AD36E8B7F84FC
        BDFB6785A13D6BA96DD3DC1DC9DC9DC9DC9DC9DC23B893B946DEE641B84DF525
        24DCBD194A2754A5F06DD1E3E09E1FCBDFB6789A4C96B4DCBF72AC7598EB31EE
        18F70C7B8595A31D6CB2B29DAAAA74D34D29BBB4892A72DEB4A9138D111D5285
        AD14BA9F911CA8F0DE5C1F97BF6CF21EE514BCDB666DB336D99B6CCDB666DB32
        EDB79B6C5B9B6D95329F22A7C090946AAA84970436E9A552B553FC04CE9F97BF
        6CF1EF6E5886BAA724104C289724B3676ED553856A3C90A9A5914914908A36A9
        4ACA0B281D14229A292DA4B282DA4B691534AE2EABF81FCBDFB678B73716DD2D
        B6F5871E4253AECEDDC3690BABE1B8DBA38129E6DC8552D174F1BF97BF6CF157
        46ED7560DC305660DC16C6E2787725EC6E3305660ACA7D3D6EA4924DDCF86A36
        E9B9EBE6251CDA20ABC723F2F7ED9E4CB9820885AD5571212BDA492D2509473A
        110BC7FE5EFDB3C899128D5A925AD2A709A8E248A29B56B4AE637FC079EBF97B
        F6CEBF319F319F319F318FF3149F319F319F319F319F319F319F31437F9824F9
        80F980F980F980F980F980A7F312A5FCCC7CCC7CCC2FCCB07CCE7CCE7CCE7CCE
        7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE
        7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE
        7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CD07CCE7CD07E4AF5BEE5F91BFA57DE
        FF00F67FD2BEF7FF00B3FE95F7BFFD9FF4AFBDFF00ECFF00A57DEFFF0067AFFF
        DA0008010202063F0043B22D916C8B645B22D916C8B645B22D916C8B645B7C27
        84F09E13C2784924924924924924924924924924924924924924924924924924
        92492492492492492492493C2784F09E12492493C2784F09E13C278493C27855
        DFF8C8BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BA
        E1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE
        1B88BAE1B88BAE19175C322EB8645D70DC45D70C8BAE19175C322EB86E22EB86
        45D70C8BAE19175C322EB8645D70C8BAE19175C322EB8645D70C8BAE19175C32
        2EB8645D70DC45D70C8BAE19175C322EB8645D70C8BAE19175C322EB8645D70C
        8BAE19175C322EB8645D70C8BAE19175C322EB8645D70C8BAE19175C322EB864
        5D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45
        D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D
        70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DCF84924924924924924
        9249249249249EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB
        47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB4
        7AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47
        AD156FE3322D916C8B645B22DBE1FFDA0008010302063F00FD03A08208208208
        1D16E8B745BA2DD16E8B745BA2DD16E8B745BA2DD16E8B745BA2DD16E8B745BF
        D2C7FA58E8B7FF0073DFF627745BA2DD16E8B745BA2DD16E8B745BA2DD16E8B7
        45BA2DD16E8B745BA2DD16E8B745BA2DD16E8B7FCC8208208208208208208208
        208208208208208208208208208208208208208208208208FAF9FFDA00080101
        01063F00FC0FFCBBEA9DBFF77CE7E0BFE5DF54EDFF00BBE73F05FF002EFAA76F
        FDDF39F82FF977D53B7FEEF9CFC17FCBBEA9DBFF0077CE7E0BFE5DF54EDFFBBE
        73F05FF2EFAA76FF00DDF39F82FF00977D53B7FEEF9CFC17FCBBEA9DBFF77CE7
        E0BFE5DF54EDFF00BBE73F05FF002EFAA76FFDDF39F82FF977D53B7FEEF9CFC1
        7FCBBEA9DBFF0077CE607C9769ED7D2AF92ED3DAFA55F25DA7B5F4ABE4BB4F6B
        E957C9769ED7D2A8FF00F0D27FD476AE957C9B68ED5D2AF936D1DABA55F26DA3
        B574ABE4DB476AE957C9B68ED5D2AF936D1DABA5501DCDB476AE957C9B68ED5D
        2AF936D1DABA55F26DA3B574ABE4DB476AE957C9B68ED5D2AF936D1DABA55F26
        DA3B574ABE4DB476AE957C9B68ED5D2AF936D1DABA55F26DA3B574ABE4DB476A
        E957C9B68ED5D2AF936D1DABA55F26DA3B574ABE4DB476AE957C9B68ED5D2AF9
        36D1DABA55F26DA3B574ABE4DB476AE957C9B68ED7D2AF936D1DAFA55F26DA3B
        5F4ABE4DB476BE957C9B68ED7D2AF93ED1DABA55F27DA3B574ABE4DB476BE957
        C9B68ED7D2AF936D1DAFA55F26DA3B5F4ABE4CF37FB8ED5D2AF936D1DAFA55F2
        6DA3B5F4ABE4DB476BE957C9B68ED7D2AF936D1DAFA55F26DA3B574ABE4DB476
        BE957C9B68ED7D2AF936D1DAFA55F27DA3B574ABE4DB476AE957C9B68ED5D2AF
        936D1DABA55F26DA7B574ABE4DB4F6AE957C9F68ED5D2AF936D1DABA552F7347
        37FB8ED7D2A88EE593FEA7B5F4ABE4BB4F6BE957C9769ED7D2AF92ED3DAFA55F
        25DA7B5F4ABE4BB4F6BE957C9769ED7D2AF92ED3DAFA55EA4763ECD63FB7D9BB
        277F77C766ECFCDC49E2D8E6FBC39EB36446D124C009F13C2A22E9AB064A7064
        7DC64C993264C993264C993264C993264C9934A993264C99328D231122BA6857
        4A65755DE04DC09AB09AB09AB4CA462F2E23D50FB8BBEFC4B9EC57B6651174F0
        EEF09C3887DF31DC88511EF18881BC2BDD74E9D3A714A70AF0A55E14ABC29510
        6385EA87DC5DF7E25CF62E0E0B8460C5BFC654464C4C43EFB8851A779E69C288
        310707D50FB8BBEFC4B9EC57E5B902C8CB1067C5443EF3E0C444288F78C44844
        9314E1384E2B4E9D3A74E9EA57AA57A42E307D50FB8BBEFC4B9EC5709DD8382A
        07DD8A887DE3F962A2149EF18608994A6072417F9A74F527A93D49D39A13A74E
        9D444BBBEA87DC5DF7E25CF63A07DC542D7B88C5443E3F34C30A4A30A214463D
        9327DC88972833A88DCF543EE2EFBF12E7B11C3864169910E3F2CD8A8879F1B1
        3EE189817C19144622209CE1394E5394E53953A9D4E9A59C9299446E7AA1F717
        7DF8973DBC20694431134D8A887C5C4FB862FF003C188F785118711EF0AED6AE
        D6AED6AED6AED6AED6A4B3416577DF14D5A6AD3569AB5EA81CBFC8BBECFF00E4
        B9EDE390CC510642A071310F9313C031B2518311EF5263201E73930FD4FF00B8
        7BEBC4B9EC0931D9E6502B362621E7C18292CC00DEB11EF0A230E51113C5022C
        829930F6ABA15D0AE8574264C997AA1F7177DF8973D812103DCAF0A028192D87
        18DCE18A815251898879C6E694496120032A801C522E90A36ADC26E2AC91961B
        C65A70223DE14461E5138524A32E27D50FB8BBEFC4B9EC216818112C540C96C5
        E18D887DCCF9567C4443CE14C6D8108146C992704E5512624301BD3F2C08D214
        66C2CCA1C99C28C6319F11EA87DC5DF7E25CF618B564C0862B25A0E31B117B87
        765A7762A753EE09224CBEE46D59FD3684A649913C5FD464CDBDA33E07085113
        E0C9B9032D9C47AA1F7177DF8973D8816AC9811282B25B17ACE3621F26090866
        960A366102EBF49973A02D484480E5500231739936F8969DDFC9472EE66DDC9B
        902DC187EA87DC5DF7E25CF6245AB260431592D8BD671A4D912CE32E0C6640D9
        311389D3FE92C5432E697718289C53A7C738578529C6795478C21ED0AF0A42BE
        290AF8A55F14ABE15F15A85AB724C6557EA3A15EA8ABC682B8B62D7EA78110DC
        F543EE2EFBF12E7B142D5930227592D0BD671BC61EF1F9EE4B27B5466C884265
        122400840549EB57AB57AB4F5A925CC7111B260722BD50578ABC55E2AF157AB0
        AF1A55F34957CD253D69CD29CD2A7A7720A597D8A2E3D9B92290EEBA7C204181
        1282140C9CE07197D8BD50FB8BBEFC4B9EC58B564C08C8B25B17ACE3499A70A5
        888B45716D52A318E50818C416CDB8705B111B3219F3AC89D3A74E9D3A74F820
        CCB4414232AD3BB2628106044A17A9B68BDAFE43DF44FBFBCB9EC60B564C0851
        6B42F59C6F185AF6013220DE124306299326DC88F7E2222F6E384E138AD5EE15
        7856AF0AD5E57EA57AA0AF2BCAF2BCAF2BC6A4E6A4E6A4E5441268D09CD2A7A5
        4F4A634A63494C692A16ACCB34A55CACAD5D76B4AF53C0900FE45DF600FF00EC
        B9EC0D595AB2AE1A95CE0573815CE05AB2AE15AB35216ACD92086281B567896A
        718A2770C99A289174BFB7773706E413EE3A994CB2E61BCB36273288C3817E14
        CBD50FB8BBEFC4B9EC0BD6691A15EB348D0AF59A46857ECD2342BF6691A15FB3
        48D0AF8A46857C5216B05216B054AF887B57E9B42D7B311C2570A9043732E651
        0DBBF96E8814E53A74F89307CEA0408870629856AE84C1327142F82CDEC4F527
        15274FC09EA57B814B6B815EF7ABC55E2AF957CD2AF9A55F349578D255E34957
        8D255E34952DB3495EA61CBFC83BE7C4B9EC78B564C0851125A17ACE070284E8
        C0640B3B152339F6E040CEEB28DDFCD4AA50997F9AFF0035352A6A5441F76232
        10C542D4D361BA74E9F787A99F7077CF88F3D80F6A9F827B54FC139A7E09CD3F
        04E691A15E348D0AF1A4684E691A139A468578FF008F7292D1AB427348D085AB
        36AD023D943604B2059D3BCAA4F60C294485669B099315F04C684C98E233862A
        E9F72BA55D2AEABAAE702B9C0AEF026E04C9B81370261526AD3569AB4C01F6A6
        14A614A04112E7F827149D09C57A138AF42BC2B57856BD4D05C7F21EFA1FF92E
        7B02E598E68ABA15C14957056AE057456AE8A4AB82B5705255CACAB9595AB14A
        D58A55CAD444845EB266DCCE26513898162B80E049461C47BC62BF2C7CBB99A7
        0A49F07D4FFB87BEBC4B9EC0D59A0AB87DB0570D0AE1A15C341570D055D34157
        4D0AE9A131A15D3426DD16ACC84288908BD64CD8C81503EEC5923DF888D08836
        7815D2AE9A95D5755D5755D5755D5755D5755D576B576B5764C9157692AE884F
        2ABA295745255D0AE8A4AF534973FC87BE89FF00B973D81785215E1EF2149681
        192215E1484F595785255E09EB4C9D356A6DC65003DA5087BF1B03EE2A069C5C
        47BC6144FB86E40D2A07FCF78E7C8B3607A99F7077CF88F3D8F73494E69578D2
        A4B4692AF9A4A1685A324C4A8871786320540B8C5C47BC6044FB86040FB8A81F
        7109AADC64C993549AA4D526A93549AA4C993264C684D5263051164D098D057A
        99F7077CF88F3D80E69F82E552342BC6AD0AF1A94968D4A5B66196015F3405AC
        3405ACABE2AFFF00C3F157E3EC1F157EA5273926581525B10F6157856AF057C2
        16ACDBB31F7CAA579E18C95D40BE2E23DE3733E29B1F9A70A2258AF53BEE1EFA
        F12E7B159464C8A224381FE9E150C0931F90CCA070A5A7078C3DE3132986457B
        855EE157AA2AF5455EA8ABD5157AA2AF5455EA8ABD5157AA2AF5455EA8ABD515
        7AA2AF54548639A055E927102BD4E218FF0021EFA23FEE5CF603264C993264CB
        228C37088489B7AE433152E2E21A718881956505AD268EF1F52FEE0EF9F11E7B
        FA2C43E14AA419B0623DE311033ACA32EF02BD4BFB83BE7C479EC0BE6A57CD4A
        F9A95F35288E70C3248B58681A16B4D4B5A680B59C0B5A680B5A680B58680B58
        680B58680B5A680B5A680B58680B5A681A16B4D0342D69A0685AD340D0B5A681
        A16B8D0342D71A0685AE340D0B5A681A16B4D0342D69A0685AD340D0B5A681A1
        4BCE139A4D0A22D9A95F352BE6A51E3CAAF9A16B0D014B6CD4AF1A95F352BE6A
        D0AF157D5F578ABC5445AA60AF702BD5057B815FE057B815EE057F8140DA8839
        60BE014D40535015D142BB52715A715A715A715A6180C134BB9EA5FDC1DF3E23
        CF626207B77D669C288C18D18B65F14E5394E5394E5394E9D394E5394E5394E5
        394E5394E5403EE395EA5FDC1DF3E23CF62A207BB072E29B17C2A2378326DE30
        0FC181EA67DC1DF3E23CF60394E5395089AD39A4A729CD69CD2539A4A73494E6
        929CD25484FB22539A4A73494E6929CD2539A4A73494E6929CD2539A4A73494E
        6929CD2539A4A73494E6929CD2539A4A73494E6929CD2539A4A735A73494E692
        9CD2539A4A73494E6929CD2539A4A73494E7DB129CD2539A4A73494E6929CD29
        CA729CA729CA729CA729CA729CA729CA729CA729CA729CA729CAF523EBFDF1E2
        3CF61494E2E21D427DE912F8BCDBEBD48FAFF7C788F3DBCE5A77944BE373EF29
        29C3F523EBFDF1E23CF604A200FB28DE19B7844BEF08638DB364DA31E28B2265
        2D9364168E23D48FAFF7C788F3D806CF1CDB2658E44E5394E5394E5394E5394E
        5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394
        E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E7DC
        9D016BF5DA7CC171F9B240325AB2608D936F8E498C42729CA729CA729CA72BD4
        9193BFFBE3C479EC0BD57C15EABE0AF55F057AAF82BD57C15EABE0AF55F057AA
        F82BD57C15EABE0AF55F057AAF82BD57C15EABE0AF55F057AAF82BD57C140DA7
        9186320B3EF4FCB120E440D91FA4F2865408B50B4C415C4B262498DA2313EA57
        D7FBE7C479EC0D48A56A452B52295A914AD48A56A452B52295A914AD48A56A45
        2B52295A914AD48A56A452B52295A914AD48A56A452B53656A42D48A56A6CAD4
        D95A9B2B53656A6CAD4D95A9B2A1679B160BC41DEF9F0C5968BA80B008139518
        46C5B11E2A02C8694938AF52BEBFDF3E23CF606B2D55A16B2D55A16B2D55A16B
        2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B
        2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B
        2D55A16B2D55A15FB5568527396AAD0B596AAD0B596AAD0B596AAD0B596AAD0A
        1C7B55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB5568
        5ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB5568
        5ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB5568
        5ACB55685ACB55685ACB50CB2685ACB55685ACB55685036AD1E3491934231B76
        B336842D59E72D187B3428FF0076D08CB09342BF6801206D0B596AAD0B596AAD
        0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD
        0BD4DB025163F90F7D5904E6EF2E78603D9FFDBF15C9A172685C9A172685C9A1
        72685C9A172685C9A172685C9A172685C9A172685C9A172685C9A172685C9A17
        2685C9A147F4FB609ECD0B9342E4D09ECD1F15C9A172685C9A172685C9A17268
        5C9A172685C9A172685C9A172685C9A172685C9A172685C9A172685C9A172685
        C9A172685C9A172685C9A172685C9A172685C995A4F8A85BB7641C90F8A81366
        5BB6A1270A20F141F67C57244D20F8AE4D0B9342E4D0B9342E4D0B9342E4D0B9
        342E4D0B9342E4D0BD4CB65ED7F20EF9B46194F78F3C77D839660A45ECDF9002
        2720444605C2B11319CC26448110588566C9BD1E3289F6637D4AFAFF007CF88F
        3DBEC08B4C9F811DF9FA5F32E358278C24B40BE791445F0E32AFEDDA3026E913
        2209899F1DEA57D7FBE7C479EFEB1FA447D8AD59278969C13911B766D71BFF00
        5E751B25E592482FCF1FEA57D7FBE7C479EDFDF96FAB366CC8211F6A26D4A6C9
        90D0B8A2CF162F0C0FCF1BEA57D7FBE7C479EDEF26FF009584A46552002CE4CC
        8036636611080038A04C30B3633D4AFAFF007CF88F3DBDA4C5CB4EF3E358960E
        11B76844300AC9E2C0112819D0B529B2E0289C4442CF8AF52BEBFDF3E23CF6F5
        863728DE200F628131B53C194230B36A5198A36A3C6B4D640951044419B159D4
        B89F52BEBFDF3E23CF607E7BC3F3C7C42CF8F0724AB8D64C41962ACD88C4DE30
        FF0019F1D9B11EA57D7FBE7C479EC00B28C7426CBBC73A81C7C86148DE1F961F
        A95F5FEF9F11E7B0A459F179BFAA4B83EA57D7FBE7C479EC3CFF00D03F2FE81F
        9E07A95F5FEF9F11E7B139BFA367DF9EA57D7FBE7C479EC01229D4EA753A9D49
        46E3264EB329D4EA753A9D4EA753A9D4EA7C09D4EA753A9D4EA753A9D4EA74CB
        F353A9D4E9A54CA753A9D4FBB3A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9
        D4E9B73D49FAFF007CF88F3D82E9D3A74E9D64F6A7F7C24518C7D8A51009D3A7
        4E9D3A74E9D3A7463BAE9D3A74E9D3A74E9D3A74E9D343DA9A3EC2A01674E9D3
        A7453EE3A74E9D3A74E9D3A74E9D3A74E9D3A74E9D44C9ED5EA57D7FBE7C479E
        C264C9936E0932AE04646907B13264C993264C993264C9B75B7193264C993264
        C993264C8C8994A37193264DBAC9B7593264C993264C993264C993264C993212
        457A95F7077CF88F3D8A852B2A6E14DFD7732F52FEE0EF9F11E7B0993265C384
        C993264C993264C993264C993264C993264C993264DBAC9B77F24C993264C993
        264C993264C993264C993264C993264CBF352265EA5FDC1DF3E23CF603264C99
        3264C993264DB8C993264C993264C993264C993264C993264C993264C993264C
        993264C993264C993264C993264C993264C993264C993264C9932F52FEE0EF9F
        11E7B026A54D4A9A952421398A9A95352A6A54D4A9A95352A6A54D4A9BD91534
        72454D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A5
        4D4A9A95352A6A54D198454B0A54D4A9A95352A6A54D4A9A95352A6A530232C5
        4D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A54D4A
        9A95352A6A54D4A92109CC54D4A9A95352A6A57A9B64BD9FE43DF40FBBBCB9EC
        2CD8C817DE79E618C928526F3FCF0BD50FB8BBEFC4B9EC1CD8ECD977848B2ACF
        39DFF9B2E1FAA1F7177DF8973D819BDD2E2B4C1024C233489F813F027E04FC0A
        4B5EE91486A0B8B66D40B93250B59559D0B59559D0B59559D0B59559D0B59559
        D0B59559D0B59559D0B59559D0A4B64FBACE85FAED46D3969332BD5043F5C685
        188C83FC414232FB95FA82BD5057AA0AF4A732BFEF82BD52BD52BD52BD52BD52
        BD52BD5290C72040131339DE39B11EA87DC5DF7E25CF63A25B0E4BE58FF8994B
        29329267C48B644BC9078533CA11B508C240142D07C88931244408224CF294FB
        B12F89897C9BC73627D50FB8BBEFC4B9EC6C29524984496E146D196356652A95
        B2E1C4DD0F09CE45087B00950B328394A811ED2A23F5648CCA2536EC48902629
        8A651DC74E9D44B0619D3EF0CD9315EA87DC5DF7E25CF6320A184F084E57FA45
        D1F9E048D93078B4E619D7143597421213292AD03C9962B3B44A8061819A7500
        D3EE90A01664CB2414260E5406FBF543EE2EFBF12E7B1919CE19B0185E861443
        AC877042532421957FA8DF8284200480850238D6728500200B99D407BF0009CA
        03766DC86E800C62A14EF0E0C67AA1F7177DF8973D8B89F761C05E2D986559E7
        C4F1EDCF25913A301FAB215C60D3ACC5C059CB60E7321C095D403E044DE356F0
        97DD8DF543EE2EFBF12E7B159861C4CA580CE89B4E5F10232878665C72C20409
        A2A13D998A249CC0297DA724513919470227DD811994548A40A2D95718B4C378
        7B31DEA87DC5DF7E25CF62A187187E96128902BB58576B0AED615DAC2BB58574
        5215D1484CEC22142D8005A9220C501C960A22D7B02043990852ACD930333AFD
        3BB184AB32804C997FA44CB363E18FF543EE2EFBF12E7B139CB9C3225C910245
        CAA172A85CAA172A85CAA172A853D0A001A159803688C8254D18CE8D978314E8
        162A01B2E0410130DD0A18100A01863736F2F543EE2EFBF12E7B1119CB61F12C
        DE37889826C39013056E485A9BD881E517CDED46072A82B2A1397510F9167C9B
        BC270225F07FD45CEF3CD971BEA87DC5DF7E25CF61C4B09F2E1BD2AF702BDC0A
        F702BDC0AF702BC2A57B8165E042C83002599120CA18A7847DCA44E892E5673B
        990E5502EA27DD8119B078C5E6FE83EA87DC5DF7E25CF61429425801844960B8
        D6A8C8371AA4D526A935488B424B53C2A42C9110FED0ADE41201EF405B120941
        CA14210166580A944EE44991669B02244814B28CB888961FD0BD50FB8BBEFC4B
        9EC186550A4E18E333C2298D2531A4A63494C69298D2531A4A89B318C8012540
        D9842510251FD0EE25752084180FF0EA561221B900C1F024F794042033EE4436
        4522860001A7391406F981C4FAA1F7177DF8973D819B2A8CE70F8B61C5E2AFD4
        AF1A95E352BC6A578D4AF1A95E352E2DAB7C522506447F5F1ED1900004E871CF
        1AD3C7F2500FBB00FC1819CA8527022C540C8774012C54279CFF0043F543EE2E
        FBF12E7B038C42886C8A4C13C572CAF034ABC2B57856AF0AD5E15ABC2B57856A
        22D0AD5E15AE35A2090D059F7419E618312FC18113B92A816CBB91378EFD9164
        C2F543EE2EFBF12E7B0A2242A0643BA6D1F70CEAE1A55CAD5CAD5CAD5CAD5CAD
        5DFF00895C30F6AB869448B3002494CEA2819B70C583295E6C0896189E338174
        6FFF00CD4B83EA87DC5DF7E25CF61CAA05B2EE4788602402069574D6AE9A0E95
        74D074ABA683A55D341D2AE9F7C5478861EC2AEDAAF4A8104672182003090291
        84FBB09860669D4BBB050C0CC2F1500A224389CF9167CBBEBD50FB8BBEFC4B9E
        C4DF1908C8AF857C2BE15F0AF857C289B608982BE1002D024B01B901BBC5133E
        0003D880CB812E040280A7025A77FC8BF2DCF543EE2EFBF12E7B11C5B378CF90
        6E443E04AA27DC3778D6AF160660B3E032FF0035FE6A0044A96CCA55DA95C575
        44D90322BA15D0AE857429043D985946FF00C9B9EA87DC5DF7E25CF61C4CA587
        B51265267DD90473ACF914A20A27DDBBC7224174652A25470A5A571AD0979230
        3364C6C92FB164390EFED0BD50FB8BBEFC4B9EC38F1601808891356135615DAC
        23256137BA210FD3ED64D584D585FAA41398CA800C0420B365C2072A89BB6702
        0A18DE159346FF00F543EE2EFBF12E7B1500C1CA787B13A94C7DB8107C3007BC
        A80DE1F96E326DFB22C8BD50FB8BBEFC4B9EC4C034E54376054B28CBB99F0C00
        224ACA673811A3199E61839F7F7AA1F7177DF8973D81E5CDB3A85E5CDB3A85E5
        CDB3A85E5CDB3A85E5DF6FFCDF50BCB9B6750BCB9B6750BCB9B6750BCB9B6750
        BCB9B6750BCB9B6750A4FE3B0193FDDF52BCBBB5F52BCBDB5F52BCBBB5F52BCB
        BB5F52BCBBB5F52BCBBB5F52BCBBB5F52A3FFE72266FF9CEA1796F6CEA1796F6
        CEA1796F6CEA1796E4FF00ACEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA17
        96F6CEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA179
        6F6CEA1796E5CBFEF3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A
        85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A8
        5E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85
        E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E
        5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5
        ADB3A85FCFFBC7FB5FD9FF007FDF7DEBDB7FB3C6E3713FBBDBF9DE738B1808C2
        2F0FC17FCBBEA9DBFF0077CE7E0BFE5DF54EDFFBBE73F05FF2EFAA76FF00DDF3
        9F82FF00977D53B7FEEF9CFC17FCBBEA9DBFF77CE607FFD9}
      Frame.Typ = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 162.519790000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 308.661616660000000000
          Top = 11.338590000000000000
          Width = 218.672807140000000000
          Height = 39.595076190000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."empresa"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 309.921460000000000000
          Top = 58.312748570000000000
          Width = 42.654695710000000000
          Height = 28.796419050000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Fone: ')
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 356.535663330000000000
          Top = 58.852681430000000000
          Width = 201.394955710000000000
          Height = 17.637806670000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."telefone"]')
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 310.641370470000000000
          Top = 35.275613330000000000
          Width = 205.174485710000000000
          Height = 17.997761900000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Cnpj: [frxDBDataset1."cnpj"]')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 614.803546660000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date]')
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 22.677180000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data:')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 154.960730000000000000
          Height = 105.826840000000000000
          DataField = 'logotipo'
          DataSet = rel_DS_empresa
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 551.811380000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 52.913420000000000000
          Top = 22.677180000000000000
          Width = 502.677490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."endereco"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'P'#193'GINA : [Page]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 71.811070000000000000
        Top = 419.527830000000000000
        Width = 718.110700000000000000
        DataSet = rel_DS_Prod
        DataSetName = 'DS_Produtos'
        RowCount = 0
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 7.559060000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 7.559060000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 7.559060000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor de Venda'
            ':')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 7.559060000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade:')
          ParentFont = False
        end
        object DS_Produtosnome: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 30.236240000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'nome'
          DataSet = rel_DS_Prod
          DataSetName = 'DS_Produtos'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DS_Produtos."nome"]')
        end
        object DS_Produtosdescricao: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 30.236240000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DataField = 'descricao'
          DataSet = rel_DS_Prod
          DataSetName = 'DS_Produtos'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DS_Produtos."descricao"]')
        end
        object DS_Produtosvalor: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 245.669450000000000000
          Top = 30.236240000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'valor'
          DataSet = rel_DS_Prod
          DataSetName = 'DS_Produtos'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DS_Produtos."valor"]')
        end
        object DS_Produtosestoque: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 26.456710000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'estoque'
          DataSet = rel_DS_Prod
          DataSetName = 'DS_Produtos'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DS_Produtos."estoque"]')
        end
        object DS_Produtosdata: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 30.236240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'data'
          DataSet = rel_DS_Prod
          DataSetName = 'DS_Produtos'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DS_Produtos."data"]')
        end
        object Picture2: TfrxPictureView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 45.354360000000000000
          DataField = 'imagem'
          DataSet = rel_DS_Prod
          DataSetName = 'DS_Produtos'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 340.157700000000000000
          Top = 7.559060000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataSet = rel_DS_Prod
          DataSetName = 'DS_Produtos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor de Custo:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 351.496290000000000000
          Top = 26.456710000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'valorcusto'
          DataSet = rel_DS_Prod
          DataSetName = 'DS_Produtos'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DS_Produtos."valorcusto"]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 83.149660000000000000
        Top = 313.700990000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 15.118120000000000000
          Width = 275.905690000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RELAT'#211'RIO DE PRODUTOS')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 241.889920000000000000
        Width = 718.110700000000000000
        DataSet = rel_DS_empresa
        DataSetName = 'frxDBDataset1'
        RowCount = 0
      end
    end
  end
  object rel_DS_Prod: TfrxDBDataset
    UserName = 'DS_Produtos'
    CloseDataSource = False
    DataSet = query_produtos
    BCDToCurrency = False
    Left = 856
    Top = 712
  end
  object rel_DS_empresa: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id=id'
      'empresa=empresa'
      'endereco=endereco'
      'telefone=telefone'
      'cnpj=cnpj'
      'ie=ie'
      'logotipo=logotipo'
      'email=email')
    DataSet = query_empresa
    BCDToCurrency = False
    Left = 416
    Top = 1072
  end
  object rel_vendas: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43651.788638020800000000
    ReportOptions.LastChange = 43999.640734236110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 48
    Top = 1048
    Datasets = <
      item
        DataSet = rel_DS_Vendas
        DataSetName = 'DSVendas'
      end
      item
        DataSet = rel_DS_empresa
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' Datas'
        Value = Null
      end
      item
        Name = 'dataInicial'
        Value = Null
      end
      item
        Name = 'dataFinal'
        Value = Null
      end
      item
        Name = 'status'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      BackPicture.Data = {
        0A544A504547496D616765C9890000FFD8FFE106BA4578696600004D4D002A00
        0000080007011200030000000100010000011A00050000000100000062011B00
        05000000010000006A0128000300000001000200000131000200000022000000
        720132000200000014000000948769000400000001000000A8000000D4000AFC
        8000002710000AFC800000271041646F62652050686F746F73686F7020434320
        32303137202857696E646F77732900323031393A30333A31322031363A31373A
        3232000003A001000300000001FFFF0000A00200040000000100000253A00300
        04000000010000034A0000000000000006010300030000000100060000011A00
        050000000100000122011B0005000000010000012A0128000300000001000200
        0002010004000000010000013202020004000000010000058000000000000000
        48000000010000004800000001FFD8FFED000C41646F62655F434D0002FFEE00
        0E41646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B
        11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E
        0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800A0007103012200
        021101031101FFDD00040008FFC4013F00000105010101010101000000000000
        00030001020405060708090A0B01000105010101010101000000000000000100
        02030405060708090A0B1000010401030204020507060805030C330100021103
        04211231054151611322718132061491A1B14223241552C16233347282D14307
        259253F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3
        D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
        37475767778797A7B7C7D7E7F711000202010204040304050607070605350100
        021103213112044151617122130532819114A1B14223C152D1F0332462E17282
        92435315637334F1250616A2B283072635C2D2449354A317644555367465E2F2
        B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6
        E6F62737475767778797A7B7C7FFDA000C03010002110311003F00F414924948
        85249249294924924A5249249294924924A5249249294A8F52E6AFED7FDF55E5
        47A97357F6BFEFA90534D24924E43FFFD0F4AFB11FF49FF47FF324BEC47F7C7D
        DFED56924788A1ABF623FE907DDFED4DF623FE907DDFED56924ACA9ABF623FE9
        07DDFED4BEC47FD20FBBFDAAD249595357EC47FD20FBBFDA97D88FFA4FFA3FED
        569246CA9ABF623FE907DDFED4FF00623FE907DDFED565242CA9ADF623FBE3EE
        FF00CC92FB11FDFF00C3FF00325653A5654D5FB11FF49FF47FF32599D669F49D
        47BB76E0FED1C6C5BAB1FAFF00D2C7F83FFF0045A3126D45CA492494887FFFD1
        F530653A82903292174C9D2492B249248A1492499252E92694A5252E92694A52
        53258FD7FE963FC1FF00F7C5AFB96475F3EEC7F83FFEF88C770A72924925221F
        FFD2F538F24BE497C928F2450BA49BE49D05293274924AC924922858CA5253A6
        D5252B54B54B5F14B5F1494AD564F5F9DD8F3E0FFF00BE2D6D7C564F5EFA58FF
        0007FF00DF118EEA72924925221FFFD3F52DC96E5182941450CB725B9460A509
        2996E4B728A492996E4A5452494CA5295149252E9264A1252EB27AF7D2C7F83F
        FEF8B5564F5DFA58FF0007FF00DF118EEA73124925221FFFD4F5191E0948F04C
        92285E4782523C1324929791E0948F04C924A5E4782523C1324929791E0948F0
        4C924A5F4F04A4782649252F23C164F5EFA58FF07FFDF16AACAEBBF4B1FE0FFF
        00BE231DD4E5A4924A443FFFD5F50493A48A16493A49296493A49296493A4929
        6493A49296493A49296595D77E963FC1FF00F7C5ACB27AF7D2C7F83FFEF88C77
        539692492910FF00FFD6F53D12D132708A15A7825ED48A8A4A652D4B44C02749
        4AD12D3C1327494A81E09E0264E82950128092492550163F5FFA58FF0007FF00
        DF16C2C7EBFF004B1FE0FF00FBE231DC20B9492492950FFFD7F5209D249142C9
        25AF9A7494A4C927494A4E9248294924924A5249249254B1FAFF00D2C7F83FFE
        F8B6163F5FFA58FF0007FF00DF118EE145CA492494AB5FFFD0F5320A6DA567EF
        B3F7DDF794B7D9FBEEFBCA7521D18849676FB3F7DDF794B7D9FBEEFBCA5C2A74
        613ACDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF77DE5
        2E153A492CDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF
        77DE52E153A4B1FAFF00D2C7F83FFEF88DBECFDF77DE551EA6E71356E24E8EE4
        CFEEA206AA69249249E87FFFD9FFED0F1A50686F746F73686F7020332E300038
        42494D0425000000000010000000000000000000000000000000003842494D04
        3A000000000125000000100000000100000000000B7072696E744F7574707574
        000000050000000050737453626F6F6C0100000000496E7465656E756D000000
        00496E746500000000436C726D0000000F7072696E745369787465656E426974
        626F6F6C000000000B7072696E7465724E616D65544558540000001700480050
        0020004400650073006B006A0065007400200033003500310030002000730065
        007200690065007300000000000F7072696E7450726F6F6653657475704F626A
        63000000160043006F006E00660069006700750072006100E700E3006F002000
        640065002000500072006F0076006100000000000A70726F6F66536574757000
        00000100000000426C746E656E756D0000000C6275696C74696E50726F6F6600
        00000970726F6F66434D594B003842494D043B00000000022D00000010000000
        010000000000127072696E744F75747075744F7074696F6E7300000017000000
        004370746E626F6F6C0000000000436C6272626F6F6C00000000005267734D62
        6F6F6C000000000043726E43626F6F6C0000000000436E7443626F6F6C000000
        00004C626C73626F6F6C00000000004E677476626F6F6C0000000000456D6C44
        626F6F6C0000000000496E7472626F6F6C000000000042636B674F626A630000
        000100000000000052474243000000030000000052642020646F7562406FE000
        000000000000000047726E20646F7562406FE0000000000000000000426C2020
        646F7562406FE000000000000000000042726454556E744623526C7400000000
        0000000000000000426C6420556E744623526C74000000000000000000000000
        52736C74556E74462350786C40520000000000000000000A766563746F724461
        7461626F6F6C010000000050675073656E756D00000000506750730000000050
        675043000000004C656674556E744623526C7400000000000000000000000054
        6F7020556E744623526C7400000000000000000000000053636C20556E744623
        50726340590000000000000000001063726F705768656E5072696E74696E6762
        6F6F6C000000000E63726F7052656374426F74746F6D6C6F6E67000000000000
        000C63726F70526563744C6566746C6F6E67000000000000000D63726F705265
        637452696768746C6F6E67000000000000000B63726F7052656374546F706C6F
        6E6700000000003842494D03ED00000000001000480000000100020048000000
        0100023842494D042600000000000E000000000000000000003F800000384249
        4D040D0000000000040000005A3842494D04190000000000040000001E384249
        4D03F3000000000009000000000000000001003842494D271000000000000A00
        0100000000000000023842494D03F5000000000048002F66660001006C666600
        06000000000001002F6666000100A1999A000600000000000100320000000100
        5A00000006000000000001003500000001002D00000006000000000001384249
        4D03F80000000000700000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800003842494D040000
        000000000200023842494D04020000000000060000000000003842494D043000
        0000000003010101003842494D042D0000000000060001000000033842494D04
        08000000000010000000010000024000000240000000003842494D041E000000
        000004000000003842494D041A00000000035900000006000000000000000000
        00034A000002530000001200460055004E0044004F002000520045004C004100
        54004F00520049004F0020004100340000000100000000000000000000000000
        000000000000010000000000000000000002530000034A000000000000000000
        0000000000000001000000000000000000000000000000000000001000000001
        0000000000006E756C6C0000000200000006626F756E64734F626A6300000001
        000000000000526374310000000400000000546F70206C6F6E67000000000000
        00004C6566746C6F6E67000000000000000042746F6D6C6F6E670000034A0000
        0000526768746C6F6E670000025300000006736C69636573566C4C7300000001
        4F626A6300000001000000000005736C6963650000001200000007736C696365
        49446C6F6E67000000000000000767726F757049446C6F6E6700000000000000
        066F726967696E656E756D0000000C45536C6963654F726967696E0000000D61
        75746F47656E6572617465640000000054797065656E756D0000000A45536C69
        63655479706500000000496D672000000006626F756E64734F626A6300000001
        000000000000526374310000000400000000546F70206C6F6E67000000000000
        00004C6566746C6F6E67000000000000000042746F6D6C6F6E670000034A0000
        0000526768746C6F6E67000002530000000375726C5445585400000001000000
        0000006E756C6C54455854000000010000000000004D73676554455854000000
        01000000000006616C74546167544558540000000100000000000E63656C6C54
        657874497348544D4C626F6F6C010000000863656C6C54657874544558540000
        0001000000000009686F727A416C69676E656E756D0000000F45536C69636548
        6F727A416C69676E0000000764656661756C740000000976657274416C69676E
        656E756D0000000F45536C69636556657274416C69676E000000076465666175
        6C740000000B6267436F6C6F7254797065656E756D0000001145536C69636542
        47436F6C6F7254797065000000004E6F6E6500000009746F704F75747365746C
        6F6E67000000000000000A6C6566744F75747365746C6F6E6700000000000000
        0C626F74746F6D4F75747365746C6F6E67000000000000000B72696768744F75
        747365746C6F6E6700000000003842494D042800000000000C000000023FF000
        00000000003842494D041100000000000101003842494D041400000000000400
        0000083842494D040C00000000059C0000000100000071000000A00000015400
        00D4800000058000180001FFD8FFED000C41646F62655F434D0002FFEE000E41
        646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B1115
        0F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14
        140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800A00071030122000211
        01031101FFDD00040008FFC4013F000001050101010101010000000000000003
        0001020405060708090A0B010001050101010101010000000000000001000203
        0405060708090A0B1000010401030204020507060805030C3301000211030421
        1231054151611322718132061491A1B14223241552C16233347282D143072592
        53F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3D375
        E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F63747
        5767778797A7B7C7D7E7F7110002020102040403040506070706053501000211
        03213112044151617122130532819114A1B14223C152D1F0332462E172829243
        5315637334F1250616A2B283072635C2D2449354A317644555367465E2F2B384
        C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
        2737475767778797A7B7C7FFDA000C03010002110311003F00F4149249488524
        9249294924924A5249249294924924A5249249294A8F52E6AFED7FDF55E547A9
        7357F6BFEFA90534D24924E43FFFD0F4AFB11FF49FF47FF324BEC47F7C7DDFED
        56924788A1ABF623FE907DDFED4DF623FE907DDFED56924ACA9ABF623FE907DD
        FED4BEC47FD20FBBFDAAD249595357EC47FD20FBBFDA97D88FFA4FFA3FED5692
        46CA9ABF623FE907DDFED4FF00623FE907DDFED565242CA9ADF623FBE3EEFF00
        CC92FB11FDFF00C3FF00325653A5654D5FB11FF49FF47FF32599D669F49D47BB
        76E0FED1C6C5BAB1FAFF00D2C7F83FFF0045A3126D45CA492494887FFFD1F530
        653A82903292174C9D2492B249248A1492499252E92694A5252E92694A525325
        8FD7FE963FC1FF00F7C5AFB96475F3EEC7F83FFEF88C770A72924925221FFFD2
        F538F24BE497C928F2450BA49BE49D05293274924AC924922858CA5253A6D525
        2B54B54B5F14B5F1494AD564F5F9DD8F3E0FFF00BE2D6D7C564F5EFA58FF0007
        FF00DF118EEA72924925221FFFD3F52DC96E5182941450CB725B9460A5092996
        E4B728A492996E4A5452494CA5295149252E9264A1252EB27AF7D2C7F83FFEF8
        B5564F5DFA58FF0007FF00DF118EEA73124925221FFFD4F5191E0948F04C9228
        5E4782523C1324929791E0948F04C924A5E4782523C1324929791E0948F04C92
        4A5F4F04A4782649252F23C164F5EFA58FF07FFDF16AACAEBBF4B1FE0FFF00BE
        231DD4E5A4924A443FFFD5F50493A48A16493A49296493A49296493A49296493
        A49296493A49296595D77E963FC1FF00F7C5ACB27AF7D2C7F83FFEF88C775396
        92492910FF00FFD6F53D12D132708A15A7825ED48A8A4A652D4B44C027494AD1
        2D3C1327494A81E09E0264E82950128092492550163F5FFA58FF0007FF00DF16
        C2C7EBFF004B1FE0FF00FBE231DC20B9492492950FFFD7F5209D249142C925AF
        9A7494A4C927494A4E9248294924924A5249249254B1FAFF00D2C7F83FFEF8B6
        163F5FFA58FF0007FF00DF118EE145CA492494AB5FFFD0F5320A6DA567EFB3F7
        DDF794B7D9FBEEFBCA7521D18849676FB3F7DDF794B7D9FBEEFBCA5C2A74613A
        CDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF77DE52E15
        3A492CDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF77DE
        52E153A4B1FAFF00D2C7F83FFEF88DBECFDF77DE551EA6E71356E24E8EE4CFEE
        A206AA69249249E87FFFD93842494D042100000000005D00000001010000000F
        00410064006F00620065002000500068006F0074006F00730068006F00700000
        001700410064006F00620065002000500068006F0074006F00730068006F0070
        0020004300430020003200300031003700000001003842494D04060000000000
        070007010100010100FFE1120D687474703A2F2F6E732E61646F62652E636F6D
        2F7861702F312E302F003C3F787061636B657420626567696E3D22EFBBBF2220
        69643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E20
        3C783A786D706D65746120786D6C6E733A783D2261646F62653A6E733A6D6574
        612F2220783A786D70746B3D2241646F626520584D5020436F726520352E362D
        633133382037392E3135393832342C20323031362F30392F31342D30313A3039
        3A30312020202020202020223E203C7264663A52444620786D6C6E733A726466
        3D22687474703A2F2F7777772E77332E6F72672F313939392F30322F32322D72
        64662D73796E7461782D6E7323223E203C7264663A4465736372697074696F6E
        207264663A61626F75743D222220786D6C6E733A786D703D22687474703A2F2F
        6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C6E733A64633D
        22687474703A2F2F7075726C2E6F72672F64632F656C656D656E74732F312E31
        2F2220786D6C6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E
        636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A73744576743D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F
        5265736F757263654576656E74232220786D6C6E733A73745265663D22687474
        703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F52
        65736F75726365526566232220786D6C6E733A70686F746F73686F703D226874
        74703A2F2F6E732E61646F62652E636F6D2F70686F746F73686F702F312E302F
        2220786D703A43726561746F72546F6F6C3D2241646F62652050686F746F7368
        6F702043432032303137202857696E646F7773292220786D703A437265617465
        446174653D22323031392D30332D31325431363A31303A35392D30333A303022
        20786D703A4D65746164617461446174653D22323031392D30332D3132543136
        3A31373A32322D30333A30302220786D703A4D6F64696679446174653D223230
        31392D30332D31325431363A31373A32322D30333A3030222064633A666F726D
        61743D22696D6167652F6A7065672220786D704D4D3A496E7374616E63654944
        3D22786D702E6969643A62363966383932382D393063382D383934352D613530
        312D3862613432396534356232312220786D704D4D3A446F63756D656E744944
        3D2261646F62653A646F6369643A70686F746F73686F703A3665626435353434
        2D343466622D313165392D613635342D6335636565343334373364662220786D
        704D4D3A4F726967696E616C446F63756D656E7449443D22786D702E6469643A
        34316464636231302D613935342D373234322D616633642D6635663335396264
        66626233222070686F746F73686F703A436F6C6F724D6F64653D2233223E203C
        786D704D4D3A486973746F72793E203C7264663A5365713E203C7264663A6C69
        2073744576743A616374696F6E3D2263726561746564222073744576743A696E
        7374616E636549443D22786D702E6969643A34316464636231302D613935342D
        373234322D616633642D663566333539626466626233222073744576743A7768
        656E3D22323031392D30332D31325431363A31303A35392D30333A3030222073
        744576743A736F6674776172654167656E743D2241646F62652050686F746F73
        686F702043432032303137202857696E646F777329222F3E203C7264663A6C69
        2073744576743A616374696F6E3D227361766564222073744576743A696E7374
        616E636549443D22786D702E6969643A66313461373734302D396136622D3434
        34372D613462352D303737383032663837336362222073744576743A7768656E
        3D22323031392D30332D31325431363A31373A30392D30333A30302220737445
        76743A736F6674776172654167656E743D2241646F62652050686F746F73686F
        702043432032303137202857696E646F777329222073744576743A6368616E67
        65643D222F222F3E203C7264663A6C692073744576743A616374696F6E3D2273
        61766564222073744576743A696E7374616E636549443D22786D702E6969643A
        30393063613532612D396433612D626534392D623635632D6235363861333161
        36326530222073744576743A7768656E3D22323031392D30332D31325431363A
        31373A32322D30333A3030222073744576743A736F6674776172654167656E74
        3D2241646F62652050686F746F73686F702043432032303137202857696E646F
        777329222073744576743A6368616E6765643D222F222F3E203C7264663A6C69
        2073744576743A616374696F6E3D22636F6E766572746564222073744576743A
        706172616D65746572733D2266726F6D206170706C69636174696F6E2F766E64
        2E61646F62652E70686F746F73686F7020746F20696D6167652F6A706567222F
        3E203C7264663A6C692073744576743A616374696F6E3D226465726976656422
        2073744576743A706172616D65746572733D22636F6E7665727465642066726F
        6D206170706C69636174696F6E2F766E642E61646F62652E70686F746F73686F
        7020746F20696D6167652F6A706567222F3E203C7264663A6C69207374457674
        3A616374696F6E3D227361766564222073744576743A696E7374616E63654944
        3D22786D702E6969643A62363966383932382D393063382D383934352D613530
        312D386261343239653435623231222073744576743A7768656E3D2232303139
        2D30332D31325431363A31373A32322D30333A3030222073744576743A736F66
        74776172654167656E743D2241646F62652050686F746F73686F702043432032
        303137202857696E646F777329222073744576743A6368616E6765643D222F22
        2F3E203C2F7264663A5365713E203C2F786D704D4D3A486973746F72793E203C
        786D704D4D3A4465726976656446726F6D2073745265663A696E7374616E6365
        49443D22786D702E6969643A30393063613532612D396433612D626534392D62
        3635632D623536386133316136326530222073745265663A646F63756D656E74
        49443D22786D702E6469643A34316464636231302D613935342D373234322D61
        6633642D663566333539626466626233222073745265663A6F726967696E616C
        446F63756D656E7449443D22786D702E6469643A34316464636231302D613935
        342D373234322D616633642D663566333539626466626233222F3E203C70686F
        746F73686F703A446F63756D656E74416E636573746F72733E203C7264663A42
        61673E203C7264663A6C693E61646F62653A646F6369643A70686F746F73686F
        703A63383837363862342D336162612D313165392D396266372D626532623861
        3737326435633C2F7264663A6C693E203C2F7264663A4261673E203C2F70686F
        746F73686F703A446F63756D656E74416E636573746F72733E203C2F7264663A
        4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A786D706D
        6574613E20202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020203C3F787061636B657420656E643D2277223F3EFFEE002141646F62
        650064400000000103001003020306000000000000000000000000FFDB008400
        0101010101010101010102010101020201010101020202020202020203020303
        0303020303040404040403050505050505070707070708080808080808080808
        0101010102020204030304070504050708080808080808080808080808080808
        0808080808080808080808080808080808080808080808080808080808080808
        08FFC2001108034A025303011100021101031101FFC400CE0001010100020301
        010000000000000000000102030904070A060501010101010101010100000000
        0000000000010203060405071000020103020405040301000301000000000111
        0212131003203021144031041517330607375060323641220523110001020106
        070D06050204050500000001003111214191A1023220305161D133A41040B112
        4203D3E30405B536077181E135757660C122B4065013F0F16214A2247495A552
        921585161200010403010002030100000000000000006001310271A1B1322080
        40A05190FFDA000C03010102110311000000FB0AF59F98000000000000000000
        000000000000000000000000000000000075D9FAB8FCBEC07677F8FB00000000
        000000000000000000000000000000000000000000003AECFD5C7E5F603B3BFC
        7D80000000000000000000000000000000000000000000000000001D767EAE3F
        2FB01D9DFE3EC000000000000000000000000000000000000000000000000000
        0EBB3F571F97D80ECEFF001F6000000000000000000000000000000000000000
        000000000000075D9FAB8FCBEC07677F8FB00000000000000000000000000000
        000000000000000000000003AECFD5C7E5F603B3BFC7D8000000000000000000
        0000000000000000000000000000000001D767EAE3F2FB01D9DFE3EC00000000
        00000000000000000000000000000000000000000000EBB3F571F97D80ECEFF1
        F6000000000000000000000000000000000000000000000000000075D9FAB8FC
        BEC07677F8FB0000000000000000000000000000000000000000000000000000
        3AECFD5C7E5F603B3BFC7D800000000000000000000000000000000000000000
        00000000001D767EAE3F2FB01D9DFE3EC0000000000000000000000000000000
        000000000000000000000EBB3F571F97D80ECEFF001F60000000000000000000
        00000000000000000000000000000000075D9FAB8FCBEC077CDE1FEE0056B8B5
        9C6B000022D40000000000000059B025C0B340A012596680008014800882A81C
        F9E8C801480E957D97C1F82EF903E87FF9E7E90002B8379C6B24022D0800E2A0
        00A002000AA2255000214042B9337535400002805894956585A359BCB8D80001
        D117BCFCBF5DFD1903E87FF9E7E90000B75E36F9E759245A1000335C5B850000
        00000000002428896DB973635B9A00012BC8C6B774240A485B20881699A001D1
        17BCFCBF5DFD1903E87FF9E7E9000019B78378C59AB90000066B86CBAA000000
        0000001001168172E6C6B535400012C110000004DE7A7918D950259D11FBBFCC
        F5DFD1903E87FF009E7E90000545278FD312E400000335C5B000000000000099
        5A014032A73635B9A00019B9DCD6A68500080069778D0523A22F79F97EBBFA32
        07D0FF00F3CFD2000504095E3F4C4B9000000CD70EA5B4000000000224975409
        2555002C7373D6A6A800039F3A5A1900042821A5B9A3A22F79F97EBBFA3207D0
        FF00F3CFD200282001357C7DF39720000019AE2D8000000001248BAA001332DA
        A005CB9B3ADE74000066E753433723534258204D4BE4E7AB17A22F79F97EBBFA
        3207D0FF00F3CFD20141000026AF8DBC2E4800000C5716A5B400000022497540
        000490B6802C7373D6A6A80010E696CD0001424034B65E88BDDFE5FAEFE8C81F
        43FF00CF3F48290000029136F1B585840000062B8F60000004492EA800000224
        97540172E6C6B7340000724D000022550217A27F71F9DEBBFA3207D0FF00F3CF
        D252000000056F3BC78FAE79AA800000C5716A5B400842C9175400000001332D
        AA02C73F3D59AA000012C4B4C5CD00D4D429D157B7F83D79F4640FA1EFE7BFA5
        600000000559ACEA78DBE52AA00000315C7B002E521A2800000000020280B973
        635B9A0000B3C9C749282001681D11FB9FCCF5DFD1903E82FC27D65F379F4E7C
        6900000003537C7D39F8FAC4AA100000C570EB2CDD154B2E5AA0000000000224
        97540B1CDCF5A9AA003373C99DF3E365400001D117BCFCBF5DFD1903E813C3FD
        229FD3E3DF9F968000000568B8D63C7E9CC02000018AC994AB29A00000000000
        009996D50B973E35A9A000CDCF2675CF8E8940000E88BDE7E5FAEFE8C81F409E
        1FE9029FD4E3DF9B9E900000002B78DE3C7D7350202E2C08D2E2B29351680000
        0000000002495542C7373D6A6A8337356272677CF8E810001D117BCFCBF5DFD1
        903E813C3FD200B1FD4E5DB9B96C00000059BA7174C706F902887159A548519B
        26C0000000000000001124BAA2E5CF8D6A6B373A9A19B91CB9DF363A20003A22
        F79F97EBBFA3207D02787FA40029FD4E1DF9B1A40000000D37C3BE7C3BE6004D
        4AE3B988B0456A8000084405D40014202824821692C72E75652669608BCB9D72
        677598BB97933BE88FDDFE5FAEBE8C81F409E1FE9000165FEA71EBCDCF600000
        02DD55E1DF3E1BCCB5512B16096042B1B000211C7ACF8FBE79BA2405812AA422
        824B51A922AC1C990160A2ACB2CA2AFF005787D1D14FB7FCFF005DFD1903E813
        C3FD2000058FEA71EFCDCF640000000AE2DE784A5258B9E133B9562112ACB740
        00386E7C4E98D482000025A00B1A44B2CCDB64E4CB5340002168597A3CF63F37
        AF7BC03E813C3FD200000B2FF578F6E5E7A00000015A9670EA71DCB592010C51
        2AC4CDB34000124E2B38772A580005B6282255405B4458E6CDAD24145A8E6C6B
        95B47451EE3F3BD77F4640FA08F0BF50A0012A89A97FA5CBB6A56400002AA962
        70EF1C7AC08B5218A5225019A500000190902E8A02665D5002249755172E7CEE
        A80489579F1BE4CEBA22F77F99EBAFA3207D0C780FD1012800691036BAC80002
        ADA94335A9E3EF963590520E331A85B0A94A0000249E3EF9C582DA9010B10580
        149951516F2628325A44CAEE5E8EBD97CDEBEEF00FA04F0FF480000001A8FEA7
        1EFCB8D20142ADA9249A9D06758E0DF3C6B20B003082D23358DCAA00038D9F13
        A73CDA00000B20968000153979D0285113A3DF63C3D7DDE01F425E0BEF160290
        8A833ABA9059BF2716C05BA5952422353A089358F1F78CEB20A09C1A8A0866DD
        2680001971EB3E2EF0A8551A90010D012904B51691CD9A8AA42C4E8E3D9FCDEB
        DEF00FA0DF07F658540500AA02053CACF4E5C52DA922000353A133BC78FBC66E
        4028200071D6351680001249269A50400000005925B570E79BD4B2883A2BF6DF
        0FAF3E8C81F40FE1BEA804102A0028406A5FEA70FA39705A900006A7412E66A7
        8FBE59B000000071D6360000892716A67524514428000008322B79BB96CA64BD
        1B7B3F97D7BDE01F431E03F42C45D848B5742412DB150B8AD46A02000001A9D0
        6779F1B5CA6B2002900038EB1A8B404492DB867C4EBCF16800000000002C8397
        16A8E8F3D8FCFEBEEF00FA04F0FF004810A0080A416A4294B2FF004F8F7E5C50
        00006A7404C6F1E3EF9CB0005200071D63608925D508C33E275C44CDA00D4822
        8025002C0D49C99D17A3CF63F37AFBBC03E84BC17DE22DB2466C2EA494922D32
        8B4CD8559AF3B9F4B900001A9D0019DE3C6DF296000A0800E3AE3D445D500004
        13341001540500008CEE6B9B1AE8B3DB7C3EBCFA201F435FCFFF0054000262B5
        2DDE732D89A854586A4A962140001A9D000B31BCF8FBE510000A400715674500
        0018673480A000080000A65A5E8DBD9FC9EBDEF00FA1EFE7BFA400000290042A
        C0000000000D4E800C74C78FBE510000A08071D629A0000CC9E274E5C7AA0000
        00000001D217ADE1EBFEF00FA1FF00E7BFA4000042C280000000000000D4D800
        71EF1E3EF9900186EA6990071D63600008CA787D39E340000000000379747FEB
        F87AFF00BC03E82BC2FD600E3B38F59B28291400000000000000B1CD9D846779
        C2008AA40A090634CD116D800433600010011400017A41F5DC3D7FDE01F409E1
        FE9000E2DE78F50021410440001A6C0000000B97366D94442AAC010A01104B33
        650B650204A40A00000025511D1FFB0E1EBEEF00FA04F0FF0048000E2DE7152C
        1490AB2CB080005B29400000068E5C2CA000000000A2652CB54000000000019B
        2C551D1E7B1F9FD7DDE01DF6F87FA40CD962AC1400492ACAA040014000000008
        216168000204B45012D8D00000000000085003A50F5BC3F03DE01DF6787FA442
        80000002522800000000000020AB000000021400351A0000000000428003A51F
        5BC3F03DE01DF6787FA400000000008500000000000101400000000405000000
        0000010255000E947D8FCFF81EF00EFB3C3FD440000000000214000000000101
        40000000001014000000000D4D66C200001D28FB1F9FF03DE01DFB788FAB8AE4
        000000000010588000000002D320A80000000160B352C4000002A89672E7496D
        9C3720000749BEBF8FE07BC03BF8F17F4000000000000138AE4B400000400D4D
        40500000000101412C45500019B8DCD7262AB2716F3A9A00003A49F5DC3F01DA
        01DFDF89FA400000000000010B24B4000062CE2D66CD80000000000000292C45
        580A42B3C99D58C59C7B965280001D257AEE1F80ED00FA0EFE7FFA0000000000
        000001116D8004B2CA0000000000000000024B6C0A42ACAD44B240000007467E
        E3E1F5EFD1903E807C37D7400000000000000085008500000000000000000000
        03971AB5C361028000000747DECBE5F5F778077E9E2FBD5000000000000000CD
        CEA544D44B54000000000000000003373A9752D814E3D42800000003A49F5DC3
        F01DA01DFA78BEF54000000000000003373AC8B2CAD0000000000000000000CD
        CEE5DE2DAD4BC1ACAD000000000E927D770FC0768077E9E2FBD5000000000000
        0044966A6866E753400000000000000000009C99BA978F59C5168000000001D2
        4FAEE1F80ED00EFD3C5F7AA00000000000004B11540110550000000000000000
        227366C33671EB3A9B88AB2800000003A49F5DC3F01DA01DFA78BEF540000000
        000004B986A680004B05940000000000000CDCD379BACDD1C7A98B4500CDCD96
        A8000000E927D770FC0768077E9E2FBD500000000000097296A80000222ACA00
        0000000001139212EA2D7156358B3740009725B28000007493EBB87E03B403BF
        4F17F450000000000012C4550000000337365AA0000000003373A979B1752E6B
        8ECCE90A000019B9A59A000007493EBB87E03B403BF3F17DB4D000000000012E
        52D50000000009730D4D00000000066E772F262CAE3D3371A9B00000011259A9
        A00003A49F5DC3F01DA01DFA78CEF12CB5400000001966AD500000000002584B
        340000000088525500000000002588AA001D24FAEE1F80ED00EFD3C5FD149725
        B28000000CDCEA6800000000000044966A6800000066E6CB540000000000004B
        226A6801D24FAEE1F80ED00EFD3C5F7AA337365AA00000CDCEA6800000000000
        0002588AA00004415400000000000001105503A49F5DC3F01DA01DFA78BEF540
        892CD4D0000CDCEA68000002148500000000960B28004B115400000000000000
        00CDCD96AF493EBB87E03B403BF4F17DAA800440B02696594000000445B96373
        60000000082CB28102550014100000000000000895AE927D770FC0768077F1E2
        7A94000096EA4CDB6400000000BC7B89AE4CE0A000000000B5209560012B16D5
        DE72000000000000001D237AFE5F80EF00EFE7C4F51680089756245D64000000
        0048B0D2140000002512CDCDC230A001065695014000000000009443A46F5FCB
        D7FDE01DFE78CEE0002259A32550000000010005000000011059A22800000000
        000000000001194D7489EB787AFF00B80EFF003C5F7AB100960D4D0CDC92CD00
        0000000000000000290055CDC8B28000000000000000004B1157A43F5DC7D7FD
        A01F405E27E84000000085000000000000000002C4A000428000000000000000
        00000E8FBD870F5F77807D06F84FB00850000002140000000000000042800000
        10A00000000000000042800E8D3DA7C9EBDEF00FA1FF00E79FA4255100000012
        8580005000001000128580000001285800000000000012A88007449EEFF3FD77
        F4640FA1FF00E79FA59B752000000002545D480294000004204A028020000002
        50B00000000000095600007449EEFF003FD77F4640FA11F05F6D0000002D6B3A
        D000C94F1F78E1D60000003CBE7D779D0ABC7738DE5007367540000073E37602
        02928005000A44AAA80A201D11FBAFCEF5DFD1903E82FC1FD2000000391BE694
        0011C1B9E0F5E566400001E4E3BF95CF60B9B386F344D652F335C928000039B1
        D3931400001A9D000005466CD0BD20000E88BDC7E67AEBE8C81F417E0FE90000
        00D5D73E77500030781DB966E22D9000072E7AF9BCFA2325AE1D7396149BCEB9
        66824B6D2141BCEB9F1B812A8010353A00005912CD017A40001D117B8FCCF5D7
        D1903E82FC1FD200000B6F919DD000965781D7971DE6066DD2200D4DF9FCBB12
        04E2D670C6A685396DB1532D724D6359C5BBCE6CBE4F3D802AEB3B0A080353A0
        0B2259A000BD20007445EE3F33D75F4640FA0BF07F480000AE7CF4D800097C3E
        98F1F7C40025A4B15BF3F8F6A133666E38D986A695CD2D02B79D645C0E39D3CB
        E7740035376501410353A09722CD000017A4007445EE3F33D75F4640FA0BF07F
        4800069CB9DF2CA0028E0D67C2E9C4800000F2F1F473F3B8B1666CE399A08725
        D72CC896EB3A96E6E2C439F1D3932006A6ACD000050D67A4B91668000002F480
        7445EE3F33D75F4640FA0BF07F48000DB5CF340008C69FCFEBC632000146FC9E
        7D3C9E7D32CE759B6713280356DBBE5CF306ACD6359A88DE77CF8A00B2EA6C00
        00504B5AB28000000BD201D117B8FCCF5D7D1903E82FC1FD20069737C89BA000
        23C4E99C6B2000044DCDF95CBA66C8CB6E39890055E4D6B368DE33C937C7732C
        1BCEBC9E7400353A5800001402353A000000017A41D117B8FCCF5D7D1903E82F
        C1FD202AE9CFCFA680001C1A440A000B26B3BDCD66E66B0309862CD09672DDCB
        A49A4E4C6A8055F239EEE68805580000A2A4015ACF4000000005E93A22F71F99
        EBAFA3207D05F83FA4361CD8DF24A0008F1B73C5E9C400010D6F3AF231D3926B
        3BC6A4CA70A0D44396EA6B4359CEB376A0179F1BDE2800000001480028A9353A
        00000001D11FBCFCBF5D7D1903E82FC2FD2C9B6F1BE7940004250002150D4D40
        71EF1A9331C57165CD0E595BD8D4CD9AE4C801CB9E9CBCE80000000148000015
        66ACD0000000E88FDE7E5FAEBE8C81F417E13E946B579F1D2A000653F9FDB397
        35A00D4D25A72E75E573DE6F3CEE8E398400AE46E6A8D49CB8A00DE75CFCF600
        0000005200000000D4E8000001D117BCFCBF5DFD1903E82FC27D34E7CF4D0000
        38EB3400011A9656A25CCB25B8989002B99ACDACA69CD8B402CBE473E9600000
        000520000000015AB3400000E88BDE7E5FAEFE8C81F415E13EAE7CEB91400078
        BBCF0EB200006A5AD7938D5678F7522678E66A85723535A164DE6EA5A8266F93
        9DEB3400000000000000000353A4B916680007445EF3F2FD77F4640FA0FF0007
        F66E6F49500195F1778200009565E4979A5E3D496DCE78E6401BB574B472626E
        58B0D272E3A72E280000008500000000000D4E825C8B34001D117BCFCBF5DFD1
        903E857C17DA228A838CE1DE41002C22D39737965E3D633AD6B39E2990259B6A
        DD2D1A9397140171BF233AB00000012AC0000000000000D4E92E459A007445EF
        3F2FD77F4640FA15F05F681161A4F0778C6F12D08115572D1E772E99D31A5931
        33962CD0572DD66E926A4E4CEA8026BC9E7B292C0000128580000000000001A9
        D0446A336A8E88BDE7E5FAEFE8C81F42BE0BED000E1AA94000C9A11C8B8B25CE
        A4E2B712085392EE5A3526F2D28097C8C74D64250B0000255800000000000000
        0D4E825C96CBD117BCFCBF5DFD1903E857C17DA00F1F53C4E9C336D0044B7532
        5F2F9F6E6CDCEB14B262D96865E4635A9445D5BBC5956017500084AD40105580
        000000000000001A9D009723A23F77F9BEBBFA3207D0AF82FB40E3B3C0EDC648
        2B711512C839F3D7CCE7BCEB1C7AD8006B33979DE7CD0235C99D000000003342
        C2AC00000000000000001A9D0012E7A23F77F9BEBBFA3207D0AF82FB40F0F79C
        DC80585082B5E673DE2E71BA001ACCDE2F938A00D4E96000000001C7AA393300
        0000000000000000353A0026B3D11FBAFCDF5DFD1903E857C17DA00032B402A0
        18B38F7400127261E4F3D500D4DD94000000094850B000000000000000000006
        A749724E88FDDFE77AEFE8C81F42BE0BED000CB5A4202E574CCB38B4968006B3
        3C9E5ADC006F79A00000004A4500942C0000000000000000005692D5E88BDE7E
        5FAEFE8C81DD4794FA0012DB20000CDB2C00003797266812B534000000008500
        00000000000000000000002CD750FEA3E3FC4F6807677F8FB000000000000000
        00000000000000000000000000000000000003AECFD5C7E5F603B3BFC7D80000
        000000000000000000000000000000000000000000000001D767EAE3F2FB01D9
        DFE3EC0000000000000000000000000000000000000000000000000000EBB3F5
        71F97D80ECEFF1F6000000000000000000000000000000000000000000000000
        000075D9FAB8FCBEC07677F8FB00000000000000000000000000000000000000
        000000000000003AECFD5C7E5F603FFFDA0008010200010500FE8FB7FE7FA56D
        FF009FE95B7FE7FA56DFF9FE95B7FE7FA56DFF009FE95B7FE7FA56DFF9FE95B7
        FE7FA56DFF009FE95B7FE7FA56DFF9FE95B7FE75EFB74EFB74EFB74EFB747EB7
        745EB770EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370E
        F370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370
        EF370EF370EF370EF370EF370EF370EF370EF370EF374EF374EF370EF370EF37
        0EF374EF370EF370EF370EF370EF370EF370EF370EF374EF374EF374EF374EF3
        74EF374EF374EF374EF374EF370EF370EF3747EB774EFB74EFB74EFB74EFB74E
        FB74EFB74EFB74F4B537B5C94F97041041041041041041041041041041041041
        0411CAB8924B892492E2492791E8FE8F297293F0D248DEAD0F911AC11A24410C
        B48208E2F47F479484C9E4A6353E0D8C5C2C8E4469041041041041040D09F07A
        3FA3CC5CA4FC32E06343E4492492CB8B8B892E2E2E1BE1F47F479B3CA4C6A79E
        DF32391041690416969690410411AFA3FA3CD4C5CA4FC2C09F0B43F0703D3D1F
        D1E727CB4CF3F091CF6CB892492492492492493D1FD1E6B5A2722E527E2DA1F1
        B45A5A8B516A2D45A8B4B4B4B4B4B4F49F4BC5A679F0B291F3A09E0688E4CF04
        924F07A4FA5CF6313917293E17E0609E0687C6C6CB8B8B8B8B8B8B8B8B8F49F4
        B5B0B074C7393E5267993C0BC03E28E2631A1723D1FD1E16A4AA98E5B114BE5A
        7C097876B8E0688E47A3FA3C75531E1208D234425E1589F29150D09F17A3FA3C
        6D49528E6A7C53A493A27E1DA275687C6D0D717A3FA3C974C731F4170CF05A5B
        C9F32D2D2DE6753A9D482D2082082D2D1523A0B0B0B074E9E8FE9725A92A51CB
        A8A593C324E924E93C74E905A884416905A411A41047022081F29A2AA4F47F47
        94D0E98E6262279108845C4AE34F49249249249278FF00F2F4688E438140E993
        D2FD2E5B454A398842E2B4B48208E37D05517171797179797979717171717990
        559717978EA2E2E2E2E2E2E2F1D4C92E83D27D2D6E2E2E2E2E2E2F2E2F436344
        2E627C525C49717170B932492C964F2635688E381A7A7A3FA3AC104104104105
        A432D2DE4C93A27C882D2D65A2E4C169616969696A2D2D2D2D20821102A48442
        2D2358208D2D47A5FA5CE6874F31313E3924927934D5CA927C07A5FA5AE43217
        9797B2F65ECBCBCBD8F705B837C73C5227C524925C88278FC855124925C5C892
        4924B8B8B8B8924B8B8B87521D45C5C5C5E5E7A5FA5AE33198CB0B0C6632C319
        8CC6633198C74C13CB4C5CB4C6A790CB89D649249249249249192344717A4FA5
        ADC5C4971717124925CB49D5A92A51CC9E627C95496961616169696969696969
        6969696969696169696969E97E96B0C820B59D7586433A9D74EA753AE902E9CB
        427CB4C6A78E927C135C1E97E96B0410410410411A4105A8820843A4AA9E5A27
        989F1B62A89E64924924E8F5F4BF4B5BCBCBCBCBCBCBCC86432190C85E643219
        0C83A87CC5CC4C7CA75171717171717171771C11A7A4FA5CC83AEB0493CF4C9E
        627CA82C2C2D2D2C2D2D2D2C2C2C2C2C2C2D63A0C6CF4BF4BF829297CC4CF3E3
        42F05E9BE9F1C104704104104104104104104104104104104104409F313E4489
        F80A8F4DF4F5B4B4B4B4B0C6633198CC6633198CC6633198CC6633198CC66331
        98CC6633198CC6622C2C2C4585A5A8B4B4B4B4B4820B4B482D2082C2C2C2C238
        A0820820820820820F4DF4F909F8A688E19E5492492492492492492492492492
        4924925C49E9BE9F253E19D649F02C8E74788F4BF4B9524924F0492492492492
        4924924924924924F0492492493C3249226410410410410410410410411A4104
        107A6FA7FCAA64924924924924924924924924924927A6FA7FD2BD2FD2FE82C5
        C8F4BF4B82D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2
        D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2
        DD2048B4B4B4B4B4B4B4F4DF4F5820820820820820820820820823973E3DEA90
        B91E9BE9EB0410410410410410410410410416905A5A5A5A5A5A5A5A27E39888
        122393E9BE9EB9D99D99D99D99D99D99D99D99D99D99D99D99D99D99D99D99D9
        9D99D99D99D99CCECCECCECCECCECCECCECCECCECCECCECCECCECCECCECCECCE
        CCECCECCECCECCECCECCECCECCECCECCECCECCECEE199D99D99D99D999999999
        99D99CCECCECCECCECCECCECCECCECCECF48E76B5C48C48C48C48C48C48C48C4
        8C48C48C48C48C48C48C48C48C48C48C48C48C48C48C46246246246231189189
        1891891891891891891891891891891891891891891891891891891891891891
        8918918918918918D18D188C4623123123123123123123123123123123D2AFFF
        002F12FC73D3C87D443E77A6FA7E25F8E63D3CB45CEF4DF4FF009791B244BC07
        A6FA7FCC40A9F03E9BE9FF0026864E902F05E9BE9FF27237AA5E0FD37D3FE45F
        0411E13D37D3FE458F48F0DE9BE9FF004AF4DF4FFA57A6FA7FD2BD37D3FE95E9
        BE9EB24924924924924E924924924924924924EB2492492492492492493A4924
        E92492493AC92492492492492492492492492493A7A6FA7ABE54F313F0689E19
        F0F27A6FA7AC1041041046B0410410410410410411A433AE9041041041041041
        0468C488208208D7A90F582082082082082082082082082047A6FA7C12492493
        AC6924924924924924924F0C924924924924924F0C9249249249249249249249
        2492492492492492493AFA6FA7FD2234F4DF4F592E2592C92492492592CB8925
        92C964B2592C964B2592C964B2592C964B2592C964B2592C924B8964B2E2E249
        2592C964B2592C964B2592C964B2592C964B2592C964B2592C964925C4B3D2FD
        3D6F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F
        2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F
        2F2F2F2F2F2F2F2F3D2FD2F0F041041041047147F0DE8FE978682592C964B259
        2C964BE38208FE0FD1FD2D6C2C4588B11622C4588B11622C43A4B4B4B4B4B482
        0A682C2C4588B11622C4588B51622A42A4820815258584104104104104103238
        238A492492395E93E973678994D3CAA993AAD6091F25BF00B95E93E9783484B9
        353D208D11248DEB04F137C73E13D27D2E5B7C53A534F25B2758D172A746FC67
        A4FA5E060A572AA7AA5A473193E33D27D2E4A637C6972AAAB58E4CE890F56F98
        84FC07A4FA5CF6CA57264AAAE17C084F856ADF8EF49F4B8EAE44099722E45C8B
        91722E44A2E43AB9AF482082A7E3FD27D2E37C8B4B4B4B4B4B4B4B0B4B74489E
        521BE16FC7FA4FA5C2941237C4D1493C725C3625C086B8A389BFE03D27D2E1AB
        C043D1B12D18B54C6B810DF0B7FC0FA4FA5AFF00E46F8D212E26488AB85F0CEB
        E5C2FF0082F47F475FFCF2131D42A8B8B99732E65C4924E887C88247C0C9FE0B
        D1FD1D50F8E9A47496969696969696168C4B8DF03E16C6FF0083F47F4756F917
        17979797979797978EA122796DF0D4FF0084F47F479291696161616161696160
        D11C688E07C2DFF0BE8FE8F25124924924A24B912362E05C723E06362FE13D1F
        D1E45A5A5A41041043208D121F22491F0C8FF86F47F478E95AB5AC7054C489E2
        6C7512C964B249249249FE1FD1FD1E24B9553E4B7C13CD823C7FA3FA5C499717
        1722F2E2F2E2E1D648B890DF8262F1FE8FE97804B8EA7C2F9D24F8FF0047F479
        E909F13637C0DFF1FE8FE8EBEDC7B71EDC7B71EDC7B71EDC7B71EDC7B71EDC7B
        71EDE7607607607607607603FF00E71ED87B61ED87B69ED87B61ED87B61ED87B
        61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B6
        1ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61
        ED87B61ED87B61ED67A7A6DDBFE95B7FE7FA56DFF9FE95B7FE7FA56DFF009FE9
        5B7FE75FFFDA0008010300010500FE8EFF00A5BFE96FFA5BFE96FF00A5BFE96F
        FA5BFE96FF00A5BFE96FFA5BFE96F8315262A4C5498A916D523DA4588B11622C
        4588B11622C4588B11622C4588B11622C4588B11622C4588B11622C4588B1162
        31D263A4C749622C463A4C7498E931D263A4C7498D18E931D263A4C7498E916D
        A1D1498E931D263A4B292CA4B2931A31A31231A15148B6A930D261A4C3498693
        0D261A4C3495A87C96B973E0249249249D249249279369690416969616160A81
        53C8DCFF005CAA972A3C4C6AB8E04F592492759249278B73FD7290D0F94DF865
        C33C8924B8B8B8B8B8B8B8B891313E066E7FAE527A55FC32E34882C2C2D2D2D2
        D2D2C2C2D12E1DCFF5CD6B97E5E03CF973C8B8B8B8B8B8B8B8B8B8B8B8B89D77
        3FD739AFE1972275964BD64920913169B9FEBC4B5E3279091696969696904169
        69691A6E7FAE7B43FE1971A65C5C5C5C5C5C5C5C5E5E5E5C57FEB9E864729A3C
        BC5CF26DE0B4B4B782BF3F014952FE1D71A122D20B4B4B4B4B4B4B4DCFF5ADEC
        BD94D53CD6B99E42F153C54E93C9DCFF005C2994D53CBA468A97F0EB8A44C5C8
        DCFF005C74D53CB9132A5CA9249F173C305452F91B9FEB8D329AA796969553C5
        02A48208F1AB87CC4CA5F1EE7FAE4D354F310D70C12497171772E49249249E39
        2513A49249717176B714D66445E5E2AB4DCFF5C94E0A6A9E5D23435A411A470C
        7259248DEB3A4F0C6BD783A9D4EA753A89E89EA994D46E7FAE5262AA44F98D11
        ABD6DD3A9D4EA75E36B49249249249278A5923D193CA4E0ABCF969C14B9E5F4D
        1A1F1CE92895C687496969696B2D2D20B4B4B4B482D2D2D2D2D2D2D2D2D2C2C2
        C2D2C152588B0AFCF5B596B2D65A5A5A5ACB596B1213E6B5C4F58208F113C0A0
        9249211D0915449B9FEB5B8B8B8B8B8B8B8B8B894362AB9703435C725C493CAB
        8B9925C5C5CCBCB8B8B8964925C5C5C3A8B8965C5C49248C551732AF3E726535
        7318D731AE3A972208249E4412470A1F9EB8CC66331988C6632C2C3198CB0547
        1413C2D1035C505A432394E923582D2D65A5A4696B2D65A5A5A5A5A5A582A0B0
        B19616161579EB7979797979797991990C86432B323320AA9E5BD2A5E1639D1C
        13A410415F9EB696B20B590410410411A41027052E79690D0D78382E2E2E2E2E
        24B8B8B8B8B8B8B8B8BCB892E2F2E2F2E2E2AF3D6F44A2E44A25128944A25128
        84743A1D0E84A131F2D8D783635E0A04F5ABCF952492492C924924B8A5F2DA1A
        1F836881E92493AC10411C51A410CABCF5C66231188C43DB3118CC4CC6633198
        CC658636631524732A435CCF2238E082082082082082393257E7CC83AE9E6412
        493CE68A973239324971717171717171717171717171717171795F9EB2492492
        493C33E16AA7C231AF04FCFC7C924924C9553C4D8B9B6F827E7ADC5C5C5C5ECC
        86466432190C86432190C86432190C86432190C86432190C86432190C8642F65
        E5C5E642F2F2F2F2F2F2F2F2F2492492E2E2E2E249E182082082082082347E7C
        86883A1D3450743A1D38D41D0E8743A1D0E8743A1D08279D041075D3A1041041
        0410410410410410411AC0FCF9304104104104169690410411A4104104104104
        11AC6B0410411AC1046AD13E096B579F2638A08FE0649F10FCFC027E15BFE15F
        9FF4AABCF56BC7C78F81AE455E7AB249249249249249249249249D27993A493C
        D9249279324899248DF21F9EB24924924924924924924924925CC86753A9D4EA
        753A9D4EA752D248F09027C7E62E0AB90FCF5B91722E45C8B91722E45C8B9172
        2E45C8B91722E45C8B912892492492492492746BC33427C2C5AC971E7C87E7AE
        0460460460460460460460460460460460460460460460460460460460460460
        3023023023023023018118118118118118118118118118118118118118118118
        1181181181181181181181181181180C08C08C28C28C28C28C28C28C08C08C08
        C08C08C08C08C08C08AD43D72332332332332332332332332332332332332332
        3323323323323323323323323323323323323329919919919919919919919919
        9199199199199199199199199199199199199199199199199199199199199199
        197B3233233233233233233233233233233233233232AF3D5786A49D18978AA7
        5F2F00FCF55E1A910DF8CA74F2D5F39F9EABC2B625AB7E2DA168DF807E7AAF08
        D8970C09F8A91B129D1A279AFCF55E0DB12E3689F09514E923E3F213E5BF3D57
        82912E4B44F826411A468DF1B427CA7E7AAF03225CCF213E7D3C1237CA813E4B
        F3D67C0A5CE689E75232757CB68F2E43F3E0F213E779780684F9AD888F01027C
        4FCF55A409F2FCFC1B47972DB12F06D09F0BF3D56B027E3E04F90D89785689E0
        7E7AAE068F2F1ED09F13625E2204F47E7C98208208E6F973BCF8978A6B47E7AB
        E4C13CD6BC0C0993C33E21F9F0C92493C324924924924924924E924E92492492
        49249249248B8249249D649D649249249249249249249249249D1F9EB05A5A5A
        5A5BAC105A5A5A5A5A5A5A5A5A5A5A5A4104105A5A5A5A5A5A5A5A5A5A5A3425
        ADA5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A35A3F3D
        6749249D2756C9249249249249249249249249249249249249246C4493A32492
        49249249249249249249249249249249249249247E7C10410410410410411A41
        0410410410410410410410410410411A41041041041041041041041041041041
        041041041041041041041579EB616161616161616161616161618CB0B0B0B0B0
        B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0C65858585858
        585858585858585858585858585858585858585855E7FD2ABFF5FD2ABFF5ADE5
        E5E5E5E5E5E5E5E5E2AC5512492497125558B70C8CC8CC8CC8CC8CC8CC82AD97
        17124923A8BCBC550AA249249249249E382082082D2D2D2D20B448B4B4B4B4B4
        B4B4AFFD7352E248A9F2A94411A3D234812E4A5E07CF93B9FEB98971B654C5C8
        A56924923AB8249244F824929249279B3CBDCFF5CB4B91555C13C2A92092746C
        AB544EAB59D12E14B96D91CBDCFF005E0AA7C49EA8A50DEAD97094F174121EAB
        892F0FB9FEB94971B63E4245348F491BE15AB625A31890970A5E2373FD7252E3
        63AB9105348F4918B817025A2D570A5CBE9CEDCFF5C84B90D161616161616169
        60A9D1BD27931A345A5A25E3F73FD71AE43A855171717171717A2E2E5A3245A5
        4F542D57125E3F73FD71A5C7510C86432190C86416B2D121B1F147040B852FE0
        373FD7125CDE9A4224824918C6F542D57125E1BCF97B9FEB852E36C91B2592C9
        64BD5A29431F1A42E425FC16E7FAE18E368820820820B448B74A9948C6F86390
        97F07B9FEB5812E375179797979797978AB2747AC8F5485AB42235484BF83DCF
        F5AA5C8748A82C4588B11622C4582A11031BD678172578E9E2DCFF005C3235AB
        65C5E8BD17A2F45E8B8B8B89E4342E4AF1F04F0EE7FAE4B20820820B4B482048
        9E0A9EB491ACF0A5A4F8F8D275DCFF005C87512492492497124EAF47ACF0B447
        02FE1674DCFF005C753244C65CCB9923649225A4EAC82048820820B48208208F
        E1609373FD71363D5245A5BC14D3C8812E05FC6366E7FAE268C6633196161698
        CC625C8425FC8A2BFF005CA9E6A5C297F1DB9FEB9EC4F8D702FE3634DCFF005A
        E432190C86532190C86432190CA2DC32190C864321905B86532994CA673399CC
        E673399CCE673399CCE673399CCE673399CCE673399CCE673399CCE673399CCE
        673399CCE673399CCE673399CCE67339DC15397FD29FF4B7FD2DFF004B7FD2DF
        07FFDA0008010100010500FE8FF7BFFD9FF4AFBDFF00ECFF00A57DEFFF0067FD
        2BEF7FFB3FE95F7BFF00D9FF004AFBDFFECFFA57DEFF00F67FD2BEF7FF00B3FE
        95F7BFFD9FF4AFBDFF00ECFF00A57DEFFF0067FD2BEF7FFB3FE95F7BFF00D9EB
        F1B7D947C6DF651F1B7D947C6DF651F1B7D9457F8DFECDA4F8E7ECD3E39FB34F
        8E7ECD3E39FB34F8E7ECD3E39FB347F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7
        ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3
        E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E38F
        B30F8E3ECC3E38FB30F8E7ECD3E39FB30F8E7ECC3E39FB30F8E3ECC3E38FB30F
        8E3ECC3E39FB305F8E7ECD3E38FB30F8E3ECC3E38FB30F8E3ECC3E38FB30F8E3
        ECC3E39FB30F8E7ECC3E39FB30F8E7ECC3E39FB30F8E7ECC3E39FB30F8E7ECC3
        E39FB30F8E3ECC3E38FB305F8E7ECB95F8DBEC96BE35FB28F8D7ECA3E35FB28F
        8D7ECA3E35FB28F8D7ECA3E35FB28FCA9E9B63D17E50E4D745BC2E785CC5ECBD
        97B2F65ECBD97B2F65ECBD97B2F65ECBD97B2F66466466466465ECC8CBD99199
        199197B1549AE3892CA8B2A2CA8C7598EA31D463A8C5518EA31D4534D74BE3FC
        BDFB6793D0AA8B5EBE5C55533E2D369D2D35C4BA14D772D3A1D0E87425128BA9
        2EA4BA93A3E2FCBDFB6795575556DDA53C9AA991F865E5AA6D35526B8E512892
        4924924924928A9D2D435AB3F2F7ED9E53523529D163E4D54CF83F3E426D14B4
        F8D229A2E31331331331188C46231188C4534BA787F2F7ED9E6352AAA5D2F935
        533E07CF949B42A935C49B4D6E52D64A4BE92FA4BE82FA0BE92FA0BE92FA4BE9
        2FA44D3D7F2F7ED9E6D54AA934E97C9AA99E7F9F31368A5A7C89D7A9D759248D
        28A9D2D35523F2F7ED9E7554AA93A5D2F935533E1609E14DA1549F229A29A963
        A4C7498E931D263A4C7498E91EDD22DBA116522A552CFCBDFB679F552AA5552E
        97C9AA99E54C733CB85369D2D3E3A6A74BCA6532994CA653375CA6532994CA7E
        5E73F9639E8AE955269A27935533E2D369AA935C88E08208E0FCBBFB5F54D3E6
        A2BA5549A3CB935533C294B87E15382969AE2A5C34A86ADA4B692DA48A48A48A
        4B692DA4B693F2F7ED9D7B9DD4775BC6CEF2DD5CCAE8B8F2E5554C9E47412509
        52CA5B9F03E5C09B4D549AE14515DAD43E4FE5EFDB3C34D4E97B3BCB757290D1
        5D12B955D32269A50D28A7C2791E7AA6D09A6B8A8AEDE4FE5EFDB3C54D4E97B3
        BD4EEAE5A65744E913C0DC2BD17A2F45D4A2B74B1BA5F868E04DA69A6B5F3D19
        4576F23F2F7ED9E3A6A74BD9DEA77572A34AE89E17D56363DB6DE392C70E9716
        D5E2D382969A3CF5F324A2B8E3FCBDFB67914D4E97B3BB4EED3CCAE89E26DD25
        553464AA2FA8C8C6E7C4CA2EA455A4D6E50D64A0C941976CCBB665DB33ED147A
        ADB4773B2773B0773B06DEF6DEE33F2F7ED9E4D353A1ECEF53BB4F29695D1AB5
        047489150A2DA0B682DA0B291D1C8AEF325664ACBEB664ACC9597D65F517545C
        C9649249D04A5B490E981C09C34E4EA753A9D49E14DA7B1BEB757E5EFDB3CAA6
        A7455B3BCB769E66E510252293AD23F31F9DBA753A92C97C7B9B7710D3B4B482
        0B4B4B4B78544B83A5AA20A5C133CA4DD2FF002DB757E56E5D353A2AD9DEA776
        9E574D2BA14B7C2DC2BCC85E64A46D37C75EDDC60ACC15982A305460A8C0CC0C
        EDD981980EDD1811811811DBA305260A4C140B66942D8DB676D41DBD076F41DB
        D076FB676FB66DECECB3B6D93B7D83F2F24BF2C6B8774C3BA60DE306E98374C1
        BA60DE306F18378A76B7E8AA875554F32AA1D3AF968D4AB19632C658CB18E869
        781F3E4D2ED134F83A1D094515DC433F2FFED9D726D9936CC9B665DB32ED9976
        CCBB665DB32ED99768CBB6535D15723C89D2082BA2DD7AEB5B69CB2E65D5173E
        4B98CB5A79EA33B33D667A8CD599B70CBB8CCBB866DC32D665ACCB5197707B95
        9937117EE32FDC16EEE216E56CBF70C95992B2FAC75564D5392B3F2D75FCABCE
        A2BAA8AB6B769DDA787A42FF00DB85A2BA6D7AC8D265B49FFE67FF0099141141
        5243E3AF6D569A74BE2964B2110B909B5A470F43F2CFED4D7B4DB3B4DB3B5DB3
        B5DB3B6DA3B5DA3B5DA3B4DB3B4DB3B5DB3B5DA6769B653B14D1579F07467FEB
        1FF9E0686A4AA974BD7CB4B6A2D65B511516B21F22BDB55AB2B459598EB31D66
        2ACC7598EB315662ACC3598AB315661DC316E18B70C3B862ACC358B6AB42D8AD
        98370EDEB3B7ACEDEB3B7ACFCB4ADFCABAAF5559DDD6777B877551DD5477759D
        DD677551DDD4776CEED9DDB3BB6776D1B5BB4EED3CB84D554BA5F2AAA793D3C0
        79694D4E9134F482083F2EFED7D716E18F711656595965659596565B516D45AC
        B6A21EB45555156D6F53BAB9486935552E97CAAA9E479956EDA6746746747708
        CE8EE11DC23B847708EE11DC23B846793399D99DA33B29F51552D7A9677151DC
        5477159F969CFE55D6EA055D25D4A1574B528913489E0EBAF98940B99524D34E
        97CAAA9E198D6BA154AAA5D0FC07989C3D7F2CFED4E28E44B45CC9A855548BEB
        29DDDCA6ADADDA7769E5D54AA934D3E5554EB3025C1550AA5552E96886C86432
        190C86432190C86432190C86410C52886D4547E59FDA9AF6DB676DB676D41DB6
        D8FD2D076B4A7DAD27688ED51DA1DA33B36768D9DA5476959DA567695947A7DD
        A2A4E572EAA5549A69F2AAA639BD0E8743A72BC8A6AB44E4FCB9FB5F93D69254
        1723FF0053CC9549722D65AC8E7D74A6351CBAA88E4BAE9A4CB4196832ED9976
        CCBB666DB336D99B6CCDB665DB32ED9976CCBB665DB32ED99B6CCB414FA8A293
        F2DB557E56D6110884422110884744743A32085E16BA1549A8E2F2E1AA9E4554
        AA9574BA1A71E07F2C7ED3E57FE7C4D7426B869498FA70D54C721D29AAE87435
        D79F41F963F69EBDC6E9DC6E9DC6E9DC6E956FFA84775BE775BE777BE777BE77
        7BE775BE777BE777BE777BE777BE777BE777BE775BE775BE775BE775BE775BE7
        75BE775BE775EA0EEB7CEEB7CEEB7CEEB7CEEB7C5EAF7D35EA775AEE374EE378
        AB7B76A32EE19770CBB885BDB864ACCBB865DC9CDB866DC335666AC75D664DC3
        25664DC325664ACC95992B1D75B44924B2597171717125CCB99732491368FCB1
        FB4F915D30743A1D0E8283A1D0E9C6A0E8743A1D0E8743A1D0E840AA869CAD60
        853C8843A4B510422D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D1D2A6C45A7E59F
        DA9C9AA9D20823482082086432190C8E626D09CAD6190C864321EB0C8643D234
        EBE05B128D7F2CFED4D6592C965CD92D12CB99D4EA753A92C96896CEA753A9D4
        EA753A9D4EA753A9D4EA753A9D4EA753A89B2E67526A26A26A26A26A26A258DB
        2EA91351351351D4BAA2592C964B2592C964B2592C964B2592C964B2592C964B
        259F957F68F0CCF2DAF09E425CBF2F15F957F687F07E5CFF003F11F957F686AE
        9AA9F01E5CF6E08E7F992B9D452AD69AE47E55FDA1AD54D2A8C68C68C68C68C6
        8C68C68C68C68C68C68C68C68C68C68C68C68B2931A31A31A31A31A31A31A31A
        31A31A31A2C42DB48B116231A31A31A31A31A31A31A31A31A31A31A31A2C4588
        C68C6918D18D18D18D18D18D18D18D18D18D32C462DBA13A12A6AA29B31A31A3
        1A31A31A31A31A3F2B74FCA3AE6DC336E19B70CDB866DC336E19B70CDB866DC3
        36E19B70CDB866DC336E19B70CDB866DC1EF6E33A9D4EA753A9D4EA753A9D48F
        0E9F1F994BB6ADC54C34B70AADA697C8FCAFFB4B5CBB665DB32ED9976CCBB665
        DB32ED9976CCBB665DB32ED9976CCBB665DB32ED9976CCBB665DB32D065A0CBB
        68CB4196832D065A0CB4196832D0575D152F0F3C54ABAA75529B6A8753A19279
        F23F2BFED2D7DB364F6CD93DB364F6CD93DB364F6CD93DB364F6CD93DB364F6C
        D93DB364F6CD93DB364F6CD93DB364F6CD93DB364F6CD93DB364F6CD93DB364F
        6CDA17FF0037659ED9B27B66C9ED9B27B66C9EDBB33ED9B27B66C9ED9B27B66C
        9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B6
        6C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B6ECA3DB364
        F6CD917FF3B651EDBB285FFCEDA4DFFF003B62A6FF00F9FB551ED9B27B66C9ED
        9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9F96E9547E56D7DC3D49EE1
        EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A
        83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0
        F70F507B87A93DC3D41EE1EA0F70F527B87A83DC3D41EE1EA0F70F507B87A83D
        C3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70
        F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D
        41EE1EA0F70F507B87A93BCDF477BBF0FD7FA94DFF00F47D437EE1EA4F70F507
        B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83F2CD4EBF
        CA9AAF2F0A84BA7418BC52126CA69BC854555D355D57FEB45553A9F33F2BFED2
        D57978544A85E6FC5A29BA6D8A632AA5BA4AA53E6FE57FDA5AAF2F0A96ADF8B5
        4BA8A3FF0054BFF52B74AAB9FF0095FF00696ABCBC225E3EB6E9537EDBAFFF00
        5F3D1AE77E57FDA5AAF2F05225E3188DBA555565735D54A75572B87CB99F95FF
        00696ABCBC5B5E0D8E84E9A55293A9535BA36E92AA9D4DBF05F95FF697855CCF
        2F0085D44E9DA6D50E86E855535BA572A793F95FF697F228A5C3AB6EAA9D714D
        1CDF2E47E57FDA5C1E5CEF33CBF804DAF029F17E57FDA5E07CFC27972DBF091C
        5F95FF00696ABCB99E7E1D3E437E2FF2BFED2D579707971F9F888FE03CB5FCAF
        FB4B586432190C86432189496B2D6410D90C86432190C86432190C86433C910C
        86432190C86432190C86432190432190C86410C86432190F586432190C864321
        90C86432190C86432190C86432196BD3F2BFED2D52850C86432190C87A742191
        D6190C86432190C86432190C8634E1AD2190C86432190C86432190C86432190C
        54B218D74B486432190C869690C86432190C86432190C86432190C86432190C8
        64321907E57FDA5C524EB56889249249249249249D6116AD6492492492492757
        E4C5AC93C16A21704924924924924924924924EB5797E58FDA7AC10410411A42
        3A1088208208208208208208442211088208208208208208204B582082082082
        082082082082082082082082082082083A1F963F69F0F53A9D74E9AB6893A9D4
        EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9223A9D7593A9
        D4EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753AEBD4FCB1FB4
        F5B692CA4B692DA4B292CA4B292CA4B292CA4B692CA4B692DA4B692DA4B692DA
        4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4
        B292CA4B692DA4B292CA4B292DA4B692DA4B692DA4B692DA4B692DA4B692DA4B
        692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692CA4B292CA4B693F2CFE
        D4D7B4DD3B4DD3B4DD3B5DD6FB4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD
        3B5DD3B5DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4D
        D3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD1FA5DD42F49BA769BA
        769BA769BA769BA769BA769BA769BA769BA3F4BBC8ED774ED374ED374ED374ED
        374ED374ED374ED374ED374ED374ED374ED374ED374ED374ED374ED374ED374E
        D374ED374ED374ED374ED775BED374ED374ED374ED374FCB69D3F95B87CF993E
        0DB12E6273E0FCF8BF2F7ED9E0F3E77978094F44B9D3E07CF8FF002F7ED9D73D
        4CCF519EA33D467A8CF519EA33D467A8CF519EA16E56D64ACC95992B32565D5A
        3256CDEF515D2FB9DF3B9DF3B9DF3B9DF3B9DF3B9DF3B9DF3B9DF3B9DF28AF76
        D75D62AEA9756E4D5BB5A59B74CDBA66DD16EEEB6AADC8BEB2FACBEB2FACBEB2
        FACBEB1555CA4D2E182190C8643208208219044904104104107E5EFDB3CDA299
        E3DDAD514A7C9D9DB244FA4B6E5524BA9C6B4531C9DBA5AF03E7C9FCBFFB6799
        4D373885C3554A8A6AA9D4DA4CEAB8F6B6EFA9B4855175A5D45255537A492505
        E8B8BA04E74944A2514529B9F01E7CAFCBFF00B6796BABA55AB86616EEE64AB5
        8684E7828A1D55529509B85FE92A995391EB4A92235EAC4A07D4B58E0A55CD28
        F01E7CBFCBFF00B67974530B8B7F72789A139D14B746DA49BA5910A545754127
        9E8BA94A54AD3FF610DCEAA9753A6954AE04A1786FCBFF00B6795453C4D49BBB
        962E4ECED5ABA1524C86371C34D31AA50529A553829F243706DD16AE05C89F01
        F97FF6CF268A65F16E56A8A5B753E263A5D251B499E74FF9122552A67829479E
        ABA8DC27D47D046DD13C2972FA73BF2FFED9E4252D285C5B946ED6F06E98374C
        1BA60DD306E98374C3B861DD28F4ED35FF00E638436989153B9EB4AB9FFE745D
        5F449B6DDC5C50AE7D2383CBC4FE5FFDB3C8A69B57167A13EE283B8A0EE283B8
        A0EE283B8A0EE2817A8A1B55A9FF00D1BA9968FCABAA47AA4D9D16886E44A16A
        94B4952BC77E5FFDB3C7453C7BFB9690753A9D4EA75204AA652AA54EC6DD83AA
        1A527FE6A7034E539D6951ADC52B868A6D5E0BCB9BF97FF6CF1514CF1CA4743A
        1D0E8742693A17286E1A6EDAAA70948941368DB91A913295AD4534CF0EDD3E1B
        CF97F97FF6CF0D2AE710B86AA9534D753AEAE1A1D25915BAA69DAA3236C5FF00
        B1E6FAC373C14D2AA7D56A93AB868A6E7FC0FE5EFDB3C094BA69B571574535AC
        1B660DB30ED9876CC3B661DB16CED42DBA1BC7B4C487353A85E75552F54A5AE8
        79BEA85D44A16B4AB9A50BF81FCBDFB6759828A61716EEF34F2EE19B70CDB866
        DC336E19B70CDB82DDA9A5BB5D250AA54D5569E656E13D521285A2702A44F5F3
        74D36AF15E5C8FCBDFB675A29970D09A7C355D6F6F59DBD676F59DBD676F59DB
        D676F58BD3D6CEDAB36B66C6DC24A74A9C2E0A547052B469325AD36E8B7F84FC
        BDFB6785A13D6BA96DD3DC1DC9DC9DC9DC9DC9DC23B893B946DEE641B84DF525
        24DCBD194A2754A5F06DD1E3E09E1FCBDFB6789A4C96B4DCBF72AC7598EB31EE
        18F70C7B8595A31D6CB2B29DAAAA74D34D29BBB4892A72DEB4A9138D111D5285
        AD14BA9F911CA8F0DE5C1F97BF6CF21EE514BCDB666DB336D99B6CCDB666DB32
        EDB79B6C5B9B6D95329F22A7C090946AAA84970436E9A552B553FC04CE9F97BF
        6CF1EF6E5886BAA724104C289724B3676ED553856A3C90A9A5914914908A36A9
        4ACA0B281D14229A292DA4B282DA4B691534AE2EABF81FCBDFB678B73716DD2D
        B6F5871E4253AECEDDC3690BABE1B8DBA38129E6DC8552D174F1BF97BF6CF157
        46ED7560DC305660DC16C6E2787725EC6E3305660ACA7D3D6EA4924DDCF86A36
        E9B9EBE6251CDA20ABC723F2F7ED9E4CB9820885AD5571212BDA492D2509473A
        110BC7FE5EFDB3C899128D5A925AD2A709A8E248A29B56B4AE637FC079EBF97B
        F6CEBF319F319F319F318FF3149F319F319F319F319F319F319F31437F9824F9
        80F980F980F980F980F980A7F312A5FCCC7CCC7CCC2FCCB07CCE7CCE7CCE7CCE
        7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE
        7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE
        7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CD07CCE7CD07E4AF5BEE5F91BFA57DE
        FF00F67FD2BEF7FF00B3FE95F7BFFD9FF4AFBDFF00ECFF00A57DEFFF0067AFFF
        DA0008010202063F0043B22D916C8B645B22D916C8B645B22D916C8B645B7C27
        84F09E13C2784924924924924924924924924924924924924924924924924924
        92492492492492492492493C2784F09E12492493C2784F09E13C278493C27855
        DFF8C8BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BA
        E1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE
        1B88BAE1B88BAE19175C322EB8645D70DC45D70C8BAE19175C322EB86E22EB86
        45D70C8BAE19175C322EB8645D70C8BAE19175C322EB8645D70C8BAE19175C32
        2EB8645D70DC45D70C8BAE19175C322EB8645D70C8BAE19175C322EB8645D70C
        8BAE19175C322EB8645D70C8BAE19175C322EB8645D70C8BAE19175C322EB864
        5D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45
        D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D
        70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DCF84924924924924924
        9249249249249EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB
        47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB4
        7AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47
        AD156FE3322D916C8B645B22DBE1FFDA0008010302063F00FD03A08208208208
        1D16E8B745BA2DD16E8B745BA2DD16E8B745BA2DD16E8B745BA2DD16E8B745BF
        D2C7FA58E8B7FF0073DFF627745BA2DD16E8B745BA2DD16E8B745BA2DD16E8B7
        45BA2DD16E8B745BA2DD16E8B745BA2DD16E8B7FCC8208208208208208208208
        208208208208208208208208208208208208208208208208FAF9FFDA00080101
        01063F00FC0FFCBBEA9DBFF77CE7E0BFE5DF54EDFF00BBE73F05FF002EFAA76F
        FDDF39F82FF977D53B7FEEF9CFC17FCBBEA9DBFF0077CE7E0BFE5DF54EDFFBBE
        73F05FF2EFAA76FF00DDF39F82FF00977D53B7FEEF9CFC17FCBBEA9DBFF77CE7
        E0BFE5DF54EDFF00BBE73F05FF002EFAA76FFDDF39F82FF977D53B7FEEF9CFC1
        7FCBBEA9DBFF0077CE607C9769ED7D2AF92ED3DAFA55F25DA7B5F4ABE4BB4F6B
        E957C9769ED7D2A8FF00F0D27FD476AE957C9B68ED5D2AF936D1DABA55F26DA3
        B574ABE4DB476AE957C9B68ED5D2AF936D1DABA5501DCDB476AE957C9B68ED5D
        2AF936D1DABA55F26DA3B574ABE4DB476AE957C9B68ED5D2AF936D1DABA55F26
        DA3B574ABE4DB476AE957C9B68ED5D2AF936D1DABA55F26DA3B574ABE4DB476A
        E957C9B68ED5D2AF936D1DABA55F26DA3B574ABE4DB476AE957C9B68ED5D2AF9
        36D1DABA55F26DA3B574ABE4DB476AE957C9B68ED7D2AF936D1DAFA55F26DA3B
        5F4ABE4DB476BE957C9B68ED7D2AF93ED1DABA55F27DA3B574ABE4DB476BE957
        C9B68ED7D2AF936D1DAFA55F26DA3B5F4ABE4CF37FB8ED5D2AF936D1DAFA55F2
        6DA3B5F4ABE4DB476BE957C9B68ED7D2AF936D1DAFA55F26DA3B574ABE4DB476
        BE957C9B68ED7D2AF936D1DAFA55F27DA3B574ABE4DB476AE957C9B68ED5D2AF
        936D1DABA55F26DA7B574ABE4DB4F6AE957C9F68ED5D2AF936D1DABA552F7347
        37FB8ED7D2A88EE593FEA7B5F4ABE4BB4F6BE957C9769ED7D2AF92ED3DAFA55F
        25DA7B5F4ABE4BB4F6BE957C9769ED7D2AF92ED3DAFA55EA4763ECD63FB7D9BB
        277F77C766ECFCDC49E2D8E6FBC39EB36446D124C009F13C2A22E9AB064A7064
        7DC64C993264C993264C993264C993264C9934A993264C99328D231122BA6857
        4A65755DE04DC09AB09AB09AB4CA462F2E23D50FB8BBEFC4B9EC57B6651174F0
        EEF09C3887DF31DC88511EF18881BC2BDD74E9D3A714A70AF0A55E14ABC29510
        6385EA87DC5DF7E25CF62E0E0B8460C5BFC654464C4C43EFB8851A779E69C288
        310707D50FB8BBEFC4B9EC57E5B902C8CB1067C5443EF3E0C444288F78C44844
        9314E1384E2B4E9D3A74E9EA57AA57A42E307D50FB8BBEFC4B9EC5709DD8382A
        07DD8A887DE3F962A2149EF18608994A6072417F9A74F527A93D49D39A13A74E
        9D444BBBEA87DC5DF7E25CF63A07DC542D7B88C5443E3F34C30A4A30A214463D
        9327DC88972833A88DCF543EE2EFBF12E7B11C3864169910E3F2CD8A8879F1B1
        3EE189817C19144622209CE1394E5394E53953A9D4E9A59C9299446E7AA1F717
        7DF8973DBC20694431134D8A887C5C4FB862FF003C188F785118711EF0AED6AE
        D6AED6AED6AED6AED6A4B3416577DF14D5A6AD3569AB5EA81CBFC8BBECFF00E4
        B9EDE390CC510642A071310F9313C031B2518311EF5263201E73930FD4FF00B8
        7BEBC4B9EC0931D9E6502B362621E7C18292CC00DEB11EF0A230E51113C5022C
        829930F6ABA15D0AE8574264C997AA1F7177DF8973D812103DCAF0A028192D87
        18DCE18A815251898879C6E694496120032A801C522E90A36ADC26E2AC91961B
        C65A70223DE14461E5138524A32E27D50FB8BBEFC4B9EC216818112C540C96C5
        E18D887DCCF9567C4443CE14C6D8108146C992704E5512624301BD3F2C08D214
        66C2CCA1C99C28C6319F11EA87DC5DF7E25CF618B564C0862B25A0E31B117B87
        765A7762A753EE09224CBEE46D59FD3684A649913C5FD464CDBDA33E07085113
        E0C9B9032D9C47AA1F7177DF8973D8816AC9811282B25B17ACE3621F26090866
        960A366102EBF49973A02D484480E5500231739936F8969DDFC9472EE66DDC9B
        902DC187EA87DC5DF7E25CF6245AB260431592D8BD671A4D912CE32E0C6640D9
        311389D3FE92C5432E697718289C53A7C738578529C6795478C21ED0AF0A42BE
        290AF8A55F14ABE15F15A85AB724C6557EA3A15EA8ABC682B8B62D7EA78110DC
        F543EE2EFBF12E7B142D5930227592D0BD671BC61EF1F9EE4B27B5466C884265
        122400840549EB57AB57AB4F5A925CC7111B260722BD50578ABC55E2AF157AB0
        AF1A55F34957CD253D69CD29CD2A7A7720A597D8A2E3D9B92290EEBA7C204181
        1282140C9CE07197D8BD50FB8BBEFC4B9EC58B564C08C8B25B17ACE3499A70A5
        888B45716D52A318E50818C416CDB8705B111B3219F3AC89D3A74E9D3A74F820
        CCB4414232AD3BB2628106044A17A9B68BDAFE43DF44FBFBCB9EC60B564C0851
        6B42F59C6F185AF6013220DE124306299326DC88F7E2222F6E384E138AD5EE15
        7856AF0AD5E57EA57AA0AF2BCAF2BCAF2BC6A4E6A4E6A4E5441268D09CD2A7A5
        4F4A634A63494C692A16ACCB34A55CACAD5D76B4AF53C0900FE45DF600FF00EC
        B9EC0D595AB2AE1A95CE0573815CE05AB2AE15AB35216ACD92086281B567896A
        718A2770C99A289174BFB7773706E413EE3A994CB2E61BCB36273288C3817E14
        CBD50FB8BBEFC4B9EC0BD6691A15EB348D0AF59A46857ECD2342BF6691A15FB3
        48D0AF8A46857C5216B05216B054AF887B57E9B42D7B311C2570A9043732E651
        0DBBF96E8814E53A74F89307CEA0408870629856AE84C1327142F82CDEC4F527
        15274FC09EA57B814B6B815EF7ABC55E2AF957CD2AF9A55F349578D255E34957
        8D255E34952DB3495EA61CBFC83BE7C4B9EC78B564C0851125A17ACE070284E8
        C0640B3B152339F6E040CEEB28DDFCD4AA50997F9AFF0035352A6A5441F76232
        10C542D4D361BA74E9F787A99F7077CF88F3D80F6A9F827B54FC139A7E09CD3F
        04E691A15E348D0AF1A4684E691A139A468578FF008F7292D1AB427348D085AB
        36AD023D943604B2059D3BCAA4F60C294485669B099315F04C684C98E233862A
        E9F72BA55D2AEABAAE702B9C0AEF026E04C9B81370261526AD3569AB4C01F6A6
        14A614A04112E7F827149D09C57A138AF42BC2B57856BD4D05C7F21EFA1FF92E
        7B02E598E68ABA15C14957056AE057456AE8A4AB82B5705255CACAB9595AB14A
        D58A55CAD444845EB266DCCE26513898162B80E049461C47BC62BF2C7CBB99A7
        0A49F07D4FFB87BEBC4B9EC0D59A0AB87DB0570D0AE1A15C341570D055D34157
        4D0AE9A131A15D3426DD16ACC84288908BD64CD8C81503EEC5923DF888D08836
        7815D2AE9A95D5755D5755D5755D5755D5755D576B576B5764C9157692AE884F
        2ABA295745255D0AE8A4AF534973FC87BE89FF00B973D81785215E1EF2149681
        192215E1484F595785255E09EB4C9D356A6DC65003DA5087BF1B03EE2A069C5C
        47BC6144FB86E40D2A07FCF78E7C8B3607A99F7077CF88F3D8F73494E69578D2
        A4B4692AF9A4A1685A324C4A8871786320540B8C5C47BC6044FB86040FB8A81F
        7109AADC64C993549AA4D526A93549AA4C993264C684D5263051164D098D057A
        99F7077CF88F3D80E69F82E552342BC6AD0AF1A94968D4A5B66196015F3405AC
        3405ACABE2AFFF00C3F157E3EC1F157EA5273926581525B10F6157856AF057C2
        16ACDBB31F7CAA579E18C95D40BE2E23DE3733E29B1F9A70A2258AF53BEE1EFA
        F12E7B159464C8A224381FE9E150C0931F90CCA070A5A7078C3DE3132986457B
        855EE157AA2AF5455EA8ABD5157AA2AF5455EA8ABD5157AA2AF5455EA8ABD515
        7AA2AF54548639A055E927102BD4E218FF0021EFA23FEE5CF603264C993264CB
        228C37088489B7AE433152E2E21A718881956505AD268EF1F52FEE0EF9F11E7B
        FA2C43E14AA419B0623DE311033ACA32EF02BD4BFB83BE7C479EC0BE6A57CD4A
        F9A95F35288E70C3248B58681A16B4D4B5A680B59C0B5A680B5A680B58680B58
        680B58680B5A680B5A680B58680B5A681A16B4D0342D69A0685AD340D0B5A681
        A16B8D0342D71A0685AE340D0B5A681A16B4D0342D69A0685AD340D0B5A681A1
        4BCE139A4D0A22D9A95F352BE6A51E3CAAF9A16B0D014B6CD4AF1A95F352BE6A
        D0AF157D5F578ABC5445AA60AF702BD5057B815FE057B815EE057F8140DA8839
        60BE014D40535015D142BB52715A715A715A715A6180C134BB9EA5FDC1DF3E23
        CF626207B77D669C288C18D18B65F14E5394E5394E5394E9D394E5394E5394E5
        394E5394E5403EE395EA5FDC1DF3E23CF62A207BB072E29B17C2A2378326DE30
        0FC181EA67DC1DF3E23CF60394E5395089AD39A4A729CD69CD2539A4A73494E6
        929CD25484FB22539A4A73494E6929CD2539A4A73494E6929CD2539A4A73494E
        6929CD2539A4A73494E6929CD2539A4A73494E6929CD2539A4A735A73494E692
        9CD2539A4A73494E6929CD2539A4A73494E7DB129CD2539A4A73494E6929CD29
        CA729CA729CA729CA729CA729CA729CA729CA729CA729CA729CAF523EBFDF1E2
        3CF61494E2E21D427DE912F8BCDBEBD48FAFF7C788F3DBCE5A77944BE373EF29
        29C3F523EBFDF1E23CF604A200FB28DE19B7844BEF08638DB364DA31E28B2265
        2D9364168E23D48FAFF7C788F3D806CF1CDB2658E44E5394E5394E5394E5394E
        5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394
        E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E7DC
        9D016BF5DA7CC171F9B240325AB2608D936F8E498C42729CA729CA729CA72BD4
        9193BFFBE3C479EC0BD57C15EABE0AF55F057AAF82BD57C15EABE0AF55F057AA
        F82BD57C15EABE0AF55F057AAF82BD57C15EABE0AF55F057AAF82BD57C140DA7
        9186320B3EF4FCB120E440D91FA4F2865408B50B4C415C4B262498DA2313EA57
        D7FBE7C479EC0D48A56A452B52295A914AD48A56A452B52295A914AD48A56A45
        2B52295A914AD48A56A452B52295A914AD48A56A452B53656A42D48A56A6CAD4
        D95A9B2B53656A6CAD4D95A9B2A1679B160BC41DEF9F0C5968BA80B008139518
        46C5B11E2A02C8694938AF52BEBFDF3E23CF606B2D55A16B2D55A16B2D55A16B
        2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B
        2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B
        2D55A16B2D55A15FB5568527396AAD0B596AAD0B596AAD0B596AAD0B596AAD0A
        1C7B55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB5568
        5ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB5568
        5ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB5568
        5ACB55685ACB55685ACB50CB2685ACB55685ACB55685036AD1E3491934231B76
        B336842D59E72D187B3428FF0076D08CB09342BF6801206D0B596AAD0B596AAD
        0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD
        0BD4DB025163F90F7D5904E6EF2E78603D9FFDBF15C9A172685C9A172685C9A1
        72685C9A172685C9A172685C9A172685C9A172685C9A172685C9A172685C9A17
        2685C9A147F4FB609ECD0B9342E4D09ECD1F15C9A172685C9A172685C9A17268
        5C9A172685C9A172685C9A172685C9A172685C9A172685C9A172685C9A172685
        C9A172685C9A172685C9A172685C9A172685C995A4F8A85BB7641C90F8A81366
        5BB6A1270A20F141F67C57244D20F8AE4D0B9342E4D0B9342E4D0B9342E4D0B9
        342E4D0B9342E4D0BD4CB65ED7F20EF9B46194F78F3C77D839660A45ECDF9002
        2720444605C2B11319CC26448110588566C9BD1E3289F6637D4AFAFF007CF88F
        3DBEC08B4C9F811DF9FA5F32E358278C24B40BE791445F0E32AFEDDA3026E913
        2209899F1DEA57D7FBE7C479EFEB1FA447D8AD59278969C13911B766D71BFF00
        5E751B25E592482FCF1FEA57D7FBE7C479EDFDF96FAB366CC8211F6A26D4A6C9
        90D0B8A2CF162F0C0FCF1BEA57D7FBE7C479EDEF26FF009584A46552002CE4CC
        8036636611080038A04C30B3633D4AFAFF007CF88F3DBDA4C5CB4EF3E358960E
        11B76844300AC9E2C0112819D0B529B2E0289C4442CF8AF52BEBFDF3E23CF6F5
        863728DE200F628131B53C194230B36A5198A36A3C6B4D640951044419B159D4
        B89F52BEBFDF3E23CF607E7BC3F3C7C42CF8F0724AB8D64C41962ACD88C4DE30
        FF0019F1D9B11EA57D7FBE7C479EC00B28C7426CBBC73A81C7C86148DE1F961F
        A95F5FEF9F11E7B0A459F179BFAA4B83EA57D7FBE7C479EC3CFF00D03F2FE81F
        9E07A95F5FEF9F11E7B139BFA367DF9EA57D7FBE7C479EC01229D4EA753A9D49
        46E3264EB329D4EA753A9D4EA753A9D4EA7C09D4EA753A9D4EA753A9D4EA74CB
        F353A9D4E9A54CA753A9D4FBB3A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9
        D4E9B73D49FAFF007CF88F3D82E9D3A74E9D64F6A7F7C24518C7D8A51009D3A7
        4E9D3A74E9D3A7463BAE9D3A74E9D3A74E9D3A74E9D343DA9A3EC2A01674E9D3
        A7453EE3A74E9D3A74E9D3A74E9D3A74E9D3A74E9D44C9ED5EA57D7FBE7C479E
        C264C9936E0932AE04646907B13264C993264C993264C9B75B7193264C993264
        C993264C8C8994A37193264DBAC9B7593264C993264C993264C993264C993212
        457A95F7077CF88F3D8A852B2A6E14DFD7732F52FEE0EF9F11E7B0993265C384
        C993264C993264C993264C993264C993264C993264DBAC9B77F24C993264C993
        264C993264C993264C993264C993264CBF352265EA5FDC1DF3E23CF603264C99
        3264C993264DB8C993264C993264C993264C993264C993264C993264C993264C
        993264C993264C993264C993264C993264C993264C993264C9932F52FEE0EF9F
        11E7B026A54D4A9A952421398A9A95352A6A54D4A9A95352A6A54D4A9BD91534
        72454D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A5
        4D4A9A95352A6A54D198454B0A54D4A9A95352A6A54D4A9A95352A6A530232C5
        4D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A54D4A
        9A95352A6A54D4A92109CC54D4A9A95352A6A57A9B64BD9FE43DF40FBBBCB9EC
        2CD8C817DE79E618C928526F3FCF0BD50FB8BBEFC4B9EC1CD8ECD977848B2ACF
        39DFF9B2E1FAA1F7177DF8973D819BDD2E2B4C1024C233489F813F027E04FC0A
        4B5EE91486A0B8B66D40B93250B59559D0B59559D0B59559D0B59559D0B59559
        D0B59559D0B59559D0B59559D0A4B64FBACE85FAED46D3969332BD5043F5C685
        188C83FC414232FB95FA82BD5057AA0AF4A732BFEF82BD52BD52BD52BD52BD52
        BD52BD5290C72040131339DE39B11EA87DC5DF7E25CF63A25B0E4BE58FF8994B
        29329267C48B644BC9078533CA11B508C240142D07C88931244408224CF294FB
        B12F89897C9BC73627D50FB8BBEFC4B9EC6C29524984496E146D196356652A95
        B2E1C4DD0F09CE45087B00950B328394A811ED2A23F5648CCA2536EC48902629
        8A651DC74E9D44B0619D3EF0CD9315EA87DC5DF7E25CF6320A184F084E57FA45
        D1F9E048D93078B4E619D7143597421213292AD03C9962B3B44A8061819A7500
        D3EE90A01664CB2414260E5406FBF543EE2EFBF12E7B1919CE19B0185E861443
        AC877042532421957FA8DF8284200480850238D6728500200B99D407BF0009CA
        03766DC86E800C62A14EF0E0C67AA1F7177DF8973D8B89F761C05E2D986559E7
        C4F1EDCF25913A301FAB215C60D3ACC5C059CB60E7321C095D403E044DE356F0
        97DD8DF543EE2EFBF12E7B159861C4CA580CE89B4E5F10232878665C72C20409
        A2A13D998A249CC0297DA724513919470227DD811994548A40A2D95718B4C378
        7B31DEA87DC5DF7E25CF62A187187E96128902BB58576B0AED615DAC2BB58574
        5215D1484CEC22142D8005A9220C501C960A22D7B02043990852ACD930333AFD
        3BB184AB32804C997FA44CB363E18FF543EE2EFBF12E7B139CB9C3225C910245
        CAA172A85CAA172A85CAA172A853D0A001A159803688C8254D18CE8D978314E8
        162A01B2E0410130DD0A18100A01863736F2F543EE2EFBF12E7B1119CB61F12C
        DE37889826C39013056E485A9BD881E517CDED46072A82B2A1397510F9167C9B
        BC270225F07FD45CEF3CD971BEA87DC5DF7E25CF61C4B09F2E1BD2AF702BDC0A
        F702BDC0AF702BC2A57B8165E042C83002599120CA18A7847DCA44E892E5673B
        990E5502EA27DD8119B078C5E6FE83EA87DC5DF7E25CF61429425801844960B8
        D6A8C8371AA4D526A935488B424B53C2A42C9110FED0ADE41201EF405B120941
        CA14210166580A944EE44991669B02244814B28CB888961FD0BD50FB8BBEFC4B
        9EC186550A4E18E333C2298D2531A4A63494C69298D2531A4A89B318C8012540
        D9842510251FD0EE25752084180FF0EA561221B900C1F024F794042033EE4436
        4522860001A7391406F981C4FAA1F7177DF8973D819B2A8CE70F8B61C5E2AFD4
        AF1A95E352BC6A578D4AF1A95E352E2DAB7C522506447F5F1ED1900004E871CF
        1AD3C7F2500FBB00FC1819CA8527022C540C8774012C54279CFF0043F543EE2E
        FBF12E7B038C42886C8A4C13C572CAF034ABC2B57856AF0AD5E15ABC2B57856A
        22D0AD5E15AE35A2090D059F7419E618312FC18113B92A816CBB91378EFD9164
        C2F543EE2EFBF12E7B0A2242A0643BA6D1F70CEAE1A55CAD5CAD5CAD5CAD5CAD
        5DFF00895C30F6AB869448B3002494CEA2819B70C583295E6C0896189E338174
        6FFF00CD4B83EA87DC5DF7E25CF61CAA05B2EE4788602402069574D6AE9A0E95
        74D074ABA683A55D341D2AE9F7C5478861EC2AEDAAF4A8104672182003090291
        84FBB09860669D4BBB050C0CC2F1500A224389CF9167CBBEBD50FB8BBEFC4B9E
        C4DF1908C8AF857C2BE15F0AF857C289B608982BE1002D024B01B901BBC5133E
        0003D880CB812E040280A7025A77FC8BF2DCF543EE2EFBF12E7B11C5B378CF90
        6E443E04AA27DC3778D6AF160660B3E032FF0035FE6A0044A96CCA55DA95C575
        44D90322BA15D0AE857429043D985946FF00C9B9EA87DC5DF7E25CF61C4CA587
        B51265267DD90473ACF914A20A27DDBBC7224174652A25470A5A571AD0979230
        3364C6C92FB164390EFED0BD50FB8BBEFC4B9EC38F1601808891356135615DAC
        23256137BA210FD3ED64D584D585FAA41398CA800C0420B365C2072A89BB6702
        0A18DE159346FF00F543EE2EFBF12E7B1500C1CA787B13A94C7DB8107C3007BC
        A80DE1F96E326DFB22C8BD50FB8BBEFC4B9EC4C034E54376054B28CBB99F0C00
        224ACA673811A3199E61839F7F7AA1F7177DF8973D81E5CDB3A85E5CDB3A85E5
        CDB3A85E5CDB3A85E5DF6FFCDF50BCB9B6750BCB9B6750BCB9B6750BCB9B6750
        BCB9B6750BCB9B6750A4FE3B0193FDDF52BCBBB5F52BCBDB5F52BCBBB5F52BCB
        BB5F52BCBBB5F52BCBBB5F52BCBBB5F52A3FFE72266FF9CEA1796F6CEA1796F6
        CEA1796F6CEA1796E4FF00ACEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA17
        96F6CEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA179
        6F6CEA1796E5CBFEF3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A
        85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A8
        5E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85
        E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E
        5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5
        ADB3A85FCFFBC7FB5FD9FF007FDF7DEBDB7FB3C6E3713FBBDBF9DE738B1808C2
        2F0FC17FCBBEA9DBFF0077CE7E0BFE5DF54EDFFBBE73F05FF2EFAA76FF00DDF3
        9F82FF00977D53B7FEEF9CFC17FCBBEA9DBFF77CE607FFD9}
      Frame.Typ = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 147.401670000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 11.338590000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 402.070000950000000000
          Top = 5.399328570000000000
          Width = 218.672807140000000000
          Height = 39.595076190000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."empresa"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 403.329844290000000000
          Top = 26.456710000000000000
          Width = 53.273375240000000000
          Height = 28.796419050000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Cnpj:')
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 441.845054760000000000
          Top = 27.716553330000000000
          Width = 154.780752380000000000
          Height = 25.196866670000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."cnpj"]')
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 403.329844290000000000
          Top = 44.814427140000000000
          Width = 42.654695710000000000
          Height = 28.796419050000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Fone: ')
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 442.384987620000000000
          Top = 45.354360000000000000
          Width = 129.583885710000000000
          Height = 25.196866670000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."telefone"]')
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 401.170112860000000000
          Top = 12.778410950000000000
          Width = 208.774038100000000000
          Height = 35.995523810000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '....................................................')
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 154.960730000000000000
          Height = 105.826840000000000000
          DataField = 'logotipo'
          DataSet = rel_DS_empresa
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 113.385900000000000000
        Top = 268.346630000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 11.338590000000000000
          Width = 684.094930000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Vendas [status]s'
            ' ')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 204.094620000000000000
          Top = 52.913420000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Inicial:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 52.913420000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Final:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 275.905690000000000000
          Top = 52.913420000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dataInicial]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 52.913420000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dataFinal]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 64.252010000000000000
        Top = 404.409710000000000000
        Width = 718.110700000000000000
        DataSet = rel_DS_Vendas
        DataSetName = 'DSVendas'
        RowCount = 0
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 90.708720000000000000
          Top = 7.559059999999990000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 7.559059999999990000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Funcion'#225'rio:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 408.189240000000000000
          Top = 7.559059999999990000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 52.913420000000000000
          Width = 616.063390000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 7.559059999999990000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Hora:')
          ParentFont = False
        end
        object DSVendasvalor: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'valor'
          DataSet = rel_DS_Vendas
          DataSetName = 'DSVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSVendas."valor"]')
          ParentFont = False
        end
        object DSVendasfuncionario: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 30.236240000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'funcionario'
          DataSet = rel_DS_Vendas
          DataSetName = 'DSVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSVendas."funcionario"]')
          ParentFont = False
        end
        object DSVendasdata: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 30.236240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'data'
          DataSet = rel_DS_Vendas
          DataSetName = 'DSVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSVendas."data"]')
          ParentFont = False
        end
        object DSVendashora: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 30.236240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'hora'
          DataSet = rel_DS_Vendas
          DataSetName = 'DSVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSVendas."hora"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 616.063390000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."endereco"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'P'#193'GINA : [Page]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 64.252010000000000000
        Top = 491.338900000000000000
        Width = 718.110700000000000000
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 521.575140000000000000
          Top = 37.795300000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 37.795300000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<DSVendas."valor">,MasterData1)]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 226.771800000000000000
        Width = 718.110700000000000000
        DataSet = rel_DS_empresa
        DataSetName = 'frxDBDataset1'
        RowCount = 0
      end
    end
  end
  object rel_DS_notadecompra: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = tb_notadecompra
    BCDToCurrency = False
    Left = 288
    Top = 1152
  end
  object rel_DS_detalhesnotas: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = query_detalhes_notas
    BCDToCurrency = False
    Left = 296
    Top = 1224
  end
  object rel_entradasEstoque: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43651.788638020800000000
    ReportOptions.LastChange = 44011.987778391200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 40
    Top = 1112
    Datasets = <
      item
        DataSet = rel_DS_detalhesnotas
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = rel_DS_notadecompra
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = rel_DS_empresa
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' Datas'
        Value = Null
      end
      item
        Name = 'dataInicial'
        Value = Null
      end
      item
        Name = 'dataFinal'
        Value = Null
      end
      item
        Name = 'status'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      BackPicture.Data = {
        0A544A504547496D616765C9890000FFD8FFE106BA4578696600004D4D002A00
        0000080007011200030000000100010000011A00050000000100000062011B00
        05000000010000006A0128000300000001000200000131000200000022000000
        720132000200000014000000948769000400000001000000A8000000D4000AFC
        8000002710000AFC800000271041646F62652050686F746F73686F7020434320
        32303137202857696E646F77732900323031393A30333A31322031363A31373A
        3232000003A001000300000001FFFF0000A00200040000000100000253A00300
        04000000010000034A0000000000000006010300030000000100060000011A00
        050000000100000122011B0005000000010000012A0128000300000001000200
        0002010004000000010000013202020004000000010000058000000000000000
        48000000010000004800000001FFD8FFED000C41646F62655F434D0002FFEE00
        0E41646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B
        11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E
        0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800A0007103012200
        021101031101FFDD00040008FFC4013F00000105010101010101000000000000
        00030001020405060708090A0B01000105010101010101000000000000000100
        02030405060708090A0B1000010401030204020507060805030C330100021103
        04211231054151611322718132061491A1B14223241552C16233347282D14307
        259253F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3
        D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
        37475767778797A7B7C7D7E7F711000202010204040304050607070605350100
        021103213112044151617122130532819114A1B14223C152D1F0332462E17282
        92435315637334F1250616A2B283072635C2D2449354A317644555367465E2F2
        B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6
        E6F62737475767778797A7B7C7FFDA000C03010002110311003F00F414924948
        85249249294924924A5249249294924924A5249249294A8F52E6AFED7FDF55E5
        47A97357F6BFEFA90534D24924E43FFFD0F4AFB11FF49FF47FF324BEC47F7C7D
        DFED56924788A1ABF623FE907DDFED4DF623FE907DDFED56924ACA9ABF623FE9
        07DDFED4BEC47FD20FBBFDAAD249595357EC47FD20FBBFDA97D88FFA4FFA3FED
        569246CA9ABF623FE907DDFED4FF00623FE907DDFED565242CA9ADF623FBE3EE
        FF00CC92FB11FDFF00C3FF00325653A5654D5FB11FF49FF47FF32599D669F49D
        47BB76E0FED1C6C5BAB1FAFF00D2C7F83FFF0045A3126D45CA492494887FFFD1
        F530653A82903292174C9D2492B249248A1492499252E92694A5252E92694A52
        53258FD7FE963FC1FF00F7C5AFB96475F3EEC7F83FFEF88C770A72924925221F
        FFD2F538F24BE497C928F2450BA49BE49D05293274924AC924922858CA5253A6
        D5252B54B54B5F14B5F1494AD564F5F9DD8F3E0FFF00BE2D6D7C564F5EFA58FF
        0007FF00DF118EEA72924925221FFFD3F52DC96E5182941450CB725B9460A509
        2996E4B728A492996E4A5452494CA5295149252E9264A1252EB27AF7D2C7F83F
        FEF8B5564F5DFA58FF0007FF00DF118EEA73124925221FFFD4F5191E0948F04C
        92285E4782523C1324929791E0948F04C924A5E4782523C1324929791E0948F0
        4C924A5F4F04A4782649252F23C164F5EFA58FF07FFDF16AACAEBBF4B1FE0FFF
        00BE231DD4E5A4924A443FFFD5F50493A48A16493A49296493A49296493A4929
        6493A49296493A49296595D77E963FC1FF00F7C5ACB27AF7D2C7F83FFEF88C77
        539692492910FF00FFD6F53D12D132708A15A7825ED48A8A4A652D4B44C02749
        4AD12D3C1327494A81E09E0264E82950128092492550163F5FFA58FF0007FF00
        DF16C2C7EBFF004B1FE0FF00FBE231DC20B9492492950FFFD7F5209D249142C9
        25AF9A7494A4C927494A4E9248294924924A5249249254B1FAFF00D2C7F83FFE
        F8B6163F5FFA58FF0007FF00DF118EE145CA492494AB5FFFD0F5320A6DA567EF
        B3F7DDF794B7D9FBEEFBCA7521D18849676FB3F7DDF794B7D9FBEEFBCA5C2A74
        613ACDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF77DE5
        2E153A492CDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF
        77DE52E153A4B1FAFF00D2C7F83FFEF88DBECFDF77DE551EA6E71356E24E8EE4
        CFEEA206AA69249249E87FFFD9FFED0F1A50686F746F73686F7020332E300038
        42494D0425000000000010000000000000000000000000000000003842494D04
        3A000000000125000000100000000100000000000B7072696E744F7574707574
        000000050000000050737453626F6F6C0100000000496E7465656E756D000000
        00496E746500000000436C726D0000000F7072696E745369787465656E426974
        626F6F6C000000000B7072696E7465724E616D65544558540000001700480050
        0020004400650073006B006A0065007400200033003500310030002000730065
        007200690065007300000000000F7072696E7450726F6F6653657475704F626A
        63000000160043006F006E00660069006700750072006100E700E3006F002000
        640065002000500072006F0076006100000000000A70726F6F66536574757000
        00000100000000426C746E656E756D0000000C6275696C74696E50726F6F6600
        00000970726F6F66434D594B003842494D043B00000000022D00000010000000
        010000000000127072696E744F75747075744F7074696F6E7300000017000000
        004370746E626F6F6C0000000000436C6272626F6F6C00000000005267734D62
        6F6F6C000000000043726E43626F6F6C0000000000436E7443626F6F6C000000
        00004C626C73626F6F6C00000000004E677476626F6F6C0000000000456D6C44
        626F6F6C0000000000496E7472626F6F6C000000000042636B674F626A630000
        000100000000000052474243000000030000000052642020646F7562406FE000
        000000000000000047726E20646F7562406FE0000000000000000000426C2020
        646F7562406FE000000000000000000042726454556E744623526C7400000000
        0000000000000000426C6420556E744623526C74000000000000000000000000
        52736C74556E74462350786C40520000000000000000000A766563746F724461
        7461626F6F6C010000000050675073656E756D00000000506750730000000050
        675043000000004C656674556E744623526C7400000000000000000000000054
        6F7020556E744623526C7400000000000000000000000053636C20556E744623
        50726340590000000000000000001063726F705768656E5072696E74696E6762
        6F6F6C000000000E63726F7052656374426F74746F6D6C6F6E67000000000000
        000C63726F70526563744C6566746C6F6E67000000000000000D63726F705265
        637452696768746C6F6E67000000000000000B63726F7052656374546F706C6F
        6E6700000000003842494D03ED00000000001000480000000100020048000000
        0100023842494D042600000000000E000000000000000000003F800000384249
        4D040D0000000000040000005A3842494D04190000000000040000001E384249
        4D03F3000000000009000000000000000001003842494D271000000000000A00
        0100000000000000023842494D03F5000000000048002F66660001006C666600
        06000000000001002F6666000100A1999A000600000000000100320000000100
        5A00000006000000000001003500000001002D00000006000000000001384249
        4D03F80000000000700000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800003842494D040000
        000000000200023842494D04020000000000060000000000003842494D043000
        0000000003010101003842494D042D0000000000060001000000033842494D04
        08000000000010000000010000024000000240000000003842494D041E000000
        000004000000003842494D041A00000000035900000006000000000000000000
        00034A000002530000001200460055004E0044004F002000520045004C004100
        54004F00520049004F0020004100340000000100000000000000000000000000
        000000000000010000000000000000000002530000034A000000000000000000
        0000000000000001000000000000000000000000000000000000001000000001
        0000000000006E756C6C0000000200000006626F756E64734F626A6300000001
        000000000000526374310000000400000000546F70206C6F6E67000000000000
        00004C6566746C6F6E67000000000000000042746F6D6C6F6E670000034A0000
        0000526768746C6F6E670000025300000006736C69636573566C4C7300000001
        4F626A6300000001000000000005736C6963650000001200000007736C696365
        49446C6F6E67000000000000000767726F757049446C6F6E6700000000000000
        066F726967696E656E756D0000000C45536C6963654F726967696E0000000D61
        75746F47656E6572617465640000000054797065656E756D0000000A45536C69
        63655479706500000000496D672000000006626F756E64734F626A6300000001
        000000000000526374310000000400000000546F70206C6F6E67000000000000
        00004C6566746C6F6E67000000000000000042746F6D6C6F6E670000034A0000
        0000526768746C6F6E67000002530000000375726C5445585400000001000000
        0000006E756C6C54455854000000010000000000004D73676554455854000000
        01000000000006616C74546167544558540000000100000000000E63656C6C54
        657874497348544D4C626F6F6C010000000863656C6C54657874544558540000
        0001000000000009686F727A416C69676E656E756D0000000F45536C69636548
        6F727A416C69676E0000000764656661756C740000000976657274416C69676E
        656E756D0000000F45536C69636556657274416C69676E000000076465666175
        6C740000000B6267436F6C6F7254797065656E756D0000001145536C69636542
        47436F6C6F7254797065000000004E6F6E6500000009746F704F75747365746C
        6F6E67000000000000000A6C6566744F75747365746C6F6E6700000000000000
        0C626F74746F6D4F75747365746C6F6E67000000000000000B72696768744F75
        747365746C6F6E6700000000003842494D042800000000000C000000023FF000
        00000000003842494D041100000000000101003842494D041400000000000400
        0000083842494D040C00000000059C0000000100000071000000A00000015400
        00D4800000058000180001FFD8FFED000C41646F62655F434D0002FFEE000E41
        646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B1115
        0F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14
        140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800A00071030122000211
        01031101FFDD00040008FFC4013F000001050101010101010000000000000003
        0001020405060708090A0B010001050101010101010000000000000001000203
        0405060708090A0B1000010401030204020507060805030C3301000211030421
        1231054151611322718132061491A1B14223241552C16233347282D143072592
        53F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3D375
        E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F63747
        5767778797A7B7C7D7E7F7110002020102040403040506070706053501000211
        03213112044151617122130532819114A1B14223C152D1F0332462E172829243
        5315637334F1250616A2B283072635C2D2449354A317644555367465E2F2B384
        C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
        2737475767778797A7B7C7FFDA000C03010002110311003F00F4149249488524
        9249294924924A5249249294924924A5249249294A8F52E6AFED7FDF55E547A9
        7357F6BFEFA90534D24924E43FFFD0F4AFB11FF49FF47FF324BEC47F7C7DDFED
        56924788A1ABF623FE907DDFED4DF623FE907DDFED56924ACA9ABF623FE907DD
        FED4BEC47FD20FBBFDAAD249595357EC47FD20FBBFDA97D88FFA4FFA3FED5692
        46CA9ABF623FE907DDFED4FF00623FE907DDFED565242CA9ADF623FBE3EEFF00
        CC92FB11FDFF00C3FF00325653A5654D5FB11FF49FF47FF32599D669F49D47BB
        76E0FED1C6C5BAB1FAFF00D2C7F83FFF0045A3126D45CA492494887FFFD1F530
        653A82903292174C9D2492B249248A1492499252E92694A5252E92694A525325
        8FD7FE963FC1FF00F7C5AFB96475F3EEC7F83FFEF88C770A72924925221FFFD2
        F538F24BE497C928F2450BA49BE49D05293274924AC924922858CA5253A6D525
        2B54B54B5F14B5F1494AD564F5F9DD8F3E0FFF00BE2D6D7C564F5EFA58FF0007
        FF00DF118EEA72924925221FFFD3F52DC96E5182941450CB725B9460A5092996
        E4B728A492996E4A5452494CA5295149252E9264A1252EB27AF7D2C7F83FFEF8
        B5564F5DFA58FF0007FF00DF118EEA73124925221FFFD4F5191E0948F04C9228
        5E4782523C1324929791E0948F04C924A5E4782523C1324929791E0948F04C92
        4A5F4F04A4782649252F23C164F5EFA58FF07FFDF16AACAEBBF4B1FE0FFF00BE
        231DD4E5A4924A443FFFD5F50493A48A16493A49296493A49296493A49296493
        A49296493A49296595D77E963FC1FF00F7C5ACB27AF7D2C7F83FFEF88C775396
        92492910FF00FFD6F53D12D132708A15A7825ED48A8A4A652D4B44C027494AD1
        2D3C1327494A81E09E0264E82950128092492550163F5FFA58FF0007FF00DF16
        C2C7EBFF004B1FE0FF00FBE231DC20B9492492950FFFD7F5209D249142C925AF
        9A7494A4C927494A4E9248294924924A5249249254B1FAFF00D2C7F83FFEF8B6
        163F5FFA58FF0007FF00DF118EE145CA492494AB5FFFD0F5320A6DA567EFB3F7
        DDF794B7D9FBEEFBCA7521D18849676FB3F7DDF794B7D9FBEEFBCA5C2A74613A
        CDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF77DE52E15
        3A492CDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF77DE
        52E153A4B1FAFF00D2C7F83FFEF88DBECFDF77DE551EA6E71356E24E8EE4CFEE
        A206AA69249249E87FFFD93842494D042100000000005D00000001010000000F
        00410064006F00620065002000500068006F0074006F00730068006F00700000
        001700410064006F00620065002000500068006F0074006F00730068006F0070
        0020004300430020003200300031003700000001003842494D04060000000000
        070007010100010100FFE1120D687474703A2F2F6E732E61646F62652E636F6D
        2F7861702F312E302F003C3F787061636B657420626567696E3D22EFBBBF2220
        69643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E20
        3C783A786D706D65746120786D6C6E733A783D2261646F62653A6E733A6D6574
        612F2220783A786D70746B3D2241646F626520584D5020436F726520352E362D
        633133382037392E3135393832342C20323031362F30392F31342D30313A3039
        3A30312020202020202020223E203C7264663A52444620786D6C6E733A726466
        3D22687474703A2F2F7777772E77332E6F72672F313939392F30322F32322D72
        64662D73796E7461782D6E7323223E203C7264663A4465736372697074696F6E
        207264663A61626F75743D222220786D6C6E733A786D703D22687474703A2F2F
        6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C6E733A64633D
        22687474703A2F2F7075726C2E6F72672F64632F656C656D656E74732F312E31
        2F2220786D6C6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E
        636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A73744576743D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F
        5265736F757263654576656E74232220786D6C6E733A73745265663D22687474
        703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F52
        65736F75726365526566232220786D6C6E733A70686F746F73686F703D226874
        74703A2F2F6E732E61646F62652E636F6D2F70686F746F73686F702F312E302F
        2220786D703A43726561746F72546F6F6C3D2241646F62652050686F746F7368
        6F702043432032303137202857696E646F7773292220786D703A437265617465
        446174653D22323031392D30332D31325431363A31303A35392D30333A303022
        20786D703A4D65746164617461446174653D22323031392D30332D3132543136
        3A31373A32322D30333A30302220786D703A4D6F64696679446174653D223230
        31392D30332D31325431363A31373A32322D30333A3030222064633A666F726D
        61743D22696D6167652F6A7065672220786D704D4D3A496E7374616E63654944
        3D22786D702E6969643A62363966383932382D393063382D383934352D613530
        312D3862613432396534356232312220786D704D4D3A446F63756D656E744944
        3D2261646F62653A646F6369643A70686F746F73686F703A3665626435353434
        2D343466622D313165392D613635342D6335636565343334373364662220786D
        704D4D3A4F726967696E616C446F63756D656E7449443D22786D702E6469643A
        34316464636231302D613935342D373234322D616633642D6635663335396264
        66626233222070686F746F73686F703A436F6C6F724D6F64653D2233223E203C
        786D704D4D3A486973746F72793E203C7264663A5365713E203C7264663A6C69
        2073744576743A616374696F6E3D2263726561746564222073744576743A696E
        7374616E636549443D22786D702E6969643A34316464636231302D613935342D
        373234322D616633642D663566333539626466626233222073744576743A7768
        656E3D22323031392D30332D31325431363A31303A35392D30333A3030222073
        744576743A736F6674776172654167656E743D2241646F62652050686F746F73
        686F702043432032303137202857696E646F777329222F3E203C7264663A6C69
        2073744576743A616374696F6E3D227361766564222073744576743A696E7374
        616E636549443D22786D702E6969643A66313461373734302D396136622D3434
        34372D613462352D303737383032663837336362222073744576743A7768656E
        3D22323031392D30332D31325431363A31373A30392D30333A30302220737445
        76743A736F6674776172654167656E743D2241646F62652050686F746F73686F
        702043432032303137202857696E646F777329222073744576743A6368616E67
        65643D222F222F3E203C7264663A6C692073744576743A616374696F6E3D2273
        61766564222073744576743A696E7374616E636549443D22786D702E6969643A
        30393063613532612D396433612D626534392D623635632D6235363861333161
        36326530222073744576743A7768656E3D22323031392D30332D31325431363A
        31373A32322D30333A3030222073744576743A736F6674776172654167656E74
        3D2241646F62652050686F746F73686F702043432032303137202857696E646F
        777329222073744576743A6368616E6765643D222F222F3E203C7264663A6C69
        2073744576743A616374696F6E3D22636F6E766572746564222073744576743A
        706172616D65746572733D2266726F6D206170706C69636174696F6E2F766E64
        2E61646F62652E70686F746F73686F7020746F20696D6167652F6A706567222F
        3E203C7264663A6C692073744576743A616374696F6E3D226465726976656422
        2073744576743A706172616D65746572733D22636F6E7665727465642066726F
        6D206170706C69636174696F6E2F766E642E61646F62652E70686F746F73686F
        7020746F20696D6167652F6A706567222F3E203C7264663A6C69207374457674
        3A616374696F6E3D227361766564222073744576743A696E7374616E63654944
        3D22786D702E6969643A62363966383932382D393063382D383934352D613530
        312D386261343239653435623231222073744576743A7768656E3D2232303139
        2D30332D31325431363A31373A32322D30333A3030222073744576743A736F66
        74776172654167656E743D2241646F62652050686F746F73686F702043432032
        303137202857696E646F777329222073744576743A6368616E6765643D222F22
        2F3E203C2F7264663A5365713E203C2F786D704D4D3A486973746F72793E203C
        786D704D4D3A4465726976656446726F6D2073745265663A696E7374616E6365
        49443D22786D702E6969643A30393063613532612D396433612D626534392D62
        3635632D623536386133316136326530222073745265663A646F63756D656E74
        49443D22786D702E6469643A34316464636231302D613935342D373234322D61
        6633642D663566333539626466626233222073745265663A6F726967696E616C
        446F63756D656E7449443D22786D702E6469643A34316464636231302D613935
        342D373234322D616633642D663566333539626466626233222F3E203C70686F
        746F73686F703A446F63756D656E74416E636573746F72733E203C7264663A42
        61673E203C7264663A6C693E61646F62653A646F6369643A70686F746F73686F
        703A63383837363862342D336162612D313165392D396266372D626532623861
        3737326435633C2F7264663A6C693E203C2F7264663A4261673E203C2F70686F
        746F73686F703A446F63756D656E74416E636573746F72733E203C2F7264663A
        4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A786D706D
        6574613E20202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020203C3F787061636B657420656E643D2277223F3EFFEE002141646F62
        650064400000000103001003020306000000000000000000000000FFDB008400
        0101010101010101010102010101020201010101020202020202020203020303
        0303020303040404040403050505050505070707070708080808080808080808
        0101010102020204030304070504050708080808080808080808080808080808
        0808080808080808080808080808080808080808080808080808080808080808
        08FFC2001108034A025303011100021101031101FFC400CE0001010100020301
        010000000000000000000102030904070A060501010101010101010100000000
        0000000000010203060405071000020103020405040301000301000000000111
        0212131003203021144031041517330607375060323641220523110001020106
        070D06050204050500000001003111214191A1023220305161D133A41040B112
        4203D3E30405B536077181E135757660C122B4065013F0F16214A2247495A552
        921585161200010403010002030100000000000000006001310271A1B1322080
        40A05190FFDA000C03010102110311000000FB0AF59F98000000000000000000
        000000000000000000000000000000000075D9FAB8FCBEC07677F8FB00000000
        000000000000000000000000000000000000000000003AECFD5C7E5F603B3BFC
        7D80000000000000000000000000000000000000000000000000001D767EAE3F
        2FB01D9DFE3EC000000000000000000000000000000000000000000000000000
        0EBB3F571F97D80ECEFF001F6000000000000000000000000000000000000000
        000000000000075D9FAB8FCBEC07677F8FB00000000000000000000000000000
        000000000000000000000003AECFD5C7E5F603B3BFC7D8000000000000000000
        0000000000000000000000000000000001D767EAE3F2FB01D9DFE3EC00000000
        00000000000000000000000000000000000000000000EBB3F571F97D80ECEFF1
        F6000000000000000000000000000000000000000000000000000075D9FAB8FC
        BEC07677F8FB0000000000000000000000000000000000000000000000000000
        3AECFD5C7E5F603B3BFC7D800000000000000000000000000000000000000000
        00000000001D767EAE3F2FB01D9DFE3EC0000000000000000000000000000000
        000000000000000000000EBB3F571F97D80ECEFF001F60000000000000000000
        00000000000000000000000000000000075D9FAB8FCBEC077CDE1FEE0056B8B5
        9C6B000022D40000000000000059B025C0B340A012596680008014800882A81C
        F9E8C801480E957D97C1F82EF903E87FF9E7E90002B8379C6B24022D0800E2A0
        00A002000AA2255000214042B9337535400002805894956585A359BCB8D80001
        D117BCFCBF5DFD1903E87FF9E7E90000B75E36F9E759245A1000335C5B850000
        00000000002428896DB973635B9A00012BC8C6B774240A485B20881699A001D1
        17BCFCBF5DFD1903E87FF9E7E9000019B78378C59AB90000066B86CBAA000000
        0000001001168172E6C6B535400012C110000004DE7A7918D950259D11FBBFCC
        F5DFD1903E87FF009E7E90000545278FD312E400000335C5B000000000000099
        5A014032A73635B9A00019B9DCD6A68500080069778D0523A22F79F97EBBFA32
        07D0FF00F3CFD2000504095E3F4C4B9000000CD70EA5B4000000000224975409
        2555002C7373D6A6A800039F3A5A1900042821A5B9A3A22F79F97EBBFA3207D0
        FF00F3CFD200282001357C7DF39720000019AE2D8000000001248BAA001332DA
        A005CB9B3ADE74000066E753433723534258204D4BE4E7AB17A22F79F97EBBFA
        3207D0FF00F3CFD20141000026AF8DBC2E4800000C5716A5B400000022497540
        000490B6802C7373D6A6A80010E696CD0001424034B65E88BDDFE5FAEFE8C81F
        43FF00CF3F48290000029136F1B585840000062B8F60000004492EA800000224
        97540172E6C6B7340000724D000022550217A27F71F9DEBBFA3207D0FF00F3CF
        D252000000056F3BC78FAE79AA800000C5716A5B400842C9175400000001332D
        AA02C73F3D59AA000012C4B4C5CD00D4D429D157B7F83D79F4640FA1EFE7BFA5
        600000000559ACEA78DBE52AA00000315C7B002E521A2800000000020280B973
        635B9A0000B3C9C749282001681D11FB9FCCF5DFD1903E82FC27D65F379F4E7C
        6900000003537C7D39F8FAC4AA100000C570EB2CDD154B2E5AA0000000000224
        97540B1CDCF5A9AA003373C99DF3E365400001D117BCFCBF5DFD1903E813C3FD
        229FD3E3DF9F968000000568B8D63C7E9CC02000018AC994AB29A00000000000
        009996D50B973E35A9A000CDCF2675CF8E8940000E88BDE7E5FAEFE8C81F409E
        1FE9029FD4E3DF9B9E900000002B78DE3C7D7350202E2C08D2E2B29351680000
        0000000002495542C7373D6A6A8337356272677CF8E810001D117BCFCBF5DFD1
        903E813C3FD200B1FD4E5DB9B96C00000059BA7174C706F902887159A548519B
        26C0000000000000001124BAA2E5CF8D6A6B373A9A19B91CB9DF363A20003A22
        F79F97EBBFA3207D02787FA40029FD4E1DF9B1A40000000D37C3BE7C3BE6004D
        4AE3B988B0456A8000084405D40014202824821692C72E75652669608BCB9D72
        677598BB97933BE88FDDFE5FAEBE8C81F409E1FE9000165FEA71EBCDCF600000
        02DD55E1DF3E1BCCB5512B16096042B1B000211C7ACF8FBE79BA2405812AA422
        824B51A922AC1C990160A2ACB2CA2AFF005787D1D14FB7FCFF005DFD1903E813
        C3FD2000058FEA71EFCDCF640000000AE2DE784A5258B9E133B9562112ACB740
        00386E7C4E98D482000025A00B1A44B2CCDB64E4CB5340002168597A3CF63F37
        AF7BC03E813C3FD200000B2FF578F6E5E7A00000015A9670EA71DCB592010C51
        2AC4CDB34000124E2B38772A580005B6282255405B4458E6CDAD24145A8E6C6B
        95B47451EE3F3BD77F4640FA08F0BF50A0012A89A97FA5CBB6A56400002AA962
        70EF1C7AC08B5218A5225019A500000190902E8A02665D5002249755172E7CEE
        A80489579F1BE4CEBA22F77F99EBAFA3207D0C780FD1012800691036BAC80002
        ADA94335A9E3EF963590520E331A85B0A94A0000249E3EF9C582DA9010B10580
        149951516F2628325A44CAEE5E8EBD97CDEBEEF00FA04F0FF480000001A8FEA7
        1EFCB8D20142ADA9249A9D06758E0DF3C6B20B003082D23358DCAA00038D9F13
        A73CDA00000B20968000153979D0285113A3DF63C3D7DDE01F425E0BEF160290
        8A833ABA9059BF2716C05BA5952422353A089358F1F78CEB20A09C1A8A0866DD
        2680001971EB3E2EF0A8551A90010D012904B51691CD9A8AA42C4E8E3D9FCDEB
        DEF00FA0DF07F658540500AA02053CACF4E5C52DA922000353A133BC78FBC66E
        4028200071D6351680001249269A50400000005925B570E79BD4B2883A2BF6DF
        0FAF3E8C81F40FE1BEA804102A0028406A5FEA70FA39705A900006A7412E66A7
        8FBE59B000000071D6360000892716A67524514428000008322B79BB96CA64BD
        1B7B3F97D7BDE01F431E03F42C45D848B5742412DB150B8AD46A02000001A9D0
        6779F1B5CA6B2002900038EB1A8B404492DB867C4EBCF16800000000002C8397
        16A8E8F3D8FCFEBEEF00FA04F0FF004810A0080A416A4294B2FF004F8F7E5C50
        00006A7404C6F1E3EF9CB0005200071D63608925D508C33E275C44CDA00D4822
        8025002C0D49C99D17A3CF63F37AFBBC03E84BC17DE22DB2466C2EA494922D32
        8B4CD8559AF3B9F4B900001A9D0019DE3C6DF296000A0800E3AE3D445D500004
        13341001540500008CEE6B9B1AE8B3DB7C3EBCFA201F435FCFFF0054000262B5
        2DDE732D89A854586A4A962140001A9D000B31BCF8FBE510000A400715674500
        0018673480A000080000A65A5E8DBD9FC9EBDEF00FA1EFE7BFA400000290042A
        C0000000000D4E800C74C78FBE510000A08071D629A0000CC9E274E5C7AA0000
        00000001D217ADE1EBFEF00FA1FF00E7BFA4000042C280000000000000D4D800
        71EF1E3EF9900186EA6990071D63600008CA787D39E340000000000379747FEB
        F87AFF00BC03E82BC2FD600E3B38F59B28291400000000000000B1CD9D846779
        C2008AA40A090634CD116D800433600010011400017A41F5DC3D7FDE01F409E1
        FE9000E2DE78F50021410440001A6C0000000B97366D94442AAC010A01104B33
        650B650204A40A00000025511D1FFB0E1EBEEF00FA04F0FF0048000E2DE7152C
        1490AB2CB080005B29400000068E5C2CA000000000A2652CB54000000000019B
        2C551D1E7B1F9FD7DDE01DF6F87FA40CD962AC1400492ACAA040014000000008
        216168000204B45012D8D00000000000085003A50F5BC3F03DE01DF6787FA442
        80000002522800000000000020AB000000021400351A0000000000428003A51F
        5BC3F03DE01DF6787FA400000000008500000000000101400000000405000000
        0000010255000E947D8FCFF81EF00EFB3C3FD440000000000214000000000101
        40000000001014000000000D4D66C200001D28FB1F9FF03DE01DFB788FAB8AE4
        000000000010588000000002D320A80000000160B352C4000002A89672E7496D
        9C3720000749BEBF8FE07BC03BF8F17F4000000000000138AE4B400000400D4D
        40500000000101412C45500019B8DCD7262AB2716F3A9A00003A49F5DC3F01DA
        01DFDF89FA400000000000010B24B4000062CE2D66CD80000000000000292C45
        580A42B3C99D58C59C7B965280001D257AEE1F80ED00FA0EFE7FFA0000000000
        000001116D8004B2CA0000000000000000024B6C0A42ACAD44B240000007467E
        E3E1F5EFD1903E807C37D7400000000000000085008500000000000000000000
        03971AB5C361028000000747DECBE5F5F778077E9E2FBD5000000000000000CD
        CEA544D44B54000000000000000003373A9752D814E3D42800000003A49F5DC3
        F01DA01DFA78BEF54000000000000003373AC8B2CAD0000000000000000000CD
        CEE5DE2DAD4BC1ACAD000000000E927D770FC0768077E9E2FBD5000000000000
        0044966A6866E753400000000000000000009C99BA978F59C5168000000001D2
        4FAEE1F80ED00EFD3C5F7AA00000000000004B11540110550000000000000000
        227366C33671EB3A9B88AB2800000003A49F5DC3F01DA01DFA78BEF540000000
        000004B986A680004B05940000000000000CDCD379BACDD1C7A98B4500CDCD96
        A8000000E927D770FC0768077E9E2FBD500000000000097296A80000222ACA00
        0000000001139212EA2D7156358B3740009725B28000007493EBB87E03B403BF
        4F17F450000000000012C4550000000337365AA0000000003373A979B1752E6B
        8ECCE90A000019B9A59A000007493EBB87E03B403BF3F17DB4D000000000012E
        52D50000000009730D4D00000000066E772F262CAE3D3371A9B00000011259A9
        A00003A49F5DC3F01DA01DFA78CEF12CB5400000001966AD500000000002584B
        340000000088525500000000002588AA001D24FAEE1F80ED00EFD3C5FD149725
        B28000000CDCEA6800000000000044966A6800000066E6CB540000000000004B
        226A6801D24FAEE1F80ED00EFD3C5F7AA337365AA00000CDCEA6800000000000
        0002588AA00004415400000000000001105503A49F5DC3F01DA01DFA78BEF540
        892CD4D0000CDCEA68000002148500000000960B28004B115400000000000000
        00CDCD96AF493EBB87E03B403BF4F17DAA800440B02696594000000445B96373
        60000000082CB28102550014100000000000000895AE927D770FC0768077F1E2
        7A94000096EA4CDB6400000000BC7B89AE4CE0A000000000B5209560012B16D5
        DE72000000000000001D237AFE5F80EF00EFE7C4F51680089756245D64000000
        0048B0D2140000002512CDCDC230A001065695014000000000009443A46F5FCB
        D7FDE01DFE78CEE0002259A32550000000010005000000011059A22800000000
        000000000001194D7489EB787AFF00B80EFF003C5F7AB100960D4D0CDC92CD00
        0000000000000000290055CDC8B28000000000000000004B1157A43F5DC7D7FD
        A01F405E27E84000000085000000000000000002C4A000428000000000000000
        00000E8FBD870F5F77807D06F84FB00850000002140000000000000042800000
        10A00000000000000042800E8D3DA7C9EBDEF00FA1FF00E79FA4255100000012
        8580005000001000128580000001285800000000000012A88007449EEFF3FD77
        F4640FA1FF00E79FA59B752000000002545D480294000004204A028020000002
        50B00000000000095600007449EEFF003FD77F4640FA11F05F6D0000002D6B3A
        D000C94F1F78E1D60000003CBE7D779D0ABC7738DE5007367540000073E37602
        02928005000A44AAA80A201D11FBAFCEF5DFD1903E82FC1FD2000000391BE694
        0011C1B9E0F5E566400001E4E3BF95CF60B9B386F344D652F335C928000039B1
        D3931400001A9D000005466CD0BD20000E88BDC7E67AEBE8C81F417E0FE90000
        00D5D73E77500030781DB966E22D9000072E7AF9BCFA2325AE1D7396149BCEB9
        66824B6D2141BCEB9F1B812A8010353A00005912CD017A40001D117B8FCCF5D7
        D1903E82FC1FD200000B6F919DD000965781D7971DE6066DD2200D4DF9FCBB12
        04E2D670C6A685396DB1532D724D6359C5BBCE6CBE4F3D802AEB3B0A080353A0
        0B2259A000BD20007445EE3F33D75F4640FA0BF07F480000AE7CF4D800097C3E
        98F1F7C40025A4B15BF3F8F6A133666E38D986A695CD2D02B79D645C0E39D3CB
        E7740035376501410353A09722CD000017A4007445EE3F33D75F4640FA0BF07F
        4800069CB9DF2CA0028E0D67C2E9C4800000F2F1F473F3B8B1666CE399A08725
        D72CC896EB3A96E6E2C439F1D3932006A6ACD000050D67A4B91668000002F480
        7445EE3F33D75F4640FA0BF07F48000DB5CF340008C69FCFEBC632000146FC9E
        7D3C9E7D32CE759B6713280356DBBE5CF306ACD6359A88DE77CF8A00B2EA6C00
        00504B5AB28000000BD201D117B8FCCF5D7D1903E82FC1FD20069737C89BA000
        23C4E99C6B2000044DCDF95CBA66C8CB6E39890055E4D6B368DE33C937C7732C
        1BCEBC9E7400353A5800001402353A000000017A41D117B8FCCF5D7D1903E82F
        C1FD202AE9CFCFA680001C1A440A000B26B3BDCD66E66B0309862CD09672DDCB
        A49A4E4C6A8055F239EEE68805580000A2A4015ACF4000000005E93A22F71F99
        EBAFA3207D05F83FA4361CD8DF24A0008F1B73C5E9C400010D6F3AF231D3926B
        3BC6A4CA70A0D44396EA6B4359CEB376A0179F1BDE2800000001480028A9353A
        00000001D11FBCFCBF5D7D1903E82FC2FD2C9B6F1BE7940004250002150D4D40
        71EF1A9331C57165CD0E595BD8D4CD9AE4C801CB9E9CBCE80000000148000015
        66ACD0000000E88FDE7E5FAEBE8C81F417E13E946B579F1D2A000653F9FDB397
        35A00D4D25A72E75E573DE6F3CEE8E398400AE46E6A8D49CB8A00DE75CFCF600
        0000005200000000D4E8000001D117BCFCBF5DFD1903E82FC27D34E7CF4D0000
        38EB3400011A9656A25CCB25B8989002B99ACDACA69CD8B402CBE473E9600000
        000520000000015AB3400000E88BDE7E5FAEFE8C81F415E13EAE7CEB91400078
        BBCF0EB200006A5AD7938D5678F7522678E66A85723535A164DE6EA5A8266F93
        9DEB3400000000000000000353A4B916680007445EF3F2FD77F4640FA0FF0007
        F66E6F49500195F1778200009565E4979A5E3D496DCE78E6401BB574B472626E
        58B0D272E3A72E280000008500000000000D4E825C8B34001D117BCFCBF5DFD1
        903E857C17DA228A838CE1DE41002C22D39737965E3D633AD6B39E2990259B6A
        DD2D1A9397140171BF233AB00000012AC0000000000000D4E92E459A007445EF
        3F2FD77F4640FA15F05F681161A4F0778C6F12D08115572D1E772E99D31A5931
        33962CD0572DD66E926A4E4CEA8026BC9E7B292C0000128580000000000001A9
        D0446A336A8E88BDE7E5FAEFE8C81F42BE0BED000E1AA94000C9A11C8B8B25CE
        A4E2B712085392EE5A3526F2D28097C8C74D64250B0000255800000000000000
        0D4E825C96CBD117BCFCBF5DFD1903E857C17DA00F1F53C4E9C336D0044B7532
        5F2F9F6E6CDCEB14B262D96865E4635A9445D5BBC5956017500084AD40105580
        000000000000001A9D009723A23F77F9BEBBFA3207D0AF82FB40E3B3C0EDC648
        2B711512C839F3D7CCE7BCEB1C7AD8006B33979DE7CD0235C99D000000003342
        C2AC00000000000000001A9D0012E7A23F77F9BEBBFA3207D0AF82FB40F0F79C
        DC80585082B5E673DE2E71BA001ACCDE2F938A00D4E96000000001C7AA393300
        0000000000000000353A0026B3D11FBAFCDF5DFD1903E857C17DA00032B402A0
        18B38F7400127261E4F3D500D4DD94000000094850B000000000000000000006
        A749724E88FDDFE77AEFE8C81F42BE0BED000CB5A4202E574CCB38B4968006B3
        3C9E5ADC006F79A00000004A4500942C0000000000000000005692D5E88BDE7E
        5FAEFE8C81DD4794FA0012DB20000CDB2C00003797266812B534000000008500
        00000000000000000000002CD750FEA3E3FC4F6807677F8FB000000000000000
        00000000000000000000000000000000000003AECFD5C7E5F603B3BFC7D80000
        000000000000000000000000000000000000000000000001D767EAE3F2FB01D9
        DFE3EC0000000000000000000000000000000000000000000000000000EBB3F5
        71F97D80ECEFF1F6000000000000000000000000000000000000000000000000
        000075D9FAB8FCBEC07677F8FB00000000000000000000000000000000000000
        000000000000003AECFD5C7E5F603FFFDA0008010200010500FE8FB7FE7FA56D
        FF009FE95B7FE7FA56DFF9FE95B7FE7FA56DFF009FE95B7FE7FA56DFF9FE95B7
        FE7FA56DFF009FE95B7FE7FA56DFF9FE95B7FE75EFB74EFB74EFB74EFB747EB7
        745EB770EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370E
        F370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370
        EF370EF370EF370EF370EF370EF370EF370EF370EF374EF374EF370EF370EF37
        0EF374EF370EF370EF370EF370EF370EF370EF370EF374EF374EF374EF374EF3
        74EF374EF374EF374EF374EF370EF370EF3747EB774EFB74EFB74EFB74EFB74E
        FB74EFB74EFB74F4B537B5C94F97041041041041041041041041041041041041
        0411CAB8924B892492E2492791E8FE8F297293F0D248DEAD0F911AC11A24410C
        B48208E2F47F479484C9E4A6353E0D8C5C2C8E4469041041041041040D09F07A
        3FA3CC5CA4FC32E06343E4492492CB8B8B892E2E2E1BE1F47F479B3CA4C6A79E
        DF32391041690416969690410411AFA3FA3CD4C5CA4FC2C09F0B43F0703D3D1F
        D1E727CB4CF3F091CF6CB892492492492492493D1FD1E6B5A2722E527E2DA1F1
        B45A5A8B516A2D45A8B4B4B4B4B4B4F49F4BC5A679F0B291F3A09E0688E4CF04
        924F07A4FA5CF6313917293E17E0609E0687C6C6CB8B8B8B8B8B8B8B8B8F49F4
        B5B0B074C7393E5267993C0BC03E28E2631A1723D1FD1E16A4AA98E5B114BE5A
        7C097876B8E0688E47A3FA3C75531E1208D234425E1589F29150D09F17A3FA3C
        6D49528E6A7C53A493A27E1DA275687C6D0D717A3FA3C974C731F4170CF05A5B
        C9F32D2D2DE6753A9D482D2082082D2D1523A0B0B0B074E9E8FE9725A92A51CB
        A8A593C324E924E93C74E905A884416905A411A41047022081F29A2AA4F47F47
        94D0E98E6262279108845C4AE34F49249249249278FF00F2F4688E438140E993
        D2FD2E5B454A398842E2B4B48208E37D05517171797179797979717171717990
        559717978EA2E2E2E2E2E2E2F1D4C92E83D27D2D6E2E2E2E2E2E2F2E2F436344
        2E627C525C49717170B932492C964F2635688E381A7A7A3FA3AC104104104105
        A432D2DE4C93A27C882D2D65A2E4C169616969696A2D2D2D2D20821102A48442
        2D2358208D2D47A5FA5CE6874F31313E3924927934D5CA927C07A5FA5AE43217
        9797B2F65ECBCBCBD8F705B837C73C5227C524925C88278FC855124925C5C892
        4924B8B8B8B8924B8B8B87521D45C5C5C5E5E7A5FA5AE33198CB0B0C6632C319
        8CC6633198C74C13CB4C5CB4C6A790CB89D649249249249249192344717A4FA5
        ADC5C4971717124925CB49D5A92A51CC9E627C95496961616169696969696969
        6969696969696169696969E97E96B0C820B59D7586433A9D74EA753AE902E9CB
        427CB4C6A78E927C135C1E97E96B0410410410411A4105A8820843A4AA9E5A27
        989F1B62A89E64924924E8F5F4BF4B5BCBCBCBCBCBCBCC86432190C85E643219
        0C83A87CC5CC4C7CA75171717171717171771C11A7A4FA5CC83AEB0493CF4C9E
        627CA82C2C2D2D2C2D2D2D2C2C2C2C2C2C2D63A0C6CF4BF4BF829297CC4CF3E3
        42F05E9BE9F1C104704104104104104104104104104104104104409F313E4489
        F80A8F4DF4F5B4B4B4B4B0C6633198CC6633198CC6633198CC6633198CC66331
        98CC6633198CC6622C2C2C4585A5A8B4B4B4B4B4820B4B482D2082C2C2C2C238
        A0820820820820820F4DF4F909F8A688E19E5492492492492492492492492492
        4924925C49E9BE9F253E19D649F02C8E74788F4BF4B9524924F0492492492492
        4924924924924924F0492492493C3249226410410410410410410410411A4104
        107A6FA7FCAA64924924924924924924924924924927A6FA7FD2BD2FD2FE82C5
        C8F4BF4B82D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2
        D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2
        DD2048B4B4B4B4B4B4B4F4DF4F5820820820820820820820820823973E3DEA90
        B91E9BE9EB0410410410410410410410410416905A5A5A5A5A5A5A5A27E39888
        122393E9BE9EB9D99D99D99D99D99D99D99D99D99D99D99D99D99D99D99D99D9
        9D99D99D99D99CCECCECCECCECCECCECCECCECCECCECCECCECCECCECCECCECCE
        CCECCECCECCECCECCECCECCECCECCECCECCECCECEE199D99D99D99D999999999
        99D99CCECCECCECCECCECCECCECCECCECF48E76B5C48C48C48C48C48C48C48C4
        8C48C48C48C48C48C48C48C48C48C48C48C48C48C48C46246246246231189189
        1891891891891891891891891891891891891891891891891891891891891891
        8918918918918918D18D188C4623123123123123123123123123123123D2AFFF
        002F12FC73D3C87D443E77A6FA7E25F8E63D3CB45CEF4DF4FF009791B244BC07
        A6FA7FCC40A9F03E9BE9FF0026864E902F05E9BE9FF27237AA5E0FD37D3FE45F
        0411E13D37D3FE458F48F0DE9BE9FF004AF4DF4FFA57A6FA7FD2BD37D3FE95E9
        BE9EB24924924924924E924924924924924924EB2492492492492492493A4924
        E92492493AC92492492492492492492492492493A7A6FA7ABE54F313F0689E19
        F0F27A6FA7AC1041041046B0410410410410410411A433AE9041041041041041
        0468C488208208D7A90F582082082082082082082082082047A6FA7C12492493
        AC6924924924924924924F0C924924924924924F0C9249249249249249249249
        2492492492492492493AFA6FA7FD2234F4DF4F592E2592C92492492592CB8925
        92C964B2592C964B2592C964B2592C964B2592C964B2592C924B8964B2E2E249
        2592C964B2592C964B2592C964B2592C964B2592C964B2592C964925C4B3D2FD
        3D6F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F
        2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F
        2F2F2F2F2F2F2F2F3D2FD2F0F041041041047147F0DE8FE978682592C964B259
        2C964BE38208FE0FD1FD2D6C2C4588B11622C4588B11622C43A4B4B4B4B4B482
        0A682C2C4588B11622C4588B51622A42A4820815258584104104104104103238
        238A492492395E93E973678994D3CAA993AAD6091F25BF00B95E93E9783484B9
        353D208D11248DEB04F137C73E13D27D2E5B7C53A534F25B2758D172A746FC67
        A4FA5E060A572AA7AA5A473193E33D27D2E4A637C6972AAAB58E4CE890F56F98
        84FC07A4FA5CF6CA57264AAAE17C084F856ADF8EF49F4B8EAE44099722E45C8B
        91722E44A2E43AB9AF482082A7E3FD27D2E37C8B4B4B4B4B4B4B4B0B4B74489E
        521BE16FC7FA4FA5C2941237C4D1493C725C3625C086B8A389BFE03D27D2E1AB
        C043D1B12D18B54C6B810DF0B7FC0FA4FA5AFF00E46F8D212E26488AB85F0CEB
        E5C2FF0082F47F475FFCF2131D42A8B8B99732E65C4924E887C88247C0C9FE0B
        D1FD1D50F8E9A47496969696969696168C4B8DF03E16C6FF0083F47F4756F917
        17979797979797978EA122796DF0D4FF0084F47F479291696161616161696160
        D11C688E07C2DFF0BE8FE8F25124924924A24B912362E05C723E06362FE13D1F
        D1E45A5A5A41041043208D121F22491F0C8FF86F47F478E95AB5AC7054C489E2
        6C7512C964B249249249FE1FD1FD1E24B9553E4B7C13CD823C7FA3FA5C499717
        1722F2E2F2E2E1D648B890DF8262F1FE8FE97804B8EA7C2F9D24F8FF0047F479
        E909F13637C0DFF1FE8FE8EBEDC7B71EDC7B71EDC7B71EDC7B71EDC7B71EDC7B
        71EDE7607607607607607603FF00E71ED87B61ED87B69ED87B61ED87B61ED87B
        61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B6
        1ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61
        ED87B61ED87B61ED67A7A6DDBFE95B7FE7FA56DFF9FE95B7FE7FA56DFF009FE9
        5B7FE75FFFDA0008010300010500FE8EFF00A5BFE96FFA5BFE96FF00A5BFE96F
        FA5BFE96FF00A5BFE96FFA5BFE96F8315262A4C5498A916D523DA4588B11622C
        4588B11622C4588B11622C4588B11622C4588B11622C4588B11622C4588B1162
        31D263A4C749622C463A4C7498E931D263A4C7498D18E931D263A4C7498E916D
        A1D1498E931D263A4B292CA4B2931A31A31231A15148B6A930D261A4C3498693
        0D261A4C3495A87C96B973E0249249249D249249279369690416969616160A81
        53C8DCFF005CAA972A3C4C6AB8E04F592492759249278B73FD7290D0F94DF865
        C33C8924B8B8B8B8B8B8B8B891313E066E7FAE527A55FC32E34882C2C2D2D2D2
        D2D2C2C2D12E1DCFF5CD6B97E5E03CF973C8B8B8B8B8B8B8B8B8B8B8B8B89D77
        3FD739AFE1972275964BD64920913169B9FEBC4B5E3279091696969696904169
        69691A6E7FAE7B43FE1971A65C5C5C5C5C5C5C5C5E5E5E5C57FEB9E864729A3C
        BC5CF26DE0B4B4B782BF3F014952FE1D71A122D20B4B4B4B4B4B4B4DCFF5ADEC
        BD94D53CD6B99E42F153C54E93C9DCFF005C2994D53CBA468A97F0EB8A44C5C8
        DCFF005C74D53CB9132A5CA9249F173C305452F91B9FEB8D329AA796969553C5
        02A48208F1AB87CC4CA5F1EE7FAE4D354F310D70C12497171772E49249249E39
        2513A49249717176B714D66445E5E2AB4DCFF5C94E0A6A9E5D23435A411A470C
        7259248DEB3A4F0C6BD783A9D4EA753A89E89EA994D46E7FAE5262AA44F98D11
        ABD6DD3A9D4EA75E36B49249249249278A5923D193CA4E0ABCF969C14B9E5F4D
        1A1F1CE92895C687496969696B2D2D20B4B4B4B482D2D2D2D2D2D2D2D2D2C2C2
        C2D2C152588B0AFCF5B596B2D65A5A5A5ACB596B1213E6B5C4F58208F113C0A0
        9249211D0915449B9FEB5B8B8B8B8B8B8B8B8B894362AB9703435C725C493CAB
        8B9925C5C5CCBCB8B8B8964925C5C5C3A8B8965C5C49248C551732AF3E726535
        7318D731AE3A972208249E4412470A1F9EB8CC66331988C6632C2C3198CB0547
        1413C2D1035C505A432394E923582D2D65A5A4696B2D65A5A5A5A5A5A582A0B0
        B19616161579EB7979797979797991990C86432B323320AA9E5BD2A5E1639D1C
        13A410415F9EB696B20B590410410411A41027052E79690D0D78382E2E2E2E2E
        24B8B8B8B8B8B8B8B8BCB892E2F2E2F2E2E2AF3D6F44A2E44A25128944A25128
        84743A1D0E84A131F2D8D783635E0A04F5ABCF952492492C924924B8A5F2DA1A
        1F836881E92493AC10411C51A410CABCF5C66231188C43DB3118CC4CC6633198
        CC658636631524732A435CCF2238E082082082082082393257E7CC83AE9E6412
        493CE68A973239324971717171717171717171717171717171795F9EB2492492
        493C33E16AA7C231AF04FCFC7C924924C9553C4D8B9B6F827E7ADC5C5C5C5ECC
        86466432190C86432190C86432190C86432190C86432190C86432190C8642F65
        E5C5E642F2F2F2F2F2F2F2F2F2492492E2E2E2E249E182082082082082347E7C
        86883A1D3450743A1D38D41D0E8743A1D0E8743A1D08279D041075D3A1041041
        0410410410410410411AC0FCF9304104104104169690410411A4104104104104
        11AC6B0410411AC1046AD13E096B579F2638A08FE0649F10FCFC027E15BFE15F
        9FF4AABCF56BC7C78F81AE455E7AB249249249249249249249249D27993A493C
        D9249279324899248DF21F9EB24924924924924924924924925CC86753A9D4EA
        753A9D4EA752D248F09027C7E62E0AB90FCF5B91722E45C8B91722E45C8B9172
        2E45C8B91722E45C8B912892492492492492746BC33427C2C5AC971E7C87E7AE
        0460460460460460460460460460460460460460460460460460460460460460
        3023023023023023018118118118118118118118118118118118118118118118
        1181181181181181181181181181180C08C08C28C28C28C28C28C28C08C08C08
        C08C08C08C08C08C08AD43D72332332332332332332332332332332332332332
        3323323323323323323323323323323323323329919919919919919919919919
        9199199199199199199199199199199199199199199199199199199199199199
        197B3233233233233233233233233233233233233232AF3D5786A49D18978AA7
        5F2F00FCF55E1A910DF8CA74F2D5F39F9EABC2B625AB7E2DA168DF807E7AAF08
        D8970C09F8A91B129D1A279AFCF55E0DB12E3689F09514E923E3F213E5BF3D57
        82912E4B44F826411A468DF1B427CA7E7AAF03225CCF213E7D3C1237CA813E4B
        F3D67C0A5CE689E75232757CB68F2E43F3E0F213E779780684F9AD888F01027C
        4FCF55A409F2FCFC1B47972DB12F06D09F0BF3D56B027E3E04F90D89785689E0
        7E7AAE068F2F1ED09F13625E2204F47E7C98208208E6F973BCF8978A6B47E7AB
        E4C13CD6BC0C0993C33E21F9F0C92493C324924924924924924E924E92492492
        49249249248B8249249D649D649249249249249249249249249D1F9EB05A5A5A
        5A5BAC105A5A5A5A5A5A5A5A5A5A5A5A4104105A5A5A5A5A5A5A5A5A5A5A3425
        ADA5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A35A3F3D
        6749249D2756C9249249249249249249249249249249249249246C4493A32492
        49249249249249249249249249249249249249247E7C10410410410410411A41
        0410410410410410410410410410411A41041041041041041041041041041041
        041041041041041041041579EB616161616161616161616161618CB0B0B0B0B0
        B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0C65858585858
        585858585858585858585858585858585858585855E7FD2ABFF5FD2ABFF5ADE5
        E5E5E5E5E5E5E5E5E2AC5512492497125558B70C8CC8CC8CC8CC8CC8CC82AD97
        17124923A8BCBC550AA249249249249E382082082D2D2D2D20B448B4B4B4B4B4
        B4B4AFFD7352E248A9F2A94411A3D234812E4A5E07CF93B9FEB98971B654C5C8
        A56924923AB8249244F824929249279B3CBDCFF5CB4B91555C13C2A92092746C
        AB544EAB59D12E14B96D91CBDCFF005E0AA7C49EA8A50DEAD97094F174121EAB
        892F0FB9FEB94971B63E4245348F491BE15AB625A31890970A5E2373FD7252E3
        63AB9105348F4918B817025A2D570A5CBE9CEDCFF5C84B90D161616161616169
        60A9D1BD27931A345A5A25E3F73FD71AE43A855171717171717A2E2E5A3245A5
        4F542D57125E3F73FD71A5C7510C86432190C86416B2D121B1F147040B852FE0
        373FD7125CDE9A4224824918C6F542D57125E1BCF97B9FEB852E36C91B2592C9
        64BD5A29431F1A42E425FC16E7FAE18E368820820820B448B74A9948C6F86390
        97F07B9FEB5812E375179797979797978AB2747AC8F5485AB42235484BF83DCF
        F5AA5C8748A82C4588B11622C4582A11031BD678172578E9E2DCFF005C3235AB
        65C5E8BD17A2F45E8B8B8B89E4342E4AF1F04F0EE7FAE4B20820820B4B482048
        9E0A9EB491ACF0A5A4F8F8D275DCFF005C87512492492497124EAF47ACF0B447
        02FE1674DCFF005C753244C65CCB9923649225A4EAC82048820820B48208208F
        E1609373FD71363D5245A5BC14D3C8812E05FC6366E7FAE268C6633196161698
        CC625C8425FC8A2BFF005CA9E6A5C297F1DB9FEB9EC4F8D702FE3634DCFF005A
        E432190C86532190C86432190CA2DC32190C864321905B86532994CA673399CC
        E673399CCE673399CCE673399CCE673399CCE673399CCE673399CCE673399CCE
        673399CCE673399CCE673399CCE67339DC15397FD29FF4B7FD2DFF004B7FD2DF
        07FFDA0008010100010500FE8FF7BFFD9FF4AFBDFF00ECFF00A57DEFFF0067FD
        2BEF7FFB3FE95F7BFF00D9FF004AFBDFFECFFA57DEFF00F67FD2BEF7FF00B3FE
        95F7BFFD9FF4AFBDFF00ECFF00A57DEFFF0067FD2BEF7FFB3FE95F7BFF00D9EB
        F1B7D947C6DF651F1B7D947C6DF651F1B7D9457F8DFECDA4F8E7ECD3E39FB34F
        8E7ECD3E39FB34F8E7ECD3E39FB347F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7
        ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3
        E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E38F
        B30F8E3ECC3E38FB30F8E7ECD3E39FB30F8E7ECC3E39FB30F8E3ECC3E38FB30F
        8E3ECC3E39FB305F8E7ECD3E38FB30F8E3ECC3E38FB30F8E3ECC3E38FB30F8E3
        ECC3E39FB30F8E7ECC3E39FB30F8E7ECC3E39FB30F8E7ECC3E39FB30F8E7ECC3
        E39FB30F8E3ECC3E38FB305F8E7ECB95F8DBEC96BE35FB28F8D7ECA3E35FB28F
        8D7ECA3E35FB28F8D7ECA3E35FB28FCA9E9B63D17E50E4D745BC2E785CC5ECBD
        97B2F65ECBD97B2F65ECBD97B2F65ECBD97B2F66466466466465ECC8CBD99199
        199197B1549AE3892CA8B2A2CA8C7598EA31D463A8C5518EA31D4534D74BE3FC
        BDFB6793D0AA8B5EBE5C55533E2D369D2D35C4BA14D772D3A1D0E87425128BA9
        2EA4BA93A3E2FCBDFB6795575556DDA53C9AA991F865E5AA6D35526B8E512892
        4924924924928A9D2D435AB3F2F7ED9E53523529D163E4D54CF83F3E426D14B4
        F8D229A2E31331331331188C46231188C4534BA787F2F7ED9E6352AAA5D2F935
        533E07CF949B42A935C49B4D6E52D64A4BE92FA4BE82FA0BE92FA0BE92FA4BE9
        2FA44D3D7F2F7ED9E6D54AA934E97C9AA99E7F9F31368A5A7C89D7A9D759248D
        28A9D2D35523F2F7ED9E7554AA93A5D2F935533E1609E14DA1549F229A29A963
        A4C7498E931D263A4C7498E91EDD22DBA116522A552CFCBDFB679F552AA5552E
        97C9AA99E54C733CB85369D2D3E3A6A74BCA6532994CA653375CA6532994CA7E
        5E73F9639E8AE955269A27935533E2D369AA935C88E08208E0FCBBFB5F54D3E6
        A2BA5549A3CB935533C294B87E15382969AE2A5C34A86ADA4B692DA48A48A48A
        4B692DA4B693F2F7ED9D7B9DD4775BC6CEF2DD5CCAE8B8F2E5554C9E47412509
        52CA5B9F03E5C09B4D549AE14515DAD43E4FE5EFDB3C34D4E97B3BCB757290D1
        5D12B955D32269A50D28A7C2791E7AA6D09A6B8A8AEDE4FE5EFDB3C54D4E97B3
        BD4EEAE5A65744E913C0DC2BD17A2F45D4A2B74B1BA5F868E04DA69A6B5F3D19
        4576F23F2F7ED9E3A6A74BD9DEA77572A34AE89E17D56363DB6DE392C70E9716
        D5E2D382969A3CF5F324A2B8E3FCBDFB67914D4E97B3BB4EED3CCAE89E26DD25
        553464AA2FA8C8C6E7C4CA2EA455A4D6E50D64A0C941976CCBB665DB33ED147A
        ADB4773B2773B0773B06DEF6DEE33F2F7ED9E4D353A1ECEF53BB4F29695D1AB5
        047489150A2DA0B682DA0B291D1C8AEF325664ACBEB664ACC9597D65F517545C
        C9649249D04A5B490E981C09C34E4EA753A9D49E14DA7B1BEB757E5EFDB3CAA6
        A7455B3BCB769E66E510252293AD23F31F9DBA753A92C97C7B9B7710D3B4B482
        0B4B4B4B78544B83A5AA20A5C133CA4DD2FF002DB757E56E5D353A2AD9DEA776
        9E574D2BA14B7C2DC2BCC85E64A46D37C75EDDC60ACC15982A305460A8C0CC0C
        EDD981980EDD1811811811DBA305260A4C140B66942D8DB676D41DBD076F41DB
        D076FB676FB66DECECB3B6D93B7D83F2F24BF2C6B8774C3BA60DE306E98374C1
        BA60DE306F18378A76B7E8AA875554F32AA1D3AF968D4AB19632C658CB18E869
        781F3E4D2ED134F83A1D094515DC433F2FFED9D726D9936CC9B665DB32ED9976
        CCBB665DB32ED99768CBB6535D15723C89D2082BA2DD7AEB5B69CB2E65D5173E
        4B98CB5A79EA33B33D667A8CD599B70CBB8CCBB866DC32D665ACCB5197707B95
        9937117EE32FDC16EEE216E56CBF70C95992B2FAC75564D5392B3F2D75FCABCE
        A2BAA8AB6B769DDA787A42FF00DB85A2BA6D7AC8D265B49FFE67FF0099141141
        5243E3AF6D569A74BE2964B2110B909B5A470F43F2CFED4D7B4DB3B4DB3B5DB3
        B5DB3B6DA3B5DA3B5DA3B4DB3B4DB3B5DB3B5DA6769B653B14D1579F07467FEB
        1FF9E0686A4AA974BD7CB4B6A2D65B511516B21F22BDB55AB2B459598EB31D66
        2ACC7598EB315662ACC3598AB315661DC316E18B70C3B862ACC358B6AB42D8AD
        98370EDEB3B7ACEDEB3B7ACFCB4ADFCABAAF5559DDD6777B877551DD5477759D
        DD677551DDD4776CEED9DDB3BB6776D1B5BB4EED3CB84D554BA5F2AAA793D3C0
        79694D4E9134F482083F2EFED7D716E18F711656595965659596565B516D45AC
        B6A21EB45555156D6F53BAB9486935552E97CAAA9E479956EDA6746746747708
        CE8EE11DC23B847708EE11DC23B846793399D99DA33B29F51552D7A9677151DC
        5477159F969CFE55D6EA055D25D4A1574B528913489E0EBAF98940B99524D34E
        97CAAA9E198D6BA154AAA5D0FC07989C3D7F2CFED4E28E44B45CC9A855548BEB
        29DDDCA6ADADDA7769E5D54AA934D3E5554EB3025C1550AA5552E96886C86432
        190C86432190C86432190C86410C52886D4547E59FDA9AF6DB676DB676D41DB6
        D8FD2D076B4A7DAD27688ED51DA1DA33B36768D9DA5476959DA567695947A7DD
        A2A4E572EAA5549A69F2AAA639BD0E8743A72BC8A6AB44E4FCB9FB5F93D69254
        1723FF0053CC9549722D65AC8E7D74A6351CBAA88E4BAE9A4CB4196832ED9976
        CCBB666DB336D99B6CCDB665DB32ED9976CCBB665DB32ED99B6CCB414FA8A293
        F2DB557E56D6110884422110884744743A32085E16BA1549A8E2F2E1AA9E4554
        AA9574BA1A71E07F2C7ED3E57FE7C4D7426B869498FA70D54C721D29AAE87435
        D79F41F963F69EBDC6E9DC6E9DC6E9DC6E956FFA84775BE775BE777BE777BE77
        7BE775BE777BE777BE777BE777BE777BE777BE775BE775BE775BE775BE775BE7
        75BE775BE775EA0EEB7CEEB7CEEB7CEEB7CEEB7C5EAF7D35EA775AEE374EE378
        AB7B76A32EE19770CBB885BDB864ACCBB865DC9CDB866DC335666AC75D664DC3
        25664DC325664ACC95992B1D75B44924B2597171717125CCB99732491368FCB1
        FB4F915D30743A1D0E8283A1D0E9C6A0E8743A1D0E8743A1D0E840AA869CAD60
        853C8843A4B510422D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D1D2A6C45A7E59F
        DA9C9AA9D20823482082086432190C8E626D09CAD6190C864321EB0C8643D234
        EBE05B128D7F2CFED4D6592C965CD92D12CB99D4EA753A92C96896CEA753A9D4
        EA753A9D4EA753A9D4EA753A9D4EA753A89B2E67526A26A26A26A26A26A258DB
        2EA91351351351D4BAA2592C964B2592C964B2592C964B2592C964B2592C964B
        259F957F68F0CCF2DAF09E425CBF2F15F957F687F07E5CFF003F11F957F686AE
        9AA9F01E5CF6E08E7F992B9D452AD69AE47E55FDA1AD54D2A8C68C68C68C68C6
        8C68C68C68C68C68C68C68C68C68C68C68C68B2931A31A31A31A31A31A31A31A
        31A31A31A2C42DB48B116231A31A31A31A31A31A31A31A31A31A31A31A2C4588
        C68C6918D18D18D18D18D18D18D18D18D18D32C462DBA13A12A6AA29B31A31A3
        1A31A31A31A31A3F2B74FCA3AE6DC336E19B70CDB866DC336E19B70CDB866DC3
        36E19B70CDB866DC336E19B70CDB866DC1EF6E33A9D4EA753A9D4EA753A9D48F
        0E9F1F994BB6ADC54C34B70AADA697C8FCAFFB4B5CBB665DB32ED9976CCBB665
        DB32ED9976CCBB665DB32ED9976CCBB665DB32ED9976CCBB665DB32D065A0CBB
        68CB4196832D065A0CB4196832D0575D152F0F3C54ABAA75529B6A8753A19279
        F23F2BFED2D7DB364F6CD93DB364F6CD93DB364F6CD93DB364F6CD93DB364F6C
        D93DB364F6CD93DB364F6CD93DB364F6CD93DB364F6CD93DB364F6CD93DB364F
        6CDA17FF0037659ED9B27B66C9ED9B27B66C9EDBB33ED9B27B66C9ED9B27B66C
        9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B6
        6C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B6ECA3DB364
        F6CD917FF3B651EDBB285FFCEDA4DFFF003B62A6FF00F9FB551ED9B27B66C9ED
        9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9F96E9547E56D7DC3D49EE1
        EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A
        83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0
        F70F507B87A93DC3D41EE1EA0F70F527B87A83DC3D41EE1EA0F70F507B87A83D
        C3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70
        F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D
        41EE1EA0F70F507B87A93BCDF477BBF0FD7FA94DFF00F47D437EE1EA4F70F507
        B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83F2CD4EBF
        CA9AAF2F0A84BA7418BC52126CA69BC854555D355D57FEB45553A9F33F2BFED2
        D57978544A85E6FC5A29BA6D8A632AA5BA4AA53E6FE57FDA5AAF2F0A96ADF8B5
        4BA8A3FF0054BFF52B74AAB9FF0095FF00696ABCBC225E3EB6E9537EDBAFFF00
        5F3D1AE77E57FDA5AAF2F05225E3188DBA555565735D54A75572B87CB99F95FF
        00696ABCBC5B5E0D8E84E9A55293A9535BA36E92AA9D4DBF05F95FF697855CCF
        2F0085D44E9DA6D50E86E855535BA572A793F95FF697F228A5C3AB6EAA9D714D
        1CDF2E47E57FDA5C1E5CEF33CBF804DAF029F17E57FDA5E07CFC27972DBF091C
        5F95FF00696ABCB99E7E1D3E437E2FF2BFED2D579707971F9F888FE03CB5FCAF
        FB4B586432190C86432189496B2D6410D90C86432190C86432190C86433C910C
        86432190C86432190C86432190432190C86410C86432190F586432190C864321
        90C86432190C86432190C86432196BD3F2BFED2D52850C86432190C87A742191
        D6190C86432190C86432190C8634E1AD2190C86432190C86432190C86432190C
        54B218D74B486432190C869690C86432190C86432190C86432190C86432190C8
        64321907E57FDA5C524EB56889249249249249249D6116AD6492492492492757
        E4C5AC93C16A21704924924924924924924924EB5797E58FDA7AC10410411A42
        3A1088208208208208208208442211088208208208208208204B582082082082
        082082082082082082082082082082083A1F963F69F0F53A9D74E9AB6893A9D4
        EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9223A9D7593A9
        D4EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753AEBD4FCB1FB4
        F5B692CA4B692DA4B292CA4B292CA4B292CA4B692CA4B692DA4B692DA4B692DA
        4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4
        B292CA4B692DA4B292CA4B292DA4B692DA4B692DA4B692DA4B692DA4B692DA4B
        692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692CA4B292CA4B693F2CFE
        D4D7B4DD3B4DD3B4DD3B5DD6FB4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD
        3B5DD3B5DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4D
        D3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD1FA5DD42F49BA769BA
        769BA769BA769BA769BA769BA769BA769BA3F4BBC8ED774ED374ED374ED374ED
        374ED374ED374ED374ED374ED374ED374ED374ED374ED374ED374ED374ED374E
        D374ED374ED374ED374ED775BED374ED374ED374ED374FCB69D3F95B87CF993E
        0DB12E6273E0FCF8BF2F7ED9E0F3E77978094F44B9D3E07CF8FF002F7ED9D73D
        4CCF519EA33D467A8CF519EA33D467A8CF519EA16E56D64ACC95992B32565D5A
        3256CDEF515D2FB9DF3B9DF3B9DF3B9DF3B9DF3B9DF3B9DF3B9DF3B9DF28AF76
        D75D62AEA9756E4D5BB5A59B74CDBA66DD16EEEB6AADC8BEB2FACBEB2FACBEB2
        FACBEB1555CA4D2E182190C8643208208219044904104104107E5EFDB3CDA299
        E3DDAD514A7C9D9DB244FA4B6E5524BA9C6B4531C9DBA5AF03E7C9FCBFFB6799
        4D373885C3554A8A6AA9D4DA4CEAB8F6B6EFA9B4855175A5D45255537A492505
        E8B8BA04E74944A2514529B9F01E7CAFCBFF00B6796BABA55AB86616EEE64AB5
        8684E7828A1D55529509B85FE92A995391EB4A92235EAC4A07D4B58E0A55CD28
        F01E7CBFCBFF00B67974530B8B7F72789A139D14B746DA49BA5910A545754127
        9E8BA94A54AD3FF610DCEAA9753A6954AE04A1786FCBFF00B6795453C4D49BBB
        962E4ECED5ABA1524C86371C34D31AA50529A553829F243706DD16AE05C89F01
        F97FF6CF268A65F16E56A8A5B753E263A5D251B499E74FF9122552A67829479E
        ABA8DC27D47D046DD13C2972FA73BF2FFED9E4252D285C5B946ED6F06E98374C
        1BA60DD306E98374C3B861DD28F4ED35FF00E638436989153B9EB4AB9FFE745D
        5F449B6DDC5C50AE7D2383CBC4FE5FFDB3C8A69B57167A13EE283B8A0EE283B8
        A0EE283B8A0EE2817A8A1B55A9FF00D1BA9968FCABAA47AA4D9D16886E44A16A
        94B4952BC77E5FFDB3C7453C7BFB9690753A9D4EA75204AA652AA54EC6DD83AA
        1A527FE6A7034E539D6951ADC52B868A6D5E0BCB9BF97FF6CF1514CF1CA4743A
        1D0E8742693A17286E1A6EDAAA70948941368DB91A913295AD4534CF0EDD3E1B
        CF97F97FF6CF0D2AE710B86AA9534D753AEAE1A1D25915BAA69DAA3236C5FF00
        B1E6FAC373C14D2AA7D56A93AB868A6E7FC0FE5EFDB3C094BA69B571574535AC
        1B660DB30ED9876CC3B661DB16CED42DBA1BC7B4C487353A85E75552F54A5AE8
        79BEA85D44A16B4AB9A50BF81FCBDFB6759828A61716EEF34F2EE19B70CDB866
        DC336E19B70CDB82DDA9A5BB5D250AA54D5569E656E13D521285A2702A44F5F3
        74D36AF15E5C8FCBDFB675A29970D09A7C355D6F6F59DBD676F59DBD676F59DB
        D676F58BD3D6CEDAB36B66C6DC24A74A9C2E0A547052B469325AD36E8B7F84FC
        BDFB6785A13D6BA96DD3DC1DC9DC9DC9DC9DC9DC23B893B946DEE641B84DF525
        24DCBD194A2754A5F06DD1E3E09E1FCBDFB6789A4C96B4DCBF72AC7598EB31EE
        18F70C7B8595A31D6CB2B29DAAAA74D34D29BBB4892A72DEB4A9138D111D5285
        AD14BA9F911CA8F0DE5C1F97BF6CF21EE514BCDB666DB336D99B6CCDB666DB32
        EDB79B6C5B9B6D95329F22A7C090946AAA84970436E9A552B553FC04CE9F97BF
        6CF1EF6E5886BAA724104C289724B3676ED553856A3C90A9A5914914908A36A9
        4ACA0B281D14229A292DA4B282DA4B691534AE2EABF81FCBDFB678B73716DD2D
        B6F5871E4253AECEDDC3690BABE1B8DBA38129E6DC8552D174F1BF97BF6CF157
        46ED7560DC305660DC16C6E2787725EC6E3305660ACA7D3D6EA4924DDCF86A36
        E9B9EBE6251CDA20ABC723F2F7ED9E4CB9820885AD5571212BDA492D2509473A
        110BC7FE5EFDB3C899128D5A925AD2A709A8E248A29B56B4AE637FC079EBF97B
        F6CEBF319F319F319F318FF3149F319F319F319F319F319F319F31437F9824F9
        80F980F980F980F980F980A7F312A5FCCC7CCC7CCC2FCCB07CCE7CCE7CCE7CCE
        7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE
        7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE
        7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CD07CCE7CD07E4AF5BEE5F91BFA57DE
        FF00F67FD2BEF7FF00B3FE95F7BFFD9FF4AFBDFF00ECFF00A57DEFFF0067AFFF
        DA0008010202063F0043B22D916C8B645B22D916C8B645B22D916C8B645B7C27
        84F09E13C2784924924924924924924924924924924924924924924924924924
        92492492492492492492493C2784F09E12492493C2784F09E13C278493C27855
        DFF8C8BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BA
        E1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE
        1B88BAE1B88BAE19175C322EB8645D70DC45D70C8BAE19175C322EB86E22EB86
        45D70C8BAE19175C322EB8645D70C8BAE19175C322EB8645D70C8BAE19175C32
        2EB8645D70DC45D70C8BAE19175C322EB8645D70C8BAE19175C322EB8645D70C
        8BAE19175C322EB8645D70C8BAE19175C322EB8645D70C8BAE19175C322EB864
        5D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45
        D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D
        70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DCF84924924924924924
        9249249249249EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB
        47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB4
        7AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47
        AD156FE3322D916C8B645B22DBE1FFDA0008010302063F00FD03A08208208208
        1D16E8B745BA2DD16E8B745BA2DD16E8B745BA2DD16E8B745BA2DD16E8B745BF
        D2C7FA58E8B7FF0073DFF627745BA2DD16E8B745BA2DD16E8B745BA2DD16E8B7
        45BA2DD16E8B745BA2DD16E8B745BA2DD16E8B7FCC8208208208208208208208
        208208208208208208208208208208208208208208208208FAF9FFDA00080101
        01063F00FC0FFCBBEA9DBFF77CE7E0BFE5DF54EDFF00BBE73F05FF002EFAA76F
        FDDF39F82FF977D53B7FEEF9CFC17FCBBEA9DBFF0077CE7E0BFE5DF54EDFFBBE
        73F05FF2EFAA76FF00DDF39F82FF00977D53B7FEEF9CFC17FCBBEA9DBFF77CE7
        E0BFE5DF54EDFF00BBE73F05FF002EFAA76FFDDF39F82FF977D53B7FEEF9CFC1
        7FCBBEA9DBFF0077CE607C9769ED7D2AF92ED3DAFA55F25DA7B5F4ABE4BB4F6B
        E957C9769ED7D2A8FF00F0D27FD476AE957C9B68ED5D2AF936D1DABA55F26DA3
        B574ABE4DB476AE957C9B68ED5D2AF936D1DABA5501DCDB476AE957C9B68ED5D
        2AF936D1DABA55F26DA3B574ABE4DB476AE957C9B68ED5D2AF936D1DABA55F26
        DA3B574ABE4DB476AE957C9B68ED5D2AF936D1DABA55F26DA3B574ABE4DB476A
        E957C9B68ED5D2AF936D1DABA55F26DA3B574ABE4DB476AE957C9B68ED5D2AF9
        36D1DABA55F26DA3B574ABE4DB476AE957C9B68ED7D2AF936D1DAFA55F26DA3B
        5F4ABE4DB476BE957C9B68ED7D2AF93ED1DABA55F27DA3B574ABE4DB476BE957
        C9B68ED7D2AF936D1DAFA55F26DA3B5F4ABE4CF37FB8ED5D2AF936D1DAFA55F2
        6DA3B5F4ABE4DB476BE957C9B68ED7D2AF936D1DAFA55F26DA3B574ABE4DB476
        BE957C9B68ED7D2AF936D1DAFA55F27DA3B574ABE4DB476AE957C9B68ED5D2AF
        936D1DABA55F26DA7B574ABE4DB4F6AE957C9F68ED5D2AF936D1DABA552F7347
        37FB8ED7D2A88EE593FEA7B5F4ABE4BB4F6BE957C9769ED7D2AF92ED3DAFA55F
        25DA7B5F4ABE4BB4F6BE957C9769ED7D2AF92ED3DAFA55EA4763ECD63FB7D9BB
        277F77C766ECFCDC49E2D8E6FBC39EB36446D124C009F13C2A22E9AB064A7064
        7DC64C993264C993264C993264C993264C9934A993264C99328D231122BA6857
        4A65755DE04DC09AB09AB09AB4CA462F2E23D50FB8BBEFC4B9EC57B6651174F0
        EEF09C3887DF31DC88511EF18881BC2BDD74E9D3A714A70AF0A55E14ABC29510
        6385EA87DC5DF7E25CF62E0E0B8460C5BFC654464C4C43EFB8851A779E69C288
        310707D50FB8BBEFC4B9EC57E5B902C8CB1067C5443EF3E0C444288F78C44844
        9314E1384E2B4E9D3A74E9EA57AA57A42E307D50FB8BBEFC4B9EC5709DD8382A
        07DD8A887DE3F962A2149EF18608994A6072417F9A74F527A93D49D39A13A74E
        9D444BBBEA87DC5DF7E25CF63A07DC542D7B88C5443E3F34C30A4A30A214463D
        9327DC88972833A88DCF543EE2EFBF12E7B11C3864169910E3F2CD8A8879F1B1
        3EE189817C19144622209CE1394E5394E53953A9D4E9A59C9299446E7AA1F717
        7DF8973DBC20694431134D8A887C5C4FB862FF003C188F785118711EF0AED6AE
        D6AED6AED6AED6AED6A4B3416577DF14D5A6AD3569AB5EA81CBFC8BBECFF00E4
        B9EDE390CC510642A071310F9313C031B2518311EF5263201E73930FD4FF00B8
        7BEBC4B9EC0931D9E6502B362621E7C18292CC00DEB11EF0A230E51113C5022C
        829930F6ABA15D0AE8574264C997AA1F7177DF8973D812103DCAF0A028192D87
        18DCE18A815251898879C6E694496120032A801C522E90A36ADC26E2AC91961B
        C65A70223DE14461E5138524A32E27D50FB8BBEFC4B9EC216818112C540C96C5
        E18D887DCCF9567C4443CE14C6D8108146C992704E5512624301BD3F2C08D214
        66C2CCA1C99C28C6319F11EA87DC5DF7E25CF618B564C0862B25A0E31B117B87
        765A7762A753EE09224CBEE46D59FD3684A649913C5FD464CDBDA33E07085113
        E0C9B9032D9C47AA1F7177DF8973D8816AC9811282B25B17ACE3621F26090866
        960A366102EBF49973A02D484480E5500231739936F8969DDFC9472EE66DDC9B
        902DC187EA87DC5DF7E25CF6245AB260431592D8BD671A4D912CE32E0C6640D9
        311389D3FE92C5432E697718289C53A7C738578529C6795478C21ED0AF0A42BE
        290AF8A55F14ABE15F15A85AB724C6557EA3A15EA8ABC682B8B62D7EA78110DC
        F543EE2EFBF12E7B142D5930227592D0BD671BC61EF1F9EE4B27B5466C884265
        122400840549EB57AB57AB4F5A925CC7111B260722BD50578ABC55E2AF157AB0
        AF1A55F34957CD253D69CD29CD2A7A7720A597D8A2E3D9B92290EEBA7C204181
        1282140C9CE07197D8BD50FB8BBEFC4B9EC58B564C08C8B25B17ACE3499A70A5
        888B45716D52A318E50818C416CDB8705B111B3219F3AC89D3A74E9D3A74F820
        CCB4414232AD3BB2628106044A17A9B68BDAFE43DF44FBFBCB9EC60B564C0851
        6B42F59C6F185AF6013220DE124306299326DC88F7E2222F6E384E138AD5EE15
        7856AF0AD5E57EA57AA0AF2BCAF2BCAF2BC6A4E6A4E6A4E5441268D09CD2A7A5
        4F4A634A63494C692A16ACCB34A55CACAD5D76B4AF53C0900FE45DF600FF00EC
        B9EC0D595AB2AE1A95CE0573815CE05AB2AE15AB35216ACD92086281B567896A
        718A2770C99A289174BFB7773706E413EE3A994CB2E61BCB36273288C3817E14
        CBD50FB8BBEFC4B9EC0BD6691A15EB348D0AF59A46857ECD2342BF6691A15FB3
        48D0AF8A46857C5216B05216B054AF887B57E9B42D7B311C2570A9043732E651
        0DBBF96E8814E53A74F89307CEA0408870629856AE84C1327142F82CDEC4F527
        15274FC09EA57B814B6B815EF7ABC55E2AF957CD2AF9A55F349578D255E34957
        8D255E34952DB3495EA61CBFC83BE7C4B9EC78B564C0851125A17ACE070284E8
        C0640B3B152339F6E040CEEB28DDFCD4AA50997F9AFF0035352A6A5441F76232
        10C542D4D361BA74E9F787A99F7077CF88F3D80F6A9F827B54FC139A7E09CD3F
        04E691A15E348D0AF1A4684E691A139A468578FF008F7292D1AB427348D085AB
        36AD023D943604B2059D3BCAA4F60C294485669B099315F04C684C98E233862A
        E9F72BA55D2AEABAAE702B9C0AEF026E04C9B81370261526AD3569AB4C01F6A6
        14A614A04112E7F827149D09C57A138AF42BC2B57856BD4D05C7F21EFA1FF92E
        7B02E598E68ABA15C14957056AE057456AE8A4AB82B5705255CACAB9595AB14A
        D58A55CAD444845EB266DCCE26513898162B80E049461C47BC62BF2C7CBB99A7
        0A49F07D4FFB87BEBC4B9EC0D59A0AB87DB0570D0AE1A15C341570D055D34157
        4D0AE9A131A15D3426DD16ACC84288908BD64CD8C81503EEC5923DF888D08836
        7815D2AE9A95D5755D5755D5755D5755D5755D576B576B5764C9157692AE884F
        2ABA295745255D0AE8A4AF534973FC87BE89FF00B973D81785215E1EF2149681
        192215E1484F595785255E09EB4C9D356A6DC65003DA5087BF1B03EE2A069C5C
        47BC6144FB86E40D2A07FCF78E7C8B3607A99F7077CF88F3D8F73494E69578D2
        A4B4692AF9A4A1685A324C4A8871786320540B8C5C47BC6044FB86040FB8A81F
        7109AADC64C993549AA4D526A93549AA4C993264C684D5263051164D098D057A
        99F7077CF88F3D80E69F82E552342BC6AD0AF1A94968D4A5B66196015F3405AC
        3405ACABE2AFFF00C3F157E3EC1F157EA5273926581525B10F6157856AF057C2
        16ACDBB31F7CAA579E18C95D40BE2E23DE3733E29B1F9A70A2258AF53BEE1EFA
        F12E7B159464C8A224381FE9E150C0931F90CCA070A5A7078C3DE3132986457B
        855EE157AA2AF5455EA8ABD5157AA2AF5455EA8ABD5157AA2AF5455EA8ABD515
        7AA2AF54548639A055E927102BD4E218FF0021EFA23FEE5CF603264C993264CB
        228C37088489B7AE433152E2E21A718881956505AD268EF1F52FEE0EF9F11E7B
        FA2C43E14AA419B0623DE311033ACA32EF02BD4BFB83BE7C479EC0BE6A57CD4A
        F9A95F35288E70C3248B58681A16B4D4B5A680B59C0B5A680B5A680B58680B58
        680B58680B5A680B5A680B58680B5A681A16B4D0342D69A0685AD340D0B5A681
        A16B8D0342D71A0685AE340D0B5A681A16B4D0342D69A0685AD340D0B5A681A1
        4BCE139A4D0A22D9A95F352BE6A51E3CAAF9A16B0D014B6CD4AF1A95F352BE6A
        D0AF157D5F578ABC5445AA60AF702BD5057B815FE057B815EE057F8140DA8839
        60BE014D40535015D142BB52715A715A715A715A6180C134BB9EA5FDC1DF3E23
        CF626207B77D669C288C18D18B65F14E5394E5394E5394E9D394E5394E5394E5
        394E5394E5403EE395EA5FDC1DF3E23CF62A207BB072E29B17C2A2378326DE30
        0FC181EA67DC1DF3E23CF60394E5395089AD39A4A729CD69CD2539A4A73494E6
        929CD25484FB22539A4A73494E6929CD2539A4A73494E6929CD2539A4A73494E
        6929CD2539A4A73494E6929CD2539A4A73494E6929CD2539A4A735A73494E692
        9CD2539A4A73494E6929CD2539A4A73494E7DB129CD2539A4A73494E6929CD29
        CA729CA729CA729CA729CA729CA729CA729CA729CA729CA729CAF523EBFDF1E2
        3CF61494E2E21D427DE912F8BCDBEBD48FAFF7C788F3DBCE5A77944BE373EF29
        29C3F523EBFDF1E23CF604A200FB28DE19B7844BEF08638DB364DA31E28B2265
        2D9364168E23D48FAFF7C788F3D806CF1CDB2658E44E5394E5394E5394E5394E
        5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394
        E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E7DC
        9D016BF5DA7CC171F9B240325AB2608D936F8E498C42729CA729CA729CA72BD4
        9193BFFBE3C479EC0BD57C15EABE0AF55F057AAF82BD57C15EABE0AF55F057AA
        F82BD57C15EABE0AF55F057AAF82BD57C15EABE0AF55F057AAF82BD57C140DA7
        9186320B3EF4FCB120E440D91FA4F2865408B50B4C415C4B262498DA2313EA57
        D7FBE7C479EC0D48A56A452B52295A914AD48A56A452B52295A914AD48A56A45
        2B52295A914AD48A56A452B52295A914AD48A56A452B53656A42D48A56A6CAD4
        D95A9B2B53656A6CAD4D95A9B2A1679B160BC41DEF9F0C5968BA80B008139518
        46C5B11E2A02C8694938AF52BEBFDF3E23CF606B2D55A16B2D55A16B2D55A16B
        2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B
        2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B
        2D55A16B2D55A15FB5568527396AAD0B596AAD0B596AAD0B596AAD0B596AAD0A
        1C7B55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB5568
        5ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB5568
        5ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB5568
        5ACB55685ACB55685ACB50CB2685ACB55685ACB55685036AD1E3491934231B76
        B336842D59E72D187B3428FF0076D08CB09342BF6801206D0B596AAD0B596AAD
        0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD
        0BD4DB025163F90F7D5904E6EF2E78603D9FFDBF15C9A172685C9A172685C9A1
        72685C9A172685C9A172685C9A172685C9A172685C9A172685C9A172685C9A17
        2685C9A147F4FB609ECD0B9342E4D09ECD1F15C9A172685C9A172685C9A17268
        5C9A172685C9A172685C9A172685C9A172685C9A172685C9A172685C9A172685
        C9A172685C9A172685C9A172685C9A172685C995A4F8A85BB7641C90F8A81366
        5BB6A1270A20F141F67C57244D20F8AE4D0B9342E4D0B9342E4D0B9342E4D0B9
        342E4D0B9342E4D0BD4CB65ED7F20EF9B46194F78F3C77D839660A45ECDF9002
        2720444605C2B11319CC26448110588566C9BD1E3289F6637D4AFAFF007CF88F
        3DBEC08B4C9F811DF9FA5F32E358278C24B40BE791445F0E32AFEDDA3026E913
        2209899F1DEA57D7FBE7C479EFEB1FA447D8AD59278969C13911B766D71BFF00
        5E751B25E592482FCF1FEA57D7FBE7C479EDFDF96FAB366CC8211F6A26D4A6C9
        90D0B8A2CF162F0C0FCF1BEA57D7FBE7C479EDEF26FF009584A46552002CE4CC
        8036636611080038A04C30B3633D4AFAFF007CF88F3DBDA4C5CB4EF3E358960E
        11B76844300AC9E2C0112819D0B529B2E0289C4442CF8AF52BEBFDF3E23CF6F5
        863728DE200F628131B53C194230B36A5198A36A3C6B4D640951044419B159D4
        B89F52BEBFDF3E23CF607E7BC3F3C7C42CF8F0724AB8D64C41962ACD88C4DE30
        FF0019F1D9B11EA57D7FBE7C479EC00B28C7426CBBC73A81C7C86148DE1F961F
        A95F5FEF9F11E7B0A459F179BFAA4B83EA57D7FBE7C479EC3CFF00D03F2FE81F
        9E07A95F5FEF9F11E7B139BFA367DF9EA57D7FBE7C479EC01229D4EA753A9D49
        46E3264EB329D4EA753A9D4EA753A9D4EA7C09D4EA753A9D4EA753A9D4EA74CB
        F353A9D4E9A54CA753A9D4FBB3A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9
        D4E9B73D49FAFF007CF88F3D82E9D3A74E9D64F6A7F7C24518C7D8A51009D3A7
        4E9D3A74E9D3A7463BAE9D3A74E9D3A74E9D3A74E9D343DA9A3EC2A01674E9D3
        A7453EE3A74E9D3A74E9D3A74E9D3A74E9D3A74E9D44C9ED5EA57D7FBE7C479E
        C264C9936E0932AE04646907B13264C993264C993264C9B75B7193264C993264
        C993264C8C8994A37193264DBAC9B7593264C993264C993264C993264C993212
        457A95F7077CF88F3D8A852B2A6E14DFD7732F52FEE0EF9F11E7B0993265C384
        C993264C993264C993264C993264C993264C993264DBAC9B77F24C993264C993
        264C993264C993264C993264C993264CBF352265EA5FDC1DF3E23CF603264C99
        3264C993264DB8C993264C993264C993264C993264C993264C993264C993264C
        993264C993264C993264C993264C993264C993264C993264C9932F52FEE0EF9F
        11E7B026A54D4A9A952421398A9A95352A6A54D4A9A95352A6A54D4A9BD91534
        72454D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A5
        4D4A9A95352A6A54D198454B0A54D4A9A95352A6A54D4A9A95352A6A530232C5
        4D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A54D4A
        9A95352A6A54D4A92109CC54D4A9A95352A6A57A9B64BD9FE43DF40FBBBCB9EC
        2CD8C817DE79E618C928526F3FCF0BD50FB8BBEFC4B9EC1CD8ECD977848B2ACF
        39DFF9B2E1FAA1F7177DF8973D819BDD2E2B4C1024C233489F813F027E04FC0A
        4B5EE91486A0B8B66D40B93250B59559D0B59559D0B59559D0B59559D0B59559
        D0B59559D0B59559D0B59559D0A4B64FBACE85FAED46D3969332BD5043F5C685
        188C83FC414232FB95FA82BD5057AA0AF4A732BFEF82BD52BD52BD52BD52BD52
        BD52BD5290C72040131339DE39B11EA87DC5DF7E25CF63A25B0E4BE58FF8994B
        29329267C48B644BC9078533CA11B508C240142D07C88931244408224CF294FB
        B12F89897C9BC73627D50FB8BBEFC4B9EC6C29524984496E146D196356652A95
        B2E1C4DD0F09CE45087B00950B328394A811ED2A23F5648CCA2536EC48902629
        8A651DC74E9D44B0619D3EF0CD9315EA87DC5DF7E25CF6320A184F084E57FA45
        D1F9E048D93078B4E619D7143597421213292AD03C9962B3B44A8061819A7500
        D3EE90A01664CB2414260E5406FBF543EE2EFBF12E7B1919CE19B0185E861443
        AC877042532421957FA8DF8284200480850238D6728500200B99D407BF0009CA
        03766DC86E800C62A14EF0E0C67AA1F7177DF8973D8B89F761C05E2D986559E7
        C4F1EDCF25913A301FAB215C60D3ACC5C059CB60E7321C095D403E044DE356F0
        97DD8DF543EE2EFBF12E7B159861C4CA580CE89B4E5F10232878665C72C20409
        A2A13D998A249CC0297DA724513919470227DD811994548A40A2D95718B4C378
        7B31DEA87DC5DF7E25CF62A187187E96128902BB58576B0AED615DAC2BB58574
        5215D1484CEC22142D8005A9220C501C960A22D7B02043990852ACD930333AFD
        3BB184AB32804C997FA44CB363E18FF543EE2EFBF12E7B139CB9C3225C910245
        CAA172A85CAA172A85CAA172A853D0A001A159803688C8254D18CE8D978314E8
        162A01B2E0410130DD0A18100A01863736F2F543EE2EFBF12E7B1119CB61F12C
        DE37889826C39013056E485A9BD881E517CDED46072A82B2A1397510F9167C9B
        BC270225F07FD45CEF3CD971BEA87DC5DF7E25CF61C4B09F2E1BD2AF702BDC0A
        F702BDC0AF702BC2A57B8165E042C83002599120CA18A7847DCA44E892E5673B
        990E5502EA27DD8119B078C5E6FE83EA87DC5DF7E25CF61429425801844960B8
        D6A8C8371AA4D526A935488B424B53C2A42C9110FED0ADE41201EF405B120941
        CA14210166580A944EE44991669B02244814B28CB888961FD0BD50FB8BBEFC4B
        9EC186550A4E18E333C2298D2531A4A63494C69298D2531A4A89B318C8012540
        D9842510251FD0EE25752084180FF0EA561221B900C1F024F794042033EE4436
        4522860001A7391406F981C4FAA1F7177DF8973D819B2A8CE70F8B61C5E2AFD4
        AF1A95E352BC6A578D4AF1A95E352E2DAB7C522506447F5F1ED1900004E871CF
        1AD3C7F2500FBB00FC1819CA8527022C540C8774012C54279CFF0043F543EE2E
        FBF12E7B038C42886C8A4C13C572CAF034ABC2B57856AF0AD5E15ABC2B57856A
        22D0AD5E15AE35A2090D059F7419E618312FC18113B92A816CBB91378EFD9164
        C2F543EE2EFBF12E7B0A2242A0643BA6D1F70CEAE1A55CAD5CAD5CAD5CAD5CAD
        5DFF00895C30F6AB869448B3002494CEA2819B70C583295E6C0896189E338174
        6FFF00CD4B83EA87DC5DF7E25CF61CAA05B2EE4788602402069574D6AE9A0E95
        74D074ABA683A55D341D2AE9F7C5478861EC2AEDAAF4A8104672182003090291
        84FBB09860669D4BBB050C0CC2F1500A224389CF9167CBBEBD50FB8BBEFC4B9E
        C4DF1908C8AF857C2BE15F0AF857C289B608982BE1002D024B01B901BBC5133E
        0003D880CB812E040280A7025A77FC8BF2DCF543EE2EFBF12E7B11C5B378CF90
        6E443E04AA27DC3778D6AF160660B3E032FF0035FE6A0044A96CCA55DA95C575
        44D90322BA15D0AE857429043D985946FF00C9B9EA87DC5DF7E25CF61C4CA587
        B51265267DD90473ACF914A20A27DDBBC7224174652A25470A5A571AD0979230
        3364C6C92FB164390EFED0BD50FB8BBEFC4B9EC38F1601808891356135615DAC
        23256137BA210FD3ED64D584D585FAA41398CA800C0420B365C2072A89BB6702
        0A18DE159346FF00F543EE2EFBF12E7B1500C1CA787B13A94C7DB8107C3007BC
        A80DE1F96E326DFB22C8BD50FB8BBEFC4B9EC4C034E54376054B28CBB99F0C00
        224ACA673811A3199E61839F7F7AA1F7177DF8973D81E5CDB3A85E5CDB3A85E5
        CDB3A85E5CDB3A85E5DF6FFCDF50BCB9B6750BCB9B6750BCB9B6750BCB9B6750
        BCB9B6750BCB9B6750A4FE3B0193FDDF52BCBBB5F52BCBDB5F52BCBBB5F52BCB
        BB5F52BCBBB5F52BCBBB5F52BCBBB5F52A3FFE72266FF9CEA1796F6CEA1796F6
        CEA1796F6CEA1796E4FF00ACEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA17
        96F6CEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA179
        6F6CEA1796E5CBFEF3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A
        85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A8
        5E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85
        E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E
        5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5
        ADB3A85FCFFBC7FB5FD9FF007FDF7DEBDB7FB3C6E3713FBBDBF9DE738B1808C2
        2F0FC17FCBBEA9DBFF0077CE7E0BFE5DF54EDFFBBE73F05FF2EFAA76FF00DDF3
        9F82FF00977D53B7FEEF9CFC17FCBBEA9DBFF77CE607FFD9}
      Frame.Typ = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 147.401670000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 154.960730000000000000
          Height = 105.826840000000000000
          DataField = 'logotipo'
          DataSet = rel_DS_empresa
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 309.921460000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'P'#193'GINA : [Page]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 226.771800000000000000
        Width = 718.110700000000000000
        RowCount = 0
      end
    end
  end
  object query_update: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from produtos where codigo = '#39'1'#39)
    Left = 680
    Top = 32
    object query_updatevalor: TBCDField
      FieldName = 'valor'
      Origin = 'valor'
      Required = True
      Precision = 10
      Size = 2
    end
  end
  object query_duplicata: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from duplicata')
    Left = 136
    Top = 648
    object query_duplicataid: TFDAutoIncField
      DisplayLabel = 'N'#176' Duplicata'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object query_duplicataid_cliente: TIntegerField
      DisplayLabel = 'C'#243'digo Cliente'
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
      Required = True
    end
    object query_duplicatacliente: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'cliente'
      Origin = 'cliente'
      Required = True
      Size = 50
    end
    object query_duplicatadata_cad: TDateField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'data_cad'
      Origin = 'data_cad'
    end
    object query_duplicatahora_data_cad: TTimeField
      DisplayLabel = 'Hora da Emiss'#227'o'
      FieldName = 'hora_data_cad'
      Origin = 'hora_data_cad'
      Required = True
    end
    object query_duplicatadata_venc: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'data_venc'
      Origin = 'data_venc'
    end
    object query_duplicatavalor: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Origin = 'valor'
      Required = True
      Precision = 10
      Size = 2
    end
    object query_duplicatasituacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'situacao'
      Origin = 'situacao'
      Required = True
      Size = 10
    end
  end
  object DSduplicata: TDataSource
    DataSet = query_duplicata
    Left = 232
    Top = 656
  end
  object tb_duplicata: TFDTable
    IndexFieldNames = 'id'
    Connection = fd
    UpdateOptions.UpdateTableName = 'pdv.duplicata'
    TableName = 'pdv.duplicata'
    Left = 48
    Top = 656
    object tb_duplicataid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tb_duplicataid_cliente: TIntegerField
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
      Required = True
    end
    object tb_duplicatacliente: TStringField
      FieldName = 'cliente'
      Origin = 'cliente'
      Required = True
      Size = 50
    end
    object tb_duplicatadata_cad: TDateField
      FieldName = 'data_cad'
      Origin = 'data_cad'
    end
    object tb_duplicatahora_data_cad: TTimeField
      FieldName = 'hora_data_cad'
      Origin = 'hora_data_cad'
      Required = True
    end
    object tb_duplicatadata_venc: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_venc'
      Origin = 'data_venc'
    end
    object tb_duplicatavalor: TBCDField
      FieldName = 'valor'
      Origin = 'valor'
      Required = True
      Precision = 10
      Size = 2
    end
    object tb_duplicatasituacao: TStringField
      FieldName = 'situacao'
      Origin = 'situacao'
      Required = True
      Size = 10
    end
  end
  object tb_contas_a_pagar: TFDTable
    Connection = fd
    UpdateOptions.UpdateTableName = 'pdv.contas_a_pagar'
    TableName = 'pdv.contas_a_pagar'
    Left = 368
    Top = 672
  end
  object query_contas_a_pagar: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from contas_a_pagar')
    Left = 496
    Top = 664
    object query_contas_a_pagarid: TFDAutoIncField
      DisplayLabel = 'N'#176'  Ordem de Compra'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object query_contas_a_pagarid_fornecedor: TIntegerField
      DisplayLabel = 'C'#243'd. Fornecedor'
      FieldName = 'id_fornecedor'
      Origin = 'id_fornecedor'
      Required = True
    end
    object query_contas_a_pagarnome_fornecedor: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'nome_fornecedor'
      Origin = 'nome_fornecedor'
      Required = True
      Size = 30
    end
    object query_contas_a_pagarcnpj: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CNPJ/CPF'
      DisplayWidth = 18
      FieldName = 'cnpj'
      Origin = 'cnpj'
      Size = 30
    end
    object query_contas_a_pagardata_cad: TDateField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'data_cad'
      Origin = 'data_cad'
      Required = True
    end
    object query_contas_a_pagarhora_data_cad: TTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Hora Emiss'#227'o'
      FieldName = 'hora_data_cad'
      Origin = 'hora_data_cad'
    end
    object query_contas_a_pagardata_venc: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'data_venc'
      Origin = 'data_venc'
      Required = True
    end
    object query_contas_a_pagarvalor: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Origin = 'valor'
      Required = True
      Precision = 10
      Size = 2
    end
    object query_contas_a_pagarsituacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'situacao'
      Origin = 'situacao'
      Required = True
      Size = 10
    end
  end
  object DScontaspagar: TDataSource
    DataSet = query_contas_a_pagar
    Left = 632
    Top = 672
  end
  object tb_servicos: TFDTable
    IndexFieldNames = 'id'
    Connection = fd
    UpdateOptions.UpdateTableName = 'pdv.servicos'
    TableName = 'pdv.servicos'
    Left = 48
    Top = 744
    object tb_servicosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tb_servicosnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 25
    end
    object tb_servicosvalor: TBCDField
      FieldName = 'valor'
      Origin = 'valor'
      Required = True
      Precision = 10
      Size = 2
    end
  end
  object query_servicos: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from servicos')
    Left = 128
    Top = 744
    object query_servicosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object query_servicosnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 25
    end
    object query_servicosvalor: TBCDField
      FieldName = 'valor'
      Origin = 'valor'
      Required = True
      Precision = 10
      Size = 2
    end
  end
  object DSservicos: TDataSource
    DataSet = query_servicos
    Left = 216
    Top = 744
  end
  object tb_os: TFDTable
    IndexFieldNames = 'id'
    Connection = fd
    UpdateOptions.UpdateTableName = 'ordens_servicos'
    TableName = 'ordens_servicos'
    Left = 48
    Top = 808
    object tb_osvalor: TBCDField
      FieldName = 'valor'
      Origin = 'valor'
      Required = True
      Precision = 10
      Size = 2
    end
    object tb_osdata: TDateField
      FieldName = 'data'
      Origin = 'data'
      Required = True
    end
    object tb_oshora: TTimeField
      FieldName = 'hora'
      Origin = 'hora'
      Required = True
    end
    object tb_osfuncionario: TStringField
      FieldName = 'funcionario'
      Origin = 'funcionario'
      Required = True
      Size = 25
    end
    object tb_osdesconto: TBCDField
      FieldName = 'desconto'
      Origin = 'desconto'
      Required = True
      Precision = 10
      Size = 2
    end
    object tb_osvalor_recebido: TBCDField
      FieldName = 'valor_recebido'
      Origin = 'valor_recebido'
      Required = True
      Precision = 10
      Size = 2
    end
    object tb_ostroco: TBCDField
      FieldName = 'troco'
      Origin = 'troco'
      Required = True
      Precision = 10
      Size = 2
    end
    object tb_oscliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cliente'
      Origin = 'cliente'
      Size = 30
    end
    object tb_osformadepagamento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'formadepagamento'
      Origin = 'formadepagamento'
      Size = 15
    end
    object tb_osstatus: TStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 12
    end
    object tb_osobservacoes: TStringField
      FieldName = 'observacoes'
      Origin = 'observacoes'
      Required = True
      Size = 100
    end
    object tb_oscaixa: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'caixa'
      Origin = 'caixa'
    end
    object tb_osstatuscaixa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'statuscaixa'
      Origin = 'statuscaixa'
      Size = 10
    end
    object tb_osid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
  end
  object query_os: TFDQuery
    Active = True
    Connection = fd
    SQL.Strings = (
      'select * from ordens_servicos')
    Left = 128
    Top = 808
    object query_osid: TFDAutoIncField
      DisplayLabel = 'OS N'#176
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object query_osdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data'
      Origin = 'data'
      Required = True
    end
    object query_osvalor: TBCDField
      DisplayLabel = 'Total'
      FieldName = 'valor'
      Origin = 'valor'
      Required = True
      Precision = 10
      Size = 2
    end
    object query_oscliente: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cliente'
      FieldName = 'cliente'
      Origin = 'cliente'
      Size = 30
    end
    object query_oshora: TTimeField
      FieldName = 'hora'
      Origin = 'hora'
      Required = True
      Visible = False
    end
    object query_osfuncionario: TStringField
      DisplayLabel = 'Atendente'
      FieldName = 'funcionario'
      Origin = 'funcionario'
      Required = True
      Size = 25
    end
    object query_osdesconto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'desconto'
      Origin = 'desconto'
      Visible = False
      Precision = 10
      Size = 2
    end
    object query_osvalor_recebido: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valor_recebido'
      Origin = 'valor_recebido'
      Visible = False
      Precision = 10
      Size = 2
    end
    object query_ostroco: TBCDField
      FieldName = 'troco'
      Origin = 'troco'
      Required = True
      Visible = False
      Precision = 10
      Size = 2
    end
    object query_osformadepagamento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'formadepagamento'
      Origin = 'formadepagamento'
      Visible = False
      Size = 15
    end
    object query_osstatus: TStringField
      DisplayLabel = 'Status'
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 12
    end
    object query_osobservacoes: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'observacoes'
      Origin = 'observacoes'
      Visible = False
      Size = 100
    end
    object query_oscaixa: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'caixa'
      Origin = 'caixa'
      Visible = False
    end
    object query_osstatuscaixa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'statuscaixa'
      Origin = 'statuscaixa'
      Visible = False
      Size = 10
    end
  end
  object DSordens_servicos: TDataSource
    DataSet = query_os
    Left = 216
    Top = 808
  end
  object tb_detalhes_os: TFDTable
    IndexFieldNames = 'id'
    Connection = fd
    UpdateOptions.UpdateTableName = 'pdv.detalhes_os'
    TableName = 'pdv.detalhes_os'
    Left = 40
    Top = 880
    object tb_detalhes_osid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tb_detalhes_osid_os: TIntegerField
      FieldName = 'id_os'
      Origin = 'id_os'
      Required = True
    end
    object tb_detalhes_osid_item: TIntegerField
      FieldName = 'id_item'
      Origin = 'id_item'
      Required = True
    end
    object tb_detalhes_ositem_descricao: TStringField
      FieldName = 'item_descricao'
      Origin = 'item_descricao'
      Required = True
      Size = 25
    end
    object tb_detalhes_ositem_tipo: TStringField
      FieldName = 'item_tipo'
      Origin = 'item_tipo'
      Required = True
      Size = 5
    end
    object tb_detalhes_osvalor: TBCDField
      FieldName = 'valor'
      Origin = 'valor'
      Required = True
      Precision = 10
      Size = 2
    end
    object tb_detalhes_osquantidade: TBCDField
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Required = True
      Precision = 10
      Size = 2
    end
    object tb_detalhes_ostotal: TBCDField
      FieldName = 'total'
      Origin = 'total'
      Required = True
      Precision = 10
      Size = 2
    end
    object tb_detalhes_osfuncionario: TStringField
      FieldName = 'funcionario'
      Origin = 'funcionario'
      Required = True
      Size = 25
    end
    object tb_detalhes_osdata: TDateField
      FieldName = 'data'
      Origin = 'data'
      Required = True
    end
  end
  object query_detalhes_pro_os: TFDQuery
    Active = True
    Connection = fd
    SQL.Strings = (
      'select * from detalhes_os where item_tipo = '#39'p'#39)
    Left = 160
    Top = 888
    object query_detalhes_pro_osid: TFDAutoIncField
      DisplayLabel = #205'tem'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object query_detalhes_pro_osid_os: TIntegerField
      FieldName = 'id_os'
      Origin = 'id_os'
      Required = True
      Visible = False
    end
    object query_detalhes_pro_osid_item: TIntegerField
      DisplayLabel = 'C'#243'digo Produto'
      DisplayWidth = 6
      FieldName = 'id_item'
      Origin = 'id_item'
      Required = True
      Visible = False
    end
    object query_detalhes_pro_ositem_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'item_descricao'
      Origin = 'item_descricao'
      Required = True
      Size = 25
    end
    object query_detalhes_pro_ositem_tipo: TStringField
      FieldName = 'item_tipo'
      Origin = 'item_tipo'
      Required = True
      Visible = False
      Size = 5
    end
    object query_detalhes_pro_osvalor: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Origin = 'valor'
      Required = True
      currency = True
      Precision = 10
      Size = 2
    end
    object query_detalhes_pro_osquantidade: TBCDField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 6
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Required = True
      Precision = 10
      Size = 2
    end
    object query_detalhes_pro_ostotal: TBCDField
      DisplayLabel = 'Total'
      FieldName = 'total'
      Origin = 'total'
      Required = True
      currency = True
      Precision = 10
      Size = 2
    end
    object query_detalhes_pro_osfuncionario: TStringField
      FieldName = 'funcionario'
      Origin = 'funcionario'
      Required = True
      Visible = False
      Size = 25
    end
    object query_detalhes_pro_osdata: TDateField
      FieldName = 'data'
      Origin = 'data'
      Required = True
      Visible = False
    end
  end
  object DSdetalhes_pro_os: TDataSource
    DataSet = query_detalhes_pro_os
    Left = 440
    Top = 896
  end
  object query_detalhes_serv_os: TFDQuery
    Active = True
    Connection = fd
    SQL.Strings = (
      'select * from detalhes_os where item_tipo = '#39's'#39)
    Left = 304
    Top = 896
    object FDAutoIncField1: TFDAutoIncField
      DisplayLabel = #205'tem'
      DisplayWidth = 6
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'id_os'
      Origin = 'id_os'
      Required = True
      Visible = False
    end
    object IntegerField2: TIntegerField
      DisplayLabel = 'C'#243'digo Servi'#231'o'
      DisplayWidth = 6
      FieldName = 'id_item'
      Origin = 'id_item'
      Required = True
      Visible = False
    end
    object StringField1: TStringField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'item_descricao'
      Origin = 'item_descricao'
      Required = True
      Size = 25
    end
    object StringField2: TStringField
      FieldName = 'item_tipo'
      Origin = 'item_tipo'
      Required = True
      Visible = False
      Size = 5
    end
    object BCDField1: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Origin = 'valor'
      Required = True
      currency = True
      Precision = 10
      Size = 2
    end
    object BCDField2: TBCDField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 6
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Required = True
      Precision = 10
      Size = 2
    end
    object BCDField3: TBCDField
      DisplayLabel = 'Total'
      FieldName = 'total'
      Origin = 'total'
      Required = True
      currency = True
      Precision = 10
      Size = 2
    end
    object StringField3: TStringField
      FieldName = 'funcionario'
      Origin = 'funcionario'
      Required = True
      Visible = False
      Size = 25
    end
    object DateField1: TDateField
      FieldName = 'data'
      Origin = 'data'
      Required = True
      Visible = False
    end
  end
  object DSdetalhes_serv_os: TDataSource
    DataSet = query_detalhes_serv_os
    Left = 576
    Top = 904
  end
  object query_detalhesOSCoringa: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from detalhes_os where item_tipo = '#39'p'#39)
    Left = 176
    Top = 952
    object FDAutoIncField2: TFDAutoIncField
      DisplayLabel = #205'tem'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'id_os'
      Origin = 'id_os'
      Required = True
      Visible = False
    end
    object IntegerField4: TIntegerField
      DisplayLabel = 'C'#243'digo Produto'
      DisplayWidth = 6
      FieldName = 'id_item'
      Origin = 'id_item'
      Required = True
      Visible = False
    end
    object StringField4: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'item_descricao'
      Origin = 'item_descricao'
      Required = True
      Size = 25
    end
    object StringField5: TStringField
      FieldName = 'item_tipo'
      Origin = 'item_tipo'
      Required = True
      Visible = False
      Size = 5
    end
    object BCDField4: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Origin = 'valor'
      Required = True
      currency = True
      Precision = 10
      Size = 2
    end
    object BCDField5: TBCDField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 6
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Required = True
      Precision = 10
      Size = 2
    end
    object BCDField6: TBCDField
      DisplayLabel = 'Total'
      FieldName = 'total'
      Origin = 'total'
      Required = True
      currency = True
      Precision = 10
      Size = 2
    end
    object StringField6: TStringField
      FieldName = 'funcionario'
      Origin = 'funcionario'
      Required = True
      Visible = False
      Size = 25
    end
    object DateField2: TDateField
      FieldName = 'data'
      Origin = 'data'
      Required = True
      Visible = False
    end
  end
  object DSOrdens_Serv: TfrxDBDataset
    UserName = 'DSOs'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id=id'
      'data=data'
      'valor=valor'
      'cliente=cliente'
      'hora=hora'
      'funcionario=funcionario'
      'desconto=desconto'
      'valor_recebido=valor_recebido'
      'troco=troco'
      'formadepagamento=formadepagamento'
      'status=status'
      'observacoes=observacoes'
      'caixa=caixa'
      'statuscaixa=statuscaixa')
    DataSet = query_os
    BCDToCurrency = False
    Left = 208
    Top = 1336
  end
  object DSdetalhes_pro_Ordem: TfrxDBDataset
    UserName = 'DS_Det_pro_Os'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id=id'
      'id_os=id_os'
      'id_item=id_item'
      'item_descricao=item_descricao'
      'item_tipo=item_tipo'
      'valor=valor'
      'quantidade=quantidade'
      'total=total'
      'funcionario=funcionario'
      'data=data')
    DataSet = query_detalhes_pro_os
    BCDToCurrency = False
    Left = 328
    Top = 1336
  end
  object DSdetalhes_serv_ordem: TfrxDBDataset
    UserName = 'DS_Det_servOS'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id=id'
      'id_os=id_os'
      'id_item=id_item'
      'item_descricao=item_descricao'
      'item_tipo=item_tipo'
      'valor=valor'
      'quantidade=quantidade'
      'total=total'
      'funcionario=funcionario'
      'data=data')
    DataSet = query_detalhes_serv_os
    BCDToCurrency = False
    Left = 472
    Top = 1336
  end
  object rel_OS: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43651.788638020800000000
    ReportOptions.LastChange = 44451.740909814810000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 112
    Top = 1336
    Datasets = <
      item
        DataSet = DSdetalhes_pro_Ordem
        DataSetName = 'DS_Det_pro_Os'
      end
      item
        DataSet = DSdetalhes_serv_ordem
        DataSetName = 'DS_Det_servOS'
      end
      item
        DataSet = DSOrdens_Serv
        DataSetName = 'DSOs'
      end
      item
        DataSet = rel_DS_Vendas
        DataSetName = 'DSVendas'
      end
      item
        DataSet = rel_DS_empresa
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' Datas'
        Value = Null
      end
      item
        Name = 'dataInicial'
        Value = Null
      end
      item
        Name = 'dataFinal'
        Value = Null
      end
      item
        Name = 'status'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      BackPicture.Data = {
        0A544A504547496D616765C9890000FFD8FFE106BA4578696600004D4D002A00
        0000080007011200030000000100010000011A00050000000100000062011B00
        05000000010000006A0128000300000001000200000131000200000022000000
        720132000200000014000000948769000400000001000000A8000000D4000AFC
        8000002710000AFC800000271041646F62652050686F746F73686F7020434320
        32303137202857696E646F77732900323031393A30333A31322031363A31373A
        3232000003A001000300000001FFFF0000A00200040000000100000253A00300
        04000000010000034A0000000000000006010300030000000100060000011A00
        050000000100000122011B0005000000010000012A0128000300000001000200
        0002010004000000010000013202020004000000010000058000000000000000
        48000000010000004800000001FFD8FFED000C41646F62655F434D0002FFEE00
        0E41646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B
        11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E
        0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800A0007103012200
        021101031101FFDD00040008FFC4013F00000105010101010101000000000000
        00030001020405060708090A0B01000105010101010101000000000000000100
        02030405060708090A0B1000010401030204020507060805030C330100021103
        04211231054151611322718132061491A1B14223241552C16233347282D14307
        259253F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3
        D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
        37475767778797A7B7C7D7E7F711000202010204040304050607070605350100
        021103213112044151617122130532819114A1B14223C152D1F0332462E17282
        92435315637334F1250616A2B283072635C2D2449354A317644555367465E2F2
        B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6
        E6F62737475767778797A7B7C7FFDA000C03010002110311003F00F414924948
        85249249294924924A5249249294924924A5249249294A8F52E6AFED7FDF55E5
        47A97357F6BFEFA90534D24924E43FFFD0F4AFB11FF49FF47FF324BEC47F7C7D
        DFED56924788A1ABF623FE907DDFED4DF623FE907DDFED56924ACA9ABF623FE9
        07DDFED4BEC47FD20FBBFDAAD249595357EC47FD20FBBFDA97D88FFA4FFA3FED
        569246CA9ABF623FE907DDFED4FF00623FE907DDFED565242CA9ADF623FBE3EE
        FF00CC92FB11FDFF00C3FF00325653A5654D5FB11FF49FF47FF32599D669F49D
        47BB76E0FED1C6C5BAB1FAFF00D2C7F83FFF0045A3126D45CA492494887FFFD1
        F530653A82903292174C9D2492B249248A1492499252E92694A5252E92694A52
        53258FD7FE963FC1FF00F7C5AFB96475F3EEC7F83FFEF88C770A72924925221F
        FFD2F538F24BE497C928F2450BA49BE49D05293274924AC924922858CA5253A6
        D5252B54B54B5F14B5F1494AD564F5F9DD8F3E0FFF00BE2D6D7C564F5EFA58FF
        0007FF00DF118EEA72924925221FFFD3F52DC96E5182941450CB725B9460A509
        2996E4B728A492996E4A5452494CA5295149252E9264A1252EB27AF7D2C7F83F
        FEF8B5564F5DFA58FF0007FF00DF118EEA73124925221FFFD4F5191E0948F04C
        92285E4782523C1324929791E0948F04C924A5E4782523C1324929791E0948F0
        4C924A5F4F04A4782649252F23C164F5EFA58FF07FFDF16AACAEBBF4B1FE0FFF
        00BE231DD4E5A4924A443FFFD5F50493A48A16493A49296493A49296493A4929
        6493A49296493A49296595D77E963FC1FF00F7C5ACB27AF7D2C7F83FFEF88C77
        539692492910FF00FFD6F53D12D132708A15A7825ED48A8A4A652D4B44C02749
        4AD12D3C1327494A81E09E0264E82950128092492550163F5FFA58FF0007FF00
        DF16C2C7EBFF004B1FE0FF00FBE231DC20B9492492950FFFD7F5209D249142C9
        25AF9A7494A4C927494A4E9248294924924A5249249254B1FAFF00D2C7F83FFE
        F8B6163F5FFA58FF0007FF00DF118EE145CA492494AB5FFFD0F5320A6DA567EF
        B3F7DDF794B7D9FBEEFBCA7521D18849676FB3F7DDF794B7D9FBEEFBCA5C2A74
        613ACDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF77DE5
        2E153A492CDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF
        77DE52E153A4B1FAFF00D2C7F83FFEF88DBECFDF77DE551EA6E71356E24E8EE4
        CFEEA206AA69249249E87FFFD9FFED0F1A50686F746F73686F7020332E300038
        42494D0425000000000010000000000000000000000000000000003842494D04
        3A000000000125000000100000000100000000000B7072696E744F7574707574
        000000050000000050737453626F6F6C0100000000496E7465656E756D000000
        00496E746500000000436C726D0000000F7072696E745369787465656E426974
        626F6F6C000000000B7072696E7465724E616D65544558540000001700480050
        0020004400650073006B006A0065007400200033003500310030002000730065
        007200690065007300000000000F7072696E7450726F6F6653657475704F626A
        63000000160043006F006E00660069006700750072006100E700E3006F002000
        640065002000500072006F0076006100000000000A70726F6F66536574757000
        00000100000000426C746E656E756D0000000C6275696C74696E50726F6F6600
        00000970726F6F66434D594B003842494D043B00000000022D00000010000000
        010000000000127072696E744F75747075744F7074696F6E7300000017000000
        004370746E626F6F6C0000000000436C6272626F6F6C00000000005267734D62
        6F6F6C000000000043726E43626F6F6C0000000000436E7443626F6F6C000000
        00004C626C73626F6F6C00000000004E677476626F6F6C0000000000456D6C44
        626F6F6C0000000000496E7472626F6F6C000000000042636B674F626A630000
        000100000000000052474243000000030000000052642020646F7562406FE000
        000000000000000047726E20646F7562406FE0000000000000000000426C2020
        646F7562406FE000000000000000000042726454556E744623526C7400000000
        0000000000000000426C6420556E744623526C74000000000000000000000000
        52736C74556E74462350786C40520000000000000000000A766563746F724461
        7461626F6F6C010000000050675073656E756D00000000506750730000000050
        675043000000004C656674556E744623526C7400000000000000000000000054
        6F7020556E744623526C7400000000000000000000000053636C20556E744623
        50726340590000000000000000001063726F705768656E5072696E74696E6762
        6F6F6C000000000E63726F7052656374426F74746F6D6C6F6E67000000000000
        000C63726F70526563744C6566746C6F6E67000000000000000D63726F705265
        637452696768746C6F6E67000000000000000B63726F7052656374546F706C6F
        6E6700000000003842494D03ED00000000001000480000000100020048000000
        0100023842494D042600000000000E000000000000000000003F800000384249
        4D040D0000000000040000005A3842494D04190000000000040000001E384249
        4D03F3000000000009000000000000000001003842494D271000000000000A00
        0100000000000000023842494D03F5000000000048002F66660001006C666600
        06000000000001002F6666000100A1999A000600000000000100320000000100
        5A00000006000000000001003500000001002D00000006000000000001384249
        4D03F80000000000700000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800003842494D040000
        000000000200023842494D04020000000000060000000000003842494D043000
        0000000003010101003842494D042D0000000000060001000000033842494D04
        08000000000010000000010000024000000240000000003842494D041E000000
        000004000000003842494D041A00000000035900000006000000000000000000
        00034A000002530000001200460055004E0044004F002000520045004C004100
        54004F00520049004F0020004100340000000100000000000000000000000000
        000000000000010000000000000000000002530000034A000000000000000000
        0000000000000001000000000000000000000000000000000000001000000001
        0000000000006E756C6C0000000200000006626F756E64734F626A6300000001
        000000000000526374310000000400000000546F70206C6F6E67000000000000
        00004C6566746C6F6E67000000000000000042746F6D6C6F6E670000034A0000
        0000526768746C6F6E670000025300000006736C69636573566C4C7300000001
        4F626A6300000001000000000005736C6963650000001200000007736C696365
        49446C6F6E67000000000000000767726F757049446C6F6E6700000000000000
        066F726967696E656E756D0000000C45536C6963654F726967696E0000000D61
        75746F47656E6572617465640000000054797065656E756D0000000A45536C69
        63655479706500000000496D672000000006626F756E64734F626A6300000001
        000000000000526374310000000400000000546F70206C6F6E67000000000000
        00004C6566746C6F6E67000000000000000042746F6D6C6F6E670000034A0000
        0000526768746C6F6E67000002530000000375726C5445585400000001000000
        0000006E756C6C54455854000000010000000000004D73676554455854000000
        01000000000006616C74546167544558540000000100000000000E63656C6C54
        657874497348544D4C626F6F6C010000000863656C6C54657874544558540000
        0001000000000009686F727A416C69676E656E756D0000000F45536C69636548
        6F727A416C69676E0000000764656661756C740000000976657274416C69676E
        656E756D0000000F45536C69636556657274416C69676E000000076465666175
        6C740000000B6267436F6C6F7254797065656E756D0000001145536C69636542
        47436F6C6F7254797065000000004E6F6E6500000009746F704F75747365746C
        6F6E67000000000000000A6C6566744F75747365746C6F6E6700000000000000
        0C626F74746F6D4F75747365746C6F6E67000000000000000B72696768744F75
        747365746C6F6E6700000000003842494D042800000000000C000000023FF000
        00000000003842494D041100000000000101003842494D041400000000000400
        0000083842494D040C00000000059C0000000100000071000000A00000015400
        00D4800000058000180001FFD8FFED000C41646F62655F434D0002FFEE000E41
        646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B1115
        0F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14
        140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800A00071030122000211
        01031101FFDD00040008FFC4013F000001050101010101010000000000000003
        0001020405060708090A0B010001050101010101010000000000000001000203
        0405060708090A0B1000010401030204020507060805030C3301000211030421
        1231054151611322718132061491A1B14223241552C16233347282D143072592
        53F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3D375
        E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F63747
        5767778797A7B7C7D7E7F7110002020102040403040506070706053501000211
        03213112044151617122130532819114A1B14223C152D1F0332462E172829243
        5315637334F1250616A2B283072635C2D2449354A317644555367465E2F2B384
        C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
        2737475767778797A7B7C7FFDA000C03010002110311003F00F4149249488524
        9249294924924A5249249294924924A5249249294A8F52E6AFED7FDF55E547A9
        7357F6BFEFA90534D24924E43FFFD0F4AFB11FF49FF47FF324BEC47F7C7DDFED
        56924788A1ABF623FE907DDFED4DF623FE907DDFED56924ACA9ABF623FE907DD
        FED4BEC47FD20FBBFDAAD249595357EC47FD20FBBFDA97D88FFA4FFA3FED5692
        46CA9ABF623FE907DDFED4FF00623FE907DDFED565242CA9ADF623FBE3EEFF00
        CC92FB11FDFF00C3FF00325653A5654D5FB11FF49FF47FF32599D669F49D47BB
        76E0FED1C6C5BAB1FAFF00D2C7F83FFF0045A3126D45CA492494887FFFD1F530
        653A82903292174C9D2492B249248A1492499252E92694A5252E92694A525325
        8FD7FE963FC1FF00F7C5AFB96475F3EEC7F83FFEF88C770A72924925221FFFD2
        F538F24BE497C928F2450BA49BE49D05293274924AC924922858CA5253A6D525
        2B54B54B5F14B5F1494AD564F5F9DD8F3E0FFF00BE2D6D7C564F5EFA58FF0007
        FF00DF118EEA72924925221FFFD3F52DC96E5182941450CB725B9460A5092996
        E4B728A492996E4A5452494CA5295149252E9264A1252EB27AF7D2C7F83FFEF8
        B5564F5DFA58FF0007FF00DF118EEA73124925221FFFD4F5191E0948F04C9228
        5E4782523C1324929791E0948F04C924A5E4782523C1324929791E0948F04C92
        4A5F4F04A4782649252F23C164F5EFA58FF07FFDF16AACAEBBF4B1FE0FFF00BE
        231DD4E5A4924A443FFFD5F50493A48A16493A49296493A49296493A49296493
        A49296493A49296595D77E963FC1FF00F7C5ACB27AF7D2C7F83FFEF88C775396
        92492910FF00FFD6F53D12D132708A15A7825ED48A8A4A652D4B44C027494AD1
        2D3C1327494A81E09E0264E82950128092492550163F5FFA58FF0007FF00DF16
        C2C7EBFF004B1FE0FF00FBE231DC20B9492492950FFFD7F5209D249142C925AF
        9A7494A4C927494A4E9248294924924A5249249254B1FAFF00D2C7F83FFEF8B6
        163F5FFA58FF0007FF00DF118EE145CA492494AB5FFFD0F5320A6DA567EFB3F7
        DDF794B7D9FBEEFBCA7521D18849676FB3F7DDF794B7D9FBEEFBCA5C2A74613A
        CDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF77DE52E15
        3A492CDDF67EFBBEF296FB3F7DDF794B854E924B377D9FBEEFBCA5BECFDF77DE
        52E153A4B1FAFF00D2C7F83FFEF88DBECFDF77DE551EA6E71356E24E8EE4CFEE
        A206AA69249249E87FFFD93842494D042100000000005D00000001010000000F
        00410064006F00620065002000500068006F0074006F00730068006F00700000
        001700410064006F00620065002000500068006F0074006F00730068006F0070
        0020004300430020003200300031003700000001003842494D04060000000000
        070007010100010100FFE1120D687474703A2F2F6E732E61646F62652E636F6D
        2F7861702F312E302F003C3F787061636B657420626567696E3D22EFBBBF2220
        69643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E20
        3C783A786D706D65746120786D6C6E733A783D2261646F62653A6E733A6D6574
        612F2220783A786D70746B3D2241646F626520584D5020436F726520352E362D
        633133382037392E3135393832342C20323031362F30392F31342D30313A3039
        3A30312020202020202020223E203C7264663A52444620786D6C6E733A726466
        3D22687474703A2F2F7777772E77332E6F72672F313939392F30322F32322D72
        64662D73796E7461782D6E7323223E203C7264663A4465736372697074696F6E
        207264663A61626F75743D222220786D6C6E733A786D703D22687474703A2F2F
        6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C6E733A64633D
        22687474703A2F2F7075726C2E6F72672F64632F656C656D656E74732F312E31
        2F2220786D6C6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E
        636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A73744576743D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F
        5265736F757263654576656E74232220786D6C6E733A73745265663D22687474
        703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F52
        65736F75726365526566232220786D6C6E733A70686F746F73686F703D226874
        74703A2F2F6E732E61646F62652E636F6D2F70686F746F73686F702F312E302F
        2220786D703A43726561746F72546F6F6C3D2241646F62652050686F746F7368
        6F702043432032303137202857696E646F7773292220786D703A437265617465
        446174653D22323031392D30332D31325431363A31303A35392D30333A303022
        20786D703A4D65746164617461446174653D22323031392D30332D3132543136
        3A31373A32322D30333A30302220786D703A4D6F64696679446174653D223230
        31392D30332D31325431363A31373A32322D30333A3030222064633A666F726D
        61743D22696D6167652F6A7065672220786D704D4D3A496E7374616E63654944
        3D22786D702E6969643A62363966383932382D393063382D383934352D613530
        312D3862613432396534356232312220786D704D4D3A446F63756D656E744944
        3D2261646F62653A646F6369643A70686F746F73686F703A3665626435353434
        2D343466622D313165392D613635342D6335636565343334373364662220786D
        704D4D3A4F726967696E616C446F63756D656E7449443D22786D702E6469643A
        34316464636231302D613935342D373234322D616633642D6635663335396264
        66626233222070686F746F73686F703A436F6C6F724D6F64653D2233223E203C
        786D704D4D3A486973746F72793E203C7264663A5365713E203C7264663A6C69
        2073744576743A616374696F6E3D2263726561746564222073744576743A696E
        7374616E636549443D22786D702E6969643A34316464636231302D613935342D
        373234322D616633642D663566333539626466626233222073744576743A7768
        656E3D22323031392D30332D31325431363A31303A35392D30333A3030222073
        744576743A736F6674776172654167656E743D2241646F62652050686F746F73
        686F702043432032303137202857696E646F777329222F3E203C7264663A6C69
        2073744576743A616374696F6E3D227361766564222073744576743A696E7374
        616E636549443D22786D702E6969643A66313461373734302D396136622D3434
        34372D613462352D303737383032663837336362222073744576743A7768656E
        3D22323031392D30332D31325431363A31373A30392D30333A30302220737445
        76743A736F6674776172654167656E743D2241646F62652050686F746F73686F
        702043432032303137202857696E646F777329222073744576743A6368616E67
        65643D222F222F3E203C7264663A6C692073744576743A616374696F6E3D2273
        61766564222073744576743A696E7374616E636549443D22786D702E6969643A
        30393063613532612D396433612D626534392D623635632D6235363861333161
        36326530222073744576743A7768656E3D22323031392D30332D31325431363A
        31373A32322D30333A3030222073744576743A736F6674776172654167656E74
        3D2241646F62652050686F746F73686F702043432032303137202857696E646F
        777329222073744576743A6368616E6765643D222F222F3E203C7264663A6C69
        2073744576743A616374696F6E3D22636F6E766572746564222073744576743A
        706172616D65746572733D2266726F6D206170706C69636174696F6E2F766E64
        2E61646F62652E70686F746F73686F7020746F20696D6167652F6A706567222F
        3E203C7264663A6C692073744576743A616374696F6E3D226465726976656422
        2073744576743A706172616D65746572733D22636F6E7665727465642066726F
        6D206170706C69636174696F6E2F766E642E61646F62652E70686F746F73686F
        7020746F20696D6167652F6A706567222F3E203C7264663A6C69207374457674
        3A616374696F6E3D227361766564222073744576743A696E7374616E63654944
        3D22786D702E6969643A62363966383932382D393063382D383934352D613530
        312D386261343239653435623231222073744576743A7768656E3D2232303139
        2D30332D31325431363A31373A32322D30333A3030222073744576743A736F66
        74776172654167656E743D2241646F62652050686F746F73686F702043432032
        303137202857696E646F777329222073744576743A6368616E6765643D222F22
        2F3E203C2F7264663A5365713E203C2F786D704D4D3A486973746F72793E203C
        786D704D4D3A4465726976656446726F6D2073745265663A696E7374616E6365
        49443D22786D702E6969643A30393063613532612D396433612D626534392D62
        3635632D623536386133316136326530222073745265663A646F63756D656E74
        49443D22786D702E6469643A34316464636231302D613935342D373234322D61
        6633642D663566333539626466626233222073745265663A6F726967696E616C
        446F63756D656E7449443D22786D702E6469643A34316464636231302D613935
        342D373234322D616633642D663566333539626466626233222F3E203C70686F
        746F73686F703A446F63756D656E74416E636573746F72733E203C7264663A42
        61673E203C7264663A6C693E61646F62653A646F6369643A70686F746F73686F
        703A63383837363862342D336162612D313165392D396266372D626532623861
        3737326435633C2F7264663A6C693E203C2F7264663A4261673E203C2F70686F
        746F73686F703A446F63756D656E74416E636573746F72733E203C2F7264663A
        4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A786D706D
        6574613E20202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020203C3F787061636B657420656E643D2277223F3EFFEE002141646F62
        650064400000000103001003020306000000000000000000000000FFDB008400
        0101010101010101010102010101020201010101020202020202020203020303
        0303020303040404040403050505050505070707070708080808080808080808
        0101010102020204030304070504050708080808080808080808080808080808
        0808080808080808080808080808080808080808080808080808080808080808
        08FFC2001108034A025303011100021101031101FFC400CE0001010100020301
        010000000000000000000102030904070A060501010101010101010100000000
        0000000000010203060405071000020103020405040301000301000000000111
        0212131003203021144031041517330607375060323641220523110001020106
        070D06050204050500000001003111214191A1023220305161D133A41040B112
        4203D3E30405B536077181E135757660C122B4065013F0F16214A2247495A552
        921585161200010403010002030100000000000000006001310271A1B1322080
        40A05190FFDA000C03010102110311000000FB0AF59F98000000000000000000
        000000000000000000000000000000000075D9FAB8FCBEC07677F8FB00000000
        000000000000000000000000000000000000000000003AECFD5C7E5F603B3BFC
        7D80000000000000000000000000000000000000000000000000001D767EAE3F
        2FB01D9DFE3EC000000000000000000000000000000000000000000000000000
        0EBB3F571F97D80ECEFF001F6000000000000000000000000000000000000000
        000000000000075D9FAB8FCBEC07677F8FB00000000000000000000000000000
        000000000000000000000003AECFD5C7E5F603B3BFC7D8000000000000000000
        0000000000000000000000000000000001D767EAE3F2FB01D9DFE3EC00000000
        00000000000000000000000000000000000000000000EBB3F571F97D80ECEFF1
        F6000000000000000000000000000000000000000000000000000075D9FAB8FC
        BEC07677F8FB0000000000000000000000000000000000000000000000000000
        3AECFD5C7E5F603B3BFC7D800000000000000000000000000000000000000000
        00000000001D767EAE3F2FB01D9DFE3EC0000000000000000000000000000000
        000000000000000000000EBB3F571F97D80ECEFF001F60000000000000000000
        00000000000000000000000000000000075D9FAB8FCBEC077CDE1FEE0056B8B5
        9C6B000022D40000000000000059B025C0B340A012596680008014800882A81C
        F9E8C801480E957D97C1F82EF903E87FF9E7E90002B8379C6B24022D0800E2A0
        00A002000AA2255000214042B9337535400002805894956585A359BCB8D80001
        D117BCFCBF5DFD1903E87FF9E7E90000B75E36F9E759245A1000335C5B850000
        00000000002428896DB973635B9A00012BC8C6B774240A485B20881699A001D1
        17BCFCBF5DFD1903E87FF9E7E9000019B78378C59AB90000066B86CBAA000000
        0000001001168172E6C6B535400012C110000004DE7A7918D950259D11FBBFCC
        F5DFD1903E87FF009E7E90000545278FD312E400000335C5B000000000000099
        5A014032A73635B9A00019B9DCD6A68500080069778D0523A22F79F97EBBFA32
        07D0FF00F3CFD2000504095E3F4C4B9000000CD70EA5B4000000000224975409
        2555002C7373D6A6A800039F3A5A1900042821A5B9A3A22F79F97EBBFA3207D0
        FF00F3CFD200282001357C7DF39720000019AE2D8000000001248BAA001332DA
        A005CB9B3ADE74000066E753433723534258204D4BE4E7AB17A22F79F97EBBFA
        3207D0FF00F3CFD20141000026AF8DBC2E4800000C5716A5B400000022497540
        000490B6802C7373D6A6A80010E696CD0001424034B65E88BDDFE5FAEFE8C81F
        43FF00CF3F48290000029136F1B585840000062B8F60000004492EA800000224
        97540172E6C6B7340000724D000022550217A27F71F9DEBBFA3207D0FF00F3CF
        D252000000056F3BC78FAE79AA800000C5716A5B400842C9175400000001332D
        AA02C73F3D59AA000012C4B4C5CD00D4D429D157B7F83D79F4640FA1EFE7BFA5
        600000000559ACEA78DBE52AA00000315C7B002E521A2800000000020280B973
        635B9A0000B3C9C749282001681D11FB9FCCF5DFD1903E82FC27D65F379F4E7C
        6900000003537C7D39F8FAC4AA100000C570EB2CDD154B2E5AA0000000000224
        97540B1CDCF5A9AA003373C99DF3E365400001D117BCFCBF5DFD1903E813C3FD
        229FD3E3DF9F968000000568B8D63C7E9CC02000018AC994AB29A00000000000
        009996D50B973E35A9A000CDCF2675CF8E8940000E88BDE7E5FAEFE8C81F409E
        1FE9029FD4E3DF9B9E900000002B78DE3C7D7350202E2C08D2E2B29351680000
        0000000002495542C7373D6A6A8337356272677CF8E810001D117BCFCBF5DFD1
        903E813C3FD200B1FD4E5DB9B96C00000059BA7174C706F902887159A548519B
        26C0000000000000001124BAA2E5CF8D6A6B373A9A19B91CB9DF363A20003A22
        F79F97EBBFA3207D02787FA40029FD4E1DF9B1A40000000D37C3BE7C3BE6004D
        4AE3B988B0456A8000084405D40014202824821692C72E75652669608BCB9D72
        677598BB97933BE88FDDFE5FAEBE8C81F409E1FE9000165FEA71EBCDCF600000
        02DD55E1DF3E1BCCB5512B16096042B1B000211C7ACF8FBE79BA2405812AA422
        824B51A922AC1C990160A2ACB2CA2AFF005787D1D14FB7FCFF005DFD1903E813
        C3FD2000058FEA71EFCDCF640000000AE2DE784A5258B9E133B9562112ACB740
        00386E7C4E98D482000025A00B1A44B2CCDB64E4CB5340002168597A3CF63F37
        AF7BC03E813C3FD200000B2FF578F6E5E7A00000015A9670EA71DCB592010C51
        2AC4CDB34000124E2B38772A580005B6282255405B4458E6CDAD24145A8E6C6B
        95B47451EE3F3BD77F4640FA08F0BF50A0012A89A97FA5CBB6A56400002AA962
        70EF1C7AC08B5218A5225019A500000190902E8A02665D5002249755172E7CEE
        A80489579F1BE4CEBA22F77F99EBAFA3207D0C780FD1012800691036BAC80002
        ADA94335A9E3EF963590520E331A85B0A94A0000249E3EF9C582DA9010B10580
        149951516F2628325A44CAEE5E8EBD97CDEBEEF00FA04F0FF480000001A8FEA7
        1EFCB8D20142ADA9249A9D06758E0DF3C6B20B003082D23358DCAA00038D9F13
        A73CDA00000B20968000153979D0285113A3DF63C3D7DDE01F425E0BEF160290
        8A833ABA9059BF2716C05BA5952422353A089358F1F78CEB20A09C1A8A0866DD
        2680001971EB3E2EF0A8551A90010D012904B51691CD9A8AA42C4E8E3D9FCDEB
        DEF00FA0DF07F658540500AA02053CACF4E5C52DA922000353A133BC78FBC66E
        4028200071D6351680001249269A50400000005925B570E79BD4B2883A2BF6DF
        0FAF3E8C81F40FE1BEA804102A0028406A5FEA70FA39705A900006A7412E66A7
        8FBE59B000000071D6360000892716A67524514428000008322B79BB96CA64BD
        1B7B3F97D7BDE01F431E03F42C45D848B5742412DB150B8AD46A02000001A9D0
        6779F1B5CA6B2002900038EB1A8B404492DB867C4EBCF16800000000002C8397
        16A8E8F3D8FCFEBEEF00FA04F0FF004810A0080A416A4294B2FF004F8F7E5C50
        00006A7404C6F1E3EF9CB0005200071D63608925D508C33E275C44CDA00D4822
        8025002C0D49C99D17A3CF63F37AFBBC03E84BC17DE22DB2466C2EA494922D32
        8B4CD8559AF3B9F4B900001A9D0019DE3C6DF296000A0800E3AE3D445D500004
        13341001540500008CEE6B9B1AE8B3DB7C3EBCFA201F435FCFFF0054000262B5
        2DDE732D89A854586A4A962140001A9D000B31BCF8FBE510000A400715674500
        0018673480A000080000A65A5E8DBD9FC9EBDEF00FA1EFE7BFA400000290042A
        C0000000000D4E800C74C78FBE510000A08071D629A0000CC9E274E5C7AA0000
        00000001D217ADE1EBFEF00FA1FF00E7BFA4000042C280000000000000D4D800
        71EF1E3EF9900186EA6990071D63600008CA787D39E340000000000379747FEB
        F87AFF00BC03E82BC2FD600E3B38F59B28291400000000000000B1CD9D846779
        C2008AA40A090634CD116D800433600010011400017A41F5DC3D7FDE01F409E1
        FE9000E2DE78F50021410440001A6C0000000B97366D94442AAC010A01104B33
        650B650204A40A00000025511D1FFB0E1EBEEF00FA04F0FF0048000E2DE7152C
        1490AB2CB080005B29400000068E5C2CA000000000A2652CB54000000000019B
        2C551D1E7B1F9FD7DDE01DF6F87FA40CD962AC1400492ACAA040014000000008
        216168000204B45012D8D00000000000085003A50F5BC3F03DE01DF6787FA442
        80000002522800000000000020AB000000021400351A0000000000428003A51F
        5BC3F03DE01DF6787FA400000000008500000000000101400000000405000000
        0000010255000E947D8FCFF81EF00EFB3C3FD440000000000214000000000101
        40000000001014000000000D4D66C200001D28FB1F9FF03DE01DFB788FAB8AE4
        000000000010588000000002D320A80000000160B352C4000002A89672E7496D
        9C3720000749BEBF8FE07BC03BF8F17F4000000000000138AE4B400000400D4D
        40500000000101412C45500019B8DCD7262AB2716F3A9A00003A49F5DC3F01DA
        01DFDF89FA400000000000010B24B4000062CE2D66CD80000000000000292C45
        580A42B3C99D58C59C7B965280001D257AEE1F80ED00FA0EFE7FFA0000000000
        000001116D8004B2CA0000000000000000024B6C0A42ACAD44B240000007467E
        E3E1F5EFD1903E807C37D7400000000000000085008500000000000000000000
        03971AB5C361028000000747DECBE5F5F778077E9E2FBD5000000000000000CD
        CEA544D44B54000000000000000003373A9752D814E3D42800000003A49F5DC3
        F01DA01DFA78BEF54000000000000003373AC8B2CAD0000000000000000000CD
        CEE5DE2DAD4BC1ACAD000000000E927D770FC0768077E9E2FBD5000000000000
        0044966A6866E753400000000000000000009C99BA978F59C5168000000001D2
        4FAEE1F80ED00EFD3C5F7AA00000000000004B11540110550000000000000000
        227366C33671EB3A9B88AB2800000003A49F5DC3F01DA01DFA78BEF540000000
        000004B986A680004B05940000000000000CDCD379BACDD1C7A98B4500CDCD96
        A8000000E927D770FC0768077E9E2FBD500000000000097296A80000222ACA00
        0000000001139212EA2D7156358B3740009725B28000007493EBB87E03B403BF
        4F17F450000000000012C4550000000337365AA0000000003373A979B1752E6B
        8ECCE90A000019B9A59A000007493EBB87E03B403BF3F17DB4D000000000012E
        52D50000000009730D4D00000000066E772F262CAE3D3371A9B00000011259A9
        A00003A49F5DC3F01DA01DFA78CEF12CB5400000001966AD500000000002584B
        340000000088525500000000002588AA001D24FAEE1F80ED00EFD3C5FD149725
        B28000000CDCEA6800000000000044966A6800000066E6CB540000000000004B
        226A6801D24FAEE1F80ED00EFD3C5F7AA337365AA00000CDCEA6800000000000
        0002588AA00004415400000000000001105503A49F5DC3F01DA01DFA78BEF540
        892CD4D0000CDCEA68000002148500000000960B28004B115400000000000000
        00CDCD96AF493EBB87E03B403BF4F17DAA800440B02696594000000445B96373
        60000000082CB28102550014100000000000000895AE927D770FC0768077F1E2
        7A94000096EA4CDB6400000000BC7B89AE4CE0A000000000B5209560012B16D5
        DE72000000000000001D237AFE5F80EF00EFE7C4F51680089756245D64000000
        0048B0D2140000002512CDCDC230A001065695014000000000009443A46F5FCB
        D7FDE01DFE78CEE0002259A32550000000010005000000011059A22800000000
        000000000001194D7489EB787AFF00B80EFF003C5F7AB100960D4D0CDC92CD00
        0000000000000000290055CDC8B28000000000000000004B1157A43F5DC7D7FD
        A01F405E27E84000000085000000000000000002C4A000428000000000000000
        00000E8FBD870F5F77807D06F84FB00850000002140000000000000042800000
        10A00000000000000042800E8D3DA7C9EBDEF00FA1FF00E79FA4255100000012
        8580005000001000128580000001285800000000000012A88007449EEFF3FD77
        F4640FA1FF00E79FA59B752000000002545D480294000004204A028020000002
        50B00000000000095600007449EEFF003FD77F4640FA11F05F6D0000002D6B3A
        D000C94F1F78E1D60000003CBE7D779D0ABC7738DE5007367540000073E37602
        02928005000A44AAA80A201D11FBAFCEF5DFD1903E82FC1FD2000000391BE694
        0011C1B9E0F5E566400001E4E3BF95CF60B9B386F344D652F335C928000039B1
        D3931400001A9D000005466CD0BD20000E88BDC7E67AEBE8C81F417E0FE90000
        00D5D73E77500030781DB966E22D9000072E7AF9BCFA2325AE1D7396149BCEB9
        66824B6D2141BCEB9F1B812A8010353A00005912CD017A40001D117B8FCCF5D7
        D1903E82FC1FD200000B6F919DD000965781D7971DE6066DD2200D4DF9FCBB12
        04E2D670C6A685396DB1532D724D6359C5BBCE6CBE4F3D802AEB3B0A080353A0
        0B2259A000BD20007445EE3F33D75F4640FA0BF07F480000AE7CF4D800097C3E
        98F1F7C40025A4B15BF3F8F6A133666E38D986A695CD2D02B79D645C0E39D3CB
        E7740035376501410353A09722CD000017A4007445EE3F33D75F4640FA0BF07F
        4800069CB9DF2CA0028E0D67C2E9C4800000F2F1F473F3B8B1666CE399A08725
        D72CC896EB3A96E6E2C439F1D3932006A6ACD000050D67A4B91668000002F480
        7445EE3F33D75F4640FA0BF07F48000DB5CF340008C69FCFEBC632000146FC9E
        7D3C9E7D32CE759B6713280356DBBE5CF306ACD6359A88DE77CF8A00B2EA6C00
        00504B5AB28000000BD201D117B8FCCF5D7D1903E82FC1FD20069737C89BA000
        23C4E99C6B2000044DCDF95CBA66C8CB6E39890055E4D6B368DE33C937C7732C
        1BCEBC9E7400353A5800001402353A000000017A41D117B8FCCF5D7D1903E82F
        C1FD202AE9CFCFA680001C1A440A000B26B3BDCD66E66B0309862CD09672DDCB
        A49A4E4C6A8055F239EEE68805580000A2A4015ACF4000000005E93A22F71F99
        EBAFA3207D05F83FA4361CD8DF24A0008F1B73C5E9C400010D6F3AF231D3926B
        3BC6A4CA70A0D44396EA6B4359CEB376A0179F1BDE2800000001480028A9353A
        00000001D11FBCFCBF5D7D1903E82FC2FD2C9B6F1BE7940004250002150D4D40
        71EF1A9331C57165CD0E595BD8D4CD9AE4C801CB9E9CBCE80000000148000015
        66ACD0000000E88FDE7E5FAEBE8C81F417E13E946B579F1D2A000653F9FDB397
        35A00D4D25A72E75E573DE6F3CEE8E398400AE46E6A8D49CB8A00DE75CFCF600
        0000005200000000D4E8000001D117BCFCBF5DFD1903E82FC27D34E7CF4D0000
        38EB3400011A9656A25CCB25B8989002B99ACDACA69CD8B402CBE473E9600000
        000520000000015AB3400000E88BDE7E5FAEFE8C81F415E13EAE7CEB91400078
        BBCF0EB200006A5AD7938D5678F7522678E66A85723535A164DE6EA5A8266F93
        9DEB3400000000000000000353A4B916680007445EF3F2FD77F4640FA0FF0007
        F66E6F49500195F1778200009565E4979A5E3D496DCE78E6401BB574B472626E
        58B0D272E3A72E280000008500000000000D4E825C8B34001D117BCFCBF5DFD1
        903E857C17DA228A838CE1DE41002C22D39737965E3D633AD6B39E2990259B6A
        DD2D1A9397140171BF233AB00000012AC0000000000000D4E92E459A007445EF
        3F2FD77F4640FA15F05F681161A4F0778C6F12D08115572D1E772E99D31A5931
        33962CD0572DD66E926A4E4CEA8026BC9E7B292C0000128580000000000001A9
        D0446A336A8E88BDE7E5FAEFE8C81F42BE0BED000E1AA94000C9A11C8B8B25CE
        A4E2B712085392EE5A3526F2D28097C8C74D64250B0000255800000000000000
        0D4E825C96CBD117BCFCBF5DFD1903E857C17DA00F1F53C4E9C336D0044B7532
        5F2F9F6E6CDCEB14B262D96865E4635A9445D5BBC5956017500084AD40105580
        000000000000001A9D009723A23F77F9BEBBFA3207D0AF82FB40E3B3C0EDC648
        2B711512C839F3D7CCE7BCEB1C7AD8006B33979DE7CD0235C99D000000003342
        C2AC00000000000000001A9D0012E7A23F77F9BEBBFA3207D0AF82FB40F0F79C
        DC80585082B5E673DE2E71BA001ACCDE2F938A00D4E96000000001C7AA393300
        0000000000000000353A0026B3D11FBAFCDF5DFD1903E857C17DA00032B402A0
        18B38F7400127261E4F3D500D4DD94000000094850B000000000000000000006
        A749724E88FDDFE77AEFE8C81F42BE0BED000CB5A4202E574CCB38B4968006B3
        3C9E5ADC006F79A00000004A4500942C0000000000000000005692D5E88BDE7E
        5FAEFE8C81DD4794FA0012DB20000CDB2C00003797266812B534000000008500
        00000000000000000000002CD750FEA3E3FC4F6807677F8FB000000000000000
        00000000000000000000000000000000000003AECFD5C7E5F603B3BFC7D80000
        000000000000000000000000000000000000000000000001D767EAE3F2FB01D9
        DFE3EC0000000000000000000000000000000000000000000000000000EBB3F5
        71F97D80ECEFF1F6000000000000000000000000000000000000000000000000
        000075D9FAB8FCBEC07677F8FB00000000000000000000000000000000000000
        000000000000003AECFD5C7E5F603FFFDA0008010200010500FE8FB7FE7FA56D
        FF009FE95B7FE7FA56DFF9FE95B7FE7FA56DFF009FE95B7FE7FA56DFF9FE95B7
        FE7FA56DFF009FE95B7FE7FA56DFF9FE95B7FE75EFB74EFB74EFB74EFB747EB7
        745EB770EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370E
        F370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370EF370
        EF370EF370EF370EF370EF370EF370EF370EF370EF374EF374EF370EF370EF37
        0EF374EF370EF370EF370EF370EF370EF370EF370EF374EF374EF374EF374EF3
        74EF374EF374EF374EF374EF370EF370EF3747EB774EFB74EFB74EFB74EFB74E
        FB74EFB74EFB74F4B537B5C94F97041041041041041041041041041041041041
        0411CAB8924B892492E2492791E8FE8F297293F0D248DEAD0F911AC11A24410C
        B48208E2F47F479484C9E4A6353E0D8C5C2C8E4469041041041041040D09F07A
        3FA3CC5CA4FC32E06343E4492492CB8B8B892E2E2E1BE1F47F479B3CA4C6A79E
        DF32391041690416969690410411AFA3FA3CD4C5CA4FC2C09F0B43F0703D3D1F
        D1E727CB4CF3F091CF6CB892492492492492493D1FD1E6B5A2722E527E2DA1F1
        B45A5A8B516A2D45A8B4B4B4B4B4B4F49F4BC5A679F0B291F3A09E0688E4CF04
        924F07A4FA5CF6313917293E17E0609E0687C6C6CB8B8B8B8B8B8B8B8B8F49F4
        B5B0B074C7393E5267993C0BC03E28E2631A1723D1FD1E16A4AA98E5B114BE5A
        7C097876B8E0688E47A3FA3C75531E1208D234425E1589F29150D09F17A3FA3C
        6D49528E6A7C53A493A27E1DA275687C6D0D717A3FA3C974C731F4170CF05A5B
        C9F32D2D2DE6753A9D482D2082082D2D1523A0B0B0B074E9E8FE9725A92A51CB
        A8A593C324E924E93C74E905A884416905A411A41047022081F29A2AA4F47F47
        94D0E98E6262279108845C4AE34F49249249249278FF00F2F4688E438140E993
        D2FD2E5B454A398842E2B4B48208E37D05517171797179797979717171717990
        559717978EA2E2E2E2E2E2E2F1D4C92E83D27D2D6E2E2E2E2E2E2F2E2F436344
        2E627C525C49717170B932492C964F2635688E381A7A7A3FA3AC104104104105
        A432D2DE4C93A27C882D2D65A2E4C169616969696A2D2D2D2D20821102A48442
        2D2358208D2D47A5FA5CE6874F31313E3924927934D5CA927C07A5FA5AE43217
        9797B2F65ECBCBCBD8F705B837C73C5227C524925C88278FC855124925C5C892
        4924B8B8B8B8924B8B8B87521D45C5C5C5E5E7A5FA5AE33198CB0B0C6632C319
        8CC6633198C74C13CB4C5CB4C6A790CB89D649249249249249192344717A4FA5
        ADC5C4971717124925CB49D5A92A51CC9E627C95496961616169696969696969
        6969696969696169696969E97E96B0C820B59D7586433A9D74EA753AE902E9CB
        427CB4C6A78E927C135C1E97E96B0410410410411A4105A8820843A4AA9E5A27
        989F1B62A89E64924924E8F5F4BF4B5BCBCBCBCBCBCBCC86432190C85E643219
        0C83A87CC5CC4C7CA75171717171717171771C11A7A4FA5CC83AEB0493CF4C9E
        627CA82C2C2D2D2C2D2D2D2C2C2C2C2C2C2D63A0C6CF4BF4BF829297CC4CF3E3
        42F05E9BE9F1C104704104104104104104104104104104104104409F313E4489
        F80A8F4DF4F5B4B4B4B4B0C6633198CC6633198CC6633198CC6633198CC66331
        98CC6633198CC6622C2C2C4585A5A8B4B4B4B4B4820B4B482D2082C2C2C2C238
        A0820820820820820F4DF4F909F8A688E19E5492492492492492492492492492
        4924925C49E9BE9F253E19D649F02C8E74788F4BF4B9524924F0492492492492
        4924924924924924F0492492493C3249226410410410410410410410411A4104
        107A6FA7FCAA64924924924924924924924924924927A6FA7FD2BD2FD2FE82C5
        C8F4BF4B82D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2
        D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2
        DD2048B4B4B4B4B4B4B4F4DF4F5820820820820820820820820823973E3DEA90
        B91E9BE9EB0410410410410410410410410416905A5A5A5A5A5A5A5A27E39888
        122393E9BE9EB9D99D99D99D99D99D99D99D99D99D99D99D99D99D99D99D99D9
        9D99D99D99D99CCECCECCECCECCECCECCECCECCECCECCECCECCECCECCECCECCE
        CCECCECCECCECCECCECCECCECCECCECCECCECCECEE199D99D99D99D999999999
        99D99CCECCECCECCECCECCECCECCECCECF48E76B5C48C48C48C48C48C48C48C4
        8C48C48C48C48C48C48C48C48C48C48C48C48C48C48C46246246246231189189
        1891891891891891891891891891891891891891891891891891891891891891
        8918918918918918D18D188C4623123123123123123123123123123123D2AFFF
        002F12FC73D3C87D443E77A6FA7E25F8E63D3CB45CEF4DF4FF009791B244BC07
        A6FA7FCC40A9F03E9BE9FF0026864E902F05E9BE9FF27237AA5E0FD37D3FE45F
        0411E13D37D3FE458F48F0DE9BE9FF004AF4DF4FFA57A6FA7FD2BD37D3FE95E9
        BE9EB24924924924924E924924924924924924EB2492492492492492493A4924
        E92492493AC92492492492492492492492492493A7A6FA7ABE54F313F0689E19
        F0F27A6FA7AC1041041046B0410410410410410411A433AE9041041041041041
        0468C488208208D7A90F582082082082082082082082082047A6FA7C12492493
        AC6924924924924924924F0C924924924924924F0C9249249249249249249249
        2492492492492492493AFA6FA7FD2234F4DF4F592E2592C92492492592CB8925
        92C964B2592C964B2592C964B2592C964B2592C964B2592C924B8964B2E2E249
        2592C964B2592C964B2592C964B2592C964B2592C964B2592C964925C4B3D2FD
        3D6F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F
        2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F
        2F2F2F2F2F2F2F2F3D2FD2F0F041041041047147F0DE8FE978682592C964B259
        2C964BE38208FE0FD1FD2D6C2C4588B11622C4588B11622C43A4B4B4B4B4B482
        0A682C2C4588B11622C4588B51622A42A4820815258584104104104104103238
        238A492492395E93E973678994D3CAA993AAD6091F25BF00B95E93E9783484B9
        353D208D11248DEB04F137C73E13D27D2E5B7C53A534F25B2758D172A746FC67
        A4FA5E060A572AA7AA5A473193E33D27D2E4A637C6972AAAB58E4CE890F56F98
        84FC07A4FA5CF6CA57264AAAE17C084F856ADF8EF49F4B8EAE44099722E45C8B
        91722E44A2E43AB9AF482082A7E3FD27D2E37C8B4B4B4B4B4B4B4B0B4B74489E
        521BE16FC7FA4FA5C2941237C4D1493C725C3625C086B8A389BFE03D27D2E1AB
        C043D1B12D18B54C6B810DF0B7FC0FA4FA5AFF00E46F8D212E26488AB85F0CEB
        E5C2FF0082F47F475FFCF2131D42A8B8B99732E65C4924E887C88247C0C9FE0B
        D1FD1D50F8E9A47496969696969696168C4B8DF03E16C6FF0083F47F4756F917
        17979797979797978EA122796DF0D4FF0084F47F479291696161616161696160
        D11C688E07C2DFF0BE8FE8F25124924924A24B912362E05C723E06362FE13D1F
        D1E45A5A5A41041043208D121F22491F0C8FF86F47F478E95AB5AC7054C489E2
        6C7512C964B249249249FE1FD1FD1E24B9553E4B7C13CD823C7FA3FA5C499717
        1722F2E2F2E2E1D648B890DF8262F1FE8FE97804B8EA7C2F9D24F8FF0047F479
        E909F13637C0DFF1FE8FE8EBEDC7B71EDC7B71EDC7B71EDC7B71EDC7B71EDC7B
        71EDE7607607607607607603FF00E71ED87B61ED87B69ED87B61ED87B61ED87B
        61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B6
        1ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61ED87B61
        ED87B61ED87B61ED67A7A6DDBFE95B7FE7FA56DFF9FE95B7FE7FA56DFF009FE9
        5B7FE75FFFDA0008010300010500FE8EFF00A5BFE96FFA5BFE96FF00A5BFE96F
        FA5BFE96FF00A5BFE96FFA5BFE96F8315262A4C5498A916D523DA4588B11622C
        4588B11622C4588B11622C4588B11622C4588B11622C4588B11622C4588B1162
        31D263A4C749622C463A4C7498E931D263A4C7498D18E931D263A4C7498E916D
        A1D1498E931D263A4B292CA4B2931A31A31231A15148B6A930D261A4C3498693
        0D261A4C3495A87C96B973E0249249249D249249279369690416969616160A81
        53C8DCFF005CAA972A3C4C6AB8E04F592492759249278B73FD7290D0F94DF865
        C33C8924B8B8B8B8B8B8B8B891313E066E7FAE527A55FC32E34882C2C2D2D2D2
        D2D2C2C2D12E1DCFF5CD6B97E5E03CF973C8B8B8B8B8B8B8B8B8B8B8B8B89D77
        3FD739AFE1972275964BD64920913169B9FEBC4B5E3279091696969696904169
        69691A6E7FAE7B43FE1971A65C5C5C5C5C5C5C5C5E5E5E5C57FEB9E864729A3C
        BC5CF26DE0B4B4B782BF3F014952FE1D71A122D20B4B4B4B4B4B4B4DCFF5ADEC
        BD94D53CD6B99E42F153C54E93C9DCFF005C2994D53CBA468A97F0EB8A44C5C8
        DCFF005C74D53CB9132A5CA9249F173C305452F91B9FEB8D329AA796969553C5
        02A48208F1AB87CC4CA5F1EE7FAE4D354F310D70C12497171772E49249249E39
        2513A49249717176B714D66445E5E2AB4DCFF5C94E0A6A9E5D23435A411A470C
        7259248DEB3A4F0C6BD783A9D4EA753A89E89EA994D46E7FAE5262AA44F98D11
        ABD6DD3A9D4EA75E36B49249249249278A5923D193CA4E0ABCF969C14B9E5F4D
        1A1F1CE92895C687496969696B2D2D20B4B4B4B482D2D2D2D2D2D2D2D2D2C2C2
        C2D2C152588B0AFCF5B596B2D65A5A5A5ACB596B1213E6B5C4F58208F113C0A0
        9249211D0915449B9FEB5B8B8B8B8B8B8B8B8B894362AB9703435C725C493CAB
        8B9925C5C5CCBCB8B8B8964925C5C5C3A8B8965C5C49248C551732AF3E726535
        7318D731AE3A972208249E4412470A1F9EB8CC66331988C6632C2C3198CB0547
        1413C2D1035C505A432394E923582D2D65A5A4696B2D65A5A5A5A5A5A582A0B0
        B19616161579EB7979797979797991990C86432B323320AA9E5BD2A5E1639D1C
        13A410415F9EB696B20B590410410411A41027052E79690D0D78382E2E2E2E2E
        24B8B8B8B8B8B8B8B8BCB892E2F2E2F2E2E2AF3D6F44A2E44A25128944A25128
        84743A1D0E84A131F2D8D783635E0A04F5ABCF952492492C924924B8A5F2DA1A
        1F836881E92493AC10411C51A410CABCF5C66231188C43DB3118CC4CC6633198
        CC658636631524732A435CCF2238E082082082082082393257E7CC83AE9E6412
        493CE68A973239324971717171717171717171717171717171795F9EB2492492
        493C33E16AA7C231AF04FCFC7C924924C9553C4D8B9B6F827E7ADC5C5C5C5ECC
        86466432190C86432190C86432190C86432190C86432190C86432190C8642F65
        E5C5E642F2F2F2F2F2F2F2F2F2492492E2E2E2E249E182082082082082347E7C
        86883A1D3450743A1D38D41D0E8743A1D0E8743A1D08279D041075D3A1041041
        0410410410410410411AC0FCF9304104104104169690410411A4104104104104
        11AC6B0410411AC1046AD13E096B579F2638A08FE0649F10FCFC027E15BFE15F
        9FF4AABCF56BC7C78F81AE455E7AB249249249249249249249249D27993A493C
        D9249279324899248DF21F9EB24924924924924924924924925CC86753A9D4EA
        753A9D4EA752D248F09027C7E62E0AB90FCF5B91722E45C8B91722E45C8B9172
        2E45C8B91722E45C8B912892492492492492746BC33427C2C5AC971E7C87E7AE
        0460460460460460460460460460460460460460460460460460460460460460
        3023023023023023018118118118118118118118118118118118118118118118
        1181181181181181181181181181180C08C08C28C28C28C28C28C28C08C08C08
        C08C08C08C08C08C08AD43D72332332332332332332332332332332332332332
        3323323323323323323323323323323323323329919919919919919919919919
        9199199199199199199199199199199199199199199199199199199199199199
        197B3233233233233233233233233233233233233232AF3D5786A49D18978AA7
        5F2F00FCF55E1A910DF8CA74F2D5F39F9EABC2B625AB7E2DA168DF807E7AAF08
        D8970C09F8A91B129D1A279AFCF55E0DB12E3689F09514E923E3F213E5BF3D57
        82912E4B44F826411A468DF1B427CA7E7AAF03225CCF213E7D3C1237CA813E4B
        F3D67C0A5CE689E75232757CB68F2E43F3E0F213E779780684F9AD888F01027C
        4FCF55A409F2FCFC1B47972DB12F06D09F0BF3D56B027E3E04F90D89785689E0
        7E7AAE068F2F1ED09F13625E2204F47E7C98208208E6F973BCF8978A6B47E7AB
        E4C13CD6BC0C0993C33E21F9F0C92493C324924924924924924E924E92492492
        49249249248B8249249D649D649249249249249249249249249D1F9EB05A5A5A
        5A5BAC105A5A5A5A5A5A5A5A5A5A5A5A4104105A5A5A5A5A5A5A5A5A5A5A3425
        ADA5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A35A3F3D
        6749249D2756C9249249249249249249249249249249249249246C4493A32492
        49249249249249249249249249249249249249247E7C10410410410410411A41
        0410410410410410410410410410411A41041041041041041041041041041041
        041041041041041041041579EB616161616161616161616161618CB0B0B0B0B0
        B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0C65858585858
        585858585858585858585858585858585858585855E7FD2ABFF5FD2ABFF5ADE5
        E5E5E5E5E5E5E5E5E2AC5512492497125558B70C8CC8CC8CC8CC8CC8CC82AD97
        17124923A8BCBC550AA249249249249E382082082D2D2D2D20B448B4B4B4B4B4
        B4B4AFFD7352E248A9F2A94411A3D234812E4A5E07CF93B9FEB98971B654C5C8
        A56924923AB8249244F824929249279B3CBDCFF5CB4B91555C13C2A92092746C
        AB544EAB59D12E14B96D91CBDCFF005E0AA7C49EA8A50DEAD97094F174121EAB
        892F0FB9FEB94971B63E4245348F491BE15AB625A31890970A5E2373FD7252E3
        63AB9105348F4918B817025A2D570A5CBE9CEDCFF5C84B90D161616161616169
        60A9D1BD27931A345A5A25E3F73FD71AE43A855171717171717A2E2E5A3245A5
        4F542D57125E3F73FD71A5C7510C86432190C86416B2D121B1F147040B852FE0
        373FD7125CDE9A4224824918C6F542D57125E1BCF97B9FEB852E36C91B2592C9
        64BD5A29431F1A42E425FC16E7FAE18E368820820820B448B74A9948C6F86390
        97F07B9FEB5812E375179797979797978AB2747AC8F5485AB42235484BF83DCF
        F5AA5C8748A82C4588B11622C4582A11031BD678172578E9E2DCFF005C3235AB
        65C5E8BD17A2F45E8B8B8B89E4342E4AF1F04F0EE7FAE4B20820820B4B482048
        9E0A9EB491ACF0A5A4F8F8D275DCFF005C87512492492497124EAF47ACF0B447
        02FE1674DCFF005C753244C65CCB9923649225A4EAC82048820820B48208208F
        E1609373FD71363D5245A5BC14D3C8812E05FC6366E7FAE268C6633196161698
        CC625C8425FC8A2BFF005CA9E6A5C297F1DB9FEB9EC4F8D702FE3634DCFF005A
        E432190C86532190C86432190CA2DC32190C864321905B86532994CA673399CC
        E673399CCE673399CCE673399CCE673399CCE673399CCE673399CCE673399CCE
        673399CCE673399CCE673399CCE67339DC15397FD29FF4B7FD2DFF004B7FD2DF
        07FFDA0008010100010500FE8FF7BFFD9FF4AFBDFF00ECFF00A57DEFFF0067FD
        2BEF7FFB3FE95F7BFF00D9FF004AFBDFFECFFA57DEFF00F67FD2BEF7FF00B3FE
        95F7BFFD9FF4AFBDFF00ECFF00A57DEFFF0067FD2BEF7FFB3FE95F7BFF00D9EB
        F1B7D947C6DF651F1B7D947C6DF651F1B7D9457F8DFECDA4F8E7ECD3E39FB34F
        8E7ECD3E39FB34F8E7ECD3E39FB347F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7
        ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3
        E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E39FB34F8E7ECD3E38F
        B30F8E3ECC3E38FB30F8E7ECD3E39FB30F8E7ECC3E39FB30F8E3ECC3E38FB30F
        8E3ECC3E39FB305F8E7ECD3E38FB30F8E3ECC3E38FB30F8E3ECC3E38FB30F8E3
        ECC3E39FB30F8E7ECC3E39FB30F8E7ECC3E39FB30F8E7ECC3E39FB30F8E7ECC3
        E39FB30F8E3ECC3E38FB305F8E7ECB95F8DBEC96BE35FB28F8D7ECA3E35FB28F
        8D7ECA3E35FB28F8D7ECA3E35FB28FCA9E9B63D17E50E4D745BC2E785CC5ECBD
        97B2F65ECBD97B2F65ECBD97B2F65ECBD97B2F66466466466465ECC8CBD99199
        199197B1549AE3892CA8B2A2CA8C7598EA31D463A8C5518EA31D4534D74BE3FC
        BDFB6793D0AA8B5EBE5C55533E2D369D2D35C4BA14D772D3A1D0E87425128BA9
        2EA4BA93A3E2FCBDFB6795575556DDA53C9AA991F865E5AA6D35526B8E512892
        4924924924928A9D2D435AB3F2F7ED9E53523529D163E4D54CF83F3E426D14B4
        F8D229A2E31331331331188C46231188C4534BA787F2F7ED9E6352AAA5D2F935
        533E07CF949B42A935C49B4D6E52D64A4BE92FA4BE82FA0BE92FA0BE92FA4BE9
        2FA44D3D7F2F7ED9E6D54AA934E97C9AA99E7F9F31368A5A7C89D7A9D759248D
        28A9D2D35523F2F7ED9E7554AA93A5D2F935533E1609E14DA1549F229A29A963
        A4C7498E931D263A4C7498E91EDD22DBA116522A552CFCBDFB679F552AA5552E
        97C9AA99E54C733CB85369D2D3E3A6A74BCA6532994CA653375CA6532994CA7E
        5E73F9639E8AE955269A27935533E2D369AA935C88E08208E0FCBBFB5F54D3E6
        A2BA5549A3CB935533C294B87E15382969AE2A5C34A86ADA4B692DA48A48A48A
        4B692DA4B693F2F7ED9D7B9DD4775BC6CEF2DD5CCAE8B8F2E5554C9E47412509
        52CA5B9F03E5C09B4D549AE14515DAD43E4FE5EFDB3C34D4E97B3BCB757290D1
        5D12B955D32269A50D28A7C2791E7AA6D09A6B8A8AEDE4FE5EFDB3C54D4E97B3
        BD4EEAE5A65744E913C0DC2BD17A2F45D4A2B74B1BA5F868E04DA69A6B5F3D19
        4576F23F2F7ED9E3A6A74BD9DEA77572A34AE89E17D56363DB6DE392C70E9716
        D5E2D382969A3CF5F324A2B8E3FCBDFB67914D4E97B3BB4EED3CCAE89E26DD25
        553464AA2FA8C8C6E7C4CA2EA455A4D6E50D64A0C941976CCBB665DB33ED147A
        ADB4773B2773B0773B06DEF6DEE33F2F7ED9E4D353A1ECEF53BB4F29695D1AB5
        047489150A2DA0B682DA0B291D1C8AEF325664ACBEB664ACC9597D65F517545C
        C9649249D04A5B490E981C09C34E4EA753A9D49E14DA7B1BEB757E5EFDB3CAA6
        A7455B3BCB769E66E510252293AD23F31F9DBA753A92C97C7B9B7710D3B4B482
        0B4B4B4B78544B83A5AA20A5C133CA4DD2FF002DB757E56E5D353A2AD9DEA776
        9E574D2BA14B7C2DC2BCC85E64A46D37C75EDDC60ACC15982A305460A8C0CC0C
        EDD981980EDD1811811811DBA305260A4C140B66942D8DB676D41DBD076F41DB
        D076FB676FB66DECECB3B6D93B7D83F2F24BF2C6B8774C3BA60DE306E98374C1
        BA60DE306F18378A76B7E8AA875554F32AA1D3AF968D4AB19632C658CB18E869
        781F3E4D2ED134F83A1D094515DC433F2FFED9D726D9936CC9B665DB32ED9976
        CCBB665DB32ED99768CBB6535D15723C89D2082BA2DD7AEB5B69CB2E65D5173E
        4B98CB5A79EA33B33D667A8CD599B70CBB8CCBB866DC32D665ACCB5197707B95
        9937117EE32FDC16EEE216E56CBF70C95992B2FAC75564D5392B3F2D75FCABCE
        A2BAA8AB6B769DDA787A42FF00DB85A2BA6D7AC8D265B49FFE67FF0099141141
        5243E3AF6D569A74BE2964B2110B909B5A470F43F2CFED4D7B4DB3B4DB3B5DB3
        B5DB3B6DA3B5DA3B5DA3B4DB3B4DB3B5DB3B5DA6769B653B14D1579F07467FEB
        1FF9E0686A4AA974BD7CB4B6A2D65B511516B21F22BDB55AB2B459598EB31D66
        2ACC7598EB315662ACC3598AB315661DC316E18B70C3B862ACC358B6AB42D8AD
        98370EDEB3B7ACEDEB3B7ACFCB4ADFCABAAF5559DDD6777B877551DD5477759D
        DD677551DDD4776CEED9DDB3BB6776D1B5BB4EED3CB84D554BA5F2AAA793D3C0
        79694D4E9134F482083F2EFED7D716E18F711656595965659596565B516D45AC
        B6A21EB45555156D6F53BAB9486935552E97CAAA9E479956EDA6746746747708
        CE8EE11DC23B847708EE11DC23B846793399D99DA33B29F51552D7A9677151DC
        5477159F969CFE55D6EA055D25D4A1574B528913489E0EBAF98940B99524D34E
        97CAAA9E198D6BA154AAA5D0FC07989C3D7F2CFED4E28E44B45CC9A855548BEB
        29DDDCA6ADADDA7769E5D54AA934D3E5554EB3025C1550AA5552E96886C86432
        190C86432190C86432190C86410C52886D4547E59FDA9AF6DB676DB676D41DB6
        D8FD2D076B4A7DAD27688ED51DA1DA33B36768D9DA5476959DA567695947A7DD
        A2A4E572EAA5549A69F2AAA639BD0E8743A72BC8A6AB44E4FCB9FB5F93D69254
        1723FF0053CC9549722D65AC8E7D74A6351CBAA88E4BAE9A4CB4196832ED9976
        CCBB666DB336D99B6CCDB665DB32ED9976CCBB665DB32ED99B6CCB414FA8A293
        F2DB557E56D6110884422110884744743A32085E16BA1549A8E2F2E1AA9E4554
        AA9574BA1A71E07F2C7ED3E57FE7C4D7426B869498FA70D54C721D29AAE87435
        D79F41F963F69EBDC6E9DC6E9DC6E9DC6E956FFA84775BE775BE777BE777BE77
        7BE775BE777BE777BE777BE777BE777BE777BE775BE775BE775BE775BE775BE7
        75BE775BE775EA0EEB7CEEB7CEEB7CEEB7CEEB7C5EAF7D35EA775AEE374EE378
        AB7B76A32EE19770CBB885BDB864ACCBB865DC9CDB866DC335666AC75D664DC3
        25664DC325664ACC95992B1D75B44924B2597171717125CCB99732491368FCB1
        FB4F915D30743A1D0E8283A1D0E9C6A0E8743A1D0E8743A1D0E840AA869CAD60
        853C8843A4B510422D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D1D2A6C45A7E59F
        DA9C9AA9D20823482082086432190C8E626D09CAD6190C864321EB0C8643D234
        EBE05B128D7F2CFED4D6592C965CD92D12CB99D4EA753A92C96896CEA753A9D4
        EA753A9D4EA753A9D4EA753A9D4EA753A89B2E67526A26A26A26A26A26A258DB
        2EA91351351351D4BAA2592C964B2592C964B2592C964B2592C964B2592C964B
        259F957F68F0CCF2DAF09E425CBF2F15F957F687F07E5CFF003F11F957F686AE
        9AA9F01E5CF6E08E7F992B9D452AD69AE47E55FDA1AD54D2A8C68C68C68C68C6
        8C68C68C68C68C68C68C68C68C68C68C68C68B2931A31A31A31A31A31A31A31A
        31A31A31A2C42DB48B116231A31A31A31A31A31A31A31A31A31A31A31A2C4588
        C68C6918D18D18D18D18D18D18D18D18D18D32C462DBA13A12A6AA29B31A31A3
        1A31A31A31A31A3F2B74FCA3AE6DC336E19B70CDB866DC336E19B70CDB866DC3
        36E19B70CDB866DC336E19B70CDB866DC1EF6E33A9D4EA753A9D4EA753A9D48F
        0E9F1F994BB6ADC54C34B70AADA697C8FCAFFB4B5CBB665DB32ED9976CCBB665
        DB32ED9976CCBB665DB32ED9976CCBB665DB32ED9976CCBB665DB32D065A0CBB
        68CB4196832D065A0CB4196832D0575D152F0F3C54ABAA75529B6A8753A19279
        F23F2BFED2D7DB364F6CD93DB364F6CD93DB364F6CD93DB364F6CD93DB364F6C
        D93DB364F6CD93DB364F6CD93DB364F6CD93DB364F6CD93DB364F6CD93DB364F
        6CDA17FF0037659ED9B27B66C9ED9B27B66C9EDBB33ED9B27B66C9ED9B27B66C
        9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B6
        6C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B6ECA3DB364
        F6CD917FF3B651EDBB285FFCEDA4DFFF003B62A6FF00F9FB551ED9B27B66C9ED
        9B27B66C9ED9B27B66C9ED9B27B66C9ED9B27B66C9F96E9547E56D7DC3D49EE1
        EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A
        83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0
        F70F507B87A93DC3D41EE1EA0F70F527B87A83DC3D41EE1EA0F70F507B87A83D
        C3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70
        F507B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83DC3D
        41EE1EA0F70F507B87A93BCDF477BBF0FD7FA94DFF00F47D437EE1EA4F70F507
        B87A83DC3D41EE1EA0F70F507B87A83DC3D41EE1EA0F70F507B87A83F2CD4EBF
        CA9AAF2F0A84BA7418BC52126CA69BC854555D355D57FEB45553A9F33F2BFED2
        D57978544A85E6FC5A29BA6D8A632AA5BA4AA53E6FE57FDA5AAF2F0A96ADF8B5
        4BA8A3FF0054BFF52B74AAB9FF0095FF00696ABCBC225E3EB6E9537EDBAFFF00
        5F3D1AE77E57FDA5AAF2F05225E3188DBA555565735D54A75572B87CB99F95FF
        00696ABCBC5B5E0D8E84E9A55293A9535BA36E92AA9D4DBF05F95FF697855CCF
        2F0085D44E9DA6D50E86E855535BA572A793F95FF697F228A5C3AB6EAA9D714D
        1CDF2E47E57FDA5C1E5CEF33CBF804DAF029F17E57FDA5E07CFC27972DBF091C
        5F95FF00696ABCB99E7E1D3E437E2FF2BFED2D579707971F9F888FE03CB5FCAF
        FB4B586432190C86432189496B2D6410D90C86432190C86432190C86433C910C
        86432190C86432190C86432190432190C86410C86432190F586432190C864321
        90C86432190C86432190C86432196BD3F2BFED2D52850C86432190C87A742191
        D6190C86432190C86432190C8634E1AD2190C86432190C86432190C86432190C
        54B218D74B486432190C869690C86432190C86432190C86432190C86432190C8
        64321907E57FDA5C524EB56889249249249249249D6116AD6492492492492757
        E4C5AC93C16A21704924924924924924924924EB5797E58FDA7AC10410411A42
        3A1088208208208208208208442211088208208208208208204B582082082082
        082082082082082082082082082082083A1F963F69F0F53A9D74E9AB6893A9D4
        EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9223A9D7593A9
        D4EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9D4EA753AEBD4FCB1FB4
        F5B692CA4B692DA4B292CA4B292CA4B292CA4B692CA4B692DA4B692DA4B692DA
        4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692DA4
        B292CA4B692DA4B292CA4B292DA4B692DA4B692DA4B692DA4B692DA4B692DA4B
        692DA4B692DA4B692DA4B692DA4B692DA4B692DA4B692CA4B292CA4B693F2CFE
        D4D7B4DD3B4DD3B4DD3B5DD6FB4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD
        3B5DD3B5DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4D
        D3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD3B4DD1FA5DD42F49BA769BA
        769BA769BA769BA769BA769BA769BA769BA3F4BBC8ED774ED374ED374ED374ED
        374ED374ED374ED374ED374ED374ED374ED374ED374ED374ED374ED374ED374E
        D374ED374ED374ED374ED775BED374ED374ED374ED374FCB69D3F95B87CF993E
        0DB12E6273E0FCF8BF2F7ED9E0F3E77978094F44B9D3E07CF8FF002F7ED9D73D
        4CCF519EA33D467A8CF519EA33D467A8CF519EA16E56D64ACC95992B32565D5A
        3256CDEF515D2FB9DF3B9DF3B9DF3B9DF3B9DF3B9DF3B9DF3B9DF3B9DF28AF76
        D75D62AEA9756E4D5BB5A59B74CDBA66DD16EEEB6AADC8BEB2FACBEB2FACBEB2
        FACBEB1555CA4D2E182190C8643208208219044904104104107E5EFDB3CDA299
        E3DDAD514A7C9D9DB244FA4B6E5524BA9C6B4531C9DBA5AF03E7C9FCBFFB6799
        4D373885C3554A8A6AA9D4DA4CEAB8F6B6EFA9B4855175A5D45255537A492505
        E8B8BA04E74944A2514529B9F01E7CAFCBFF00B6796BABA55AB86616EEE64AB5
        8684E7828A1D55529509B85FE92A995391EB4A92235EAC4A07D4B58E0A55CD28
        F01E7CBFCBFF00B67974530B8B7F72789A139D14B746DA49BA5910A545754127
        9E8BA94A54AD3FF610DCEAA9753A6954AE04A1786FCBFF00B6795453C4D49BBB
        962E4ECED5ABA1524C86371C34D31AA50529A553829F243706DD16AE05C89F01
        F97FF6CF268A65F16E56A8A5B753E263A5D251B499E74FF9122552A67829479E
        ABA8DC27D47D046DD13C2972FA73BF2FFED9E4252D285C5B946ED6F06E98374C
        1BA60DD306E98374C3B861DD28F4ED35FF00E638436989153B9EB4AB9FFE745D
        5F449B6DDC5C50AE7D2383CBC4FE5FFDB3C8A69B57167A13EE283B8A0EE283B8
        A0EE283B8A0EE2817A8A1B55A9FF00D1BA9968FCABAA47AA4D9D16886E44A16A
        94B4952BC77E5FFDB3C7453C7BFB9690753A9D4EA75204AA652AA54EC6DD83AA
        1A527FE6A7034E539D6951ADC52B868A6D5E0BCB9BF97FF6CF1514CF1CA4743A
        1D0E8742693A17286E1A6EDAAA70948941368DB91A913295AD4534CF0EDD3E1B
        CF97F97FF6CF0D2AE710B86AA9534D753AEAE1A1D25915BAA69DAA3236C5FF00
        B1E6FAC373C14D2AA7D56A93AB868A6E7FC0FE5EFDB3C094BA69B571574535AC
        1B660DB30ED9876CC3B661DB16CED42DBA1BC7B4C487353A85E75552F54A5AE8
        79BEA85D44A16B4AB9A50BF81FCBDFB6759828A61716EEF34F2EE19B70CDB866
        DC336E19B70CDB82DDA9A5BB5D250AA54D5569E656E13D521285A2702A44F5F3
        74D36AF15E5C8FCBDFB675A29970D09A7C355D6F6F59DBD676F59DBD676F59DB
        D676F58BD3D6CEDAB36B66C6DC24A74A9C2E0A547052B469325AD36E8B7F84FC
        BDFB6785A13D6BA96DD3DC1DC9DC9DC9DC9DC9DC23B893B946DEE641B84DF525
        24DCBD194A2754A5F06DD1E3E09E1FCBDFB6789A4C96B4DCBF72AC7598EB31EE
        18F70C7B8595A31D6CB2B29DAAAA74D34D29BBB4892A72DEB4A9138D111D5285
        AD14BA9F911CA8F0DE5C1F97BF6CF21EE514BCDB666DB336D99B6CCDB666DB32
        EDB79B6C5B9B6D95329F22A7C090946AAA84970436E9A552B553FC04CE9F97BF
        6CF1EF6E5886BAA724104C289724B3676ED553856A3C90A9A5914914908A36A9
        4ACA0B281D14229A292DA4B282DA4B691534AE2EABF81FCBDFB678B73716DD2D
        B6F5871E4253AECEDDC3690BABE1B8DBA38129E6DC8552D174F1BF97BF6CF157
        46ED7560DC305660DC16C6E2787725EC6E3305660ACA7D3D6EA4924DDCF86A36
        E9B9EBE6251CDA20ABC723F2F7ED9E4CB9820885AD5571212BDA492D2509473A
        110BC7FE5EFDB3C899128D5A925AD2A709A8E248A29B56B4AE637FC079EBF97B
        F6CEBF319F319F319F318FF3149F319F319F319F319F319F319F31437F9824F9
        80F980F980F980F980F980A7F312A5FCCC7CCC7CCC2FCCB07CCE7CCE7CCE7CCE
        7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE
        7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE
        7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CCE7CD07CCE7CD07E4AF5BEE5F91BFA57DE
        FF00F67FD2BEF7FF00B3FE95F7BFFD9FF4AFBDFF00ECFF00A57DEFFF0067AFFF
        DA0008010202063F0043B22D916C8B645B22D916C8B645B22D916C8B645B7C27
        84F09E13C2784924924924924924924924924924924924924924924924924924
        92492492492492492492493C2784F09E12492493C2784F09E13C278493C27855
        DFF8C8BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BA
        E1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE1B88BAE
        1B88BAE1B88BAE19175C322EB8645D70DC45D70C8BAE19175C322EB86E22EB86
        45D70C8BAE19175C322EB8645D70C8BAE19175C322EB8645D70C8BAE19175C32
        2EB8645D70DC45D70C8BAE19175C322EB8645D70C8BAE19175C322EB8645D70C
        8BAE19175C322EB8645D70C8BAE19175C322EB8645D70C8BAE19175C322EB864
        5D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45
        D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D
        70DC45D70DC45D70DC45D70DC45D70DC45D70DC45D70DCF84924924924924924
        9249249249249EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB
        47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB4
        7AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47AD1EB47
        AD156FE3322D916C8B645B22DBE1FFDA0008010302063F00FD03A08208208208
        1D16E8B745BA2DD16E8B745BA2DD16E8B745BA2DD16E8B745BA2DD16E8B745BF
        D2C7FA58E8B7FF0073DFF627745BA2DD16E8B745BA2DD16E8B745BA2DD16E8B7
        45BA2DD16E8B745BA2DD16E8B745BA2DD16E8B7FCC8208208208208208208208
        208208208208208208208208208208208208208208208208FAF9FFDA00080101
        01063F00FC0FFCBBEA9DBFF77CE7E0BFE5DF54EDFF00BBE73F05FF002EFAA76F
        FDDF39F82FF977D53B7FEEF9CFC17FCBBEA9DBFF0077CE7E0BFE5DF54EDFFBBE
        73F05FF2EFAA76FF00DDF39F82FF00977D53B7FEEF9CFC17FCBBEA9DBFF77CE7
        E0BFE5DF54EDFF00BBE73F05FF002EFAA76FFDDF39F82FF977D53B7FEEF9CFC1
        7FCBBEA9DBFF0077CE607C9769ED7D2AF92ED3DAFA55F25DA7B5F4ABE4BB4F6B
        E957C9769ED7D2A8FF00F0D27FD476AE957C9B68ED5D2AF936D1DABA55F26DA3
        B574ABE4DB476AE957C9B68ED5D2AF936D1DABA5501DCDB476AE957C9B68ED5D
        2AF936D1DABA55F26DA3B574ABE4DB476AE957C9B68ED5D2AF936D1DABA55F26
        DA3B574ABE4DB476AE957C9B68ED5D2AF936D1DABA55F26DA3B574ABE4DB476A
        E957C9B68ED5D2AF936D1DABA55F26DA3B574ABE4DB476AE957C9B68ED5D2AF9
        36D1DABA55F26DA3B574ABE4DB476AE957C9B68ED7D2AF936D1DAFA55F26DA3B
        5F4ABE4DB476BE957C9B68ED7D2AF93ED1DABA55F27DA3B574ABE4DB476BE957
        C9B68ED7D2AF936D1DAFA55F26DA3B5F4ABE4CF37FB8ED5D2AF936D1DAFA55F2
        6DA3B5F4ABE4DB476BE957C9B68ED7D2AF936D1DAFA55F26DA3B574ABE4DB476
        BE957C9B68ED7D2AF936D1DAFA55F27DA3B574ABE4DB476AE957C9B68ED5D2AF
        936D1DABA55F26DA7B574ABE4DB4F6AE957C9F68ED5D2AF936D1DABA552F7347
        37FB8ED7D2A88EE593FEA7B5F4ABE4BB4F6BE957C9769ED7D2AF92ED3DAFA55F
        25DA7B5F4ABE4BB4F6BE957C9769ED7D2AF92ED3DAFA55EA4763ECD63FB7D9BB
        277F77C766ECFCDC49E2D8E6FBC39EB36446D124C009F13C2A22E9AB064A7064
        7DC64C993264C993264C993264C993264C9934A993264C99328D231122BA6857
        4A65755DE04DC09AB09AB09AB4CA462F2E23D50FB8BBEFC4B9EC57B6651174F0
        EEF09C3887DF31DC88511EF18881BC2BDD74E9D3A714A70AF0A55E14ABC29510
        6385EA87DC5DF7E25CF62E0E0B8460C5BFC654464C4C43EFB8851A779E69C288
        310707D50FB8BBEFC4B9EC57E5B902C8CB1067C5443EF3E0C444288F78C44844
        9314E1384E2B4E9D3A74E9EA57AA57A42E307D50FB8BBEFC4B9EC5709DD8382A
        07DD8A887DE3F962A2149EF18608994A6072417F9A74F527A93D49D39A13A74E
        9D444BBBEA87DC5DF7E25CF63A07DC542D7B88C5443E3F34C30A4A30A214463D
        9327DC88972833A88DCF543EE2EFBF12E7B11C3864169910E3F2CD8A8879F1B1
        3EE189817C19144622209CE1394E5394E53953A9D4E9A59C9299446E7AA1F717
        7DF8973DBC20694431134D8A887C5C4FB862FF003C188F785118711EF0AED6AE
        D6AED6AED6AED6AED6A4B3416577DF14D5A6AD3569AB5EA81CBFC8BBECFF00E4
        B9EDE390CC510642A071310F9313C031B2518311EF5263201E73930FD4FF00B8
        7BEBC4B9EC0931D9E6502B362621E7C18292CC00DEB11EF0A230E51113C5022C
        829930F6ABA15D0AE8574264C997AA1F7177DF8973D812103DCAF0A028192D87
        18DCE18A815251898879C6E694496120032A801C522E90A36ADC26E2AC91961B
        C65A70223DE14461E5138524A32E27D50FB8BBEFC4B9EC216818112C540C96C5
        E18D887DCCF9567C4443CE14C6D8108146C992704E5512624301BD3F2C08D214
        66C2CCA1C99C28C6319F11EA87DC5DF7E25CF618B564C0862B25A0E31B117B87
        765A7762A753EE09224CBEE46D59FD3684A649913C5FD464CDBDA33E07085113
        E0C9B9032D9C47AA1F7177DF8973D8816AC9811282B25B17ACE3621F26090866
        960A366102EBF49973A02D484480E5500231739936F8969DDFC9472EE66DDC9B
        902DC187EA87DC5DF7E25CF6245AB260431592D8BD671A4D912CE32E0C6640D9
        311389D3FE92C5432E697718289C53A7C738578529C6795478C21ED0AF0A42BE
        290AF8A55F14ABE15F15A85AB724C6557EA3A15EA8ABC682B8B62D7EA78110DC
        F543EE2EFBF12E7B142D5930227592D0BD671BC61EF1F9EE4B27B5466C884265
        122400840549EB57AB57AB4F5A925CC7111B260722BD50578ABC55E2AF157AB0
        AF1A55F34957CD253D69CD29CD2A7A7720A597D8A2E3D9B92290EEBA7C204181
        1282140C9CE07197D8BD50FB8BBEFC4B9EC58B564C08C8B25B17ACE3499A70A5
        888B45716D52A318E50818C416CDB8705B111B3219F3AC89D3A74E9D3A74F820
        CCB4414232AD3BB2628106044A17A9B68BDAFE43DF44FBFBCB9EC60B564C0851
        6B42F59C6F185AF6013220DE124306299326DC88F7E2222F6E384E138AD5EE15
        7856AF0AD5E57EA57AA0AF2BCAF2BCAF2BC6A4E6A4E6A4E5441268D09CD2A7A5
        4F4A634A63494C692A16ACCB34A55CACAD5D76B4AF53C0900FE45DF600FF00EC
        B9EC0D595AB2AE1A95CE0573815CE05AB2AE15AB35216ACD92086281B567896A
        718A2770C99A289174BFB7773706E413EE3A994CB2E61BCB36273288C3817E14
        CBD50FB8BBEFC4B9EC0BD6691A15EB348D0AF59A46857ECD2342BF6691A15FB3
        48D0AF8A46857C5216B05216B054AF887B57E9B42D7B311C2570A9043732E651
        0DBBF96E8814E53A74F89307CEA0408870629856AE84C1327142F82CDEC4F527
        15274FC09EA57B814B6B815EF7ABC55E2AF957CD2AF9A55F349578D255E34957
        8D255E34952DB3495EA61CBFC83BE7C4B9EC78B564C0851125A17ACE070284E8
        C0640B3B152339F6E040CEEB28DDFCD4AA50997F9AFF0035352A6A5441F76232
        10C542D4D361BA74E9F787A99F7077CF88F3D80F6A9F827B54FC139A7E09CD3F
        04E691A15E348D0AF1A4684E691A139A468578FF008F7292D1AB427348D085AB
        36AD023D943604B2059D3BCAA4F60C294485669B099315F04C684C98E233862A
        E9F72BA55D2AEABAAE702B9C0AEF026E04C9B81370261526AD3569AB4C01F6A6
        14A614A04112E7F827149D09C57A138AF42BC2B57856BD4D05C7F21EFA1FF92E
        7B02E598E68ABA15C14957056AE057456AE8A4AB82B5705255CACAB9595AB14A
        D58A55CAD444845EB266DCCE26513898162B80E049461C47BC62BF2C7CBB99A7
        0A49F07D4FFB87BEBC4B9EC0D59A0AB87DB0570D0AE1A15C341570D055D34157
        4D0AE9A131A15D3426DD16ACC84288908BD64CD8C81503EEC5923DF888D08836
        7815D2AE9A95D5755D5755D5755D5755D5755D576B576B5764C9157692AE884F
        2ABA295745255D0AE8A4AF534973FC87BE89FF00B973D81785215E1EF2149681
        192215E1484F595785255E09EB4C9D356A6DC65003DA5087BF1B03EE2A069C5C
        47BC6144FB86E40D2A07FCF78E7C8B3607A99F7077CF88F3D8F73494E69578D2
        A4B4692AF9A4A1685A324C4A8871786320540B8C5C47BC6044FB86040FB8A81F
        7109AADC64C993549AA4D526A93549AA4C993264C684D5263051164D098D057A
        99F7077CF88F3D80E69F82E552342BC6AD0AF1A94968D4A5B66196015F3405AC
        3405ACABE2AFFF00C3F157E3EC1F157EA5273926581525B10F6157856AF057C2
        16ACDBB31F7CAA579E18C95D40BE2E23DE3733E29B1F9A70A2258AF53BEE1EFA
        F12E7B159464C8A224381FE9E150C0931F90CCA070A5A7078C3DE3132986457B
        855EE157AA2AF5455EA8ABD5157AA2AF5455EA8ABD5157AA2AF5455EA8ABD515
        7AA2AF54548639A055E927102BD4E218FF0021EFA23FEE5CF603264C993264CB
        228C37088489B7AE433152E2E21A718881956505AD268EF1F52FEE0EF9F11E7B
        FA2C43E14AA419B0623DE311033ACA32EF02BD4BFB83BE7C479EC0BE6A57CD4A
        F9A95F35288E70C3248B58681A16B4D4B5A680B59C0B5A680B5A680B58680B58
        680B58680B5A680B5A680B58680B5A681A16B4D0342D69A0685AD340D0B5A681
        A16B8D0342D71A0685AE340D0B5A681A16B4D0342D69A0685AD340D0B5A681A1
        4BCE139A4D0A22D9A95F352BE6A51E3CAAF9A16B0D014B6CD4AF1A95F352BE6A
        D0AF157D5F578ABC5445AA60AF702BD5057B815FE057B815EE057F8140DA8839
        60BE014D40535015D142BB52715A715A715A715A6180C134BB9EA5FDC1DF3E23
        CF626207B77D669C288C18D18B65F14E5394E5394E5394E9D394E5394E5394E5
        394E5394E5403EE395EA5FDC1DF3E23CF62A207BB072E29B17C2A2378326DE30
        0FC181EA67DC1DF3E23CF60394E5395089AD39A4A729CD69CD2539A4A73494E6
        929CD25484FB22539A4A73494E6929CD2539A4A73494E6929CD2539A4A73494E
        6929CD2539A4A73494E6929CD2539A4A73494E6929CD2539A4A735A73494E692
        9CD2539A4A73494E6929CD2539A4A73494E7DB129CD2539A4A73494E6929CD29
        CA729CA729CA729CA729CA729CA729CA729CA729CA729CA729CAF523EBFDF1E2
        3CF61494E2E21D427DE912F8BCDBEBD48FAFF7C788F3DBCE5A77944BE373EF29
        29C3F523EBFDF1E23CF604A200FB28DE19B7844BEF08638DB364DA31E28B2265
        2D9364168E23D48FAFF7C788F3D806CF1CDB2658E44E5394E5394E5394E5394E
        5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394
        E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E5394E7DC
        9D016BF5DA7CC171F9B240325AB2608D936F8E498C42729CA729CA729CA72BD4
        9193BFFBE3C479EC0BD57C15EABE0AF55F057AAF82BD57C15EABE0AF55F057AA
        F82BD57C15EABE0AF55F057AAF82BD57C15EABE0AF55F057AAF82BD57C140DA7
        9186320B3EF4FCB120E440D91FA4F2865408B50B4C415C4B262498DA2313EA57
        D7FBE7C479EC0D48A56A452B52295A914AD48A56A452B52295A914AD48A56A45
        2B52295A914AD48A56A452B52295A914AD48A56A452B53656A42D48A56A6CAD4
        D95A9B2B53656A6CAD4D95A9B2A1679B160BC41DEF9F0C5968BA80B008139518
        46C5B11E2A02C8694938AF52BEBFDF3E23CF606B2D55A16B2D55A16B2D55A16B
        2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B
        2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B2D55A16B
        2D55A16B2D55A15FB5568527396AAD0B596AAD0B596AAD0B596AAD0B596AAD0A
        1C7B55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB5568
        5ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB5568
        5ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB55685ACB5568
        5ACB55685ACB55685ACB50CB2685ACB55685ACB55685036AD1E3491934231B76
        B336842D59E72D187B3428FF0076D08CB09342BF6801206D0B596AAD0B596AAD
        0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD0B596AAD
        0BD4DB025163F90F7D5904E6EF2E78603D9FFDBF15C9A172685C9A172685C9A1
        72685C9A172685C9A172685C9A172685C9A172685C9A172685C9A172685C9A17
        2685C9A147F4FB609ECD0B9342E4D09ECD1F15C9A172685C9A172685C9A17268
        5C9A172685C9A172685C9A172685C9A172685C9A172685C9A172685C9A172685
        C9A172685C9A172685C9A172685C9A172685C995A4F8A85BB7641C90F8A81366
        5BB6A1270A20F141F67C57244D20F8AE4D0B9342E4D0B9342E4D0B9342E4D0B9
        342E4D0B9342E4D0BD4CB65ED7F20EF9B46194F78F3C77D839660A45ECDF9002
        2720444605C2B11319CC26448110588566C9BD1E3289F6637D4AFAFF007CF88F
        3DBEC08B4C9F811DF9FA5F32E358278C24B40BE791445F0E32AFEDDA3026E913
        2209899F1DEA57D7FBE7C479EFEB1FA447D8AD59278969C13911B766D71BFF00
        5E751B25E592482FCF1FEA57D7FBE7C479EDFDF96FAB366CC8211F6A26D4A6C9
        90D0B8A2CF162F0C0FCF1BEA57D7FBE7C479EDEF26FF009584A46552002CE4CC
        8036636611080038A04C30B3633D4AFAFF007CF88F3DBDA4C5CB4EF3E358960E
        11B76844300AC9E2C0112819D0B529B2E0289C4442CF8AF52BEBFDF3E23CF6F5
        863728DE200F628131B53C194230B36A5198A36A3C6B4D640951044419B159D4
        B89F52BEBFDF3E23CF607E7BC3F3C7C42CF8F0724AB8D64C41962ACD88C4DE30
        FF0019F1D9B11EA57D7FBE7C479EC00B28C7426CBBC73A81C7C86148DE1F961F
        A95F5FEF9F11E7B0A459F179BFAA4B83EA57D7FBE7C479EC3CFF00D03F2FE81F
        9E07A95F5FEF9F11E7B139BFA367DF9EA57D7FBE7C479EC01229D4EA753A9D49
        46E3264EB329D4EA753A9D4EA753A9D4EA7C09D4EA753A9D4EA753A9D4EA74CB
        F353A9D4E9A54CA753A9D4FBB3A9D4EA753A9D4EA753A9D4EA753A9D4EA753A9
        D4E9B73D49FAFF007CF88F3D82E9D3A74E9D64F6A7F7C24518C7D8A51009D3A7
        4E9D3A74E9D3A7463BAE9D3A74E9D3A74E9D3A74E9D343DA9A3EC2A01674E9D3
        A7453EE3A74E9D3A74E9D3A74E9D3A74E9D3A74E9D44C9ED5EA57D7FBE7C479E
        C264C9936E0932AE04646907B13264C993264C993264C9B75B7193264C993264
        C993264C8C8994A37193264DBAC9B7593264C993264C993264C993264C993212
        457A95F7077CF88F3D8A852B2A6E14DFD7732F52FEE0EF9F11E7B0993265C384
        C993264C993264C993264C993264C993264C993264DBAC9B77F24C993264C993
        264C993264C993264C993264C993264CBF352265EA5FDC1DF3E23CF603264C99
        3264C993264DB8C993264C993264C993264C993264C993264C993264C993264C
        993264C993264C993264C993264C993264C993264C993264C9932F52FEE0EF9F
        11E7B026A54D4A9A952421398A9A95352A6A54D4A9A95352A6A54D4A9BD91534
        72454D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A5
        4D4A9A95352A6A54D198454B0A54D4A9A95352A6A54D4A9A95352A6A530232C5
        4D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A54D4A9A95352A6A54D4A
        9A95352A6A54D4A92109CC54D4A9A95352A6A57A9B64BD9FE43DF40FBBBCB9EC
        2CD8C817DE79E618C928526F3FCF0BD50FB8BBEFC4B9EC1CD8ECD977848B2ACF
        39DFF9B2E1FAA1F7177DF8973D819BDD2E2B4C1024C233489F813F027E04FC0A
        4B5EE91486A0B8B66D40B93250B59559D0B59559D0B59559D0B59559D0B59559
        D0B59559D0B59559D0B59559D0A4B64FBACE85FAED46D3969332BD5043F5C685
        188C83FC414232FB95FA82BD5057AA0AF4A732BFEF82BD52BD52BD52BD52BD52
        BD52BD5290C72040131339DE39B11EA87DC5DF7E25CF63A25B0E4BE58FF8994B
        29329267C48B644BC9078533CA11B508C240142D07C88931244408224CF294FB
        B12F89897C9BC73627D50FB8BBEFC4B9EC6C29524984496E146D196356652A95
        B2E1C4DD0F09CE45087B00950B328394A811ED2A23F5648CCA2536EC48902629
        8A651DC74E9D44B0619D3EF0CD9315EA87DC5DF7E25CF6320A184F084E57FA45
        D1F9E048D93078B4E619D7143597421213292AD03C9962B3B44A8061819A7500
        D3EE90A01664CB2414260E5406FBF543EE2EFBF12E7B1919CE19B0185E861443
        AC877042532421957FA8DF8284200480850238D6728500200B99D407BF0009CA
        03766DC86E800C62A14EF0E0C67AA1F7177DF8973D8B89F761C05E2D986559E7
        C4F1EDCF25913A301FAB215C60D3ACC5C059CB60E7321C095D403E044DE356F0
        97DD8DF543EE2EFBF12E7B159861C4CA580CE89B4E5F10232878665C72C20409
        A2A13D998A249CC0297DA724513919470227DD811994548A40A2D95718B4C378
        7B31DEA87DC5DF7E25CF62A187187E96128902BB58576B0AED615DAC2BB58574
        5215D1484CEC22142D8005A9220C501C960A22D7B02043990852ACD930333AFD
        3BB184AB32804C997FA44CB363E18FF543EE2EFBF12E7B139CB9C3225C910245
        CAA172A85CAA172A85CAA172A853D0A001A159803688C8254D18CE8D978314E8
        162A01B2E0410130DD0A18100A01863736F2F543EE2EFBF12E7B1119CB61F12C
        DE37889826C39013056E485A9BD881E517CDED46072A82B2A1397510F9167C9B
        BC270225F07FD45CEF3CD971BEA87DC5DF7E25CF61C4B09F2E1BD2AF702BDC0A
        F702BDC0AF702BC2A57B8165E042C83002599120CA18A7847DCA44E892E5673B
        990E5502EA27DD8119B078C5E6FE83EA87DC5DF7E25CF61429425801844960B8
        D6A8C8371AA4D526A935488B424B53C2A42C9110FED0ADE41201EF405B120941
        CA14210166580A944EE44991669B02244814B28CB888961FD0BD50FB8BBEFC4B
        9EC186550A4E18E333C2298D2531A4A63494C69298D2531A4A89B318C8012540
        D9842510251FD0EE25752084180FF0EA561221B900C1F024F794042033EE4436
        4522860001A7391406F981C4FAA1F7177DF8973D819B2A8CE70F8B61C5E2AFD4
        AF1A95E352BC6A578D4AF1A95E352E2DAB7C522506447F5F1ED1900004E871CF
        1AD3C7F2500FBB00FC1819CA8527022C540C8774012C54279CFF0043F543EE2E
        FBF12E7B038C42886C8A4C13C572CAF034ABC2B57856AF0AD5E15ABC2B57856A
        22D0AD5E15AE35A2090D059F7419E618312FC18113B92A816CBB91378EFD9164
        C2F543EE2EFBF12E7B0A2242A0643BA6D1F70CEAE1A55CAD5CAD5CAD5CAD5CAD
        5DFF00895C30F6AB869448B3002494CEA2819B70C583295E6C0896189E338174
        6FFF00CD4B83EA87DC5DF7E25CF61CAA05B2EE4788602402069574D6AE9A0E95
        74D074ABA683A55D341D2AE9F7C5478861EC2AEDAAF4A8104672182003090291
        84FBB09860669D4BBB050C0CC2F1500A224389CF9167CBBEBD50FB8BBEFC4B9E
        C4DF1908C8AF857C2BE15F0AF857C289B608982BE1002D024B01B901BBC5133E
        0003D880CB812E040280A7025A77FC8BF2DCF543EE2EFBF12E7B11C5B378CF90
        6E443E04AA27DC3778D6AF160660B3E032FF0035FE6A0044A96CCA55DA95C575
        44D90322BA15D0AE857429043D985946FF00C9B9EA87DC5DF7E25CF61C4CA587
        B51265267DD90473ACF914A20A27DDBBC7224174652A25470A5A571AD0979230
        3364C6C92FB164390EFED0BD50FB8BBEFC4B9EC38F1601808891356135615DAC
        23256137BA210FD3ED64D584D585FAA41398CA800C0420B365C2072A89BB6702
        0A18DE159346FF00F543EE2EFBF12E7B1500C1CA787B13A94C7DB8107C3007BC
        A80DE1F96E326DFB22C8BD50FB8BBEFC4B9EC4C034E54376054B28CBB99F0C00
        224ACA673811A3199E61839F7F7AA1F7177DF8973D81E5CDB3A85E5CDB3A85E5
        CDB3A85E5CDB3A85E5DF6FFCDF50BCB9B6750BCB9B6750BCB9B6750BCB9B6750
        BCB9B6750BCB9B6750A4FE3B0193FDDF52BCBBB5F52BCBDB5F52BCBBB5F52BCB
        BB5F52BCBBB5F52BCBBB5F52BCBBB5F52A3FFE72266FF9CEA1796F6CEA1796F6
        CEA1796F6CEA1796E4FF00ACEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA17
        96F6CEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA1796F6CEA179
        6F6CEA1796E5CBFEF3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A
        85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A8
        5E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85
        E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E
        5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5BDB3A85E5
        ADB3A85FCFFBC7FB5FD9FF007FDF7DEBDB7FB3C6E3713FBBDBF9DE738B1808C2
        2F0FC17FCBBEA9DBFF0077CE7E0BFE5DF54EDFFBBE73F05FF2EFAA76FF00DDF3
        9F82FF00977D53B7FEEF9CFC17FCBBEA9DBFF77CE607FFD9}
      Frame.Typ = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 124.724490000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 11.338590000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 383.172350950000000000
          Top = 5.399328570000000000
          Width = 218.672807140000000000
          Height = 39.595076190000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."empresa"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 384.432194290000000000
          Top = 26.456710000000000000
          Width = 53.273375240000000000
          Height = 28.796419050000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Cnpj:')
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 426.726934760000000000
          Top = 27.716553330000000000
          Width = 192.576052380000000000
          Height = 25.196866670000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."cnpj"]')
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 384.432194290000000000
          Top = 44.814427140000000000
          Width = 42.654695710000000000
          Height = 28.796419050000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Fone: ')
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 427.266867620000000000
          Top = 45.354360000000000000
          Width = 159.820125710000000000
          Height = 25.196866670000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."telefone"]')
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 386.051992860000000000
          Top = 12.778410950000000000
          Width = 204.994508100000000000
          Height = 28.436463810000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '....................................................')
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 154.960730000000000000
          Height = 105.826840000000000000
          DataField = 'logotipo'
          DataSet = rel_DS_empresa
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 359.055350000000000000
        Width = 718.110700000000000000
        DataSet = DSdetalhes_pro_Ordem
        DataSetName = 'DS_Det_pro_Os'
        RowCount = 0
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 41.574830000000000000
          Top = 26.456710000000000000
          Width = 616.063390000000000000
          Color = clBlack
          Frame.Color = 15790320
          Frame.Style = fsDot
          Frame.Typ = []
          Diagonal = True
        end
        object DSVendasvalor: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 41.574830000000000000
          Top = 3.779530000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'item_descricao'
          DataSet = DSdetalhes_pro_Ordem
          DataSetName = 'DS_Det_pro_Os'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DS_Det_pro_Os."item_descricao"]')
          ParentFont = False
        end
        object DSVendasfuncionario: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 204.094620000000000000
          Top = 3.779530000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'valor'
          DataSet = DSdetalhes_pro_Ordem
          DataSetName = 'DS_Det_pro_Os'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DS_Det_pro_Os."valor"]')
          ParentFont = False
        end
        object DSVendasdata: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 396.850650000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'quantidade'
          DataSet = DSdetalhes_pro_Ordem
          DataSetName = 'DS_Det_pro_Os'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DS_Det_pro_Os."quantidade"]')
          ParentFont = False
        end
        object DSVendashora: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 517.795610000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = DSdetalhes_pro_Ordem
          DataSetName = 'DS_Det_pro_Os'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DS_Det_pro_Os."total"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 850.394250000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."endereco"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'P'#193'GINA : [Page]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 90.708720000000000000
        Top = 411.968770000000000000
        Width = 718.110700000000000000
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Top = 7.559060000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de Produtos: ')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 7.559060000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataSet = DSdetalhes_pro_Ordem
          DataSetName = 'DS_Det_pro_Os'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<DS_Det_pro_Os."total">,MasterData1)]')
          ParentFont = False
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 30.236240000000000000
          Top = 64.252010000000000000
          Width = 616.063390000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 4.000000000000000000
          Diagonal = True
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 30.236240000000000000
          Top = 41.574830000000000000
          Width = 616.063390000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 4.000000000000000000
          Diagonal = True
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 30.236240000000000000
          Top = 45.354360000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Servi'#231'os Executados ')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
          Top = 71.811070000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Servi'#231'o')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Unit.')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 71.811070000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 71.811070000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 525.354670000000000000
        Width = 718.110700000000000000
        DataSet = DSdetalhes_serv_ordem
        DataSetName = 'DS_Det_servOS'
        RowCount = 0
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 34.015770000000000000
          Width = 616.063390000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = []
          Diagonal = True
        end
        object Memo30: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 11.338590000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'item_descricao'
          DataSet = DSdetalhes_serv_ordem
          DataSetName = 'DS_Det_servOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DS_Det_servOS."item_descricao"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 11.338590000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'valor'
          DataSet = DSdetalhes_serv_ordem
          DataSetName = 'DS_Det_servOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DS_Det_servOS."valor"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 11.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'quantidade'
          DataSet = DSdetalhes_serv_ordem
          DataSetName = 'DS_Det_servOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DS_Det_servOS."quantidade"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 11.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = DSdetalhes_serv_ordem
          DataSetName = 'DS_Det_servOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DS_Det_servOS."total"]')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 132.283550000000000000
        Top = 204.094620000000000000
        Width = 718.110700000000000000
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Top = 11.338590000000000000
          Width = 684.094930000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDEM DE SERVI'#199'O N'#176' - [DSOs."id"]'
            ' ')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 49.133890000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data de Cadastro:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 49.133890000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSOs."data"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 49.133890000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente: ')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 49.133890000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSOs."cliente"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 30.236240000000000000
          Top = 86.929190000000000000
          Width = 616.063390000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 4.000000000000000000
          Diagonal = True
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 30.236240000000000000
          Top = 45.354360000000000000
          Width = 616.063390000000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          Diagonal = True
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 30.236240000000000000
          Top = 113.385900000000000000
          Width = 616.063390000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 4.000000000000000000
          Diagonal = True
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 30.236240000000000000
          Top = 94.488250000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Produtos, pe'#231'as e materiais utilizados ')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
          Top = 117.165430000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 117.165430000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Unit.')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 117.165430000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 117.165430000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 234.330860000000000000
          Top = 68.031540000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total:       R$')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 309.921460000000000000
          Top = 68.031540000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSOs."valor"]')
          ParentFont = False
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 200.315090000000000000
        Top = 589.606680000000000000
        Width = 718.110700000000000000
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 3.779530000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de Servi'#231'os: ')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 7.559060000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<DS_Det_servOS."total">,MasterData3)]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 41.574830000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Observa'#231#245'es: ')
          ParentFont = False
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 30.236240000000000000
          Width = 616.063390000000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          Diagonal = True
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 56.692950000000000000
          Width = 661.417750000000000000
          Height = 109.606370000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSOs."observacoes"]')
          ParentFont = False
        end
      end
    end
  end
end
