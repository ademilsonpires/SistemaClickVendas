unit configurarbase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmconfigbd = class(TForm)
    caminho: TLabel;
    edtBase: TEdit;
    Label1: TLabel;
    edServer: TEdit;
    OpenDialog1: TOpenDialog;
    btnBuscar: TButton;
    procedure btnBuscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmconfigbd: TFrmconfigbd;

implementation

{$R *.dfm}

procedure TFrmconfigbd.btnBuscarClick(Sender: TObject);
begin
OpenDialog1.Execute();
edtBase.Text := OpenDialog1.FileName;
end;

end.
