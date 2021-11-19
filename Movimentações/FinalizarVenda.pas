unit FinalizarVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TFrmFinalizarVenda = class(TForm)
    Image1: TImage;
    btnFinalizarVenda: TSpeedButton;
    edtTotalCredito: TEdit;
    edtTotalDebito: TEdit;
    edtTotalPagar: TEdit;
    Edit2: TEdit;
    Edit1: TEdit;
    Edit3: TEdit;
    edtTroco: TEdit;
    Edit5: TEdit;
    edtTotalDinheiro: TEdit;
    Edit4: TEdit;
    edtTotalCrediario: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btnFinalizarVendaClick(Sender: TObject);

    procedure edtTotalDinheiroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtTotalDinheiroChange(Sender: TObject);
    procedure edtTotalCreditoChange(Sender: TObject);
    procedure edtTotalDebitoChange(Sender: TObject);
    procedure edtTotalCreditoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

    procedure edtTotalCrediarioChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFinalizarVenda: TFrmFinalizarVenda;

implementation

{$R *.dfm}

uses Modulo, Clientes;




procedure TFrmFinalizarVenda.btnFinalizarVendaClick(Sender: TObject);
begin
{totalRecebidoFinalizar := strToFloat(edtTotalDinheiro.Text);
chamada :='finalizarVenda';
close;}
         totalcrediariovenda := strToFloat(edtTotalCrediario.Text);
            if MessageDlg('DESEJA FINALIZAR A VENDA?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
                totalRecebidoFinalizar := strToFloat(edtTotalDinheiro.Text)+ strToFloat(edtTotalCredito.Text)+ strToFloat(edtTotalDebito.Text)+ strToFloat(edtTotalCrediario.Text);
                //ShowMessage(FloatToStr(totalRecebidoFinalizar));
                chamada :='finalizarVenda';

                     if edtTotalCrediario.Text <> '0' then
                        begin
                              pagamento := 'crediario';
                              formadepagamento := 'Crediario';

                        end;
                     if edtTotalDebito.Text <> '0' then
                        begin

                              formadepagamento := 'Debito';
                        end;
                     if edtTotalCredito.Text <> '0' then
                        begin

                              formadepagamento := 'Credito';
                        end;
                     if edtTotalDinheiro.Text <> '0' then
                        begin

                              formadepagamento := 'Dinheiro';
                        end;
                close;
          end;


end;




procedure TFrmFinalizarVenda.edtTotalCrediarioChange(Sender: TObject);
begin
if edtTotalCrediario.Text <> '' then
    begin
        totalcrediario := strToFloat(edtTotalCrediario.Text);
        totalcrediariovenda := strToFloat(edtTotalCrediario.Text);
      //totalPagar := strToFloat(edtTotalPagar.Text);
        troco := (strToFloat(edtTotalDinheiro.Text)+ strToFloat(edtTotalCredito.Text)+ strToFloat(edtTotalDebito.Text) + strToFloat(edtTotalCrediario.Text)) - totalcomDesconto;

        edtTroco.Text := FormatFloat('R$ #,,,,0.00', troco);
    end;
end;

procedure TFrmFinalizarVenda.edtTotalCreditoChange(Sender: TObject);
begin
if edtTotalCredito.Text <> '' then
    begin
      //totalPagar := strToFloat(edtTotalPagar.Text);
        troco := (strToFloat(edtTotalDinheiro.Text)+ strToFloat(edtTotalCredito.Text)+ strToFloat(edtTotalDebito.Text) + strToFloat(edtTotalCrediario.Text)) - totalcomDesconto;



        edtTroco.Text := FormatFloat('R$ #,,,,0.00', troco);
    end;
end;

procedure TFrmFinalizarVenda.edtTotalCreditoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
   begin
      edtTotalDebito.SetFocus;
   end;
end;





procedure TFrmFinalizarVenda.edtTotalDebitoChange(Sender: TObject);
begin
if edtTotalDebito.Text <> '' then
begin
  //totalPagar := strToFloat(edtTotalPagar.Text);
   troco := (strToFloat(edtTotalDinheiro.Text)+ strToFloat(edtTotalCredito.Text)+ strToFloat(edtTotalDebito.Text) + strToFloat(edtTotalCrediario.Text)) - totalcomDesconto;


    edtTroco.Text := FormatFloat('R$ #,,,,0.00', troco);
end;
end;

procedure TFrmFinalizarVenda.edtTotalDinheiroChange(Sender: TObject);

begin
  if edtTotalDinheiro.Text <> '' then
      begin
          //totalPagar := strToFloat(edtTotalPagar.Text);
          //troco := strToFloat(edtTotalDinheiro.Text) - totalcomDesconto;
           // edtTroco.Text := FormatFloat('R$ #,,,,0.00', troco);
           //totalPagar := strToFloat(edtTotalPagar.Text);
          troco := (strToFloat(edtTotalDinheiro.Text)+ strToFloat(edtTotalCredito.Text)+ strToFloat(edtTotalDebito.Text)) - totalcomDesconto;

          edtTroco.Text := FormatFloat('R$ #,,,,0.00', troco);
      end;


end;

procedure TFrmFinalizarVenda.edtTotalDinheiroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if key = 13 then
   begin
      edtTotalCredito.SetFocus;
   end;


end;



procedure TFrmFinalizarVenda.FormActivate(Sender: TObject);
begin
if chamadaFinalizarCliente = 'clientes' then
    begin
    Edit11.Text := nomeClientes;
    edtTotalCrediario.Enabled := true;
    edtTotalCrediario.SetFocus;
    end;
end;

procedure TFrmFinalizarVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

     if Key = VK_f2 then
      begin

                   { if MessageDlg('DESEJA FINALIZAR A VENDA?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
                  totalRecebidoFinalizar := strToFloat(edtTotalDinheiro.Text)+ strToFloat(edtTotalCredito.Text)+ strToFloat(edtTotalDebito.Text) + strToFloat(edtTotalCrediario.Text);
                  chamada :='finalizarVenda';
                   if edtTotalCrediario.Text <> '0' then
              begin
                    pagamento := 'crediario';
              end;
                  close;

            end; }
          totalcrediariovenda := strToFloat(edtTotalCrediario.Text);
            if MessageDlg('DESEJA FINALIZAR A VENDA?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
                totalRecebidoFinalizar := strToFloat(edtTotalDinheiro.Text)+ strToFloat(edtTotalCredito.Text)+ strToFloat(edtTotalDebito.Text)+ strToFloat(edtTotalCrediario.Text);
                //ShowMessage(FloatToStr(totalRecebidoFinalizar));
                chamada :='finalizarVenda';

                     if edtTotalCrediario.Text <> '0' then
                        begin
                              pagamento := 'crediario';
                              formadepagamento := 'Crediario';

                        end;
                     if edtTotalDebito.Text <> '0' then
                        begin

                              formadepagamento := 'Debito';
                        end;
                     if edtTotalCredito.Text <> '0' then
                        begin

                              formadepagamento := 'Credito';
                        end;
                     if edtTotalDinheiro.Text <> '0' then
                        begin

                              formadepagamento := 'Dinheiro';
                        end;
                close;
          end;

     end;

     if Key = VK_ESCAPE then
     begin
        chamada := '';
        close;

     end;

     if key = VK_F6 then
     begin
        if nomeClientes = '' then
          begin
            chamadaFinalizarCliente := 'clientes';
            chamada := 'clientes';
            FrmClientes := TFrmClientes.Create(self);
            FrmClientes.Show;

          end
          else
          begin

            edtTotalCrediario.Enabled := true;
            edtTotalCrediario.SetFocus;


          end;

      end;

     end;



procedure TFrmFinalizarVenda.FormShow(Sender: TObject);
begin
    Edit11.Text := nomeClientes;
    edtTotalPagar.Text := FormatFloat('R$ #,,,,0.00', totalcomDesconto);
    //FormatFloat('R$ #,,,,0.00', edtTotalDinheiro);
    edtTotalDinheiro.Enabled := true;
    edtTotalDinheiro.SetFocus;
    chamadaFinalizarVenda := '1';

end;

end.
