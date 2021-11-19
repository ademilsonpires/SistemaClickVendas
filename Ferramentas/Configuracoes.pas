unit Configuracoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmConfig = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    CheckBoxImpressora: TCheckBox;
    btnSalvar: TButton;
    CheckBox1: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure CheckBoxImpressoraClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfig: TFrmConfig;

config_parametro : string;


implementation

{$R *.dfm}

uses Modulo;
//configurar para imprimir comprovante
procedure TFrmConfig.btnSalvarClick(Sender: TObject);
begin
 //SALVAR CONFIGURAÇÃO DA IMPRESSSORA


                   dm.query_configuracoes.Close;
                   dm.query_configuracoes.SQL.Clear;
                   dm.query_configuracoes.SQL.Add('SELECT * FROM configuracoes WHERE item = "impressora"');
                   dm.query_configuracoes.Open;

                   if not dm.query_configuracoes.isEmpty then
                     begin
                       //config_impressora :=  dm.query_configuracoes['config'];
                        //MessageDlg(config_impressora, mtInformation, mbOKCancel, 0);

                           dm.query_configuracoes.Close;
                           dm.query_configuracoes.SQL.Clear;
                           dm.query_configuracoes.SQL.Add('UPDATE configuracoes SET config = :config WHERE item = "impressora"');
                           dm.query_configuracoes.ParamByName('config').Value := config_impressora;
                           dm.query_configuracoes.ExecSQL;


                       exit;
                     end
                     else
                           dm.query_configuracoes.Close;
                           dm.query_configuracoes.SQL.Clear;
                           dm.query_configuracoes.SQL.Add('INSERT INTO configuracoes(item, config) VALUES ("impressora", :config)');
                           dm.query_configuracoes.ParamByName('config').Value := config_impressora;
                           dm.query_configuracoes.ExecSQL;
                           config_impressora :='';











end;

procedure TFrmConfig.CheckBoxImpressoraClick(Sender: TObject);
begin
if CheckBoxImpressora.Checked = true then
    begin
      config_impressora := 's';
    end
    else
      config_impressora := 'n';

end;

procedure TFrmConfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
config_impressora :='';
end;

procedure TFrmConfig.FormShow(Sender: TObject);
begin
                  dm.tb_config.Active := true;

//VERIFICAR CONFIGURAÇÕES DE IMPRESSORA
                   dm.query_configuracoes.Close;
                   dm.query_configuracoes.SQL.Clear;
                   dm.query_configuracoes.SQL.Add('SELECT * FROM configuracoes WHERE item = "impressora"');
                   dm.query_configuracoes.Open;

                   if not dm.query_configuracoes.isEmpty then
                     begin
                       //config_impressora :=  dm.query_configuracoes['config'];
                        //MessageDlg(config_impressora, mtInformation, mbOKCancel, 0);

                           config_impressora :=  dm.query_configuracoes['config'];
                          if config_impressora = 's' then
                            begin

                              CheckBoxImpressora.Checked := true

                            end;


                       exit;
                     end
                     else
                      CheckBoxImpressora.Checked := false;



end;

end.
