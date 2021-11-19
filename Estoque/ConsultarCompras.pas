unit ConsultarCompras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrmConsultaCompras = class(TForm)
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    btnComprovante: TSpeedButton;
    cbFornecedor: TComboBox;
    dataInicial: TDateTimePicker;
    dataFinal: TDateTimePicker;
    grid: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure dataInicialChange(Sender: TObject);
    procedure dataFinalChange(Sender: TObject);
    procedure cbFornecedorChange(Sender: TObject);
    procedure gridDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure carregarCombobox;
    procedure buscarData;
  public
    { Public declarations }
  end;

var
  FrmConsultaCompras: TFrmConsultaCompras;

implementation

{$R *.dfm}

uses Modulo, DetalhamentoEntrada;

{ TFrmConsultaCompras }

procedure TFrmConsultaCompras.buscarData;
begin
  dm.query_notadecompra.Close;
  dm.query_notadecompra.SQL.Clear;
  dm.query_notadecompra.SQL.Add('select * from notadecompra where data >= :dataInicial and data <= :dataFinal and fornecedor = :fornecedor order by id desc');
  dm.query_notadecompra.ParamByName('dataInicial').Value :=  FormatDateTime('yyyy/mm/dd', dataInicial.Date);
  dm.query_notadecompra.ParamByName('dataFinal').Value :=  FormatDateTime('yyyy/mm/dd', dataFinal.Date);
  dm.query_notadecompra.ParamByName('fornecedor').Value :=  cbFornecedor.Text;
  dm.query_notadecompra.Open;
end;

procedure TFrmConsultaCompras.carregarCombobox;
begin
      dm.query_forn.Close;
      dm.query_forn.Open;

  if not dm.query_forn.isEmpty then
      begin
        while not dm.query_forn.Eof do
        begin
          cbFornecedor.Items.Add(dm.query_forn.FieldByName('nome').AsString);
          dm.query_forn.Next;
        end;
      end;

end;
procedure TFrmConsultaCompras.cbFornecedorChange(Sender: TObject);
begin
      dm.query_notadecompra.Close;
      dm.query_notadecompra.SQL.Clear;
      dm.query_notadecompra.SQL.Add('select * from notadecompra where data >= :dataInicial and data <= :dataFinal and fornecedor = :fornecedor order by id desc');
      //dm.query_vendas.SQL.Add('select * from vendas where id = :id order by id desc');
      dm.query_notadecompra.ParamByName('dataInicial').Value :=  FormatDateTime('yyyy/mm/dd', dataInicial.Date);
      dm.query_notadecompra.ParamByName('dataFinal').Value :=  FormatDateTime('yyyy/mm/dd', dataFinal.Date);
      dm.query_notadecompra.ParamByName('fornecedor').Value :=  cbFornecedor.Text;
      dm.query_notadecompra.Open;
end;

procedure TFrmConsultaCompras.dataFinalChange(Sender: TObject);
begin

      dm.query_notadecompra.Close;
      dm.query_notadecompra.SQL.Clear;
      dm.query_notadecompra.SQL.Add('select * from notadecompra where data >= :dataInicial and data <= :dataFinal and fornecedor = :fornecedor order by id desc');
      //dm.query_vendas.SQL.Add('select * from vendas where id = :id order by id desc');
      dm.query_notadecompra.ParamByName('dataInicial').Value :=  FormatDateTime('yyyy/mm/dd', dataInicial.Date);
      dm.query_notadecompra.ParamByName('dataFinal').Value :=  FormatDateTime('yyyy/mm/dd', dataFinal.Date);
      dm.query_notadecompra.ParamByName('fornecedor').Value :=  cbFornecedor.Text;
      dm.query_notadecompra.Open;

end;

procedure TFrmConsultaCompras.dataInicialChange(Sender: TObject);
begin
      dm.query_notadecompra.Close;
      dm.query_notadecompra.SQL.Clear;
      dm.query_notadecompra.SQL.Add('select * from notadecompra where data >= :dataInicial and data <= :dataFinal and fornecedor = :fornecedor order by id desc');
      //dm.query_vendas.SQL.Add('select * from vendas where id = :id order by id desc');
      dm.query_notadecompra.ParamByName('dataInicial').Value :=  FormatDateTime('yyyy/mm/dd', dataInicial.Date);
      dm.query_notadecompra.ParamByName('dataFinal').Value :=  FormatDateTime('yyyy/mm/dd', dataFinal.Date);
      dm.query_notadecompra.ParamByName('fornecedor').Value :=  cbFornecedor.Text;
      dm.query_notadecompra.Open;
end;

procedure TFrmConsultaCompras.FormShow(Sender: TObject);
begin
dm.tb_notadecompra.Active := True;
carregarCombobox;
cbFornecedor.ItemIndex := 0;
dataInicial.Date := Date;
dataFinal.Date := Date;
buscarData;
end;

procedure TFrmConsultaCompras.gridDblClick(Sender: TObject);
begin
    idnota :=  dm.query_notadecompra.FieldByName('id').Value;
    numeronota := dm.query_notadecompra.FieldByName('numeronota').Value;

   FrmDetalhesNota := TFrmDetalhesNota.Create(self);
   FrmDetalhesNota.ShowModal;
end;

end.