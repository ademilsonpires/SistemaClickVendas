unit EntradasNota;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.MPlayer, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFrmEntradaNotas = class(TForm)
    painelGrid: TPanel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    painelCentral: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtQuantidade: TEdit;
    Panel2: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    edtCodBarras: TEdit;
    edtProduto: TEdit;
    edtDescri��o: TEdit;
    edtPreco: TEdit;
    edtEstoque: TEdit;
    MediaPlayer1: TMediaPlayer;
    painelTotal: TPanel;
    Panel3: TPanel;
    edtTotal: TEdit;
    edtSubTotal: TEdit;
    edtTotalCompra: TEdit;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel5: TPanel;
    edtFornecedor: TEdit;
    Panel8: TPanel;
    edtNumeroNota: TEdit;
    procedure FormShow(Sender: TObject);
    procedure edtCodBarrasChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Panel5Click(Sender: TObject);
    procedure Panel13Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Panel11Click(Sender: TObject);
    procedure Panel12Click(Sender: TObject);
    procedure Panel14Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }


    procedure limpar;
    procedure limparProdutos;
    procedure buscarProduto;
    procedure salvarItens;
    procedure salvarNota;
    procedure limparFoto;
    procedure listar;

    procedure associarCamposDetNota;
    procedure associarCamposNota;
    procedure associarCamposContasapagar;
    procedure salvarcontasapagar;
  public
    { Public declarations }
  end;

var
  FrmEntradaNotas: TFrmEntradaNotas;
   totalItem: double;
   estoque : double;
   idNota : string;
   nomeCliente : string;
   hora : string;
   dia_vencimento  : string;
   datavenc, dataatual : TDate;
   totalcomprafornecedor : double;

implementation

{$R *.dfm}

uses Modulo, Fornecedores, Produtos, CancelarItem;

{ TFrmEntradaNotas }

procedure TFrmEntradaNotas.associarCamposContasapagar;
begin
  dm.tb_contas_a_pagar.FieldByName('id_fornecedor').Value := idfornecedor;
   dm.tb_contas_a_pagar.FieldByName('nome_fornecedor').Value := nomeFornecedor;
   dm.tb_contas_a_pagar.FieldByName('data_cad').Value := Date;
   dm.tb_contas_a_pagar.FieldByName('hora_data_cad').Value := StrToTime(hora);
   dm.tb_contas_a_pagar.FieldByName('data_venc').Value := dataVenc;

   dm.tb_contas_a_pagar.FieldByName('valor').Value := edtTotalCompra.Text;

   dm.tb_contas_a_pagar.FieldByName('situacao').Value := 'a vencer';
end;

procedure TFrmEntradaNotas.associarCamposDetNota;
begin
    dm.tb_detalhes_notas.FieldByName('id_nota').Value := '0';
    dm.tb_detalhes_notas.FieldByName('produto').Value := edtProduto.Text;
    dm.tb_detalhes_notas.FieldByName('valor').Value := edtPreco.Text;
    dm.tb_detalhes_notas.FieldByName('quantidade').Value := strToFloat(edtQuantidade.Text);
    dm.tb_detalhes_notas.FieldByName('total').Value := totalItem;
    dm.tb_detalhes_notas.FieldByName('id_produto').Value := idProduto;
    dm.tb_detalhes_notas.FieldByName('funcionario').Value := nomeUsuario;
    dm.tb_detalhes_notas.FieldByName('data').Value := dateTOstr(Date);

end;

procedure TFrmEntradaNotas.associarCamposNota;
begin
  dm.tb_notadecompra.FieldByName('total').Value := edtTotalCompra.Text;

  dm.tb_notadecompra.FieldByName('numeronota').Value := edtNumeroNota.Text;
  dm.tb_notadecompra.FieldByName('data').Value := DateToStr(Date);
  dm.tb_notadecompra.FieldByName('fornecedor').Value := nomeFornecedor;
  dm.tb_notadecompra.FieldByName('funcionario').Value := nomeUsuario;



end;

procedure TFrmEntradaNotas.buscarProduto;
begin
  if chamadaProdPDV <> 'ProdNota' then
   begin
              dm.query_produtos.Close;
              dm.query_produtos.SQL.Clear;
              dm.query_produtos.SQL.Add('SELECT * from produtos where codigo = :codigo');
              dm.query_produtos.ParamByName('codigo').Value := edtCodBarras.Text;
              dm.query_produtos.Open;


           if not dm.query_produtos.isEmpty then
                 begin



                   edtProduto.Text :=  dm.query_produtos['nome'];
                   edtDescri��o.Text :=  dm.query_produtos['descricao'];
                   edtPreco.Text :=  dm.query_produtos['valorcusto'];

                   edtEstoque.Text :=  dm.query_produtos['estoque'];
                   idProduto :=  dm.query_produtos['id'];





               //NO PDV NAO � NECESS�RIO VERIFICAR ESTOQUE NA VENDA


                  {if strtoFloat(edtEstoque.Text) < StrToFloat(edtQuantidade.Text) then
                   begin
                       MessageDlg('N�o existe produtos em estoque', mtInformation, mbOKCancel, 0);


                       exit;
                   end; }


                   totalItem := strToFloat(edtQuantidade.Text) * strToFloat(edtPreco.text);

                   totalCompra := totalCompra + totalItem;


                   edtTotal.Text := FormatFloat('R$ #,,,,0.00', totalItem);
                   edtSubTotal.Text := FormatFloat('R$ #,,,,0.00', totalCompra);
                   edtTotalCompra.Text := FormatFloat('R$ #,,,,0.00', totalCompra);
                   totalcomprafornecedor :=  totalCompra;





                   dm.tb_detalhes_notas.Insert;
                   salvarItens;



                   end
                   else
                   begin


                 end;
end;

end;

procedure TFrmEntradaNotas.edtCodBarrasChange(Sender: TObject);
begin

    if edtCodBarras.Text <> '' then
    buscarProduto;

end;

procedure TFrmEntradaNotas.FormActivate(Sender: TObject);
begin



    if  chamadaCancelarItem =  'cancelarItem' then
    begin
      totalCompra := totalCompra - totalProdutos;
      edtSubTotal.Text := FormatFloat('R$ #,,,,0.00', totalCompra);
      edtTotalCompra.Text := FloatToStr(totalCompra);
      listar;
      chamadaCancelarItem := '';


    end;
   if janelacancelariten = 'aberto' then
 begin
   FrmCancelarItem.Close;
 end;


  if chamadaProdPDV = 'ProdNota' then
    begin

              edtCodBarras.Text := produtoCodBarras;
              edtDescri��o.Text := produtoDescricao;
              edtProduto.Text := nomeProduto;
              edtPreco.Text := produtoPreco;
              edtEstoque.Text := FloatToStr(estoqueProduto);

                    totalItem := strToFloat(edtQuantidade.Text) * strToFloat(edtPreco.text);
                   totalCompra := totalCompra + totalItem;

                   edtTotal.Text := FormatFloat('R$ #,,,,0.00', totalItem);
                   edtSubTotal.Text := FormatFloat('R$ #,,,,0.00', totalCompra);
                   edtTotalCompra.Text := FormatFloat('R$ #,,,,0.00', totalCompra);




                   dm.tb_detalhes_notas.Insert;
                   salvarItens;
                   //edtTotal.Text := '';
                    chamadaProdPDV :='';
                    //totalCompra := 0;
                    chamada := '';
                    exit

    end;

    if  chamada = 'Forn' then
     begin

     edtFornecedor.Text := nomeFornecedor;

     end;


end;

procedure TFrmEntradaNotas.FormClose(Sender: TObject; var Action: TCloseAction);
var
  idProduto, IddetNota : integer;
  quantItem :Double;
  estoqueP   : Double;
  estoqueDevolver : Double;

begin


     limpar;
     frmVen := '';
    chamada := '';

    MediaPlayer1.Destroy;

    dm.query_detalhes_notas.Close;
    dm.query_detalhes_notas.SQL.Clear;
    dm.query_detalhes_notas.SQL.Add('SELECT * FROM detalhes_notas where id_nota = :id_nota');
    dm.query_detalhes_notas.ParamByName('id_nota').Value := 0;
    dm.query_detalhes_notas.open;



           if not dm.query_detalhes_notas.IsEmpty then
              begin
                while not dm.query_detalhes_notas.Eof  do

                     begin

                     idProduto :=  dm.query_detalhes_notas['id_produto'];
                     quantItem :=  dm.query_detalhes_notas['quantidade'];
                     IddetNota := dm.query_detalhes_notas['id'];

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
                          estoqueDevolver := estoqueP - quantItem;
                          end;

                       dm.query_produtos.Close;
                       dm.query_produtos.SQL.Clear;
                       dm.query_produtos.SQL.Add('UPDATE produtos set estoque = :estoque where id = :id');
                       dm.query_produtos.ParamByName('estoque').Value := estoqueDevolver;
                       dm.query_produtos.ParamByName('id').Value := idProduto;
                       dm.query_produtos.ExecSQL;




                   dm.query_coringa.Close;
                   dm.query_coringa.SQL.Clear;
                   dm.query_coringa.SQL.Add('DELETE FROM detalhes_notas where id = :id');
                   dm.query_coringa.ParamByName('id').Value := IddetNota;
                   dm.query_coringa.Execute;


                   dm.query_detalhes_notas.Next;


                  end;



                end




end;

procedure TFrmEntradaNotas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key=VK_F2 then
        begin
            dm.tb_notadecompra.Insert;
            dm.tb_contas_a_pagar.Insert;
            salvarNota;
            salvarcontasapagar;

            MessageDlg('Salvo com Sucesso', mtInformation, mbOKCancel, 0);
            limpar;
        end;
        if key=VK_F6 then
        begin
           chamada := 'Forn';
            FrmFornecedores := TFrmFornecedores.Create(self);
            FrmFornecedores.Show;
          end;

         if key=VK_F1 then
        begin
            chamadaProdPDV := 'ProdNota';
            FrmProdutos := TFrmProdutos.Create(self);
            FrmProdutos.Show;
          end;

          if key = VK_ESCAPE then
      begin
          chamada :=  'nota';

          FrmCancelarItem := TFrmCancelarItem.Create(self);
          FrmCancelarItem.Show;
      end;


end;

procedure TFrmEntradaNotas.FormShow(Sender: TObject);
begin
   limpar;
    listar;
    dm.tb_notadecompra.Active := true;
    dm.tb_detalhes_notas.Active := true;
    dm.tb_contas_a_pagar.Active := true;

    totalItem := 0;
    totalVenda := 0;
    estoque := 0;
    totalcomDesconto := 0;
    troco := 0;
    edtSubTotal.Text :='0';
     edtQuantidade.SetFocus;
     frmVen := 'ativo';
end;

procedure TFrmEntradaNotas.limpar;
begin
edtCodBarras.Text := '';
edtProduto.Text := '';
edtDescri��o.Text := '';
edtPreco.Text := '0';
edtQuantidade.Text := '1';
edtEstoque.Text := '0';
edtFornecedor.Text := '';
edtNumeroNota.Text := '';

edtTotal.Text := '0';
edtSubTotal.Text := '0';
edtTotalCompra.Text := '0';

chamada := '';
pagamento := '';
totalcrediario := 0;
totalCompra := 0;


nomeClientes := '';
idClientes := '0';
edtCodBarras.SetFocus;
chamadaFinalizarCliente := '';
totalItem := 0;

//
end;

procedure TFrmEntradaNotas.limparFoto;
begin

end;

procedure TFrmEntradaNotas.limparProdutos;
begin
edtProduto.Text := '';
edtDescri��o.Text := '';
edtPreco.Text := '0';

edtEstoque.Text := '0';
limparFoto;
totalItem := 0;
end;

procedure TFrmEntradaNotas.listar;
begin
    dm.query_detalhes_notas.Close;
     dm.query_detalhes_notas.SQL.Clear;
     dm.query_detalhes_notas.SQL.Add('SELECT * from detalhes_notas where id_nota = 0 order by id asc');
     //dm.query_detalhes_notas.ParamByName('func').Value := nomeUsuario;
     dm.query_detalhes_notas.Open;

     DBGrid1.Columns[0].Alignment := taCenter;
     DBGrid1.Columns[2].Alignment := taCenter;
     DBGrid1.Columns[3].Alignment := taLeftJustify;
end;

procedure TFrmEntradaNotas.Panel11Click(Sender: TObject);
begin
    chamadaProdPDV := 'ProdNota';
    FrmProdutos := TFrmProdutos.Create(self);
    FrmProdutos.Show;
end;

procedure TFrmEntradaNotas.Panel12Click(Sender: TObject);
begin

            dm.tb_notadecompra.Insert;
            dm.tb_contas_a_pagar.Insert;
            salvarNota;
            salvarcontasapagar;
            MessageDlg('Salvo com Sucesso', mtInformation, mbOKCancel, 0);
            limpar;
end;

procedure TFrmEntradaNotas.Panel13Click(Sender: TObject);
begin
 chamada := 'Forn';
  FrmFornecedores := TFrmFornecedores.Create(self);
  FrmFornecedores.Show;
end;

procedure TFrmEntradaNotas.Panel14Click(Sender: TObject);
begin

      chamada :=  'nota';

      FrmCancelarItem := TFrmCancelarItem.Create(self);
      FrmCancelarItem.Show;

end;

procedure TFrmEntradaNotas.Panel5Click(Sender: TObject);
begin
 chamada := 'Forn';
  FrmFornecedores := TFrmFornecedores.Create(self);
  FrmFornecedores.Show;
end;

procedure TFrmEntradaNotas.salvarcontasapagar;
begin


      //RECUPERAR DADOS FORNECEDOR
      dm.tb_forn.Close;
      dm.tb_forn.SQL.Clear;
      dm.tb_forn.SQL.Add('SELECT * from forn where nome = :nome');
      dm.tb_forn.ParamByName('nome').Value := nomeFornecedor;
      //dm.query_vendas.ParamByName('func').Value := nomeFunc;
      dm.tb_forn.Open;

       if not dm.tb_forn.isEmpty then
       begin
         idFornecedor :=  dm.tb_forn['id'];
         dia_vencimento := dm.tb_forn['dia_vencimento'];

       end;

//SALVAR
      hora := TimeToStr(Time);
      dataatual := Date;
      dataVenc := dataatual + StrToFloat(dia_vencimento);

      dm.tb_contas_a_pagar.Insert;
      associarCamposContasapagar;
      dm.tb_contas_a_pagar.Post;

      dm.query_detalhes_notas.Close;
      dm.query_detalhes_notas.SQL.Clear;
      dm.query_detalhes_notas.SQL.Add('UPDATE detalhes_notas set id_nota = :id where id_nota = 0 and funcionario = :func');
      dm.query_detalhes_notas.ParamByName('id').Value := idNota;
      dm.query_detalhes_notas.ParamByName('func').Value := nomeUsuario;
      dm.query_detalhes_notas.ExecSQL;
end;

procedure TFrmEntradaNotas.salvarItens;
begin




    if (Trim(edtQuantidade.Text) = '') or (edtQuantidade.Text = '0') then
     begin
         MessageDlg('Insira a quantidade correta!', mtInformation, mbOKCancel, 0);
         edtQuantidade.SetFocus;
         edtCodBarras.Text := '';
         exit;
     end;




associarCamposDetNota;
dm.tb_detalhes_notas.Post;
listar;


MediaPlayer1.FileName :=  ExtractFileDir(GetCurrentDir) + '\Debug\img\barCode.wav';
MediaPlayer1.Open;
MediaPlayer1.Play;


//ADD O ESTOQUE DO PRODUTO

       estoque := strToFloat(edtEstoque.Text) + strToFloat(edtQuantidade.Text);

       dm.query_produtos.Close;
       dm.query_produtos.SQL.Clear;
       dm.query_produtos.SQL.Add('UPDATE produtos set estoque = :estoque, ultima_compra = :data where id = :id');
        dm.query_produtos.ParamByName('data').Value := Date;
       dm.query_produtos.ParamByName('estoque').Value := estoque;

       dm.query_produtos.ParamByName('id').Value := idProduto;
       dm.query_produtos.ExecSQL;






      {totalCompra := totalCompra + totalItem;
      edtSubTotal.Text := FormatFloat('R$ #,,,,0.00', totalCompra);
      edtTotalCompra.Text := FloatToStr(totalCompra);
      listar; }

       edtCodBarras.Text := '';
      edtQuantidade.SetFocus;
      edtQuantidade.Text := '1';
      edtTotal.Text := '';
      chamadaprodPDV := '';
      chamada := '';

end;

procedure TFrmEntradaNotas.salvarNota;
begin
   associarCamposNota;
      dm.tb_notadecompra.Post;

      //RELACIONAR O ID DA VENDA COM OS ID_VENDA DOS ITENS
      dm.query_notadecompra.Close;
      dm.query_notadecompra.SQL.Clear;
      dm.query_notadecompra.SQL.Add('SELECT * from notadecompra order by id desc');
      //dm.query_vendas.ParamByName('func').Value := nomeFunc;
      dm.query_notadecompra.Open;

       if not dm.query_notadecompra.isEmpty then
       begin
         idNota :=  dm.query_notadecompra['id'];
       end;



      dm.query_detalhes_notas.Close;
      dm.query_detalhes_notas.SQL.Clear;
      dm.query_detalhes_notas.SQL.Add('UPDATE detalhes_notas set id_nota = :id where id_nota = 0 and funcionario = :func');
      dm.query_detalhes_notas.ParamByName('id').Value := idNota;
      dm.query_detalhes_notas.ParamByName('func').Value := nomeUsuario;
      dm.query_detalhes_notas.ExecSQL;


      {//LAN�AR O VALOR DA VENDA NAS MOVIMENTA��ES
       dm.query_mov.Close;
      dm.query_mov.SQL.Clear;
      dm.query_mov.SQL.Add('INSERT INTO movimentacoes (tipo, movimento, valor, funcionario, data, id_movimento) VALUES (:tipo, :movimento, :valor, :funcionario, curDate(), :id_movimento)');
      dm.query_mov.ParamByName('tipo').Value := 'Entrada';
      dm.query_mov.ParamByName('movimento').Value := 'Venda';
      dm.query_mov.ParamByName('valor').Value := totalcomDesconto;;
      dm.query_mov.ParamByName('funcionario').Value := nomeUsuario;
      dm.query_mov.ParamByName('id_movimento').Value := idNota;
      dm.query_mov.ExecSQL; }

      {//lan�ar o valor para o cliente
      if (pagamento = 'crediario') and (totalcrediario <> 0) then
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
      dm.query_clientes.ExecSQL;}
     end;




end.
