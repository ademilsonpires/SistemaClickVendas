unit criar_banco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, Vcl.StdCtrls, FireDAC.Comp.Client, Data.DB;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    FDCommand1: TFDCommand;
    Button1: TButton;
    FDCommand2: TFDCommand;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
FDCommand1.Active := true;
FDCommand2.Active := true;
ShowMessage('verifique o banco de dados');
end;

end.
