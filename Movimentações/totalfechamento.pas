unit totalfechamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  Ttotalizarcaixa = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  totalizarcaixa: Ttotalizarcaixa;


implementation

{$R *.dfm}

uses Modulo;

procedure Ttotalizarcaixa.BitBtn1Click(Sender: TObject);
begin
valorVendidoFechamento := 0;
valorAberturaFechamento := 0;
valorTotalFechamento := 0;
close;
end;

procedure Ttotalizarcaixa.FormShow(Sender: TObject);

begin
  //RECUPERAR O TOTAL VENDIDO NO DIA PELO FUNCIONÁRIO
       dm.query_coringa.Close;
      dm.query_coringa.SQL.Clear;
      dm.query_coringa.SQL.Add('select sum(valor) as total from vendas where data = curDate() and funcionario = :func and status = :status and caixa = :numcaixa and statuscaixa = :statuscx');
      dm.query_coringa.ParamByName('func').Value :=  nomeUsuario;
      dm.query_coringa.ParamByName('numcaixa').Value :=  numeroCaixa;
      dm.query_coringa.ParamByName('statuscx').Value :=  'aberto';
      dm.query_coringa.ParamByName('status').Value :=  'Concluída';
      dm.query_coringa.Prepare;
      dm.query_coringa.Open;
      valorVendidoFechamento := dm.query_coringa.FieldByName('total').AsFloat;
      //:= dm.query_coringa.FieldByName('total').Value;


      //RECUPERAR O VALOR DA ABERTURA
       dm.query_caixa.Close;
       dm.query_caixa.SQL.Clear;
       dm.query_caixa.SQL.Add('SELECT * from caixa where status = :status and num_caixa = :num');
        dm.query_caixa.ParamByName('status').Value := 'Aberto';
         dm.query_caixa.ParamByName('num').Value := numeroCaixa;
       dm.query_caixa.Open;

       //valorAberturaFechamento := dm.query_caixa.FieldByName('valor_abertura').Value;

        valorAberturaFechamento :=  dm.query_caixa['valor_abertura'];
       valorTotalFechamento := valorAberturaFechamento + valorVendidoFechamento;

       //Edit1.Text := FloatToS(valorTotalFechamento);
       Edit1.Text := FormatFloat('R$ #,,,,0.00', valorTotalFechamento);


end;

end.
