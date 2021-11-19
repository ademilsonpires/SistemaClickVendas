unit ImprimirBarras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TFrmImprimirBarras = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    PrintDialog1: TPrintDialog;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image20: TImage;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Image21: TImage;
    Image22: TImage;
    Image23: TImage;
    Image24: TImage;
    Image25: TImage;
    Image26: TImage;
    Image27: TImage;
    Image28: TImage;
    Image29: TImage;
    Image30: TImage;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    Edit27: TEdit;
    Edit28: TEdit;
    Edit29: TEdit;
    Edit30: TEdit;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

  private
    { Private declarations }
     procedure GerarCodigo(codigo: string; Canvas: TCanvas);
  public
    { Public declarations }
  end;

var
  FrmImprimirBarras: TFrmImprimirBarras;

implementation

{$R *.dfm}

uses Modulo;



procedure TFrmImprimirBarras.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 13 then
begin
  if(PrintDialog1.Execute) then
   begin
     Print;
   end;
end;

end;

procedure TFrmImprimirBarras.FormShow(Sender: TObject);
begin
    GerarCodigo(codigoProduto, Image1.Canvas);
        Label1.Caption := nomeProduto;
        Edit1.Text := FormatFloat('R$ #,,,,0.00', valorProduto);

    GerarCodigo(codigoProduto, Image2.Canvas);
        Label2.Caption := nomeProduto;
        Edit2.Text := FormatFloat('R$ #,,,,0.00', valorProduto);

    GerarCodigo(codigoProduto, Image3.Canvas);
        Label3.Caption := nomeProduto;
        Edit3.Text := FormatFloat('R$ #,,,,0.00', valorProduto);

    GerarCodigo(codigoProduto, Image4.Canvas);
        Label4.Caption := nomeProduto;
        Edit4.Text := FormatFloat('R$ #,,,,0.00', valorProduto);

    GerarCodigo(codigoProduto, Image5.Canvas);
        Label5.Caption := nomeProduto;
        Edit5.Text := FormatFloat('R$ #,,,,0.00', valorProduto);

    GerarCodigo(codigoProduto, Image6.Canvas);
        Label6.Caption := nomeProduto;
        Edit6.Text := FormatFloat('R$ #,,,,0.00', valorProduto);


    GerarCodigo(codigoProduto, Image7.Canvas);
        Label7.Caption := nomeProduto;
        Edit7.Text := FormatFloat('R$ #,,,,0.00', valorProduto);


    GerarCodigo(codigoProduto, Image8.Canvas);
        Label8.Caption := nomeProduto;
        Edit8.Text := FormatFloat('R$ #,,,,0.00', valorProduto);


    GerarCodigo(codigoProduto, Image9.Canvas);
        Label9.Caption := nomeProduto;
        Edit9.Text := FormatFloat('R$ #,,,,0.00', valorProduto);


    GerarCodigo(codigoProduto, Image10.Canvas);

        Label10.Caption := nomeProduto;
        Edit10.Text := FormatFloat('R$ #,,,,0.00', valorProduto);

      GerarCodigo(codigoProduto, Image11.Canvas);
        Label11.Caption := nomeProduto;
        Edit11.Text := FormatFloat('R$ #,,,,0.00', valorProduto);

    GerarCodigo(codigoProduto, Image12.Canvas);
        Label12.Caption := nomeProduto;
        Edit12.Text := FormatFloat('R$ #,,,,0.00', valorProduto);

    GerarCodigo(codigoProduto, Image13.Canvas);
        Label13.Caption := nomeProduto;
        Edit13.Text := FormatFloat('R$ #,,,,0.00', valorProduto);

    GerarCodigo(codigoProduto, Image14.Canvas);
        Label14.Caption := nomeProduto;
        Edit14.Text := FormatFloat('R$ #,,,,0.00', valorProduto);

    GerarCodigo(codigoProduto, Image15.Canvas);
        Label15.Caption := nomeProduto;
        Edit15.Text := FormatFloat('R$ #,,,,0.00', valorProduto);

    GerarCodigo(codigoProduto, Image16.Canvas);
        Label16.Caption := nomeProduto;
        Edit16.Text := FormatFloat('R$ #,,,,0.00', valorProduto);


    GerarCodigo(codigoProduto, Image17.Canvas);
        Label17.Caption := nomeProduto;
        Edit17.Text := FormatFloat('R$ #,,,,0.00', valorProduto);


    GerarCodigo(codigoProduto, Image18.Canvas);
        Label18.Caption := nomeProduto;
        Edit18.Text := FormatFloat('R$ #,,,,0.00', valorProduto);


    GerarCodigo(codigoProduto, Image19.Canvas);
        Label19.Caption := nomeProduto;
        Edit19.Text := FormatFloat('R$ #,,,,0.00', valorProduto);


    GerarCodigo(codigoProduto, Image20.Canvas);

        Label20.Caption := nomeProduto;
        Edit20.Text := FormatFloat('R$ #,,,,0.00', valorProduto);

    GerarCodigo(codigoProduto, Image21.Canvas);
        Label21.Caption := nomeProduto;
        Edit21.Text := FormatFloat('R$ #,,,,0.00', valorProduto);

    GerarCodigo(codigoProduto, Image22.Canvas);
        Label22.Caption := nomeProduto;
        Edit22.Text := FormatFloat('R$ #,,,,0.00', valorProduto);

    GerarCodigo(codigoProduto, Image23.Canvas);
        Label23.Caption := nomeProduto;
        Edit23.Text := FormatFloat('R$ #,,,,0.00', valorProduto);

    GerarCodigo(codigoProduto, Image24.Canvas);
        Label24.Caption := nomeProduto;
        Edit24.Text := FormatFloat('R$ #,,,,0.00', valorProduto);

    GerarCodigo(codigoProduto, Image25.Canvas);
        Label25.Caption := nomeProduto;
        Edit25.Text := FormatFloat('R$ #,,,,0.00', valorProduto);

    GerarCodigo(codigoProduto, Image26.Canvas);
        Label26.Caption := nomeProduto;
        Edit26.Text := FormatFloat('R$ #,,,,0.00', valorProduto);


    GerarCodigo(codigoProduto, Image27.Canvas);
        Label27.Caption := nomeProduto;
        Edit27.Text := FormatFloat('R$ #,,,,0.00', valorProduto);


    GerarCodigo(codigoProduto, Image28.Canvas);
        Label28.Caption := nomeProduto;
        Edit28.Text := FormatFloat('R$ #,,,,0.00', valorProduto);


    GerarCodigo(codigoProduto, Image29.Canvas);
        Label29.Caption := nomeProduto;
        Edit29.Text := FormatFloat('R$ #,,,,0.00', valorProduto);


    GerarCodigo(codigoProduto, Image30.Canvas);

        Label30.Caption := nomeProduto;
        Edit30.Text := FormatFloat('R$ #,,,,0.00', valorProduto);




end;

procedure TFrmImprimirBarras.GerarCodigo(codigo: string; Canvas: TCanvas);
const
digitos : array['0'..'9'] of string[5]= ('00110', '10001', '01001', '11000',
'00101', '10100', '01100', '00011', '10010', '01010');
var s : string;
i, j, x, t : Integer;
begin
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
Canvas.Rectangle(10,10, 500, 50);
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

end;

end.
