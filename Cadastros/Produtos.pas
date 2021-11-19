unit Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtDlgs, Vcl.ComCtrls;

type
  TFrmProdutos = class(TForm)
    PageControl1: TPageControl;
    Geral: TTabSheet;
    Fiscal: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    btnNovo: TSpeedButton;
    btnSalvar: TSpeedButton;
    BtnEditar: TSpeedButton;
    BtnExcluir: TSpeedButton;
    Label4: TLabel;
    imgCod: TImage;
    Label5: TLabel;
    imagem: TImage;
    btnImprimir: TSpeedButton;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Panel1: TPanel;
    btnAdd: TSpeedButton;
    EdtNome: TEdit;
    edtDescricao: TEdit;
    DBGrid1: TDBGrid;
    edtValor: TEdit;
    edtCodigo: TMaskEdit;
    Panel2: TPanel;
    btnGerarCod: TSpeedButton;
    EdtBuscarNome: TEdit;
    rbCPF: TRadioButton;
    rbNome: TRadioButton;
    EdtBuscarCodigo: TMaskEdit;
    edtvalorcusto: TEdit;
    dialog: TOpenPictureDialog;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnGerarCodClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure rbNomeClick(Sender: TObject);
    procedure rbCPFClick(Sender: TObject);
    procedure EdtBuscarNomeChange(Sender: TObject);
    procedure EdtBuscarCodigoChange(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure edtCodigoChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure EdtNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtDescricaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtBuscarNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtBuscarCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Label6Click(Sender: TObject);

  private
    { Private declarations }
     procedure limpar;
      procedure habilitarCampos;
      procedure desabilitarCampos;

      procedure associarCampos;
      procedure listar;

       procedure buscarNome;
      procedure buscarCodigo;

      procedure salvarFoto;
      procedure carregarImgPadrao;

      
    
      procedure GerarCodigo(codigo: string; Canvas: TCanvas);

  public
    { Public declarations }
  end;

var
  FrmProdutos: TFrmProdutos;
  id : string;
  img : TPicture;
  caminhoImg : string;
  alterou : boolean;
  
implementation

{$R *.dfm}

uses Modulo, ImprimirBarras;

{ TFrmProdutos }

procedure TFrmProdutos.associarCampos;
begin
   dm.tb_produtos.FieldByName('nome').Value := edtNome.Text;
   dm.tb_produtos.FieldByName('descricao').Value := edtDescricao.Text;
   dm.tb_produtos.FieldByName('codigo').Value := edtCodigo.Text;
   dm.tb_produtos.FieldByName('valor').Value := EdtValor.Text;
   dm.tb_produtos.FieldByName('valorcusto').Value := edtValorCusto.Text;
   dm.tb_produtos.FieldByName('data').Value := DateToStr(Date);
end;

procedure TFrmProdutos.btnAddClick(Sender: TObject);
begin
dialog.Execute();
imagem.Picture.LoadFromFile(dialog.FileName);
alterou := true;
end;

procedure TFrmProdutos.BtnEditarClick(Sender: TObject);
begin
if Trim(EdtNome.Text) = '' then
       begin
           MessageDlg('Preencha o Nome!', mtInformation, mbOKCancel, 0);
           EdtNome.SetFocus;
           exit;
       end;


       associarCampos;
       dm.query_produtos.Close;
       dm.query_produtos.SQL.Clear;

       if alterou then
       begin
        dm.query_produtos.SQL.Add('UPDATE produtos set codigo = :codigo, nome = :nome, descricao = :descricao,  valor = :valor, valorcusto = :valorcusto, imagem = :imagem where id = :id');
        img := TPicture.Create;
        img.LoadFromFile(dialog.Filename);
        dm.query_produtos.ParamByName('imagem').Assign(img);
        img.Free;
        alterou := false;
        end
        else
        begin
        dm.query_produtos.SQL.Add('UPDATE produtos set codigo = :codigo, nome = :nome, descricao = :descricao, valorcusto = :valorcusto, valor = :valor where id = :id');
       end;


       dm.query_produtos.ParamByName('codigo').Value := EdtCodigo.Text;
       dm.query_produtos.ParamByName('nome').Value := edtNome.Text;
        dm.query_produtos.ParamByName('descricao').Value := edtDescricao.Text;
         dm.query_produtos.ParamByName('valorcusto').Value := strToFloat(edtvalorcusto.Text);

          dm.query_produtos.ParamByName('valor').Value := strToFloat(edtValor.Text);

       dm.query_produtos.ParamByName('id').Value := id;
       dm.query_produtos.ExecSQL;


       listar;
       MessageDlg('Editado com Sucesso!!', mtInformation, mbOKCancel, 0);
       btnEditar.Enabled := false;
       BtnExcluir.Enabled := false;
       limpar;
       desabilitarCampos;
end;

procedure TFrmProdutos.BtnExcluirClick(Sender: TObject);
begin
if MessageDlg('Deseja Excluir o registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
begin
  //dm.tb_produtos.Delete;
   dm.query_produtos.Close;
    dm.query_produtos.SQL.Clear;
    dm.query_produtos.SQL.Add('DELETE FROM produtos WHERE id = :id');
    dm.query_produtos.ParamByName('id').Value := id;

    dm.query_produtos.Execute;
    MessageDlg('Deletado com Sucesso!!', mtInformation, mbOKCancel, 0);


     btnEditar.Enabled := false;
     BtnExcluir.Enabled := false;
     edtNome.Text := '';
     listar;
     limpar;
end;
end;

procedure TFrmProdutos.btnGerarCodClick(Sender: TObject);
var
cod : string;
begin

if Trim(EdtCodigo.Text) = '' then
       begin
           MessageDlg('Preencha o Codigo!', mtInformation, mbOKCancel, 0);
           edtCodigo.SetFocus;
           exit;
       end;

 //VERIFICAR SE O codigo J� EST� CADASTRADO
       dm.query_coringa.Close;
       dm.query_coringa.SQL.Clear;
       dm.query_coringa.SQL.Add('SELECT * from produtos where codigo = ' + edtCodigo.Text);
       dm.query_coringa.Open;

       if not dm.query_coringa.isEmpty then
       begin
         cod :=  dm.query_coringa['codigo'];
         MessageDlg('O C�digo ' + cod + ' j� est� cadastrado!', mtInformation, mbOKCancel, 0);
         edtCodigo.Text := '';
         edtCodigo.SetFocus;
         exit;
       end;

GerarCodigo(edtCodigo.Text, imgCod.Canvas);

end;

procedure TFrmProdutos.btnImprimirClick(Sender: TObject);
begin
FrmImprimirBarras := TFrmImprimirBarras.Create(self);
FrmImprimirBarras.ShowModal;
end;

procedure TFrmProdutos.btnNovoClick(Sender: TObject);
begin
  habilitarCampos;
  dm.tb_produtos.Insert;

  edtCodigo.SetFocus;
  btnSalvar.Enabled := true;
  limpar;

end;

procedure TFrmProdutos.btnSalvarClick(Sender: TObject);

begin
      if Trim(EdtNome.Text) = '' then
       begin
           MessageDlg('Preencha o Nome!', mtInformation, mbOKCancel, 0);
           EdtNome.SetFocus;
           exit;
       end;

       { if Trim(EdtCodigo.Text) = '' then
       begin


           exit;
       end; }





        try
        associarCampos;
        salvarFoto;


        dm.tb_produtos.Post;
          if edtCodigo.Text = '' then
          begin
              dm.query_produtos.Close;
              dm.query_produtos.SQL.Clear;
              dm.query_produtos.SQL.Add('SELECT * FROM produtos WHERE id=(SELECT max(id) FROM produtos)');
              dm.query_produtos.open;
              idproduto :=  dm.query_produtos['id'];

              //MessageDlg(idproduto, mtInformation, mbOKCancel, 0);


              dm.query_produtos.Close;
              dm.query_produtos.SQL.Clear;
              dm.query_produtos.SQL.Add('UPDATE produtos set codigo = :codigo where id = :id');
              dm.query_produtos.ParamByName('codigo').Value := idproduto;
              dm.query_produtos.ParamByName('id').Value := idproduto;
              dm.query_produtos.ExecSQL;
          end;


        MessageDlg('Salvo com Sucesso', mtInformation, mbOKCancel, 0);



        limpar;
        desabilitarCampos;
        btnSalvar.Enabled := false;
        listar;

        except
        MessageDlg('Imagem grande demais', mtInformation, mbOKCancel, 0);
        dm.fd.Connected := true;
        dm.tb_produtos.Active := true;
        dm.tb_produtos.Insert;
        carregarImgPadrao;
        listar;
        end;
end;

procedure TFrmProdutos.buscarCodigo;
begin
        dm.query_produtos.Close;
       dm.query_produtos.SQL.Clear;
       dm.query_produtos.SQL.Add('SELECT * from produtos where codigo LIKE :codigo order by nome asc');
       dm.query_produtos.ParamByName('codigo').Value := EdtBuscarCodigo.Text + '%';
       dm.query_produtos.Open;
end;

procedure TFrmProdutos.buscarNome;
begin
      dm.query_produtos.Close;
       dm.query_produtos.SQL.Clear;
       dm.query_produtos.SQL.Add('SELECT * from produtos where nome LIKE :nome order by nome asc');
       dm.query_produtos.ParamByName('nome').Value := EdtBuscarNome.Text + '%';
       dm.query_produtos.Open;
end;

procedure TFrmProdutos.carregarImgPadrao;
begin
   caminhoImg :=  ExtractFileDir(GetCurrentDir) + '\Debug\img\sem-foto.jpg';
   imagem.Picture.LoadFromFile(caminhoImg);
end;



{PROCEDIMENTO PADR�O PARA RECUPERAR FOTO DO BANCO}
procedure ExibeFoto(DataSet : TDataSet; BlobFieldName : String; ImageExibicao :
TImage);

 var MemoryStream:TMemoryStream; jpg : TPicture;
 const
  OffsetMemoryStream : Int64 = 0;

begin
  if not(DataSet.IsEmpty) and
  not((DataSet.FieldByName(BlobFieldName) as TBlobField).IsNull) then
    try
      MemoryStream := TMemoryStream.Create;
      Jpg := TPicture.Create;
      (DataSet.FieldByName(BlobFieldName) as
TBlobField).SaveToStream(MemoryStream);
      MemoryStream.Position := OffsetMemoryStream;
      Jpg.LoadFromStream(MemoryStream);
      ImageExibicao.Picture.Assign(Jpg);
    finally
     // Jpg.Free;
      MemoryStream.Free;
    end
  else
    ImageExibicao.Picture := Nil;
end;



procedure TFrmProdutos.DBGrid1CellClick(Column: TColumn);
begin
  habilitarCampos;
  btnSalvar.Enabled := false;
  btnEditar.Enabled := true;
  btnExcluir.Enabled := true;
  btnImprimir.Enabled := true;
  btnGerarCod.Enabled := true;

  dm.tb_produtos.Edit;


  edtNome.Text := dm.query_produtos.FieldByName('nome').Value;

   edtDescricao.Text := dm.query_produtos.FieldByName('descricao').Value;
   edtValor.Text := dm.query_produtos.FieldByName('valor').Value;
   edtvalorcusto.Text := dm.query_produtos.FieldByName('valorcusto').Value;

      //recuperar codigo automatico ou de barras

     if dm.query_produtos.FieldByName('codigo').Value <> '' then
     begin
       edtCodigo.Text := dm.query_produtos.FieldByName('codigo').Value;
     end
     else
     begin
       edtCodigo.Text := dm.query_produtos.FieldByName('id').Value;
     end;


    GerarCodigo(edtCodigo.Text, imgCod.Canvas);

  id := dm.query_produtos.FieldByName('id').Value;
  codigoProduto := dm.query_produtos.FieldByName('codigo').Value;
  nomeProduto :=  dm.query_produtos.FieldByName('nome').Value;
  valorProduto :=  dm.query_produtos.FieldByName('valor').Value;

  if dm.query_produtos.FieldByName('imagem').Value <> null then
  ExibeFoto(dm.query_produtos, 'imagem', imagem);



end;

procedure TFrmProdutos.DBGrid1DblClick(Sender: TObject);
begin
if chamada = 'Prod' then
    begin
      idProduto := dm.query_produtos.FieldByName('id').Value;
      nomeProduto := dm.query_produtos.FieldByName('nome').Value;
      estoqueProduto := dm.query_produtos.FieldByName('estoque').Value;

      Close;
      chamada := '';
      janelaprodutoVenda := 'fechado';
    end;

      if chamadaProdPDV = '1' then
          begin
            chamadaProdPDVADD := '1';
            idProduto := dm.query_produtos.FieldByName('id').Value;
            nomeProduto := dm.query_produtos.FieldByName('nome').Value;
            estoqueProduto := dm.query_produtos.FieldByName('estoque').Value;
            produtoCodBarras := dm.query_produtos.FieldByName('codigo').Value;
            produtoPreco := dm.query_produtos.FieldByName('valor').Value;
            produtoDescricao := dm.query_produtos.FieldByName('descricao').Value;
            janelaprodutos := 'addpro';
            janelaprodutoVenda := 'fechado';
            Close;
            //chamada := '';
    end;

    if chamadaProdPDV = 'ProdNota' then
    begin
           idProduto := dm.query_produtos.FieldByName('id').Value;
            nomeProduto := dm.query_produtos.FieldByName('nome').Value;
            estoqueProduto := dm.query_produtos.FieldByName('estoque').Value;
            produtoCodBarras := dm.query_produtos.FieldByName('codigo').Value;
            produtoPreco := dm.query_produtos.FieldByName('valorcusto').Value;
            produtoDescricao := dm.query_produtos.FieldByName('descricao').Value;
            janelaprodutoVenda := 'fechado';
            Close;

    end;

    if chamadaprodOS = '1' then
    begin
      chamadaProdOSVADD := '1';
      codigoProduto := dm.query_produtos.FieldByName('codigo').Value;
      close;
      end;

end;

procedure TFrmProdutos.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 13 then
  BEGIN

    if chamadaProdPDV = '1' then
          begin
            chamadaProdPDVADD := '1';
            //             biSystemMenu := false;
            idProduto := dm.query_produtos.FieldByName('id').Value;
            nomeProduto := dm.query_produtos.FieldByName('nome').Value;
            estoqueProduto := dm.query_produtos.FieldByName('estoque').Value;
            produtoCodBarras := dm.query_produtos.FieldByName('codigo').Value;
            produtoPreco := dm.query_produtos.FieldByName('valor').Value;
            produtoDescricao := dm.query_produtos.FieldByName('descricao').Value;
            janelaprodutos := 'addpro';
            Close;
            exit
            //chamada := '';
    end
    else
    begin
          habilitarCampos;
          btnEditar.Enabled := true;
          btnExcluir.Enabled := true;
          btnImprimir.Enabled := true;
          btnGerarCod.Enabled := true;

          dm.tb_produtos.Edit;


          edtNome.Text := dm.query_produtos.FieldByName('nome').Value;

          edtDescricao.Text := dm.query_produtos.FieldByName('descricao').Value;
           edtValor.Text := dm.query_produtos.FieldByName('valor').Value;

           //recuperar codigo automatico ou de barras

             if dm.query_produtos.FieldByName('codigo').Value <> '' then
             begin
               edtCodigo.Text := dm.query_produtos.FieldByName('codigo').Value;
             end
             else
             begin
               edtCodigo.Text := dm.query_produtos.FieldByName('id').Value;
             end;


            GerarCodigo(edtCodigo.Text, imgCod.Canvas);

          id := dm.query_produtos.FieldByName('id').Value;
          codigoProduto := dm.query_produtos.FieldByName('codigo').Value;

          if dm.query_produtos.FieldByName('imagem').Value <> null then
          ExibeFoto(dm.query_produtos, 'imagem', imagem);
    end;






end;
end;





procedure TFrmProdutos.desabilitarCampos;
begin
  edtvalorcusto.Enabled := false;
  edtNome.Enabled := false;
  edtDescricao.Enabled := false;
  edtCodigo.Enabled := false;
  edtValor.Enabled := false;
  btnAdd.Enabled := false;
  btnGerarCod.Enabled := false;
  imgCod.Visible := false;
end;

procedure TFrmProdutos.EdtBuscarCodigoChange(Sender: TObject);
begin
buscarCodigo;
end;

procedure TFrmProdutos.EdtBuscarCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key = VK_DOWN) or (key = VK_RIGHT)	 then
    begin
      DBGrid1.SetFocus;
    end;
end;

procedure TFrmProdutos.EdtBuscarNomeChange(Sender: TObject);
begin
buscarNome;
end;

procedure TFrmProdutos.EdtBuscarNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key = VK_DOWN) or (key = VK_RIGHT)	 then
    begin
      DBGrid1.SetFocus;
    end;



end;

procedure TFrmProdutos.edtCodigoChange(Sender: TObject);
begin

   btnGerarCod.Enabled := true;
   
end;

procedure TFrmProdutos.edtCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
cod : string;
   begin
      if key=13 then
          begin

             if Trim(EdtCodigo.Text) = '' then
                   begin
                       MessageDlg('Preencha o Codigo!', mtInformation, mbOKCancel, 0);
                       edtCodigo.SetFocus;
                       exit;
                   end;

             //VERIFICAR SE O codigo J� EST� CADASTRADO
                   dm.query_coringa.Close;
                   dm.query_coringa.SQL.Clear;
                   dm.query_coringa.SQL.Add('SELECT * from produtos where codigo = ' + edtCodigo.Text);
                   dm.query_coringa.Open;

                   if not dm.query_coringa.isEmpty then
                   begin
                     cod :=  dm.query_coringa['codigo'];
                     MessageDlg('O C�digo ' + cod + ' j� est� cadastrado!', mtInformation, mbOKCancel, 0);
                     edtCodigo.Text := '';
                     edtCodigo.SetFocus;
                     exit;
                   end;

                        GerarCodigo(edtCodigo.Text, imgCod.Canvas);
                        btnSalvar.Enabled := true;
                              EdtNome.SetFocus;
          end;
end;

procedure TFrmProdutos.edtDescricaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
    begin
      edtValor.SetFocus;
    end;
end;

procedure TFrmProdutos.EdtNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=13 then
    begin
      edtDescricao.SetFocus;
    end;
end;

procedure TFrmProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
chamada := '';
janelaprodutoVenda := 'fechado';
janelaProdutoOS := 'fechado';
end;

procedure TFrmProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = VK_ESCAPE then
 begin
   BorderIcons := BorderIcons + [biSystemMenu] + [biMinimize] + [biMaximize];
   janelaprodutos := 'fechado';
   janelaprodutoVenda := 'fechado';
   chamadaProdPDV := '';
   close;
 end;


  if key = VK_F5 then
 begin
  listar;
 end;

 if key = VK_F1 then
 begin
  habilitarCampos;
  dm.tb_produtos.Insert;

  edtCodigo.SetFocus;
  btnSalvar.Enabled := true;
  limpar;
 end;

  if key = VK_F2 then
 begin
  if Trim(EdtNome.Text) = '' then
       begin
           MessageDlg('Preencha o Nome!', mtInformation, mbOKCancel, 0);
           EdtNome.SetFocus;
           exit;
       end;

       { if Trim(EdtCodigo.Text) = '' then
       begin


           exit;
       end; }





        try
        associarCampos;
        salvarFoto;


        dm.tb_produtos.Post;

        if edtCodigo.Text = '' then
          begin
              dm.query_produtos.Close;
              dm.query_produtos.SQL.Clear;
              dm.query_produtos.SQL.Add('SELECT * FROM produtos WHERE id=(SELECT max(id) FROM produtos)');
              dm.query_produtos.open;
              idproduto :=  dm.query_produtos['id'];

              //MessageDlg(idproduto, mtInformation, mbOKCancel, 0);


              dm.query_produtos.Close;
              dm.query_produtos.SQL.Clear;
              dm.query_produtos.SQL.Add('UPDATE produtos set codigo = :codigo where id = :id');
              dm.query_produtos.ParamByName('codigo').Value := idproduto;
              dm.query_produtos.ParamByName('id').Value := idproduto;
              dm.query_produtos.ExecSQL;
          end;





        MessageDlg('Salvo com Sucesso', mtInformation, mbOKCancel, 0);
        limpar;
        desabilitarCampos;
        btnSalvar.Enabled := false;
        listar;

        except
        MessageDlg('Imagem grande demais', mtInformation, mbOKCancel, 0);
        dm.fd.Connected := true;
        dm.tb_produtos.Active := true;
        dm.tb_produtos.Insert;
        carregarImgPadrao;
        listar;
        end;


 end;

 end;

procedure TFrmProdutos.FormShow(Sender: TObject);
begin
  listar;
  carregarImgPadrao;
  desabilitarCampos;
  dm.tb_produtos.Active := true;
  janelaprodutoVenda := 'aberto';
  janelaProdutoOS := 'aberto';
  listar;

  rbNome.Checked := true;
  edtBuscarCodigo.Visible := false;
  dialog.Filename := ExtractFileDir(GetCurrentDir) + '\Debug\img\sem-foto.jpg';


 if chamadaProdPDV = '1' then
  begin

    BorderIcons := [biSystemMenu,biMinimize,biMaximize] - [biSystemMenu,biMinimize,biMaximize];
    DBGrid1.TabOrder := 8;
  end;

  if chamadaProdPDV = 'ProdNota' then
  begin

    BorderIcons := [biSystemMenu,biMinimize,biMaximize] - [biSystemMenu,biMinimize,biMaximize];
    DBGrid1.TabOrder := 8;
  end;

  if chamadaProdPDV = '1' then
   begin

    BorderIcons := [biSystemMenu,biMinimize,biMaximize] - [biSystemMenu,biMinimize,biMaximize];
    DBGrid1.TabOrder := 8;
  end;




end;

procedure TFrmProdutos.GerarCodigo(codigo: string; Canvas: TCanvas);
const

digitos : array['0'..'9'] of string[5]= ('00110', '10001', '01001', '11000',
'00101', '10100', '01100', '00011', '10010', '01010');
var s : string;
i, j, x, t : Integer;
begin


try

// Gerar o valor para desenhar o c�digo de barras
// Caracter de in�cio
s := '0000';
for i := 1 to length(codigo) div 2 do
for j := 1 to 5 do
s := s + Copy(Digitos[codigo[i * 2 - 1]], j, 1) + Copy(Digitos[codigo[i * 2]], j, 1);
// Caracter de fim
s := s + '100';
// Desenhar em um objeto canvas
// Configurar os par�metros iniciais
x := 0;
// Pintar o fundo do c�digo de branco
Canvas.Brush.Color := clWhite;
Canvas.Pen.Color := clWhite;
Canvas.Rectangle(0,0, 500, 50);
// Definir as cores da caneta
Canvas.Brush.Color := clBlack;
Canvas.Pen.Color := clBlack;
// Escrever o c�digo de barras no canvas
for i := 1 to length(s) do
begin
// Definir a espessura da barra
t := strToInt(s[i]) * 2 + 1;
// Imprimir apenas barra sim barra n�o (preto/branco - intercalado);
if i mod 2 = 1 then
Canvas.Rectangle(x, 0, x + t, 50);
// Passar para a pr�xima barra
x := x + t;
end;

 except
        MessageDlg('Preencha todo o c�digo!!', mtInformation, mbOKCancel, 0);
        dm.fd.Connected := true;
        dm.tb_produtos.Active := true;
        dm.tb_produtos.Insert;
        listar;
        end;
end;

procedure TFrmProdutos.habilitarCampos;
begin
  edtvalorcusto.Enabled := true;
  edtNome.Enabled := true;
  edtDescricao.Enabled := true;
  edtCodigo.Enabled := true;
  edtValor.Enabled := true;
  btnAdd.Enabled := true;
  imgCod.Visible := true;
end;

procedure TFrmProdutos.Label6Click(Sender: TObject);
begin
 BorderIcons := BorderIcons + [biSystemMenu] + [biMinimize] + [biMaximize];
   chamadaProdPDV := '';
   close;

end;

Procedure TFrmProdutos.limpar;
begin
 edtNome.Text := '';
  edtDescricao.Text := '';
  edtCodigo.Text := '';
  edtValor.Text := '';
  carregarImgPadrao;
  edtvalorcusto.Text := '0';

end;

procedure TFrmProdutos.listar;
begin
       dm.query_produtos.Close;
       dm.query_produtos.SQL.Clear;
       dm.query_produtos.SQL.Add('SELECT * from produtos order by nome asc limit 10');
       dm.query_produtos.Open;
end;


procedure TFrmProdutos.rbCPFClick(Sender: TObject);
begin
listar;
edtBuscarcodigo.Visible := true;
edtBuscarNome.Visible := false;
edtBuscarCodigo.SetFocus;
end;

procedure TFrmProdutos.rbNomeClick(Sender: TObject);
begin
listar;
edtBuscarCodigo.Visible := false;
edtBuscarNome.Visible := true;
edtBuscarNome.SetFocus;
end;

procedure TFrmProdutos.salvarFoto;
begin
if dialog.FileName <> '' then
begin

  img := TPicture.Create;
  img.LoadFromFile(dialog.Filename);
  dm.tb_produtos.FieldByName('imagem').Assign(img);
  img.Free;
  dialog.Filename := ExtractFileDir(GetCurrentDir) + '\Debug\img\sem-foto.jpg';
  alterou := false;

end
else
begin
 dm.tb_produtos.FieldByName('imagem').Value := ExtractFileDir(GetCurrentDir) + '\Debug\img\sem-foto.jpg';

end;

end;








end.
