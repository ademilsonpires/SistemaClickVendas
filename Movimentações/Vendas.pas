unit Vendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.MPlayer, ACBrBase, ACBrDFe, ACBrNFe, ACBrUtil, ACBrNFeNotasFiscais, pcnConversao, pcnConversaoNFe,
  pcnNFe, pnfsConversao, System.Math, Vcl.Buttons;

type
  TFrmVendas = class(TForm)
    painelGrid: TPanel;
    DBGrid1: TDBGrid;
    painelCentral: TPanel;
    edtCodBarras: TEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtProduto: TEdit;
    edtDescri��o: TEdit;
    edtQuantidade: TEdit;
    edtPreco: TEdit;
    edtEstoque: TEdit;
    imagem: TImage;
    MediaPlayer1: TMediaPlayer;
    painelTotal: TPanel;
    Panel3: TPanel;
    edtTotal: TEdit;
    edtSubTotal: TEdit;
    edtDesconto: TEdit;
    edtTotalCompra: TEdit;
    edtValorRecebido: TEdit;
    edtTroco: TEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    nfce: TACBrNFe;
    Label6: TLabel;
    Label7: TLabel;
    Edit2: TEdit;
    Panel10: TPanel;
    Panel9: TPanel;
    edtCliente: TEdit;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    btnDiversos: TPanel;
    Panel15: TPanel;
    Pnlmaisvendidos: TPanel;
    btnOs: TPanel;
    procedure FormShow(Sender: TObject);
    procedure edtCodBarrasChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure edtDescontoChange(Sender: TObject);
    procedure edtValorRecebidoChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtQuantidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtDescontoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtValorRecebidoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodBarrasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel9Click(Sender: TObject);
    procedure Panel11Click(Sender: TObject);
    procedure Panel13Click(Sender: TObject);
    procedure Panel14Click(Sender: TObject);
    procedure btnDiversosClick(Sender: TObject);
    procedure Panel12Click(Sender: TObject);
    procedure PnlmaisvendidosClick(Sender: TObject);
    procedure btnOsClick(Sender: TObject);


  private
    { Private declarations }
    procedure limpar;
    procedure limparProdutos;
    procedure buscarProduto;
    procedure salvarItens;
    procedure salvarVenda;
    procedure limparFoto;
    procedure listar;

    procedure associarCamposDet;
    procedure associarCamposVenda;
    procedure associarCamposDuplicata;

    procedure imprimirComprovante;
    procedure IniciarNFCE;
    procedure gerarNFCE;

    procedure ImprimirCupom;
    procedure consultarvendas;

  public
    { Public declarations }
  end;

var
  FrmVendas: TFrmVendas;
  totalItem: double;
 // totalVenda: double; foi pro modulo pra virar global
  estoque : double;
  estoque2 : double;
   F: THandle;
   id_cli_dup : integer;
   nomeCliente : string;
   dataVenc : tdatetime;
   dataVencimento : string;
   dataatual: tdatetime;
   dia_vencimento, hora : string;

  //totalcomDesconto : double; global
  //troco : double;    global


  idVenda: string;

implementation

{$R *.dfm}

uses Modulo, CancelarItem, Produtos, FinalizarVenda, Clientes, Diversos,
  ListaVendas, rankingProdutos, OrdemServico;



{ TFrmVendas }

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






procedure TFrmVendas.associarCamposDet;
begin
  dm.tb_detalhes_vendas.FieldByName('id_venda').Value := '0';
  dm.tb_detalhes_vendas.FieldByName('produto').Value := edtProduto.Text;
  dm.tb_detalhes_vendas.FieldByName('valor').Value := edtPreco.Text;
  dm.tb_detalhes_vendas.FieldByName('quantidade').Value := strToFloat(edtQuantidade.Text);
  dm.tb_detalhes_vendas.FieldByName('total').Value := totalItem;
  dm.tb_detalhes_vendas.FieldByName('id_produto').Value := idProduto;
  dm.tb_detalhes_vendas.FieldByName('funcionario').Value := nomeUsuario;
  dm.tb_detalhes_vendas.FieldByName('data').Value := dateTOstr(Date);
end;

procedure TFrmVendas.associarCamposDuplicata;
begin
   dm.tb_duplicata.FieldByName('id_cliente').Value := idClientes;
   dm.tb_duplicata.FieldByName('cliente').Value := nomeCliente;
   dm.tb_duplicata.FieldByName('data_cad').Value := Date;
   dm.tb_duplicata.FieldByName('hora_data_cad').Value := StrToTime(hora);
   dm.tb_duplicata.FieldByName('data_venc').Value := dataVenc;

   dm.tb_duplicata.FieldByName('valor').Value := totalcrediariovenda;

   dm.tb_duplicata.FieldByName('situacao').Value := 'a vencer';
end;

procedure TFrmVendas.associarCamposVenda;
begin
  dm.tb_vendas.FieldByName('valor').Value := totalcomDesconto;
  dm.tb_vendas.FieldByName('data').Value := DateToStr(Date);
  dm.tb_vendas.FieldByName('hora').Value := TimeToStr(Time);
  dm.tb_vendas.FieldByName('funcionario').Value := nomeUsuario;
  dm.tb_vendas.FieldByName('desconto').Value := strToFloat(edtDesconto.Text);
  dm.tb_vendas.FieldByName('valor_recebido').Value := strToFloat(edtValorRecebido.Text);
  dm.tb_vendas.FieldByName('troco').Value := troco;
  dm.tb_vendas.FieldByName('cliente').Value := nomeClientes;
  dm.tb_vendas.FieldByName('formadepagamento').Value := formadepagamento;
  dm.tb_vendas.FieldByName('status').Value := 'Conclu�da';
  dm.tb_vendas.FieldByName('caixa').Value := numeroCaixa;
  dm.tb_vendas.FieldByName('statuscaixa').Value := 'aberto';
end;

procedure TFrmVendas.btnDiversosClick(Sender: TObject);
begin
      FrmDiversos := TFrmDiversos.Create(self);
      FrmDiversos.Show;


end;

procedure TFrmVendas.btnOsClick(Sender: TObject);
begin
    FrmOrdemServico := TFrmOrdemServico.Create(self);
    FrmOrdemServico.ShowModal;
end;

procedure TFrmVendas.buscarProduto;
begin
 if chamadaProdPDV <> '1' then
   begin     ///C�DIGO ANTIGO
              ///dm.query_produtos.Close;
              ///dm.query_produtos.SQL.Clear;
              ///dm.query_produtos.SQL.Add('SELECT * from produtos where codigo = :codigo');
              ///dm.query_produtos.ParamByName('codigo').Value := edtCodBarras.Text;
              ///dm.query_produtos.ParamByName('codigoautomatico').Value := edtCodBarras.Text;
              ///dm.query_produtos.Open;


          /// if not dm.query_produtos.isEmpty then
              ///   begin

               ///    edtQuantidade.enabled := true;

               ///    edtProduto.Text :=  dm.query_produtos['nome'];
                ///   edtDescri��o.Text :=  dm.query_produtos['descricao'];
                ///   edtPreco.Text :=  dm.query_produtos['valor'];

                ///   edtEstoque.Text :=  dm.query_produtos['estoque'];
                ///   idProduto :=  dm.query_produtos['id'];

                   //ExibeFoto(dm.query_produtos, 'imagem', imagem);



               //NO PDV NAO � NECESS�RIO VERIFICAR ESTOQUE NA VENDA


                  {if strtoFloat(edtEstoque.Text) < StrToFloat(edtQuantidade.Text) then
                   begin
                       MessageDlg('N�o existe produtos em estoque', mtInformation, mbOKCancel, 0);


                       exit;
                   end; }


                 ///  totalItem := strToFloat(edtQuantidade.Text) * strToFloat(edtPreco.text);
                 ///  totalVenda := totalVenda + totalItem;

                 ///  edtTotal.Text := FormatFloat('R$ #,,,,0.00', totalItem);
                ///   edtSubTotal.Text := FormatFloat('R$ #,,,,0.00', totalVenda);
                 ///  edtTotalCompra.Text := FormatFloat('R$ #,,,,0.00', totalVenda);

                 ///  totalcomDesconto := totalVenda;
                ///   edtValorRecebido.Text := floatTOstr(totalVenda);
                 ///
                 ///  dm.tb_detalhes_vendas.Insert;
                 ///  salvarItens;
                 ///  edtTotal.Text := '';
                 ///
                 ///
                 ///  C�DIGO COM WIEW
              dm.Query_wiew_pro_pdv.Close;
              dm.Query_wiew_pro_pdv.SQL.Clear;
              dm.Query_wiew_pro_pdv.SQL.Add('SELECT * from pro_pdv where codigo = :codigo');
              dm.Query_wiew_pro_pdv.ParamByName('codigo').Value := edtCodBarras.Text;
              ///dm.query_produtos.ParamByName('codigoautomatico').Value := edtCodBarras.Text;
              dm.Query_wiew_pro_pdv.Open;


           if not dm.Query_wiew_pro_pdv.isEmpty then
                 begin

                   edtQuantidade.enabled := true;

                   edtProduto.Text :=  dm.Query_wiew_pro_pdv['nome'];
                   edtDescri��o.Text :=  dm.Query_wiew_pro_pdv['descricao'];
                   edtPreco.Text :=  dm.Query_wiew_pro_pdv['valor'];

                   edtEstoque.Text :=  dm.Query_wiew_pro_pdv['estoque'];
                   idProduto :=  dm.Query_wiew_pro_pdv['id'];

                   //ExibeFoto(dm.Query_wiew_pro_pdv, 'imagem', imagem);



               //NO PDV NAO � NECESS�RIO VERIFICAR ESTOQUE NA VENDA


                  {if strtoFloat(edtEstoque.Text) < StrToFloat(edtQuantidade.Text) then
                   begin
                       MessageDlg('N�o existe produtos em estoque', mtInformation, mbOKCancel, 0);


                       exit;
                   end; }


                   totalItem := strToFloat(edtQuantidade.Text) * strToFloat(edtPreco.text);
                   totalVenda := totalVenda + totalItem;

                   edtTotal.Text := FormatFloat('R$ #,,,,0.00', totalItem);
                   edtSubTotal.Text := FormatFloat('R$ #,,,,0.00', totalVenda);
                   edtTotalCompra.Text := FormatFloat('R$ #,,,,0.00', totalVenda);

                   totalcomDesconto := totalVenda;
                   edtValorRecebido.Text := floatTOstr(totalVenda);

                   dm.tb_detalhes_vendas.Insert;

                   salvarItens;

                   edtTotal.Text := '';
                   end
                   else
                   begin
                   limparProdutos;

                      dm.Query_wiew_pro_pdv.Close;
              dm.Query_wiew_pro_pdv.SQL.Clear;
              dm.Query_wiew_pro_pdv.SQL.Add('SELECT * from pro_pdv where id = :id');
              dm.Query_wiew_pro_pdv.ParamByName('id').Value := edtCodBarras.Text;
              ///dm.query_produtos.ParamByName('codigoautomatico').Value := edtCodBarras.Text;
              dm.Query_wiew_pro_pdv.Open;

              if not dm.Query_wiew_pro_pdv.isEmpty then
              begin

                   edtQuantidade.enabled := true;

                   edtProduto.Text :=  dm.Query_wiew_pro_pdv['nome'];
                   edtDescri��o.Text :=  dm.Query_wiew_pro_pdv['descricao'];
                   edtPreco.Text :=  dm.Query_wiew_pro_pdv['valor'];

                   edtEstoque.Text :=  dm.Query_wiew_pro_pdv['estoque'];
                   idProduto :=  dm.Query_wiew_pro_pdv['id'];

                   //ExibeFoto(dm.Query_wiew_pro_pdv, 'imagem', imagem);



               //NO PDV NAO � NECESS�RIO VERIFICAR ESTOQUE NA VENDA


                  {if strtoFloat(edtEstoque.Text) < StrToFloat(edtQuantidade.Text) then
                   begin
                       MessageDlg('N�o existe produtos em estoque', mtInformation, mbOKCancel, 0);


                       exit;
                   end; }


                   totalItem := strToFloat(edtQuantidade.Text) * strToFloat(edtPreco.text);
                   totalVenda := totalVenda + totalItem;

                   edtTotal.Text := FormatFloat('R$ #,,,,0.00', totalItem);
                   edtSubTotal.Text := FormatFloat('R$ #,,,,0.00', totalVenda);
                   edtTotalCompra.Text := FormatFloat('R$ #,,,,0.00', totalVenda);

                   totalcomDesconto := totalVenda;
                   edtValorRecebido.Text := floatTOstr(totalVenda);

                   dm.tb_detalhes_vendas.Insert;

                   salvarItens;

                   edtTotal.Text := '';
              end;



                 end;
   end;


end;

procedure TFrmVendas.consultarvendas;
begin
FrmListaVendas := TFrmListaVendas.Create(self);
FrmListaVendas.ShowModal;
end;

procedure TFrmVendas.edtCodBarrasChange(Sender: TObject);
begin

if edtCodBarras.Text <> '' then
buscarProduto;

end;

procedure TFrmVendas.edtCodBarrasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=VK_LEFT then
  begin
  edtQuantidade.SetFocus;
  end;


if key=13 then
begin

  //edtDesconto.Setfocus;
end;

if key=VK_F5 then
begin
  edtCodBarras.Text := '';
  edtQuantidade.Text := '1';

  //edtDesconto.Setfocus;
end;



end;

procedure TFrmVendas.edtDescontoChange(Sender: TObject);


begin


    if edtDesconto.Text <> '' then
        begin
        totalcomDesconto := totalVenda - strToFloat(edtDesconto.Text);
        edtTotalCompra.Text := FormatFloat('R$ #,,,,0.00', totalcomDesconto);

        end;
    if edtValorRecebido.Text <> '' then
        begin
        troco := strToFloat(edtValorRecebido.Text) - totalcomDesconto;
        edtTroco.Text := FormatFloat('R$ #,,,,0.00', troco);
        end;

end;

procedure TFrmVendas.edtDescontoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=13 then

        begin
            chamada := 'finalizarVendaPDV';
            //totalPagarFinalizar := StrToFloat(edtTotalCompra.Text);


            FrmFinalizarVenda := TFrmFinalizarVenda.Create(self);
            FrmFinalizarVenda.Show;
        end;

end;

procedure TFrmVendas.edtQuantidadeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=13 then
    begin
      edtCodBarras.SetFocus;
    end;
end;

procedure TFrmVendas.edtValorRecebidoChange(Sender: TObject);

begin
if edtValorRecebido.Text <> '' then
begin
troco := strToFloat(edtValorRecebido.Text) - totalcomDesconto;
edtTroco.Text := FormatFloat('R$ #,,,,0.00', troco);
end;
end;

procedure TFrmVendas.edtValorRecebidoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
begin

  dm.tb_vendas.Insert;
  if MessageDlg('Deseja Fechar a venda?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin

     if strtoFloat(edtValorRecebido.Text) >= totalcomDesconto then
      begin
       salvarVenda;
       end
       else
       begin
       MessageDlg('O valor pago deve ser maior que o valor da venda!', mtInformation, mbOKCancel, 0);
       edtValorRecebido.SetFocus;
      end;



    end;

end;

end;


procedure TFrmVendas.FormActivate(Sender: TObject);

begin


    if chamada = 'finalizarVenda' then
    begin
         listar;
      edtValorRecebido.Text := floatTOstr(totalRecebidoFinalizar);

      dm.tb_vendas.Insert;
      {if MessageDlg('Deseja Fechar a venda?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin}




       if strtoFloat(edtValorRecebido.Text) >= totalcomDesconto then
          begin


          { if pagamento = 'crediario' then
                begin}
                  //MessageDlg('edt valor recebido � >=!', mtInformation, mbOKCancel, 0);

                  {salvarVenda;
                end
                else
                 begin
                   salvarVenda;

                end;   }
                salvarVenda;
           end
           else
           begin


             MessageDlg('O valor pago deve ser maior que o valor da venda!', mtInformation, mbOKCancel, 0);
             FrmFinalizarVenda.Close;
             chamada :=  'finalizarVenda';

             FrmFinalizarVenda := TFrmFinalizarVenda.Create(self);
             FrmFinalizarVenda.Show;
          end;



       { end; }
       //chamada := '';
       //pagamento := '';

    end;

 if  diversosADD = 'add' then
 begin

       edtQuantidade.Text := '1';
       edtCodBarras.Text := '1';
       edtCodBarras.SetFocus;
       diversosADD := 'N';


 end;

if chamadaFinalizarVenda = '1' then
      begin

        FrmFinalizarVenda.Close;
        chamadaFinalizarVenda := '2';


      end;

if chamadaCancelarItem = 'cancelarItem' then
    begin
      totalVenda := totalVenda - totalProdutos;
      edtSubTotal.Text := FormatFloat('R$ #,,,,0.00', totalVenda);
      edtTotalCompra.Text := FloatToIntStr(totalVenda);
      totalcomDesconto := totalVenda;

      listar;
      chamadaCancelarItem := '';
    end;

 if janelacancelariten = 'aberto' then
 begin
   FrmCancelarItem.Close;
 end;

 if chamadaDiversos = 'aberto' then
 begin
    chamadaDiversos :='fechado';
   FrmDiversos.Close;
 end;

 if janelaprodutos = 'addpro' then
      begin
         if (chamadaProdPDV = '1') and (chamadaProdPDVADD = '1') then
            begin

                      edtCodBarras.Text := produtoCodBarras;
                      edtDescri��o.Text := produtoDescricao;
                      edtProduto.Text := nomeProduto;
                      edtPreco.Text := produtoPreco;
                      edtEstoque.Text := FloatToIntStr(estoqueProduto);

              {if strtoFloat(edtEstoque.Text) < StrToFloat(edtQuantidade.Text) then
                 begin
                       //SetForegroundWindow(Application.Handle);

                             MessageDlg('Sem estoque', mtInformation, [mbOk], 0);

                      //MessageDlg('N�o existe produtos em estoque', mtInformation, mbOKCancel, 0);

                      edtQuantidade.SetFocus;
                      exit;

                 end;}


                     totalItem := strToFloat(edtQuantidade.Text) * strToFloat(edtPreco.text);
                     totalVenda := totalVenda + totalItem;

                     edtTotal.Text := FormatFloat('R$ #,,,,0.00', totalItem);
                     edtSubTotal.Text := FormatFloat('R$ #,,,,0.00', totalVenda);
                     edtTotalCompra.Text := FormatFloat('R$ #,,,,0.00', totalVenda);

                     totalcomDesconto := totalVenda;
                     edtValorRecebido.Text := floatTOstr(totalVenda);

                     dm.tb_detalhes_vendas.Insert;
                     salvarItens;
                     edtTotal.Text := '';
                     chamadaProdPDV :='';
                     chamadaProdPDVADD := '2';
                     exit




                //
            end;

 end;

 if janelaprodutoVenda = 'aberto' then
 begin
    FrmProdutos.Close;
 end;

 /// if janelaprodutoVenda = 'aberto' then
// begin
   /// FrmProdutos.Close;
// end;



  if chamada = 'clientes' then
    begin
     edtCliente.Text := nomeClientes;

    end;



end;

procedure TFrmVendas.FormClose(Sender: TObject; var Action: TCloseAction);
var
  idProduto, IddetVenda : integer;
  quantItem :Double;
  estoqueP   : Double;
  estoqueDevolver : Double;

begin

 limpar;
 frmVen := '';
chamada := '';

MediaPlayer1.Destroy;

dm.query_det_vendas.Close;
dm.query_det_vendas.SQL.Clear;
dm.query_det_vendas.SQL.Add('SELECT * FROM detalhes_vendas where id_venda = :id_venda');
dm.query_det_vendas.ParamByName('id_venda').Value := 0;
dm.query_det_vendas.open;


                                           //dm.query_det_vendas.Eof
           if not dm.query_det_vendas.IsEmpty then
              begin
                while not dm.query_det_vendas.Eof  do

                     begin

                     idProduto :=  dm.query_det_vendas['id_produto'];
                     quantItem :=  dm.query_det_vendas['quantidade'];
                     IddetVenda := dm.query_det_vendas['id'];

                    //ATUALIZAR O ESTOQUE

                   //RECUPERAR O ESTOQUE ATUAL
                       dm.query_produtos.Close;
                       dm.query_produtos.SQL.Clear;
                       dm.query_produtos.SQL.Add('select * from produtos where id = :id');

                       dm.query_produtos.ParamByName('id').Value := idProduto;
                       dm.query_produtos.Open;

                       estoqueP :=  dm.query_produtos['estoque'];
                       {if not dm.query_coringa.isEmpty then
                     begin


                     end;}
                        if not dm.query_produtos.IsEmpty  then
                          begin
                          estoqueDevolver := estoqueP + quantItem;
                          end;

                       dm.query_produtos.Close;
                       dm.query_produtos.SQL.Clear;
                       dm.query_produtos.SQL.Add('UPDATE produtos set estoque = :estoque where id = :id');
                       dm.query_produtos.ParamByName('estoque').Value := estoqueDevolver;
                       dm.query_produtos.ParamByName('id').Value := idProduto;
                       dm.query_produtos.ExecSQL;




                   dm.query_coringa.Close;
                   dm.query_coringa.SQL.Clear;
                   dm.query_coringa.SQL.Add('DELETE FROM detalhes_vendas where id = :id');
                   dm.query_coringa.ParamByName('id').Value := IddetVenda;
                   dm.query_coringa.Execute;


                   dm.query_det_vendas.Next;


                  end;



                end





end;

procedure TFrmVendas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if key=VK_F1 then
begin
    chamadaProdPDV := '1';
    FrmProdutos := TFrmProdutos.Create(self);
    FrmProdutos.Show;
end;

 if key=VK_F2 then
begin
    chamada := 'finalizarVendaPDV';
    //totalPagarFinalizar := StrToFloat(edtTotalCompra.Text);


    FrmFinalizarVenda := TFrmFinalizarVenda.Create(self);
    FrmFinalizarVenda.Show;
end;



if key = VK_ESCAPE then
      begin

      janelacancelariten := 'aberto';
      FrmCancelarItem := TFrmCancelarItem.Create(self);
      FrmCancelarItem.Show;
      end;
 if key = VK_F6 then
      begin
      chamada := 'clientes';
      FrmClientes := TFrmClientes.Create(self);
      FrmClientes.Show;
      end;

 if key = VK_F3 then
      begin
      FrmDiversos := TFrmDiversos.Create(self);
      FrmDiversos.Show;

      end;

 if key = VK_F5 then
      begin
      FrmOrdemServico := TFrmOrdemServico.Create(self);
      FrmOrdemServico.Show;

      end;



 if key = VK_F7 then
      begin

        consultarvendas;
      end;

{if key = VK_F2 then
begin

  dm.tb_vendas.Insert;
  if MessageDlg('Deseja Fechar a venda?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin

     if strtoFloat(edtValorRecebido.Text) >= totalcomDesconto then
      begin
       salvarVenda;
       end
       else
       begin
       MessageDlg('O valor pago deve ser maior que o valor da venda!', mtInformation, mbOKCancel, 0);
       edtValorRecebido.SetFocus;
      end;



    end;

end;}

end;

procedure TFrmVendas.FormShow(Sender: TObject);
begin

limpar;
listar;
dm.tb_vendas.Active := true;
dm.tb_detalhes_vendas.Active := true;

totalItem := 0;
totalVenda := 0;
estoque := 0;
totalcomDesconto := 0;
troco := 0;
edtSubTotal.Text :='0';
 /// edtQuantidade.SetFocus;
 edtCodBarras.SetFocus;

 frmVen := 'ativo';
end;


procedure TFrmVendas.gerarNFCE;
Var
    NotaF: NotaFiscal;
    item : integer;
    Produto: TDetCollectionItem;
    InfoPgto: TpagCollectionItem;

begin
nfce.NotasFiscais.Clear;
NotaF := nfce.NotasFiscais.Add;


  //DADOS DA NOTA FISCAL

  NotaF.NFe.Ide.natOp     := 'VENDA';
  NotaF.NFe.Ide.indPag    := ipVista;
  NotaF.NFe.Ide.modelo    := 65;
  NotaF.NFe.Ide.serie     := 1;
  NotaF.NFe.Ide.nNF       := StrToInt(idVenda);
  NotaF.NFe.Ide.dEmi      := Date;
  NotaF.NFe.Ide.dSaiEnt   := Date;
  NotaF.NFe.Ide.hSaiEnt   := Now;
  NotaF.NFe.Ide.tpNF      := tnSaida;
  NotaF.NFe.Ide.tpEmis    := teNormal;
  NotaF.NFe.Ide.tpAmb     := taHomologacao;  //Lembre-se de trocar esta vari�vel quando for para ambiente de produ��o
  NotaF.NFe.Ide.verProc   := '1.0.0.0'; //Vers�o do seu sistema
  NotaF.NFe.Ide.cUF       := 31;    //CODIGO DA CIDADE
  NotaF.NFe.Ide.cMunFG    := 0624123;   //VOCE PRECISA ALTERAR DE ACORDO COM O CODIGO DE EMISSAO DE NFCE PARA SEU MUNICIPIO
  NotaF.NFe.Ide.finNFe    := fnNormal;


  //DADOS DO EMITENTE

  NotaF.NFe.Emit.CNPJCPF           := '18311776000198';
  NotaF.NFe.Emit.IE                := '';
  NotaF.NFe.Emit.xNome             := '';
  NotaF.NFe.Emit.xFant             := '';

  NotaF.NFe.Emit.EnderEmit.fone    := '(31)3333-3333';
  NotaF.NFe.Emit.EnderEmit.CEP     := 30512660;
  NotaF.NFe.Emit.EnderEmit.xLgr    := 'Rua A';
  NotaF.NFe.Emit.EnderEmit.nro     := '325';
  NotaF.NFe.Emit.EnderEmit.xCpl    := '';
  NotaF.NFe.Emit.EnderEmit.xBairro := 'Santa Monica';
  NotaF.NFe.Emit.EnderEmit.cMun    := 0624123;
  NotaF.NFe.Emit.EnderEmit.xMun    := 'Belo Horizonte';
  NotaF.NFe.Emit.EnderEmit.UF      := 'MG';
  NotaF.NFe.Emit.enderEmit.cPais   := 1058;
  NotaF.NFe.Emit.enderEmit.xPais   := 'BRASIL';

  NotaF.NFe.Emit.IEST              := '';
 // NotaF.NFe.Emit.IM                := '2648800'; // Preencher no caso de existir servi�os na nota
  //NotaF.NFe.Emit.CNAE              := '6201500'; // Verifique na cidade do emissor da NFe se � permitido
                                // a inclus�o de servi�os na NFe
  NotaF.NFe.Emit.CRT               := crtSimplesNacional;// (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)



  //DADOS DO DESTINAT�RIO

  // NotaF.NFe.Dest.CNPJCPF           := '05481336000137';
 // NotaF.NFe.Dest.IE                := '687138770110';
 // NotaF.NFe.Dest.ISUF              := '';
 // NotaF.NFe.Dest.xNome             := 'D.J. COM. E LOCA��O DE SOFTWARES LTDA - ME';

//
//  NotaF.NFe.Dest.EnderDest.Fone    := '1532599600';
//  NotaF.NFe.Dest.EnderDest.CEP     := 18270170;
//  NotaF.NFe.Dest.EnderDest.xLgr    := 'Rua Coronel Aureliano de Camargo';
//  NotaF.NFe.Dest.EnderDest.nro     := '973';
//  NotaF.NFe.Dest.EnderDest.xCpl    := '';
//  NotaF.NFe.Dest.EnderDest.xBairro := 'Centro';
//  NotaF.NFe.Dest.EnderDest.cMun    := 3554003;
//  NotaF.NFe.Dest.EnderDest.xMun    := 'Tatui';
//  NotaF.NFe.Dest.EnderDest.UF      := 'SP';
//  NotaF.NFe.Dest.EnderDest.cPais   := 1058;
//  NotaF.NFe.Dest.EnderDest.xPais   := 'BRASIL';



  //ITENS DA VENDA NA NOTA

  //RELACIONANDO OS ITENS COM A  VENDA
  item := 1;
  dm.query_det_vendas.Close;
  dm.query_det_vendas.SQL.Clear;
  dm.query_det_vendas.SQL.Add('select * from detalhes_vendas WHERE id_venda = :num order by id asc') ;
  dm.query_det_vendas.ParamByName('num').Value :=  idVenda;
  dm.query_det_vendas.Open;
   dm.query_det_vendas.First;

   while not dm.query_det_vendas.eof do
   begin
      Produto := NotaF.NFe.Det.New;
      Produto.Prod.nItem    := item; // N�mero sequencial, para cada item deve ser incrementado
      Produto.Prod.cProd    := '123456';
      Produto.Prod.cEAN     := '7896523206646';
      Produto.Prod.xProd    := dm.query_det_vendas.FieldByName('produto').Value;
      Produto.Prod.NCM      := '94051010'; // Tabela NCM dispon�vel em  http://www.receita.fazenda.gov.br/Aliquotas/DownloadArqTIPI.htm
      Produto.Prod.EXTIPI   := '';
      Produto.Prod.CFOP     := '5101';
      Produto.Prod.uCom     := 'UN';
      Produto.Prod.qCom     := dm.query_det_vendas.FieldByName('quantidade').Value;
      Produto.Prod.vUnCom   := dm.query_det_vendas.FieldByName('valor').Value;
      Produto.Prod.vProd    := dm.query_det_vendas.FieldByName('total').Value;


  //INFORMA��ES DE IMPOSTOS SOBRE OS PRODUTOS
  Produto.Prod.cEANTrib  := '7896523206646';
  Produto.Prod.uTrib     := 'UN';
  Produto.Prod.qTrib     := 1;
  Produto.Prod.vUnTrib   := 100;

  Produto.Prod.vOutro    := 0;
  Produto.Prod.vFrete    := 0;
  Produto.Prod.vSeg      := 0;
  Produto.Prod.vDesc     := 0;

  Produto.Prod.CEST := '1111111';

  Produto.infAdProd := 'Informacao Adicional do Produto';


   // lei da transparencia nos impostos
  Produto.Imposto.vTotTrib := 0;
  Produto.Imposto.ICMS.CST          := cst00;
  Produto.Imposto.ICMS.orig    := oeNacional;
  Produto.Imposto.ICMS.modBC   := dbiValorOperacao;
  Produto.Imposto.ICMS.vBC     := 100;
  Produto.Imposto.ICMS.pICMS   := 18;
  Produto.Imposto.ICMS.vICMS   := 18;
  Produto.Imposto.ICMS.modBCST := dbisMargemValorAgregado;
  Produto.Imposto.ICMS.pMVAST  := 0;
  Produto.Imposto.ICMS.pRedBCST:= 0;
  Produto.Imposto.ICMS.vBCST   := 0;
  Produto.Imposto.ICMS.pICMSST := 0;
  Produto.Imposto.ICMS.vICMSST := 0;
  Produto.Imposto.ICMS.pRedBC  := 0;

       // partilha do ICMS e fundo de probreza
  Produto.Imposto.ICMSUFDest.vBCUFDest      := 0.00;
  Produto.Imposto.ICMSUFDest.pFCPUFDest     := 0.00;
  Produto.Imposto.ICMSUFDest.pICMSUFDest    := 0.00;
  Produto.Imposto.ICMSUFDest.pICMSInter     := 0.00;
  Produto.Imposto.ICMSUFDest.pICMSInterPart := 0.00;
  Produto.Imposto.ICMSUFDest.vFCPUFDest     := 0.00;
  Produto.Imposto.ICMSUFDest.vICMSUFDest    := 0.00;
  Produto.Imposto.ICMSUFDest.vICMSUFRemet   := 0.00;



      item := item + 1;
      dm.query_det_vendas.Next;
   end;

   //totalizando




    NotaF.NFe.Total.ICMSTot.vBC     := 100;
  NotaF.NFe.Total.ICMSTot.vICMS   := 18;
  NotaF.NFe.Total.ICMSTot.vBCST   := 0;
  NotaF.NFe.Total.ICMSTot.vST     := 0;
  NotaF.NFe.Total.ICMSTot.vProd   := totalVenda;
  NotaF.NFe.Total.ICMSTot.vFrete  := 0;
  NotaF.NFe.Total.ICMSTot.vSeg    := 0;
  NotaF.NFe.Total.ICMSTot.vDesc   := strToFloat(edtDesconto.Text);
  NotaF.NFe.Total.ICMSTot.vII     := 0;
  NotaF.NFe.Total.ICMSTot.vIPI    := 0;
  NotaF.NFe.Total.ICMSTot.vPIS    := 0;
  NotaF.NFe.Total.ICMSTot.vCOFINS := 0;
  NotaF.NFe.Total.ICMSTot.vOutro  := 0;
  NotaF.NFe.Total.ICMSTot.vNF     := totalcomDesconto;

    // lei da transparencia de impostos
  NotaF.NFe.Total.ICMSTot.vTotTrib := 0;

  // partilha do icms e fundo de probreza
  NotaF.NFe.Total.ICMSTot.vFCPUFDest   := 0.00;
  NotaF.NFe.Total.ICMSTot.vICMSUFDest  := 0.00;
  NotaF.NFe.Total.ICMSTot.vICMSUFRemet := 0.00;


  NotaF.NFe.Transp.modFrete := mfSemFrete;  //SEM FRETE

  // YA. Informa��es de pagamento

  InfoPgto := NotaF.NFe.pag.New;
  InfoPgto.indPag := ipVista;
  InfoPgto.tPag   := fpDinheiro;
  InfoPgto.vPag   := totalcomDesconto;

  //RECUPERAR O NUMERO DE SERIE DO CERTIFICADO
  nfce.Configuracoes.Certificados.NumeroSerie := certificadoDig;

  nfce.NotasFiscais.Assinar;
  nfce.Enviar(Integer(idVenda));
  ShowMessage(nfce.WebServices.StatusServico.Msg);

end;

procedure TFrmVendas.imprimirComprovante;
begin
                //Verificar configura��es
                   dm.query_configuracoes.Close;
                   dm.query_configuracoes.SQL.Clear;
                   dm.query_configuracoes.SQL.Add('SELECT * FROM configuracoes WHERE item = "impressora"');
                   dm.query_configuracoes.Open;

                   if not dm.query_configuracoes.isEmpty then
                     begin
                       //config_impressora :=  dm.query_configuracoes['config'];
                        //MessageDlg(config_impressora, mtInformation, mbOKCancel, 0);

                           config_impressora :=  dm.query_configuracoes['config'];

                            if config_impressora = 's' then
                            begin
                              dm.rel_comprovante.PrintOptions.ShowDialog:= False;
                              dm.rel_comprovante.PrepareReport;
                              dm.rel_comprovante.Print;

                            end;




                       exit;
                     end



end;

procedure TFrmVendas.ImprimirCupom;
begin
      dm.query_vendas.Close;
      dm.query_vendas.SQL.Clear;
      dm.query_vendas.SQL.Add('SELECT * from vendas where id = :id');
      dm.query_vendas.ParamByName('id').Value := idVenda;
      dm.query_vendas.Open;

       dm.query_det_vendas.Close;
      dm.query_det_vendas.SQL.Clear;
      dm.query_det_vendas.SQL.Add('SELECT * from detalhes_vendas where id_venda = :id');
      dm.query_det_vendas.ParamByName('id').Value := idVenda;
      dm.query_det_vendas.Open;

      //Chamar o Relat�rio
      dm.rel_comprovante.LoadFromFile(GetCurrentDir + '\rel\comprovante.fr3');
      //dm.rel_comprovante.ShowReport();
      //dm.rel_comprovante.PrintOptions.ShowDialog:= False;

        //IMPRESS�O DE RELAT�RIO

            imprimirComprovante;

end;

procedure TFrmVendas.IniciarNFCE;
var
caminhoNFCE : string;
begin
caminhoNFCE := ExtractFilePath(Application.ExeName) + 'nfe\';
nfce.Configuracoes.Arquivos.PathSchemas := caminhoNFCE;

end;

procedure TFrmVendas.limpar;
begin
edtCodBarras.Text := '';
edtProduto.Text := '';
edtDescri��o.Text := '';
edtPreco.Text := '0';
edtQuantidade.Text := '1';
edtEstoque.Text := '0';

edtTotal.Text := '0';
edtSubTotal.Text := '0';
edtTotalCompra.Text := '0';
edtDesconto.Text := '0';
edtValorRecebido.Text := '0';
edtTroco.Text := '0';
edtCliente.Text := '';
chamada := '';
pagamento := '';
totalcrediario := 0;
limparFoto;
nomeClientes := '';
idClientes := '';
edtCodBarras.SetFocus;
chamadaFinalizarCliente := '';
end;

procedure TFrmVendas.limparFoto;
var
caminhoImg : string;
begin
caminhoImg :=  ExtractFileDir(GetCurrentDir) + '\Debug\img\sem-foto.jpg';
imagem.Picture.LoadFromFile(caminhoImg);
end;

procedure TFrmVendas.limparProdutos;
begin
edtProduto.Text := '';
edtDescri��o.Text := '';
edtPreco.Text := '0';

edtEstoque.Text := '0';
limparFoto;
totalItem := 0;
end;

procedure TFrmVendas.listar;
begin
     dm.query_det_vendas.Close;
     dm.query_det_vendas.SQL.Clear;
     dm.query_det_vendas.SQL.Add('SELECT * from detalhes_vendas where id_venda = 0 and funcionario = :func order by id asc');
     dm.query_det_vendas.ParamByName('func').Value := nomeUsuario;
     dm.query_det_vendas.Open;

     DBGrid1.Columns[0].Alignment := taCenter;
     DBGrid1.Columns[2].Alignment := taCenter;
     DBGrid1.Columns[3].Alignment := taLeftJustify;

end;

procedure TFrmVendas.Panel11Click(Sender: TObject);
begin
   chamadaProdPDV := '1';

    FrmProdutos := TFrmProdutos.Create(self);
    FrmProdutos.Show;
end;

procedure TFrmVendas.Panel12Click(Sender: TObject);
begin
 chamada := 'finalizarVendaPDV';
    //totalPagarFinalizar := StrToFloat(edtTotalCompra.Text);


    FrmFinalizarVenda := TFrmFinalizarVenda.Create(self);
    FrmFinalizarVenda.Show;
end;

procedure TFrmVendas.Panel13Click(Sender: TObject);
begin
   chamada := 'clientes';
      FrmClientes := TFrmClientes.Create(self);
      FrmClientes.Show;
end;

procedure TFrmVendas.Panel14Click(Sender: TObject);
begin
      janelacancelariten := 'aberto';
      FrmCancelarItem := TFrmCancelarItem.Create(self);
      FrmCancelarItem.Show;

end;

procedure TFrmVendas.Panel9Click(Sender: TObject);
begin
chamada := 'clientes';
FrmClientes := TFrmClientes.Create(self);
FrmClientes.Show;
end;

procedure TFrmVendas.PnlmaisvendidosClick(Sender: TObject);
begin
    FrmRnkingProdutos := TFrmRnkingProdutos.Create(self);
    FrmRnkingProdutos.ShowModal;
end;

procedure TFrmVendas.salvarItens;
var
estoqueanterior : Double;
begin

edtQuantidade.enabled := true;


    if (Trim(edtQuantidade.Text) = '') or (edtQuantidade.Text = '0') then
     begin
         MessageDlg('Insira a quantidade correta!', mtInformation, mbOKCancel, 0);
         edtQuantidade.SetFocus;
         edtCodBarras.Text := '';
         exit;
     end;




associarCamposDet;
dm.tb_detalhes_vendas.Post;
listar;


MediaPlayer1.FileName :=  ExtractFileDir(GetCurrentDir) + '\Debug\img\barCode.wav';
MediaPlayer1.Open;
MediaPlayer1.Play;


//ABATER DO ESTOQUE O PRODUTO

     dm.query_det_vendas.Close;
     dm.query_det_vendas.SQL.Clear;
     dm.query_det_vendas.SQL.Add('SELECT * from detalhes_vendas where id_venda = 0 and funcionario = :func');
     dm.query_det_vendas.ParamByName('func').Value := nomeUsuario;
     dm.query_det_vendas.Open;


       //estoque := strToFloat(edtEstoque.Text) - strToFloat(edtQuantidade.Text);
       estoque2 :=  dm.query_det_vendas.FieldByName('quantidade').Value;

     dm.query_produtos.Close;
     dm.query_produtos.SQL.Clear;
     dm.query_produtos.SQL.Add('SELECT * from produtos where id = :id');
     dm.query_produtos.ParamByName('id').Value := idProduto;
     dm.query_produtos.Open;


       estoqueanterior := dm.query_produtos.FieldByName('estoque').Value;
       estoque := estoqueanterior - estoque2;

       dm.query_produtos.Close;
       dm.query_produtos.SQL.Clear;
       dm.query_produtos.SQL.Add('UPDATE produtos set estoque = :estoque where id = :id');
       dm.query_produtos.ParamByName('estoque').Value := estoque;

       dm.query_produtos.ParamByName('id').Value := idProduto;
       dm.query_produtos.ExecSQL;


       edtCodBarras.Text := '';
      edtCodBarras.SetFocus;
      edtQuantidade.Text := '1';
      chamadaprodPDV := '';


end;

procedure TFrmVendas.salvarVenda;
begin




      associarCamposVenda;
      dm.tb_vendas.Post;
      dm.tb_duplicata.Active := true;




      //RELACIONAR O ID DA VENDA COM OS ID_VENDA DOS ITENS
      dm.query_vendas.Close;
      dm.query_vendas.SQL.Clear;
      dm.query_vendas.SQL.Add('SELECT * from vendas order by id desc');
      //dm.query_vendas.ParamByName('func').Value := nomeFunc;
      dm.query_vendas.Open;

       if not dm.query_vendas.isEmpty then
       begin
         idVenda :=  dm.query_vendas['id'];
       end;



       dm.query_det_vendas.Close;
      dm.query_det_vendas.SQL.Clear;
      dm.query_det_vendas.SQL.Add('UPDATE detalhes_vendas set id_venda = :id where id_venda = 0 and funcionario = :func');
      dm.query_det_vendas.ParamByName('id').Value := idVenda;
      dm.query_det_vendas.ParamByName('func').Value := nomeUsuario;
      dm.query_det_vendas.ExecSQL;


      //LAN�AR O VALOR DA VENDA NAS MOVIMENTA��ES
       dm.query_mov.Close;
      dm.query_mov.SQL.Clear;
      dm.query_mov.SQL.Add('INSERT INTO movimentacoes (tipo, movimento, valor, funcionario, data, id_movimento) VALUES (:tipo, :movimento, :valor, :funcionario, curDate(), :id_movimento)');
      dm.query_mov.ParamByName('tipo').Value := 'Entrada';
      dm.query_mov.ParamByName('movimento').Value := 'Venda';
      dm.query_mov.ParamByName('valor').Value := totalcomDesconto;;
      dm.query_mov.ParamByName('funcionario').Value := nomeUsuario;
      dm.query_mov.ParamByName('id_movimento').Value := idVenda;
      dm.query_mov.ExecSQL;

      //lan�ar o valor para o cliente
      if (pagamento = 'crediario') and (totalcrediariovenda > 0) then
     begin
      //debitoClienteAnterior := dm.tb_clientes.FieldByName('debito').Value;

      dm.query_clientes.Close;
      dm.query_clientes.SQL.Clear;
      dm.query_clientes.SQL.Add('SELECT * from clientes where id = :id');
      dm.query_clientes.ParamByName('id').Value := idClientes;
      dm.query_clientes.Open;

       if not dm.query_clientes.isEmpty then
       begin
         debitoClienteAnterior :=  dm.query_clientes['debito'];
       end;


      dm.query_clientes.Close;
      dm.query_clientes.SQL.Clear;
      dm.query_clientes.SQL.Add('UPDATE clientes set debito = :debito where id = :id');
      dm.query_clientes.ParamByName('id').Value := idClientes;
      dm.query_clientes.ParamByName('debito').Value := debitoClienteAnterior + totalcrediario;
      dm.query_clientes.ExecSQL;

      //lan�ar duplicata do cliente no contas a receber


      dm.query_clientes.Close;
      dm.query_clientes.SQL.Clear;
      dm.query_clientes.SQL.Add('SELECT * from clientes where id = :id');
      dm.query_clientes.ParamByName('id').Value := idClientes;
      dm.query_clientes.Open;



      if not dm.query_clientes.isEmpty then
       begin

         nomeCliente :=  dm.query_clientes['nome'];

         dia_vencimento := dm.query_clientes['dia_vencimento'];

       end;
        hora := TimeToStr(Time);
        dataatual := Date;
        dataVenc := dataatual + StrToFloat(dia_vencimento);
        //ShowMessage('Data Atual + dias de vencimento: '+ DateTostr(datavenc));





      dm.tb_duplicata.Insert;
      associarCamposDuplicata;
      dm.tb_duplicata.Post;






     end;




      //IMPRIMIR O CUPOM FISCAL
      //IniciarNFCE;
      //gerarNFCE;

      //IMPRIMIR O CUPOM N�O FISCAL BASEADO NA NF
      ImprimirCupom;


      limpar;
      edtQuantidade.Text := '1';
      totalItem := 0;
      totalVenda := 0;
      estoque := 0;
      totalcomDesconto := 0;
      troco := 0;
      listar;

end;

end.
