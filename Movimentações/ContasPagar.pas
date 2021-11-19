unit ContasPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  TFrmContasapagar = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    grid: TDBGrid;
    dataInicial: TDateTimePicker;
    dataFinal: TDateTimePicker;
    cbforn: TComboBox;
    rbemissao: TRadioButton;
    rbvencimento: TRadioButton;
    Panel1: TPanel;
    Edtcodforn: TEdit;
    Panel2: TPanel;
    Label6: TLabel;
    BtnExcluir: TSpeedButton;
    procedure cbfornChange(Sender: TObject);
    procedure EdtcodfornChange(Sender: TObject);
    procedure dataInicialChange(Sender: TObject);
    procedure dataFinalChange(Sender: TObject);
    procedure rbemissaoClick(Sender: TObject);
    procedure rbvencimentoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure gridCellClick(Column: TColumn);
  private
    { Private declarations }

    procedure buscardata;
  public
    { Public declarations }
  end;

var
  FrmContasapagar: TFrmContasapagar;
  Idctapag : integer;

implementation

{$R *.dfm}

uses Modulo;



{ TFrmContasapagar }

procedure TFrmContasapagar.BtnExcluirClick(Sender: TObject);
begin

  dm.tb_contas_a_pagar.Edit;


  dm.query_contas_a_pagar.Close;
  dm.query_contas_a_pagar.SQL.Clear;
  dm.query_contas_a_pagar.SQL.Add('UPDATE contas_a_pagar set situacao = :situacao where id = :id');
  dm.query_contas_a_pagar.ParamByName('situacao').Value := 'pg';
  dm.query_contas_a_pagar.ParamByName('id').Value := Idctapag;
  dm.query_contas_a_pagar.ExecSQL;
  MessageDlg('PAGAMENTO REALIZADO COM SUCESSO!!', mtInformation, mbOKCancel, 0);





end;

procedure TFrmContasapagar.buscardata;
begin


 dm.query_contas_a_pagar.Close;
 dm.query_contas_a_pagar.SQL.Clear;
  if Edtcodforn.Text <> '' then
    begin
      if rbemissao.Checked = true then
        begin
         dm.query_contas_a_pagar.SQL.Add('select * from contas_a_pagar where data_cad >= :dataInicial and data_cad <= :dataFinal and situacao = :situacao and id_fornecedor = :id_fornecedor order by id desc') ;
         dm.query_contas_a_pagar.ParamByName('situacao').Value :=  cbforn.Text;
         dm.query_contas_a_pagar.ParamByName('id_fornecedor').Value := Edtcodforn.Text;
          end
          else
          begin
           dm.query_contas_a_pagar.SQL.Add('select * from contas_a_pagar where data_venc >= :dataInicial and data_venc <= :dataFinal and situacao = :situacao and id_fornecedor = :id_fornecedor order by id desc') ;
           dm.query_contas_a_pagar.ParamByName('situacao').Value :=  cbforn.Text;
           dm.query_contas_a_pagar.ParamByName('id_fornecedor').Value := Edtcodforn.Text;
        end;


        dm.query_contas_a_pagar.ParamByName('dataInicial').Value :=  FormatDateTime('yyyy/mm/dd', dataInicial.Date);
        dm.query_contas_a_pagar.ParamByName('dataFinal').Value :=  FormatDateTime('yyyy/mm/dd', dataFinal.Date);
        dm.query_contas_a_pagar.Open;
    end
    else
    begin
        if rbemissao.Checked = true then
          begin
           dm.query_contas_a_pagar.SQL.Add('select * from contas_a_pagar where data_cad >= :dataInicial and data_cad <= :dataFinal and situacao = :situacao order by id desc') ;
           dm.query_contas_a_pagar.ParamByName('situacao').Value :=  cbforn.Text;
            end
            else
            begin
             dm.query_contas_a_pagar.SQL.Add('select * from contas_a_pagar where data_venc >= :dataInicial and data_venc <= :dataFinal and situacao = :situacao order by id desc') ;
             dm.query_contas_a_pagar.ParamByName('situacao').Value :=  cbforn.Text;
          end;


          dm.query_contas_a_pagar.ParamByName('dataInicial').Value :=  FormatDateTime('yyyy/mm/dd', dataInicial.Date);
          dm.query_contas_a_pagar.ParamByName('dataFinal').Value :=  FormatDateTime('yyyy/mm/dd', dataFinal.Date);
          dm.query_contas_a_pagar.Open;
    end

end;

procedure TFrmContasapagar.cbfornChange(Sender: TObject);
begin
buscardata;
end;

procedure TFrmContasapagar.dataFinalChange(Sender: TObject);
begin
buscardata;
end;

procedure TFrmContasapagar.dataInicialChange(Sender: TObject);
begin
buscardata;
end;

procedure TFrmContasapagar.EdtcodfornChange(Sender: TObject);
begin
buscardata;
end;

procedure TFrmContasapagar.FormShow(Sender: TObject);
begin
rbvencimento.Checked  := true;
cbforn.Text := 'a vencer';

dm.tb_contas_a_pagar.Active := True;

   dm.query_contas_a_pagar.Close;
   dm.query_contas_a_pagar.SQL.Clear;
   dm.query_contas_a_pagar.SQL.Add('select * from contas_a_pagar WHERE data_venc = curDate() and situacao <> "pg" order by id desc') ;
   dm.query_contas_a_pagar.Open;
   TFloatField( dm.query_contas_a_pagar.FieldByName('valor')).DisplayFormat:='R$ #,,,,0.00';
   dataInicial.Date := Date;
   dataFinal.Date := Date;

end;

procedure TFrmContasapagar.gridCellClick(Column: TColumn);
begin
Idctapag := dm.query_contas_a_pagar.FieldByName('id').Value;
  BtnExcluir.Enabled := true;
end;

procedure TFrmContasapagar.rbemissaoClick(Sender: TObject);
begin
buscardata;
end;

procedure TFrmContasapagar.rbvencimentoClick(Sender: TObject);
begin
buscardata;
end;

end.
