unit rankingVendedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFrmConsultarVendedores = class(TForm)
    DBGrid1: TDBGrid;
    dataInicial: TDateTimePicker;
    dataFinal: TDateTimePicker;
    Label2: TLabel;
    Label1: TLabel;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure dataInicialChange(Sender: TObject);
    procedure dataFinalChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultarVendedores: TFrmConsultarVendedores;

implementation

{$R *.dfm}

uses Modulo;

procedure TFrmConsultarVendedores.dataFinalChange(Sender: TObject);
begin
   dm.query_ConsultarVendedores.Close;
  dm.query_ConsultarVendedores.SQL.Clear;
  dm.query_ConsultarVendedores.SQL.Add('SELECT funcionario, sum(valor) AS Total FROM vendas where data >= :dataInicial and data <= :dataFinal GROUP BY funcionario ORDER BY Total DESC;');
  dm.query_ConsultarVendedores.ParamByName('dataInicial').Value :=  FormatDateTime('yyyy/mm/dd', dataInicial.Date);
  dm.query_ConsultarVendedores.ParamByName('dataFinal').Value :=  FormatDateTime('yyyy/mm/dd', dataFinal.Date);
  //dm.query_det_vendas.ParamByName('fornecedor').Value :=  cbFornecedor.Text;
  dm.query_ConsultarVendedores.Open;
   //where data >= :dataInicial and data <= :dataFinal
end;

procedure TFrmConsultarVendedores.dataInicialChange(Sender: TObject);
begin
     dm.query_ConsultarVendedores.Close;
  dm.query_ConsultarVendedores.SQL.Clear;
  dm.query_ConsultarVendedores.SQL.Add('SELECT funcionario, sum(valor) AS Total FROM vendas where data >= :dataInicial and data <= :dataFinal GROUP BY funcionario ORDER BY Total DESC;');
  dm.query_ConsultarVendedores.ParamByName('dataInicial').Value :=  FormatDateTime('yyyy/mm/dd', dataInicial.Date);
  dm.query_ConsultarVendedores.ParamByName('dataFinal').Value :=  FormatDateTime('yyyy/mm/dd', dataFinal.Date);
  //dm.query_det_vendas.ParamByName('fornecedor').Value :=  cbFornecedor.Text;
  dm.query_ConsultarVendedores.Open;
   //where data >= :dataInicial and data <= :dataFinal
end;

procedure TFrmConsultarVendedores.FormShow(Sender: TObject);
begin
dataInicial.Date := Date;
  dataFinal.Date := Date;
  dm.tb_vendas.Active;

   dm.query_ConsultarVendedores.Close;
  dm.query_ConsultarVendedores.SQL.Clear;
  dm.query_ConsultarVendedores.SQL.Add('SELECT funcionario, sum(valor) AS Total FROM vendas where data >= :dataInicial and data <= :dataFinal GROUP BY funcionario ORDER BY Total DESC;');
  dm.query_ConsultarVendedores.ParamByName('dataInicial').Value :=  FormatDateTime('yyyy/mm/dd', dataInicial.Date);
  dm.query_ConsultarVendedores.ParamByName('dataFinal').Value :=  FormatDateTime('yyyy/mm/dd', dataFinal.Date);
  //dm.query_det_vendas.ParamByName('fornecedor').Value :=  cbFornecedor.Text;
  dm.query_ConsultarVendedores.Open;
   //where data >= :dataInicial and data <= :dataFinal
end;

end.
