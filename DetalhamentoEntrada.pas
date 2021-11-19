unit DetalhamentoEntrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls;

type
  TFrmDetalhesNota = class(TForm)
    grid: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtnumeronota: TEdit;
    PrintDialog1: TPrintDialog;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDetalhesNota: TFrmDetalhesNota;

implementation

{$R *.dfm}

uses Modulo;

procedure TFrmDetalhesNota.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmDetalhesNota.FormShow(Sender: TObject);
begin
      edtnumeronota.Text := numeronota;
      dm.query_detalhes_notas.Close;
      dm.query_detalhes_notas.SQL.Clear;
      dm.query_detalhes_notas.SQL.Add('select * from detalhes_notas where id_nota = :id_nota order by id desc');
      //dm.query_vendas.SQL.Add('select * from vendas where id = :id order by id desc');
      dm.query_detalhes_notas.ParamByName('id_nota').Value := idnota;
      dm.query_detalhes_notas.Open;
end;

end.
