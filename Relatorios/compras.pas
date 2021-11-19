unit compras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrmConsultarNotasCompras = class(TForm)
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    BtnCancelar: TSpeedButton;
    btnComprovante: TSpeedButton;
    cbEntradaSaida: TComboBox;
    dataInicial: TDateTimePicker;
    dataFinal: TDateTimePicker;
    grid: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultarNotasCompras: TFrmConsultarNotasCompras;

implementation

{$R *.dfm}

uses Modulo;

end.
