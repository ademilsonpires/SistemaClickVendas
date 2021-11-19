unit rankingProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFrmRnkingProdutos = class(TForm)
    DBGrid1: TDBGrid;
    dataInicial: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    dataFinal: TDateTimePicker;
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
  FrmRnkingProdutos: TFrmRnkingProdutos;

implementation

{$R *.dfm}

uses Modulo;

procedure TFrmRnkingProdutos.dataFinalChange(Sender: TObject);
begin
     dm.query_consultaRankProdutos.Close;
  dm.query_consultaRankProdutos.SQL.Clear;
  dm.query_consultaRankProdutos.SQL.Add('SELECT produto, sum(quantidade) AS Total FROM detalhes_vendas where data >= :dataInicial and data <= :dataFinal GROUP BY produto ORDER BY Total DESC;');
  dm.query_consultaRankProdutos.ParamByName('dataInicial').Value :=  FormatDateTime('yyyy/mm/dd', dataInicial.Date);
  dm.query_consultaRankProdutos.ParamByName('dataFinal').Value :=  FormatDateTime('yyyy/mm/dd', dataFinal.Date);
  //dm.query_det_vendas.ParamByName('fornecedor').Value :=  cbFornecedor.Text;
  dm.query_consultaRankProdutos.Open;
   //where data >= :dataInicial and data <= :dataFinal

end;

procedure TFrmRnkingProdutos.dataInicialChange(Sender: TObject);
begin
   dm.query_consultaRankProdutos.Close;
  dm.query_consultaRankProdutos.SQL.Clear;
  dm.query_consultaRankProdutos.SQL.Add('SELECT produto, sum(quantidade) AS Total FROM detalhes_vendas where data >= :dataInicial and data <= :dataFinal GROUP BY produto ORDER BY Total DESC;');
  dm.query_consultaRankProdutos.ParamByName('dataInicial').Value :=  FormatDateTime('yyyy/mm/dd', dataInicial.Date);
  dm.query_consultaRankProdutos.ParamByName('dataFinal').Value :=  FormatDateTime('yyyy/mm/dd', dataFinal.Date);
  //dm.query_det_vendas.ParamByName('fornecedor').Value :=  cbFornecedor.Text;
  dm.query_consultaRankProdutos.Open;
   //where data >= :dataInicial and data <= :dataFinal

end;

procedure TFrmRnkingProdutos.FormShow(Sender: TObject);
begin
  dataInicial.Date := Date;
  dataFinal.Date := Date;
  dm.tb_detalhes_vendas.Active;

  dm.query_consultaRankProdutos.Close;
  dm.query_consultaRankProdutos.SQL.Clear;
  dm.query_consultaRankProdutos.SQL.Add('SELECT produto, sum(quantidade) AS Total FROM detalhes_vendas where data >= :dataInicial and data <= :dataFinal GROUP BY produto ORDER BY Total DESC;');
  dm.query_consultaRankProdutos.ParamByName('dataInicial').Value :=  FormatDateTime('yyyy/mm/dd', dataInicial.Date);
  dm.query_consultaRankProdutos.ParamByName('dataFinal').Value :=  FormatDateTime('yyyy/mm/dd', dataFinal.Date);
  //dm.query_det_vendas.ParamByName('fornecedor').Value :=  cbFornecedor.Text;
  dm.query_consultaRankProdutos.Open;
   //where data >= :dataInicial and data <= :dataFinal



end;

end.
