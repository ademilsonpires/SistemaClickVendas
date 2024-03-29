unit ExcluirDados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Buttons, Vcl.StdCtrls;

type
  TFrmExcluirDados = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    BtnExcluir: TSpeedButton;
    dataInicial: TDateTimePicker;
    dataFinal: TDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmExcluirDados: TFrmExcluirDados;

implementation

{$R *.dfm}

uses Modulo;

procedure TFrmExcluirDados.BtnExcluirClick(Sender: TObject);
begin
if  excluir = 'Vendas' then
          begin
          if MessageDlg('Deseja excluir os registros de venda entre as datas ' + DateTOstr(dataInicial.Date) + ' � ' + DateTOstr(dataFinal.Date)+'?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          dm.query_vendas.Close;
          dm.query_vendas.SQL.Clear;
          dm.query_vendas.SQL.Add('DELETE from vendas where data >= :dataInicial and data <= :dataFinal ');
          dm.query_vendas.ParamByName('dataInicial').Value :=  FormatDateTime('yyyy/mm/dd', dataInicial.Date);
          dm.query_vendas.ParamByName('dataFinal').Value :=  FormatDateTime('yyyy/mm/dd', dataFinal.Date);
          dm.query_vendas.ExecSQL;

          dm.query_det_vendas.Close;
          dm.query_det_vendas.SQL.Clear;
          dm.query_det_vendas.SQL.Add('DELETE from detalhes_vendas where data >= :dataInicial and data <= :dataFinal ');
          dm.query_det_vendas.ParamByName('dataInicial').Value :=  FormatDateTime('yyyy/mm/dd', dataInicial.Date);
          dm.query_det_vendas.ParamByName('dataFinal').Value :=  FormatDateTime('yyyy/mm/dd', dataFinal.Date);
          dm.query_det_vendas.ExecSQL;

          MessageDlg('Deletado com Sucesso!!', mtInformation, mbOKCancel, 0);

             end;

end;

  if  excluir = 'Caixa' then
      begin

              if MessageDlg('Deseja excluir os registros de caixas entre as datas ' + DateTOstr(dataInicial.Date) + ' � ' + DateTOstr(dataFinal.Date)+'?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
                dm.query_vendas.Close;
              dm.query_vendas.SQL.Clear;
              dm.query_vendas.SQL.Add('DELETE from caixa where data_abertura >= :dataInicial and data_abertura <= :dataFinal ');
              dm.query_vendas.ParamByName('dataInicial').Value :=  FormatDateTime('yyyy/mm/dd', dataInicial.Date);
              dm.query_vendas.ParamByName('dataFinal').Value :=  FormatDateTime('yyyy/mm/dd', dataFinal.Date);
              dm.query_vendas.ExecSQL;
             MessageDlg('Deletado com Sucesso!!', mtInformation, mbOKCancel, 0);
            end;

  end;


   if  excluir = 'Movimentacoes' then
      begin

              if MessageDlg('Deseja excluir os registros de movimenta��es entre as datas ' + DateTOstr(dataInicial.Date) + ' � ' + DateTOstr(dataFinal.Date)+'?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
              dm.query_mov.Close;
              dm.query_mov.SQL.Clear;
              dm.query_mov.SQL.Add('DELETE from movimentacoes where data >= :dataInicial and data <= :dataFinal ');
              dm.query_mov.ParamByName('dataInicial').Value :=  FormatDateTime('yyyy/mm/dd', dataInicial.Date);
              dm.query_mov.ParamByName('dataFinal').Value :=  FormatDateTime('yyyy/mm/dd', dataFinal.Date);
              dm.query_mov.ExecSQL;
              MessageDlg('Deletado com Sucesso!!', mtInformation, mbOKCancel, 0);
            end;

  end;

end;

procedure TFrmExcluirDados.FormShow(Sender: TObject);
begin
    dataInicial.Date := Date;
    dataFinal.Date := Date;
end;

end.
