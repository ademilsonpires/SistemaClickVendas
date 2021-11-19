unit Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Mask, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TFrmClientes = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btnNovo: TSpeedButton;
    btnSalvar: TSpeedButton;
    BtnEditar: TSpeedButton;
    BtnExcluir: TSpeedButton;
    EdtBuscarNome: TEdit;
    EdtNome: TEdit;
    EdtTel: TMaskEdit;
    EdtEndereco: TEdit;
    DBGrid1: TDBGrid;
    btnFatura: TSpeedButton;
    Panel1: TPanel;
    Label3: TLabel;
    Label6: TLabel;
    cbDias: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BtnExcluirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdtBuscarNomeChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdtBuscarNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);


  private
    { Private declarations }
    procedure limpar;
      procedure habilitarCampos;
      procedure desabilitarCampos;

      procedure associarCampos;
      procedure listar;
      procedure buscarNome;
  public
    { Public declarations }
  end;

var
  FrmClientes: TFrmClientes;
  id : string;
  datavencimento : string;

implementation

{$R *.dfm}

uses Modulo, ListaVendas;

{ TFrmClientes }

procedure TFrmClientes.associarCampos;
begin
   dm.tb_clientes.FieldByName('nome').Value := edtNome.Text;
   dm.tb_clientes.FieldByName('endereco').Value := EdtEndereco.Text;
   dm.tb_clientes.FieldByName('telefone').Value := edtTel.Text;
   dm.tb_clientes.FieldByName('dia_vencimento').Value := cbDias.Text;


end;

procedure TFrmClientes.BtnEditarClick(Sender: TObject);
begin
  if Trim(EdtNome.Text) = '' then
       begin
           MessageDlg('Preencha o Nome!', mtInformation, mbOKCancel, 0);
           EdtNome.SetFocus;
           exit;
       end;

  if Trim(cbDias.Text) = '' then
       begin
           MessageDlg('Preencha o dia de vencimento da fatura do cliente!', mtInformation, mbOKCancel, 0);
           EdtNome.SetFocus;
           exit;
       end;


       associarCampos;
       dm.query_clientes.Close;
       dm.query_clientes.SQL.Clear;
       dm.query_clientes.SQL.Add('UPDATE clientes set nome = :nome, endereco = :endereco, telefone = :telefone, dia_vencimento = :dia_vencimento where id = :id');
       dm.query_clientes.ParamByName('nome').Value := edtNome.Text;
          dm.query_clientes.ParamByName('endereco').Value := EdtEndereco.Text;
          dm.query_clientes.ParamByName('telefone').Value := edtTel.Text;
          dm.query_clientes.ParamByName('dia_vencimento').Value := cbDias.Text;

       dm.query_clientes.ParamByName('id').Value := id;
       dm.query_clientes.ExecSQL;


       listar;
       MessageDlg('Editado com Sucesso!!', mtInformation, mbOKCancel, 0);
       btnEditar.Enabled := false;
       BtnExcluir.Enabled := false;
       limpar;
       desabilitarCampos;

end;

procedure TFrmClientes.BtnExcluirClick(Sender: TObject);
begin
if MessageDlg('Deseja Excluir o registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
begin

    //DELETANDO CLIENTES

    dm.query_clientes.Close;
    dm.query_clientes.SQL.Clear;
    dm.query_clientes.SQL.Add('DELETE FROM clientes WHERE id = :id');
    dm.query_clientes.ParamByName('id').Value := id;

    dm.query_clientes.Execute;
    MessageDlg('Deletado com Sucesso!!', mtInformation, mbOKCancel, 0);


     btnEditar.Enabled := false;
     BtnExcluir.Enabled := false;
     limpar;
     listar;
end;

end;

procedure TFrmClientes.btnNovoClick(Sender: TObject);
begin
  habilitarCampos;
  dm.tb_clientes.Insert;
  btnSalvar.Enabled := true;

end;

procedure TFrmClientes.btnSalvarClick(Sender: TObject);
begin
if Trim(EdtNome.Text) = '' then
       begin
           MessageDlg('Preencha o Nome!', mtInformation, mbOKCancel, 0);
           EdtNome.SetFocus;
           exit;
       end;

if Trim(cbDias.Text) = '' then
       begin
           MessageDlg('Preencha o dia de vencimento da fatura do cliente!', mtInformation, mbOKCancel, 0);
           EdtNome.SetFocus;
           exit;
       end;



        associarCampos;
        dm.tb_clientes.Post;
        MessageDlg('Salvo com Sucesso', mtInformation, mbOKCancel, 0);
        limpar;
        desabilitarCampos;
        btnSalvar.Enabled := false;
        listar;

end;

procedure TFrmClientes.buscarNome;
begin
  dm.query_clientes.Close;
       dm.query_clientes.SQL.Clear;
       dm.query_clientes.SQL.Add('SELECT * from clientes where nome LIKE :nome order by nome asc');
       dm.query_clientes.ParamByName('nome').Value := EdtBuscarNome.Text + '%';
       dm.query_clientes.Open;

end;


procedure TFrmClientes.DBGrid1CellClick(Column: TColumn);
begin
  habilitarCampos;
  btnEditar.Enabled := true;
  btnExcluir.Enabled := true;

  dm.tb_clientes.Edit;


  edtNome.Text := dm.query_clientes.FieldByName('nome').Value;
  cbDias.Text := dm.query_clientes.FieldByName('dia_vencimento').Value;





  if dm.query_clientes.FieldByName('telefone').Value <> null then
  edtTel.Text := dm.query_clientes.FieldByName('telefone').Value;

  if dm.query_clientes.FieldByName('endereco').Value <> null then
  EdtEndereco.Text := dm.query_clientes.FieldByName('endereco').Value;

  id := dm.query_clientes.FieldByName('id').Value;
  nomeClientes := dm.query_clientes.FieldByName('nome').Value;

end;

procedure TFrmClientes.DBGrid1DblClick(Sender: TObject);
begin



   if chamadactarecb = 'cta_rec' then

        begin
        chamada := 'dif' ;
                  idClientes := dm.query_clientes.FieldByName('id').Value;

                  chamadactarecb := '';
                  Close;


        end;

   if chamada = 'clientes' then
        begin
                  idClientes := dm.query_clientes.FieldByName('id').Value;
                  nomeClientes := dm.query_clientes.FieldByName('nome').Value;

                  Close;

        end;


  if (chamada = '') or (chamada = 'listarvendas')  then
        begin
         if chamadaClidOS <> '1' then
         begin
          chamada := 'listarvendas';
          nomeClientes := dm.query_clientes.FieldByName('nome').Value;

          FrmListaVendas := TFrmListaVendas.Create(self);
          FrmListaVendas.ShowModal;
         end;

        end;


     if chamadaClidOS = '1' then
        begin
                  idClientes := dm.query_clientes.FieldByName('id').Value;
                  nomeClientes := dm.query_clientes.FieldByName('nome').Value;
                  enderecoCliente := dm.query_clientes.FieldByName('endereco').Value;
                  telefoneCliente := dm.query_clientes.FieldByName('telefone').Value;
                  janelaCliente := 'fechado';
                  Close;

        end;


end;

procedure TFrmClientes.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    begin
       if chamada = 'clientes' then
                begin
                  idClientes := dm.query_clientes.FieldByName('id').Value;
                  nomeClientes := dm.query_clientes.FieldByName('nome').Value;

                  Close;

                end;


    end;
end;

procedure TFrmClientes.desabilitarCampos;
begin
  edtNome.Enabled := false;
  EdtEndereco.Enabled := false;
  EdtTel.Enabled := false;
end;

procedure TFrmClientes.EdtBuscarNomeChange(Sender: TObject);
begin
buscarNome;
end;

procedure TFrmClientes.EdtBuscarNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key = VK_DOWN) or (key = VK_RIGHT)	 then
    begin
      DBGrid1.SetFocus;
    end;
end;

procedure TFrmClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//   chamada := '';
janelaCliente := 'fechado';
end;

procedure TFrmClientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if Key = VK_ESCAPE then
     begin
        nomeClientes := '';
        idClientes := '';
        close;

     end;
end;

procedure TFrmClientes.FormShow(Sender: TObject);
begin
  desabilitarCampos;
  dm.tb_clientes.Active := true;
  listar;
end;

procedure TFrmClientes.habilitarCampos;
begin
  edtNome.Enabled := true;
  EdtEndereco.Enabled := true;
  EdtTel.Enabled := true;


end;

procedure TFrmClientes.limpar;
begin
  edtNome.Text := '';
  EdtEndereco.Text := '';
  EdtTel.Text := '';
end;

procedure TFrmClientes.listar;
begin
        dm.query_clientes.Close;
       dm.query_clientes.SQL.Clear;
       dm.query_clientes.SQL.Add('SELECT * from clientes order by nome asc');
       dm.query_clientes.Open;
end;

end.
