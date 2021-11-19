program SistemaClickVendas;

uses
  Vcl.Forms,
  Login in 'Login.pas' {FrmLogin},
  Menu in 'Menu.pas' {FrmMenu},
  Usuarios in 'Cadastros\Usuarios.pas' {FrmUsuarios},
  Funcionarios in 'Cadastros\Funcionarios.pas' {FrmFuncionarios},
  Cargos in 'Cadastros\Cargos.pas' {FrmCargos},
  Modulo in 'Modulo.pas' {dm: TDataModule},
  Fornecedores in 'Cadastros\Fornecedores.pas' {FrmFornecedores},
  Produtos in 'Cadastros\Produtos.pas' {FrmProdutos},
  ImprimirBarras in 'Cadastros\ImprimirBarras.pas' {FrmImprimirBarras},
  EntradasProdutos in 'Estoque\EntradasProdutos.pas' {FrmEntradaProdutos},
  SaidasProdutos in 'Estoque\SaidasProdutos.pas' {FrmSaidaProdutos},
  EstoqueBaixo in 'Estoque\EstoqueBaixo.pas' {FrmEstoqueBaixo},
  Vendas in 'Movimentações\Vendas.pas' {FrmVendas},
  CancelarItem in 'Movimentações\CancelarItem.pas' {FrmCancelarItem},
  Movimentacoes in 'Movimentações\Movimentacoes.pas' {FrmMovimentacoes},
  Gastos in 'Movimentações\Gastos.pas' {FrmGastos},
  ListaVendas in 'Movimentações\ListaVendas.pas' {FrmListaVendas},
  CertificadoDigital in 'Movimentações\CertificadoDigital.pas' {FrmCertificado},
  Caixa in 'Movimentações\Caixa.pas' {FrmCaixa},
  FluxoCaixa in 'Movimentações\FluxoCaixa.pas' {FrmFluxoCaixa},
  RelatoriosPorDatas in 'Relatorios\RelatoriosPorDatas.pas' {FrmRelDatas},
  Empresa in 'Cadastros\Empresa.pas' {FrmEmpresa},
  ExcluirDados in 'Ferramentas\ExcluirDados.pas' {FrmExcluirDados},
  FinalizarVenda in 'Movimentações\FinalizarVenda.pas' {FrmFinalizarVenda},
  Ativacao in 'Ativacao.pas' {FrmAtivacao},
  Clientes in 'Cadastros\Clientes.pas' {FrmClientes},
  configurarbase in 'configurarbase.pas' {Frmconfigbd},
  EntradasNota in 'Estoque\EntradasNota.pas' {FrmEntradaNotas},
  compras in 'Relatorios\compras.pas' {FrmConsultarNotasCompras},
  ConsultarCompras in 'Estoque\ConsultarCompras.pas' {FrmConsultaCompras},
  DetalhamentoEntrada in 'DetalhamentoEntrada.pas' {FrmDetalhesNota},
  rankingProdutos in 'Relatorios\rankingProdutos.pas' {FrmRnkingProdutos},
  rankingVendedores in 'Relatorios\rankingVendedores.pas' {FrmConsultarVendedores},
  totalfechamento in 'Movimentações\totalfechamento.pas' {totalizarcaixa},
  Diversos in 'Movimentações\Diversos.pas' {FrmDiversos},
  Configuracoes in 'Ferramentas\Configuracoes.pas' {FrmConfig},
  ContasaReceber in 'Movimentações\ContasaReceber.pas' {FrmContasReceber},
  ContasPagar in 'Movimentações\ContasPagar.pas' {FrmContasapagar},
  OrdemServico in 'Movimentações\OrdemServico.pas' {FrmOrdemServico},
  CadastroServicos in 'Cadastros\CadastroServicos.pas' {FrmCadastroServicos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TFrmFornecedores, FrmFornecedores);
  Application.CreateForm(TFrmProdutos, FrmProdutos);
  Application.CreateForm(TFrmImprimirBarras, FrmImprimirBarras);
  Application.CreateForm(TFrmEntradaProdutos, FrmEntradaProdutos);
  Application.CreateForm(TFrmSaidaProdutos, FrmSaidaProdutos);
  Application.CreateForm(TFrmEstoqueBaixo, FrmEstoqueBaixo);
  Application.CreateForm(TFrmVendas, FrmVendas);
  Application.CreateForm(TFrmCancelarItem, FrmCancelarItem);
  Application.CreateForm(TFrmMovimentacoes, FrmMovimentacoes);
  Application.CreateForm(TFrmGastos, FrmGastos);
  Application.CreateForm(TFrmListaVendas, FrmListaVendas);
  Application.CreateForm(TFrmCertificado, FrmCertificado);
  Application.CreateForm(TFrmCaixa, FrmCaixa);
  Application.CreateForm(TFrmFluxoCaixa, FrmFluxoCaixa);
  Application.CreateForm(TFrmRelDatas, FrmRelDatas);
  Application.CreateForm(TFrmEmpresa, FrmEmpresa);
  Application.CreateForm(TFrmExcluirDados, FrmExcluirDados);
  Application.CreateForm(TFrmAtivacao, FrmAtivacao);
  Application.CreateForm(TFrmClientes, FrmClientes);
  Application.CreateForm(TFrmconfigbd, Frmconfigbd);
  Application.CreateForm(TFrmEntradaNotas, FrmEntradaNotas);
  Application.CreateForm(TFrmConsultarNotasCompras, FrmConsultarNotasCompras);
  Application.CreateForm(TFrmConsultaCompras, FrmConsultaCompras);
  Application.CreateForm(TFrmDetalhesNota, FrmDetalhesNota);
  Application.CreateForm(TFrmRnkingProdutos, FrmRnkingProdutos);
  Application.CreateForm(TFrmConsultarVendedores, FrmConsultarVendedores);
  Application.CreateForm(Ttotalizarcaixa, totalizarcaixa);
  Application.CreateForm(TFrmDiversos, FrmDiversos);
  Application.CreateForm(TFrmConfig, FrmConfig);
  Application.CreateForm(TFrmContasReceber, FrmContasReceber);
  Application.CreateForm(TFrmContasapagar, FrmContasapagar);
  Application.CreateForm(TFrmOrdemServico, FrmOrdemServico);
  Application.CreateForm(TFrmCadastroServicos, FrmCadastroServicos);
  Application.Run;
end.
