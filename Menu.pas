unit Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, ACBrUtil, Data.DB,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.ExtDlgs, Vcl.Buttons;

type
  TFrmMenu = class(TForm)
    MainMenu1: TMainMenu;
    Ca1: TMenuItem;
    Produtos1: TMenuItem;
    Fornecedores1: TMenuItem;
    Estoque1: TMenuItem;
    Movimentaes1: TMenuItem;
    Relatrios1: TMenuItem;
    Sair1: TMenuItem;
    Usurios1: TMenuItem;
    Funcionrios1: TMenuItem;
    Cargos1: TMenuItem;
    Sair2: TMenuItem;
    EntradasdeProdutos1: TMenuItem;
    SadasdeProdutos1: TMenuItem;
    Nvel1: TMenuItem;
    Vendas1: TMenuItem;
    Movimentaes2: TMenuItem;
    Gastos1: TMenuItem;
    Pagamentos1: TMenuItem;
    ConsultarVendas1: TMenuItem;
    CertificadoDigital1: TMenuItem;
    FluxodeCaixa1: TMenuItem;
    FluxodeCaixa2: TMenuItem;
    Movimentaes3: TMenuItem;
    Produtos2: TMenuItem;
    Empresa1: TMenuItem;
    Ferramentas1: TMenuItem;
    BackupdeDados1: TMenuItem;
    ExcluirDadosdeVendas1: TMenuItem;
    ExcluirDadosdoCaixa1: TMenuItem;
    Label11: TLabel;
    Image10: TImage;
    Label14: TLabel;
    Label15: TLabel;
    Image5: TImage;
    gridCaixa: TDBGrid;
    gridVendas: TDBGrid;
    Panel1: TPanel;
    lblHora: TLabel;
    Label1: TLabel;
    lblData: TLabel;
    Image1: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image2: TImage;
    lblCargo: TLabel;
    lblUsuario: TLabel;
    Label5: TLabel;
    Image3: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lblEntradas: TLabel;
    lblSaidas: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    lblEstoque: TLabel;
    Image4: TImage;
    Label13: TLabel;
    lblCaixaAberto: TLabel;
    lblSaldo: TLabel;
    pnlEstoque: TPanel;
    Timer1: TTimer;
    Timer2: TTimer;
    Vendas2: TMenuItem;
    ExcluirDadosdeMovimentaes1: TMenuItem;
    RestaurarBackup1: TMenuItem;
    Clientes1: TMenuItem;
    ConfigurarBD1: TMenuItem;
    EntradadeNotas1: TMenuItem;
    ConsultarEntrada1: TMenuItem;
    rankingProdutos: TMenuItem;
    RankingVendedores1: TMenuItem;
    Ajuda1: TMenuItem;
    utoriais1: TMenuItem;
    Config: TMenuItem;
    contasreceber: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    OrdemdeServio1: TMenuItem;
    ServioseTaxas1: TMenuItem;
    procedure Usurios1Click(Sender: TObject);
    procedure Funcionrios1Click(Sender: TObject);
    procedure Cargos1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Sair2Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure EntradasdeProdutos1Click(Sender: TObject);
    procedure SadasdeProdutos1Click(Sender: TObject);
    procedure Nvel1Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure Movimentaes2Click(Sender: TObject);
    procedure Gastos1Click(Sender: TObject);
    procedure ConsultarVendas1Click(Sender: TObject);
    procedure Pagamentos1Click(Sender: TObject);
    procedure CertificadoDigital1Click(Sender: TObject);
    procedure FluxodeCaixa1Click(Sender: TObject);
    procedure FluxodeCaixa2Click(Sender: TObject);
    procedure Movimentaes3Click(Sender: TObject);
    procedure Produtos2Click(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure lblEstoqueClick(Sender: TObject);
    procedure pnlEstoqueClick(Sender: TObject);
    procedure Vendas2Click(Sender: TObject);
    procedure ExcluirDadosdeVendas1Click(Sender: TObject);
    procedure ExcluirDadosdoCaixa1Click(Sender: TObject);
    procedure ExcluirDadosdeMovimentaes1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure BackupdeDados1Click(Sender: TObject);
    procedure RestaurarBackup1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure ConfigurarBD1Click(Sender: TObject);
    procedure EntradadeNotas1Click(Sender: TObject);
    procedure ConsultarEntrada1Click(Sender: TObject);
    procedure rankingProdutosClick(Sender: TObject);
    procedure RankingVendedores1Click(Sender: TObject);
    procedure utoriais1Click(Sender: TObject);
    procedure ConfigClick(Sender: TObject);
    procedure contasreceberClick(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure OrdemdeServio1Click(Sender: TObject);
    procedure ServioseTaxas1Click(Sender: TObject);


  private
    { Private declarations }
     procedure totalizarEntradas;
      procedure totalizarSaidas;
       procedure totalizar;
        procedure totalizarCaixas;
        procedure verificarEstoque;
        procedure listarVendas;
        procedure listarCaixas;

  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;
  TotEntradas, TotSaidas : Double;
  TotCaixas : integer;
  backupDados : Boolean;


implementation

{$R *.dfm}

uses Usuarios, Funcionarios, Cargos, Modulo, Fornecedores, Produtos,
  EntradasProdutos, SaidasProdutos, EstoqueBaixo, Vendas, Movimentacoes, Gastos,
  ListaVendas, CertificadoDigital, FluxoCaixa, RelatoriosPorDatas, Empresa,
  ExcluirDados, ShellApi, Clientes, configurarbase, EntradasNota,
  ConsultarCompras, rankingProdutos, rankingVendedores, Caixa, Configuracoes,
  ContasaReceber, ContasPagar, OrdemServico, CadastroServicos;



//FUN��O CONVERTER RGB
function ConverterRGB(r, g, b : Byte) : TColor;
begin
  Result := RGB(r, g, b);
end;


procedure TFrmMenu.BackupdeDados1Click(Sender: TObject);
var
caminhoBD, caminhoDUMP, nome : string;

begin
    nome :=  FormatDateTime('dd-mm-yyyy', now);
    caminhoBD := GetCurrentDir + '\BD\';
    caminhoBD := caminhoBD + nome +'.sql';
    caminhoDUMP := GetCurrentDir + '\BD\mysqldump.exe';

    ShellExecute(handle,'open', 'cmd.exe',Pchar('/c ' + caminhoDUMP + ' pdv -u root -hlocalhost -p --opt -v>' + caminhoBD),nil, SW_SHOW );
    backupDados := true;


end;

procedure TFrmMenu.Cargos1Click(Sender: TObject);
begin
FrmCargos := TFrmCargos.Create(self);
FrmCargos.ShowModal;
end;

procedure TFrmMenu.CertificadoDigital1Click(Sender: TObject);
var
addLinha: boolean;
i: integer;
serie: string;

caminhoNFCE: string;
begin

FrmCertificado := TFrmCertificado.Create(self);

try

  //APONTANDO PARA A PASTA ONDE ESTAO OS COMPONENTES NFCE
  caminhoNFCE := ExtractFilePath(Application.ExeName) + 'nfe\';
  FrmVendas.nfce.Configuracoes.Arquivos.PathSchemas := caminhoNFCE;

  FrmVendas.nfce.SSL.LerCertificadosStore;


  addLinha := true;

  with FrmCertificado.StringGrid1 do
  begin
     ColWidths[0] := 220;
     ColWidths[1] := 250;
     ColWidths[2] := 120;
     ColWidths[3] := 80;
     ColWidths[4] := 150;

     Cells[0,0] := 'Num S�rie';
     Cells[1,0] := 'Raz�o Social';
     Cells[2,0] := 'CNPJ';
     Cells[3,0] := 'Validade';
     Cells[4,0] := 'Certificadora';

  end;

  for i := 0 to FrmVendas.nfce.SSL.ListaCertificados.Count -1 do
  begin

  with FrmVendas.nfce.SSL.ListaCertificados[i] do
  begin
  serie := NumeroSerie;


  with FrmCertificado.StringGrid1 do
  begin

  if addLinha then
  begin

     RowCount := RowCount + 1;


     Cells[0, RowCount - 1] := NumeroSerie;
     Cells[1, RowCount - 1] := RazaoSocial;
     Cells[2, RowCount - 1] := CNPJ;
     Cells[3, RowCount - 1] := FormatDateBr(DataVenc);
     Cells[4, RowCount - 1] := Certificadora;
     addLinha := true;

  end;




  end;


  end;
end;

FrmCertificado.ShowModal;
if FrmCertificado.ModalResult = mrOk then
begin
  certificadoDig := FrmCertificado.StringGrid1.Cells[0, FrmCertificado.StringGrid1.Row];

end;

 FrmVendas.nfce.Configuracoes.Certificados.NumeroSerie := certificadoDig;

  FrmVendas.nfce.WebServices.StatusServico.Executar;
  ShowMessage(certificadoDig);
  ShowMessage(FrmVendas.nfce.WebServices.StatusServico.Msg);




finally
FrmCertificado.Free;
end;

end;

procedure TFrmMenu.Clientes1Click(Sender: TObject);
begin
FrmClientes := TFrmClientes.Create(self);
FrmClientes.Show;

end;

procedure TFrmMenu.ConfigClick(Sender: TObject);
begin

//ShellExecute(handle, 'open', PChar('C:\WINDOWS\system32\cmd.exe'), '', '', SW_SHOWNORMAL);
 FrmConfig := TFrmconfig.Create(self);
 Frmconfig.ShowModal;
end;

procedure TFrmMenu.ConfigurarBD1Click(Sender: TObject);
begin

Frmconfigbd := TFrmconfigbd.Create(self);
Frmconfigbd.ShowModal;
end;

procedure TFrmMenu.ConsultarEntrada1Click(Sender: TObject);
begin
    FrmConsultaCompras := TFrmConsultaCompras.Create(self);
    FrmConsultaCompras.ShowModal;
end;

procedure TFrmMenu.ConsultarVendas1Click(Sender: TObject);
begin
FrmListaVendas := TFrmListaVendas.Create(self);
FrmListaVendas.ShowModal;
end;



procedure TFrmMenu.contasreceberClick(Sender: TObject);
begin
   FrmContasReceber := TFrmContasReceber.Create(self);
   FrmContasReceber.Show;
end;

procedure TFrmMenu.Empresa1Click(Sender: TObject);
begin
  FrmEmpresa := TFrmEmpresa.Create(self);
  FrmEmpresa.ShowModal;

end;

procedure TFrmMenu.EntradadeNotas1Click(Sender: TObject);
begin
   FrmEntradaNotas := TFrmEntradaNotas.Create(self);
   FrmEntradaNotas.ShowModal;
end;

procedure TFrmMenu.EntradasdeProdutos1Click(Sender: TObject);
begin
FrmEntradaProdutos := TFrmEntradaProdutos.Create(self);
FrmEntradaProdutos.ShowModal;
end;

procedure TFrmMenu.ExcluirDadosdeMovimentaes1Click(Sender: TObject);
begin
if backupDados = true then
  begin
  excluir := 'Movimentacoes';
  FrmExcluirDados := TFrmExcluirDados.Create(self);
  FrmExcluirDados.ShowModal;
  end
  else
  begin
  MessageDlg('� necess�rio realizar o backup dos dados antes!', mtInformation, mbOKCancel, 0);
  end;

end;

procedure TFrmMenu.ExcluirDadosdeVendas1Click(Sender: TObject);
begin
  if backupDados = true then
  begin
  excluir := 'Vendas';
  FrmExcluirDados := TFrmExcluirDados.Create(self);
  FrmExcluirDados.ShowModal;
  end
  else
  begin
    MessageDlg('� necess�rio realizar o backup dos dados antes!', mtInformation, mbOKCancel, 0);

  end;



end;

procedure TFrmMenu.ExcluirDadosdoCaixa1Click(Sender: TObject);
begin
  if backupDados = true then
  begin
  excluir := 'Caixa';
  FrmExcluirDados := TFrmExcluirDados.Create(self);
  FrmExcluirDados.ShowModal;
  end
  else
  begin
    MessageDlg('� necess�rio realizar o backup dos dados antes!', mtInformation, mbOKCancel, 0);

  end;
end;

procedure TFrmMenu.FluxodeCaixa1Click(Sender: TObject);
begin
FrmFluxoCaixa := TFrmFluxoCaixa.Create(self);
FrmFluxoCaixa.ShowModal;
end;

procedure TFrmMenu.FluxodeCaixa2Click(Sender: TObject);
begin
rel := 'Caixa';
FrmRelDatas := TFrmRelDatas.Create(self);
FrmRelDatas.ShowModal;
end;

procedure TFrmMenu.FormActivate(Sender: TObject);
begin
  totalizarEntradas;
  totalizarSaidas;
  totalizar;
  totalizarCaixas;
  verificarEstoque;
  listarVendas;
  listarCaixas;



end;

procedure TFrmMenu.FormShow(Sender: TObject);
begin
if (cargoUsuario = 'admin') or (cargoUsuario = 'Gerente') then
begin
      Usurios1.Enabled := true;
end;

if (cargoUsuario = 'master') then
begin
      Usurios1.Enabled := true;
      RestaurarBackup1.Enabled := true;
      RestaurarBackup1.Visible := true;
      ExcluirDadosdeVendas1.Enabled := true;
      ExcluirDadosdoCaixa1.Enabled := true;
      ExcluirDadosdeMovimentaes1.Enabled := true;
end;

if cargoUsuario = 'vendedor' then
begin
     Fornecedores1.Enabled := false;
     Funcionrios1.Enabled := false;
     Cargos1.Enabled := false;
     Empresa1.Enabled := false;
     Estoque1.Enabled := false;
     Funcionrios1.Enabled := false;
     Movimentaes1.Enabled := false;
     Relatrios1.Enabled := false;
     Ferramentas1.Enabled := false;
end;

if cargoUsuario = 'admin' then
begin
     //ExcluirDadosdeVendas1.Enabled := true;
     // ExcluirDadosdoCaixa1.Enabled := true;
     // ExcluirDadosdeMovimentaes1.Enabled := true;
end;

//MOSTRAR DADOS NA TELA INICIAL
lblUsuario.Caption := nomeUsuario;
lblCargo.Caption := cargoUsuario;
lblHora.Caption := TimeToStr(Time);
lblData.Caption := DateToStr(Date);
//LISTAR NO GRIDS
    listarCaixas;
    listarVendas;

end;

procedure TFrmMenu.Fornecedores1Click(Sender: TObject);
begin
FrmFornecedores := TFrmFornecedores.Create(self);
FrmFornecedores.ShowModal;
end;

procedure TFrmMenu.Funcionrios1Click(Sender: TObject);
begin
FrmFuncionarios := TFrmFuncionarios.Create(self);
FrmFuncionarios.ShowModal;
end;

procedure TFrmMenu.Gastos1Click(Sender: TObject);
begin
FrmGastos := TFrmGastos.Create(self);
FrmGastos.Show;
end;

procedure TFrmMenu.Label10Click(Sender: TObject);
begin
FrmProdutos := TFrmProdutos.Create(self);
FrmProdutos.ShowModal;
end;

procedure TFrmMenu.lblEstoqueClick(Sender: TObject);
begin
  FrmEstoqueBaixo := TFrmEstoqueBaixo.Create(self);
  FrmEstoqueBaixo.Show;
end;

procedure TFrmMenu.listarCaixas;
begin
  dm.query_caixa_Coringa.Close;
  dm.query_caixa_Coringa.SQL.Clear;
  dm.query_caixa_Coringa.SQL.Add('select * from caixa where data_abertura = curDate() order by num_caixa asc limit 10');
  dm.query_caixa_Coringa.Open;


end;

procedure TFrmMenu.listarVendas;
begin
  dm.query_vendas.Close;
  dm.query_vendas.SQL.Clear;
  dm.query_vendas.SQL.Add('select * from vendas where data = curDate() order by id desc limit 10');
  dm.query_vendas.Open;




end;

procedure TFrmMenu.Movimentaes2Click(Sender: TObject);
begin
FrmMovimentacoes := TFrmMovimentacoes.Create(self);
FrmMovimentacoes.ShowModal;
end;

procedure TFrmMenu.Movimentaes3Click(Sender: TObject);
begin
rel := 'Movimentacoes';
FrmRelDatas := TFrmRelDatas.Create(self);
FrmRelDatas.ShowModal;
end;

procedure TFrmMenu.Nvel1Click(Sender: TObject);
begin
FrmEstoqueBaixo := TFrmEstoqueBaixo.Create(self);
FrmEstoqueBaixo.Show;
end;

procedure TFrmMenu.OrdemdeServio1Click(Sender: TObject);
begin
    FrmOrdemServico := TFrmOrdemServico.Create(self);
    FrmOrdemServico.ShowModal;
end;

procedure TFrmMenu.Pagamentos1Click(Sender: TObject);
begin
  FrmContasapagar := TFrmContasapagar.Create(self);
  FrmContasapagar.ShowModal;
end;

procedure TFrmMenu.pnlEstoqueClick(Sender: TObject);
begin
  FrmEstoqueBaixo := TFrmEstoqueBaixo.Create(self);
  FrmEstoqueBaixo.Show;
end;

procedure TFrmMenu.Produtos1Click(Sender: TObject);
begin
FrmProdutos := TFrmProdutos.Create(self);
FrmProdutos.ShowModal;
end;

procedure TFrmMenu.Produtos2Click(Sender: TObject);
begin

       dm.query_produtos.Close;
       dm.query_produtos.SQL.Clear;
       dm.query_produtos.SQL.Add('SELECT * from produtos order by nome asc');
       dm.query_produtos.Open;


 dm.rel_produtos.LoadFromFile(GetCurrentDir + '\rel\produtos.fr3');
 dm.rel_produtos.ShowReport();
end;

procedure TFrmMenu.RankingVendedores1Click(Sender: TObject);
begin
     FrmConsultarVendedores := TFrmConsultarVendedores.Create(self);
    FrmConsultarVendedores.ShowModal;
end;

procedure TFrmMenu.rankingProdutosClick(Sender: TObject);
begin
    FrmRnkingProdutos := TFrmRnkingProdutos.Create(self);
    FrmRnkingProdutos.ShowModal;


end;

procedure TFrmMenu.RestaurarBackup1Click(Sender: TObject);
var
caminhoBD, caminhoIMPORT, nome : string;

begin
  { nome :=  FormatDateTime('dd-mm-yyyy', now);
    caminhoBD := GetCurrentDir + '\BD\';
    caminhoBD := caminhoBD + nome +'.sql';
    caminhoIMPORT := GetCurrentDir + '\BD\mysqlimport.exe';

    ShellExecute(handle,'open', 'cmd.exe',Pchar('/c  mysqlimport -u root -p --hlocalhost pdv >' + caminhoBD),nil, SW_SHOW );
    backupDados := true; }

              // mysqlimport -u root -p --local database_name dump.txt


      ShellExecute(GetDesktopWindow,'open','http://localhost/phpmyadmin/index.php?route=/database/import&db=pdv',nil,nil,SW_NORMAL);
end;



procedure TFrmMenu.SadasdeProdutos1Click(Sender: TObject);
begin
FrmSaidaProdutos := TFrmSaidaProdutos.Create(self);
FrmSaidaProdutos.ShowModal;
end;

procedure TFrmMenu.Sair2Click(Sender: TObject);
begin
close;
end;

procedure TFrmMenu.ServioseTaxas1Click(Sender: TObject);
begin
 FrmCadastroServicos := TFrmCadastroServicos.Create(self);
FrmCadastroServicos.ShowModal;
end;

procedure TFrmMenu.Timer1Timer(Sender: TObject);
begin
  lblHora.Caption := TimeToStr(Time);
end;

procedure TFrmMenu.Timer2Timer(Sender: TObject);
begin

  totalizarEntradas;
  totalizarSaidas;
  totalizar;
  totalizarCaixas;
  verificarEstoque;
  listarVendas;
  listarCaixas;

end;

procedure TFrmMenu.totalizar;


  var
tot: real;
begin
tot := TotEntradas - TotSaidas;
if tot >= 0 then
begin
  lblSaldo.Font.Color := clGreen;
  end
  else
  begin
  lblSaldo.Font.Color := ConverterRGB(232, 0, 0);
end;

lblSaldo.Caption := FormatFloat('R$ #,,,,0.00', tot);




end;

procedure TFrmMenu.totalizarCaixas;
begin


       dm.query_caixa.Close;
       dm.query_caixa.SQL.Clear;
       dm.query_caixa.SQL.Add('SELECT * from caixa where data_abertura = curDate() and status = "Aberto"');
       //dm.query_caixa.ParamByName('data').Value := FormatDateTime('yyyy/mm/dd' ,dataBuscar.Date);
       dm.query_caixa.Open;
       TotCaixas := dm.query_caixa.RecordCount;
       lblCaixaAberto.Caption := intTOstr(TotCaixas);



end;

procedure TFrmMenu.totalizarEntradas;

var
tot: real;
begin
dm.query_mov.Close;
dm.query_mov.SQL.Clear;
dm.query_mov.SQL.Add('select sum(valor) as total from movimentacoes where data = curDate() and tipo = "Entrada" ') ;

dm.query_mov.Prepare;
dm.query_mov.Open;
tot := dm.query_mov.FieldByName('total').AsFloat;
TotEntradas := tot;
lblEntradas.Caption := FormatFloat('R$ #,,,,0.00', tot);



end;

procedure TFrmMenu.totalizarSaidas;

var
tot: real;
begin
dm.query_mov.Close;
dm.query_mov.SQL.Clear;
dm.query_mov.SQL.Add('select sum(valor) as total from movimentacoes where data = curDate() and tipo = "Sa�da" ') ;

dm.query_mov.Prepare;
dm.query_mov.Open;
tot := dm.query_mov.FieldByName('total').AsFloat;
TotSaidas := tot;
lblSaidas.Caption := FormatFloat('R$ #,,,,0.00', tot);
lblSaidas.Font.Color := ConverterRGB(232, 0, 0);


end;

procedure TFrmMenu.Usurios1Click(Sender: TObject);
begin
FrmUsuarios := TFrmUsuarios.Create(self);
FrmUsuarios.ShowModal;
end;

procedure TFrmMenu.utoriais1Click(Sender: TObject);
begin
ShellExecute(GetDesktopWindow,'open','https://www.youtube.com/channel/UCUmkb_NvZ7U0Ff0vnAnm3dQ',nil,nil,SW_NORMAL);
end;

procedure TFrmMenu.Vendas1Click(Sender: TObject);
begin

            FrmCaixa := TFrmCaixa.Create(FrmMenu);
            statusCaixa := 'Abertura';
            FrmCaixa.ShowModal;
end;

procedure TFrmMenu.Vendas2Click(Sender: TObject);
begin
rel := 'Vendas';
FrmRelDatas := TFrmRelDatas.Create(self);
FrmRelDatas.ShowModal;

end;

procedure TFrmMenu.verificarEstoque;
begin
       dm.query_coringa.Close;
       dm.query_coringa.SQL.Clear;
       dm.query_coringa.SQL.Add('SELECT * from produtos where estoque <= 10');
       dm.query_coringa.Open;

        if dm.query_coringa.RecordCount > 0 then
        begin
            pnlEstoque.Color := ConverterRGB(232, 0, 0);
            lblEstoque.Caption :='Estoque Baixo';

        end
        else
        begin
            pnlEstoque.Color := ConverterRGB(0, 225, 0);
            lblEstoque.Caption :='Estoque Bom';

        end;


end;

end.
