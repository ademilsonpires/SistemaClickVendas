unit Gastos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TFrmGastos = class(TForm)
    Label2: TLabel;
    EdtMotivo: TEdit;
    grid: TDBGrid;
    edtValor: TEdit;
    Label1: TLabel;
    btnNovo: TSpeedButton;
    btnSalvar: TSpeedButton;
    BtnExcluir: TSpeedButton;
    Label3: TLabel;
    dataBuscar: TDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure gridCellClick(Column: TColumn);
    procedure dataBuscarChange(Sender: TObject);

  private
    { Private declarations }
    procedure associarCampos;
    procedure listar;
    procedure buscarData;

  public
    { Public declarations }
  end;

var
  FrmGastos: TFrmGastos;
  idGasto : string;


implementation

{$R *.dfm}

uses Modulo;

procedure TFrmGastos.associarCampos;
begin
dm.tb_gastos.FieldByName('motivo').Value := EdtMotivo.Text;
dm.tb_gastos.FieldByName('valor').Value := EdtValor.Text;
dm.tb_gastos.FieldByName('funcionario').Value := nomeUsuario;
dm.tb_gastos.FieldByName('data').Value := DateToStr(Date);
end;



procedure TFrmGastos.BtnExcluirClick(Sender: TObject);
begin
if MessageDlg('Deseja Excluir o registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
begin
  dm.tb_gastos.Delete;


  //DELETAR TAMB�M NA TABELA DE MOVIMENTA��ES
     dm.query_mov.Close;
      dm.query_mov.SQL.Clear;
      dm.query_mov.SQL.Add('DELETE FROM movimentacoes where id_movimento = :id');
      dm.query_mov.ParamByName('id').Value := idGasto;
      dm.query_mov.ExecSQL;


    MessageDlg('Deletado com Sucesso!!', mtInformation, mbOKCancel, 0);

     listar;


     BtnExcluir.Enabled := false;
     edtMotivo.Text := '';
     edtValor.Text := '';

end;
end;

procedure TFrmGastos.btnNovoClick(Sender: TObject);
begin
btnSalvar.Enabled := true;
edtMotivo.Enabled := true;
edtValor.Enabled := true;
edtMotivo.Text := '';
edtMotivo.SetFocus;

dm.tb_gastos.Insert;
end;

procedure TFrmGastos.btnSalvarClick(Sender: TObject);
begin
      if Trim(EdtMotivo.Text) = '' then
       begin
           MessageDlg('Preencha o Motivo!', mtInformation, mbOKCancel, 0);
           EdtMotivo.SetFocus;
           exit;
     end;

      if Trim(EdtValor.Text) = '' then
       begin
           MessageDlg('Preencha o Valor!', mtInformation, mbOKCancel, 0);
           EdtValor.SetFocus;
           exit;
     end;

associarCampos;
dm.tb_gastos.Post;


//RECUPERAR O ID DO ULTIMO GASTO INSERIDO
      dm.query_gastos.Close;
      dm.query_gastos.SQL.Clear;
      dm.query_gastos.SQL.Add('SELECT * from gastos order by id desc');

      dm.query_gastos.Open;

       if not dm.query_gastos.isEmpty then
       begin
         idGasto :=  dm.query_gastos['id'];
       end;


//LAN�AR O VALOR DO GASTO NAS MOVIMENTA��ES
       dm.query_mov.Close;
      dm.query_mov.SQL.Clear;
      dm.query_mov.SQL.Add('INSERT INTO movimentacoes (tipo, movimento, valor, funcionario, data, id_movimento) VALUES (:tipo, :movimento, :valor, :funcionario, curDate(), :id_movimento)');
      dm.query_mov.ParamByName('tipo').Value := 'Sa�da';
      dm.query_mov.ParamByName('movimento').Value := 'Gasto';
      dm.query_mov.ParamByName('valor').Value := edtValor.Text;
      dm.query_mov.ParamByName('funcionario').Value := nomeUsuario;
      dm.query_mov.ParamByName('id_movimento').Value := idGasto;
      dm.query_mov.ExecSQL;


MessageDlg('Salvo com Sucesso', mtInformation, mbOKCancel, 0);
edtMotivo.Text := '';
edtMotivo.Enabled := false;
edtValor.Text := '';
edtValor.Enabled := false;
btnSalvar.Enabled := false;
listar;
end;

procedure TFrmGastos.buscarData;
begin
       dm.query_gastos.Close;
       dm.query_gastos.SQL.Clear;
       dm.query_gastos.SQL.Add('SELECT * FROM gastos where data = :data order by data desc');
       dm.query_gastos.ParamByName('data').Value := FormatDateTime('yyyy/mm/dd' ,dataBuscar.Date);
       dm.query_gastos.Open;
end;

procedure TFrmGastos.dataBuscarChange(Sender: TObject);
begin
buscarData;
end;

procedure TFrmGastos.FormShow(Sender: TObject);
begin
dm.tb_gastos.Active := true;
 dataBuscar.Date := Date;
  buscarData;

end;

procedure TFrmGastos.gridCellClick(Column: TColumn);
begin
btnExcluir.Enabled := true;
idGasto := dm.query_gastos.FieldByName('id').Value;
end;

procedure TFrmGastos.listar;
begin
  dm.query_gastos.Close;
     dm.query_gastos.SQL.Clear;
     dm.query_gastos.SQL.Add('SELECT * from gastos order by data desc');
     dm.query_gastos.Open;
end;

end.
