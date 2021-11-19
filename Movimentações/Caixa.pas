unit Caixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ComCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrmCaixa = class(TForm)
    Label2: TLabel;
    Label4: TLabel;
    btnAbrir: TSpeedButton;
    BtnFechar: TSpeedButton;
    Label3: TLabel;
    EdtUsuario: TEdit;
    edtSenha: TEdit;
    edtValor: TEdit;
    edtCaixa: TEdit;
    Label1: TLabel;
    btnPDV: TButton;
    procedure FormShow(Sender: TObject);


    procedure btnAbrirClick(Sender: TObject);
    procedure btnPDVClick(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }

     procedure limpar;
      procedure habilitarCampos;
      procedure desabilitarCampos;

      procedure associarCampos;
      procedure listar;



  public
    { Public declarations }
  end;

var
  FrmCaixa: TFrmCaixa;
  gerente: string;
  cargoGerente: string;
  valorAbertura: double;
  valorVendido: double;
  valorQuebra: double;


implementation

{$R *.dfm}

uses Modulo, Vendas, totalfechamento;

procedure TFrmCaixa.associarCampos;
begin
   dm.tb_caixa.FieldByName('data_abertura').Value := DateToStr(Date);
   dm.tb_caixa.FieldByName('hora_abertura').Value := TimeToStr(Time);
  dm.tb_caixa.FieldByName('valor_abertura').Value := strToFloat(edtValor.Text);
  dm.tb_caixa.FieldByName('funcionario_abertura').Value := gerente;
  dm.tb_caixa.FieldByName('num_caixa').Value := edtCaixa.Text;
  dm.tb_caixa.FieldByName('operador').Value := nomeUsuario;
  dm.tb_caixa.FieldByName('status').Value := 'Aberto';


end;

procedure TFrmCaixa.btnAbrirClick(Sender: TObject);
begin
     if  Trim(EdtValor.Text) = '' then
       begin
           MessageDlg('Preencha o Valor!', mtInformation, mbOKCancel, 0);
           EdtValor.SetFocus;
           exit;
       end;


        if  Trim(EdtCaixa.Text) = '' then
       begin
           MessageDlg('Preencha o Caixa!', mtInformation, mbOKCancel, 0);
           EdtCaixa.SetFocus;
           exit;
       end;


       //VERIFICAR SE O CAIXA J� EST� ABERTO
        dm.query_caixa.Close;
       dm.query_caixa.SQL.Clear;
       dm.query_caixa.SQL.Add('SELECT * from caixa where status = :status and num_caixa = :num');
        dm.query_caixa.ParamByName('status').Value := 'Aberto';
         dm.query_caixa.ParamByName('num').Value := edtCaixa.Text;
       dm.query_caixa.Open;

       if not dm.query_caixa.isEmpty then
       begin
        MessageDlg('Este caixa j� est� aberto!', mtInformation, mbOKCancel, 0);
        exit;
       end;


      { //VERIFICAR PERMISSAO DO GERENTE
         dm.query_usuarios.Close;
       dm.query_usuarios.SQL.Clear;
       dm.query_usuarios.SQL.Add('SELECT * from usuarios where usuario = :usuario and senha = :senha');
        dm.query_usuarios.ParamByName('usuario').Value := edtUsuario.Text;
         dm.query_usuarios.ParamByName('senha').Value := edtSenha.Text;
       dm.query_usuarios.Open;

       if not dm.query_usuarios.isEmpty then
       begin
         gerente :=  dm.query_usuarios['nome'];
         cargoGerente :=  dm.query_usuarios['cargo'];

         //VERIFICAR SE QUEM LOGOU FOI UM OPERADOR DE CAIXA
         if (cargoGerente <> 'Gerente') and (cargoGerente <> 'vendedor') then
         begin

           EdtSenha.Text := '';
            MessageDlg('Voc� n�o tem permiss�o de Gerente!', mtInformation, mbOKCancel, 0);
           exit;
         end;



          end
          else
          begin
           MessageDlg('Dados de Login Incorretos!!', mtInformation, mbOKCancel, 0);
           edtusuario.Text := '';
           EdtSenha.Text := '';
           edtUsuario.SetFocus;
           exit;
       end;    }



        associarCampos;
        dm.tb_caixa.Post;
        MessageDlg('Salvo com Sucesso', mtInformation, mbOKCancel, 0);

         FrmVendas := TFrmVendas.Create(self);
         numeroCaixa := edtCaixa.Text;
         limpar;

         btnAbrir.Enabled := false;

         btnFechar.Enabled := true;

         FrmVendas.ShowModal;



end;

procedure TFrmCaixa.BtnFecharClick(Sender: TObject);
begin
  totalizarcaixa := Ttotalizarcaixa.Create(self);
  totalizarcaixa.ShowModal;


if  Trim(EdtValor.Text) = '' then
       begin
           MessageDlg('Preencha o Valor!', mtInformation, mbOKCancel, 0);
           EdtValor.SetFocus;
           exit;
       end;


        if  Trim(EdtCaixa.Text) = '' then
       begin
           MessageDlg('Preencha o Caixa!', mtInformation, mbOKCancel, 0);
           EdtCaixa.SetFocus;
           exit;
       end;


       //VERIFICAR SE O CAIXA J� EST� FECHADO
        dm.query_caixa.Close;
       dm.query_caixa.SQL.Clear;
       dm.query_caixa.SQL.Add('SELECT * from caixa where status = :status and num_caixa = :num and operador = :operador and data_fechamento = curDate()');
        dm.query_caixa.ParamByName('status').Value := 'Fechado';
         dm.query_caixa.ParamByName('num').Value := edtCaixa.Text;
         dm.query_caixa.ParamByName('operador').Value := nomeUsuario;
       dm.query_caixa.Open;

       {if not dm.query_caixa.isEmpty then
       begin
        MessageDlg('Este caixa j� est� fechado!', mtInformation, mbOKCancel, 0);
        exit;
       end;}


       {//VERIFICAR PERMISSAO DO GERENTE
         dm.query_usuarios.Close;
       dm.query_usuarios.SQL.Clear;
       dm.query_usuarios.SQL.Add('SELECT * from usuarios where usuario = :usuario and senha = :senha');
        dm.query_usuarios.ParamByName('usuario').Value := edtUsuario.Text;
         dm.query_usuarios.ParamByName('senha').Value := edtSenha.Text;
       dm.query_usuarios.Open;

       if not dm.query_usuarios.isEmpty then
       begin
         gerente :=  dm.query_usuarios['nome'];
         cargoGerente :=  dm.query_usuarios['cargo'];

         //VERIFICAR SE QUEM LOGOU FOI UM OPERADOR DE CAIXA
         if (cargoGerente <> 'Gerente') and (cargoGerente <> 'vendedor') then
         begin

           EdtSenha.Text := '';
            MessageDlg('Voc� n�o tem permiss�o de Gerente!', mtInformation, mbOKCancel, 0);
           exit;
         end;



          end
          else
          begin
           MessageDlg('Dados de Login Incorretos!!', mtInformation, mbOKCancel, 0);
           edtusuario.Text := '';
           EdtSenha.Text := '';
           edtUsuario.SetFocus;
           exit;
       end;   }


       //RECUPERAR O TOTAL VENDIDO NO DIA PELO FUNCION�RIO
       dm.query_coringa.Close;
      dm.query_coringa.SQL.Clear;
      dm.query_coringa.SQL.Add('select sum(valor) as total from vendas where data = curDate() and funcionario = :func and status = :status');
      dm.query_coringa.ParamByName('func').Value :=  nomeUsuario;
      dm.query_coringa.ParamByName('status').Value :=  'Conclu�da';
      dm.query_coringa.Prepare;
      dm.query_coringa.Open;
      valorVendido := dm.query_coringa.FieldByName('total').AsFloat;


      //RECUPERAR O VALOR DA ABERTURA
       dm.query_caixa.Close;
       dm.query_caixa.SQL.Clear;
       dm.query_caixa.SQL.Add('SELECT * from caixa where status = :status and num_caixa = :num');
        dm.query_caixa.ParamByName('status').Value := 'Aberto';
         dm.query_caixa.ParamByName('num').Value := edtCaixa.Text;
       dm.query_caixa.Open;

       if not dm.query_caixa.isEmpty then
       begin
         valorAbertura :=  dm.query_caixa['valor_abertura'];
       end;

      valorQuebra := strToFloat(edtValor.Text) - valorVendido - valorAbertura;

          dm.query_caixa.Close;
       dm.query_caixa.SQL.Clear;
         dm.query_caixa.SQL.Add('UPDATE caixa set data_fechamento = curDate(), hora_fechamento = curTime(), valor_fechamento = :valor, valor_vendido = :valorV, valor_quebra = :valor_quebra, funcionario_fechamento = :func_fec, status = :stat where num_caixa = :num and status = :status');
       dm.query_caixa.ParamByName('valor').Value := edtValor.Text;
        dm.query_caixa.ParamByName('valorV').Value := valorVendido;
         dm.query_caixa.ParamByName('valor_quebra').Value := valorQuebra;
          dm.query_caixa.ParamByName('func_fec').Value := gerente;
           dm.query_caixa.ParamByName('num').Value := edtCaixa.Text;
           dm.query_caixa.ParamByName('stat').Value := 'Fechado';
       dm.query_caixa.ParamByName('status').Value := 'Aberto';
       dm.query_caixa.ExecSQL;
        MessageDlg('Caixa Fechado!!', mtInformation, mbOKCancel, 0);


        //alterando statuscaixa na venda
         dm.query_vendas.Close;
       dm.query_vendas.SQL.Clear;
         dm.query_vendas.SQL.Add('UPDATE vendas set statuscaixa = :statuscx where caixa = :numcaixa and statuscaixa = :status');
       dm.query_vendas.ParamByName('statuscx').Value := 'fechado';
        dm.query_vendas.ParamByName('status').Value := 'aberto';
         dm.query_vendas.ParamByName('numcaixa').Value := numeroCaixa;
          dm.query_vendas.ExecSQL;


         numeroCaixa := '';
         limpar;

         btnAbrir.Enabled := true;

         btnFechar.Enabled := false;
         edtCaixa.Enabled := true;
         habilitarCampos;
          dm.tb_caixa.Insert;
          btnAbrir.Enabled := true;





end;



procedure TFrmCaixa.btnPDVClick(Sender: TObject);
begin

       //VERIFICAR SE O CAIXA J� EST� ABERTO
        dm.query_caixa.Close;
       dm.query_caixa.SQL.Clear;
       dm.query_caixa.SQL.Add('SELECT * from caixa where status = :status and num_caixa = :num');
        dm.query_caixa.ParamByName('status').Value := 'Aberto';
         dm.query_caixa.ParamByName('num').Value := edtCaixa.Text;
       dm.query_caixa.Open;

       if not dm.query_caixa.isEmpty then
       begin
        numeroCaixa := edtCaixa.Text;
        FrmVendas := TFrmVendas.Create(self);
         limpar;

         btnAbrir.Enabled := false;

         btnFechar.Enabled := true;
         edtCaixa.Enabled := false;
         FrmVendas.ShowModal;

         end
         else
         begin
          MessageDlg('Abra Primeiro o Caixa!!', mtInformation, mbOKCancel, 0);
       end;
end;




procedure TFrmCaixa.desabilitarCampos;
begin
edtUsuario.Enabled := false;
edtSenha.Enabled := false;
edtvalor.Enabled := false;
edtCaixa.Enabled := false;
end;

procedure TFrmCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//VERIFICAR SE O CAIXA J� EST� ABERTO
        dm.query_caixa.Close;
       dm.query_caixa.SQL.Clear;
       dm.query_caixa.SQL.Add('SELECT * from caixa where status = :status and num_caixa = :num');
        dm.query_caixa.ParamByName('status').Value := 'Aberto';
         dm.query_caixa.ParamByName('num').Value := edtCaixa.Text;
       dm.query_caixa.Open;

       if not dm.query_caixa.isEmpty then
       begin

          MessageDlg('O caixa continuar� aberto, ao retornar insira o n�mero do caixa e click em PDV!!', mtInformation, mbOKCancel, 0);

       end;
end;

procedure TFrmCaixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
               begin
                  chamada := '';
                  close;

               end;
end;

procedure TFrmCaixa.FormShow(Sender: TObject);
begin

  habilitarCampos;
  dm.tb_caixa.Active := true;
  listar;
  edtCaixa.Text := numeroCaixa;
  edtValor.SetFocus;

{if statusCaixa = 'Abertura' then
begin}
  habilitarCampos;
  dm.tb_caixa.Insert;
  btnAbrir.Enabled := true;
//end;

end;

procedure TFrmCaixa.habilitarCampos;
begin
edtUsuario.Enabled := true;
edtSenha.Enabled := true;
edtvalor.Enabled := true;
edtCaixa.Enabled := true;
end;

procedure TFrmCaixa.limpar;
begin
edtUsuario.Text := '';
edtSenha.Text := '';
edtvalor.Text := '';

end;

procedure TFrmCaixa.listar;
begin
       dm.query_caixa.Close;
       dm.query_caixa.SQL.Clear;
       dm.query_caixa.SQL.Add('SELECT * from caixa where data_abertura = curDate() ');
       //dm.query_caixa.ParamByName('data').Value := FormatDateTime('yyyy/mm/dd' ,dataBuscar.Date);
       dm.query_caixa.Open;
end;

end.
