unit Diversos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmDiversos = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    edtValor: TEdit;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure edtValorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure limpar;
    procedure inserirvalor;
    procedure associarcampos;
  public
    { Public declarations }
  end;

var
  FrmDiversos: TFrmDiversos;

implementation

{$R *.dfm}

uses Modulo;



{ TFrmDiversos }

procedure TFrmDiversos.associarcampos;
begin

   dm.tb_produtos.FieldByName('valor').Value := edtValor.Text;
 end;

procedure TFrmDiversos.Button1Click(Sender: TObject);
begin
inserirvalor;
end;

procedure TFrmDiversos.edtValorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=13 then
  begin
    if edtValor.Text <> '' then
        begin
         inserirvalor;
        end;
  end;
end;

procedure TFrmDiversos.FormShow(Sender: TObject);
begin
dm.tb_produtos.Active := true;
chamadaDiversos := 'aberto';
diversosADD := '0';
end;

procedure TFrmDiversos.inserirvalor;
begin
       dm.tb_produtos.edit;
       associarCampos;
       dm.query_produtos.Close;
       dm.query_produtos.SQL.Clear;

         dm.query_produtos.SQL.Add('UPDATE produtos set valor = :valor where codigo = :codigo');
         dm.query_produtos.ParamByName('valor').Value := strToFloat(edtValor.Text);

       dm.query_produtos.ParamByName('codigo').Value := '1';
       dm.query_produtos.ExecSQL;


if edtValor.Text <> '' then
  begin
    valorDiversos := strtoFloat(edtValor.Text);
    chamadaDiversos := 'fechado';
    diversosADD := 'add';
    close;
  end;
end;

procedure TFrmDiversos.limpar;
begin
edtValor.Text := '';
end;

end.
