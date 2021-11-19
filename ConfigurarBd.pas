unit ConfigurarBd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrmConfigurarBD = class(TForm)
    edtNome: TEdit;
    edtSenha: TEdit;
    edtUsuario: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfigurarBD: TFrmConfigurarBD;

implementation

{$R *.dfm}

uses Modulo;

procedure TFrmConfigurarBD.SpeedButton1Click(Sender: TObject);
begin
 dm.fd.Params.Database := edtNome.Text;
 dm.fd.Params.UserName := edtUsuario.Text;
 dm.fd.Params.Password := edtSenha.Text;
 Close;
end;

end.
