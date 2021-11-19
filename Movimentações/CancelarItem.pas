unit CancelarItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmCancelarItem = class(TForm)
    edtIdItem: TEdit;
    Label1: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCancelarItem: TFrmCancelarItem;
  estoque : double;
  quantidade : double;



implementation

{$R *.dfm}

uses Modulo;

procedure TFrmCancelarItem.Button1Click(Sender: TObject);
begin
        janelacancelariten := 'fechado';
        chamadaCancelarItem :=  'cancelarItem';

         if chamada = 'nota' then
             begin
              if Trim(edtIdItem.Text) <> '' then
                 begin
                 //RECUPERAR A QUANTIDADE, VALOR e ID DO PRODUTO DO ITEM
                  dm.query_coringa.Close;
                  dm.query_coringa.SQL.Clear;
                  dm.query_coringa.SQL.Add('SELECT * from detalhes_notas where id = :id and id_nota = :idnota');
                  dm.query_coringa.ParamByName('id').Value := edtIdItem.Text;
                  dm.query_coringa.ParamByName('idnota').Value := 0;
                  dm.query_coringa.Open;


                   if not dm.query_coringa.isEmpty then
                         begin

                          quantidade :=  dm.query_coringa['quantidade'];
                          totalProdutos :=  dm.query_coringa['total'];
                          idProduto := dm.query_coringa['id_produto'];

                         end;
                   if dm.query_coringa.isEmpty then
                         begin
                          quantidade :=  0;
                          totalProdutos :=  0;
                          idProduto := '0';
                          janelacancelariten := 'aberto';

                          MessageDlg('Íten inválido!', mtInformation, mbOKCancel, 0);

                          exit

                         end;

                    //RECUPERAR O ESTOQUE DO PRODUTO EXCLUIDO
                  dm.query_produtos.Close;
                  dm.query_produtos.SQL.Clear;
                  dm.query_produtos.SQL.Add('SELECT * from produtos where id = :id');
                  dm.query_produtos.ParamByName('id').Value := idProduto;
                  dm.query_produtos.Open;


                   if not dm.query_produtos.isEmpty then
                         begin

                          estoque :=  dm.query_produtos['estoque'];

                         end;

                    //REMOVER  DO  ESTOQUE
                       estoque := estoque - quantidade;

                       dm.query_produtos.Close;
                       dm.query_produtos.SQL.Clear;
                       dm.query_produtos.SQL.Add('UPDATE produtos set estoque = :estoque where id = :id');
                       dm.query_produtos.ParamByName('estoque').Value := estoque;

                       dm.query_produtos.ParamByName('id').Value := idProduto;
                       dm.query_produtos.ExecSQL;


                    try
                   dm.query_coringa.Close;
                   dm.query_coringa.SQL.Clear;
                   dm.query_coringa.SQL.Add('DELETE from detalhes_notas where id = :id');
                   dm.query_coringa.ParamByName('id').Value := edtIdItem.Text;
                   dm.query_coringa.ExecSQL;
                   close;

                   except
                   MessageDlg('Código do Produto Inválido!!', mtInformation, mbOKCancel, 0);
                   edtIdItem.Text := '';
                   edtIdItem.SetFocus;
                   exit;
                   end;
                 end;



             end
             else
             begin
              if Trim(edtIdItem.Text) = '' then
                 begin
                     MessageDlg('Insira o Código do Item!', mtInformation, mbOKCancel, 0);
                     edtIdItem.Text := '';
                     edtIdItem.SetFocus;

                     exit;
              end;



                   //RECUPERAR A QUANTIDADE, VALOR e ID DO PRODUTO DO ITEM VENDIDO
                   dm.query_coringa.Close;
                  dm.query_coringa.SQL.Clear;
                  dm.query_coringa.SQL.Add('SELECT * from detalhes_vendas where id = :id and id_venda = :idvenda');
                  dm.query_coringa.ParamByName('id').Value := edtIdItem.Text;
                  dm.query_coringa.ParamByName('idvenda').Value := 0;
                  dm.query_coringa.Open;


                   if not dm.query_coringa.isEmpty then
                         begin

                          quantidade :=  dm.query_coringa['quantidade'];
                          totalProdutos :=  dm.query_coringa['total'];
                          idProduto := dm.query_coringa['id_produto'];

                         end;
                   if dm.query_coringa.isEmpty then
                         begin
                          quantidade :=  0;
                          totalProdutos :=  0;
                          idProduto := '0';
                          janelacancelariten := 'aberto';
                          MessageDlg('Íten inválido!', mtInformation, mbOKCancel, 0);
                          exit

                         end;



                          //RECUPERAR O ESTOQUE DO PRODUTO EXCLUIDO
                  dm.query_produtos.Close;
                  dm.query_produtos.SQL.Clear;
                  dm.query_produtos.SQL.Add('SELECT * from produtos where id = :id');
                  dm.query_produtos.ParamByName('id').Value := idProduto;
                  dm.query_produtos.Open;


                   if not dm.query_produtos.isEmpty then
                         begin

                          estoque :=  dm.query_produtos['estoque'];

                         end;





                //DEVOLVER  O PRODUTO PARA O ESTOQUE
                       estoque := estoque + quantidade;

                       dm.query_produtos.Close;
                       dm.query_produtos.SQL.Clear;
                       dm.query_produtos.SQL.Add('UPDATE produtos set estoque = :estoque where id = :id');
                       dm.query_produtos.ParamByName('estoque').Value := estoque;

                       dm.query_produtos.ParamByName('id').Value := idProduto;
                       dm.query_produtos.ExecSQL;


               try
                   dm.query_coringa.Close;
                   dm.query_coringa.SQL.Clear;
                   dm.query_coringa.SQL.Add('DELETE from detalhes_vendas where id = :id');
                   dm.query_coringa.ParamByName('id').Value := edtIdItem.Text;
                   dm.query_coringa.ExecSQL;
                   close;

                   except
                   MessageDlg('Código do Produto Inválido!!', mtInformation, mbOKCancel, 0);
                   edtIdItem.Text := '';
                   edtIdItem.SetFocus;
                   exit;
                   end;
             end;






end;

procedure TFrmCancelarItem.Button2Click(Sender: TObject);
begin
    chamadaCancelarItem :=  '';
    chamada := '';
    janelacancelariten := 'fechado';
    close;
end;

procedure TFrmCancelarItem.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        {if key = 13 then
        begin
               if chamada = 'nota' then
             begin
                 //RECUPERAR A QUANTIDADE, VALOR e ID DO PRODUTO DO ITEM
                   dm.query_coringa.Close;
                  dm.query_coringa.SQL.Clear;
                  dm.query_coringa.SQL.Add('SELECT * from detalhes_notas where id = :id');
                  dm.query_coringa.ParamByName('id').Value := edtIdItem.Text;
                  dm.query_coringa.Open;


                   if not dm.query_coringa.isEmpty then
                         begin

                          quantidade :=  dm.query_coringa['quantidade'];
                          totalProdutos :=  dm.query_coringa['total'];
                          idProduto := dm.query_coringa['id_produto'];
                          janelacancelariten := 'fechado';

                         end;
                   if dm.query_coringa.isEmpty then
                         begin
                          quantidade :=  0;
                          totalProdutos :=  0;
                          idProduto := '0';

                          MessageDlg('Íten inválido!', mtInformation, mbOKCancel, 0);

                          exit

                         end;

                    //RECUPERAR O ESTOQUE DO PRODUTO EXCLUIDO
                  dm.query_produtos.Close;
                  dm.query_produtos.SQL.Clear;
                  dm.query_produtos.SQL.Add('SELECT * from produtos where id = :id');
                  dm.query_produtos.ParamByName('id').Value := idProduto;
                  dm.query_produtos.Open;


                   if not dm.query_produtos.isEmpty then
                         begin

                          estoque :=  dm.query_produtos['estoque'];

                         end;

                    //REMOVER  DO  ESTOQUE
                       estoque := estoque - quantidade;

                       dm.query_produtos.Close;
                       dm.query_produtos.SQL.Clear;
                       dm.query_produtos.SQL.Add('UPDATE produtos set estoque = :estoque where id = :id');
                       dm.query_produtos.ParamByName('estoque').Value := estoque;

                       dm.query_produtos.ParamByName('id').Value := idProduto;
                       dm.query_produtos.ExecSQL;


               try
                   dm.query_coringa.Close;
                   dm.query_coringa.SQL.Clear;
                   dm.query_coringa.SQL.Add('DELETE from detalhes_notas where id = :id');
                   dm.query_coringa.ParamByName('id').Value := edtIdItem.Text;
                   dm.query_coringa.ExecSQL;
                   close;

                   except
                   MessageDlg('Código do Produto Inválido!!', mtInformation, mbOKCancel, 0);
                   edtIdItem.Text := '';
                   edtIdItem.SetFocus;
                   exit;
                   end;



             end
             else
             begin
              if Trim(edtIdItem.Text) = '' then
                 begin
                     MessageDlg('Insira o Código do Item!', mtInformation, mbOKCancel, 0);
                     edtIdItem.Text := '';
                     edtIdItem.SetFocus;

                     exit;
              end;



                   //RECUPERAR A QUANTIDADE, VALOR e ID DO PRODUTO DO ITEM VENDIDO
                   dm.query_coringa.Close;
                  dm.query_coringa.SQL.Clear;
                  dm.query_coringa.SQL.Add('SELECT * from detalhes_vendas where id = :id');
                  dm.query_coringa.ParamByName('id').Value := edtIdItem.Text;
                  dm.query_coringa.Open;


                   if not dm.query_coringa.isEmpty then
                         begin

                          quantidade :=  dm.query_coringa['quantidade'];
                          totalProdutos :=  dm.query_coringa['total'];
                          idProduto := dm.query_coringa['id_produto'];
                          janelacancelariten := 'fechado';

                         end;
                   if dm.query_coringa.isEmpty then
                         begin
                          quantidade :=  0;
                          totalProdutos :=  0;
                          idProduto := '0';

                          MessageDlg('Íten inválido!', mtInformation, mbOKCancel, 0);

                          exit

                         end;



                          //RECUPERAR O ESTOQUE DO PRODUTO EXCLUIDO
                  dm.query_produtos.Close;
                  dm.query_produtos.SQL.Clear;
                  dm.query_produtos.SQL.Add('SELECT * from produtos where id = :id');
                  dm.query_produtos.ParamByName('id').Value := idProduto;
                  dm.query_produtos.Open;


                   if not dm.query_produtos.isEmpty then
                         begin

                          estoque :=  dm.query_produtos['estoque'];

                         end;





                //DEVOLVER  O PRODUTO PARA O ESTOQUE
                       estoque := estoque + quantidade;

                       dm.query_produtos.Close;
                       dm.query_produtos.SQL.Clear;
                       dm.query_produtos.SQL.Add('UPDATE produtos set estoque = :estoque where id = :id');
                       dm.query_produtos.ParamByName('estoque').Value := estoque;

                       dm.query_produtos.ParamByName('id').Value := idProduto;
                       dm.query_produtos.ExecSQL;


               try
                   dm.query_coringa.Close;
                   dm.query_coringa.SQL.Clear;
                   dm.query_coringa.SQL.Add('DELETE from detalhes_vendas where id = :id');
                   dm.query_coringa.ParamByName('id').Value := edtIdItem.Text;
                   dm.query_coringa.ExecSQL;
                   close;

                   except
                   MessageDlg('Código do Produto Inválido!!', mtInformation, mbOKCancel, 0);
                   edtIdItem.Text := '';
                   edtIdItem.SetFocus;
                   exit;
                   end;
             end;




          end;}

   if Key = VK_ESCAPE then
               begin
                  chamadaCancelarItem :=  '';
                  chamada := '';

                  janelacancelariten := 'fechado';
                  close;

               end;


end;

procedure TFrmCancelarItem.FormShow(Sender: TObject);
begin
  janelacancelariten := 'aberto';
  chamadaCancelarItem :=  '';
  //chamada :=  '';
  //if chamada <> 'nota' then
  //begin

  //end;
end;

end.
