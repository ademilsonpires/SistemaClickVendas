unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Comp.Client,
  Data.DB, shellAPI, Vcl.ExtDlgs;

type
  TFrmLogin = class(TForm)
    Panel1: TPanel;
    pnlLogin: TPanel;
    imgLogin: TImage;
    EdtUsuario: TEdit;
    EdtSenha: TEdit;
    btnLogin: TSpeedButton;
    FDconectarMYSQL: TFDConnection;
    FDcriarBanco: TFDCommand;
    FDCriarTabelas: TFDCommand;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    linksite: TSpeedButton;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure btnLoginClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure linksiteClick(Sender: TObject);
  private
    { Private declarations }
    procedure verificarLicenca;
    procedure centralizarPainel;
    procedure login;
    procedure bloquear;
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

uses Menu, Modulo, Caixa, ConfigurarBd, Ativacao, Vendas, FinalizarVenda;

procedure TFrmLogin.bloquear;
var
dias : double;
data : tdate;
datainicial : string;
begin
    datainicial := dm.query_registro['data'];
    Data := Date();
if data > strtodate(datainicial) then
begin
showmessage('Aten��o! Licen�a expirada Contacte o programador responsavel');
Application.Terminate;
end
else
begin
dias := strtodate(datainicial) - date();
showmessage('ATEN��O, essa e uma vers�o mensal, voc� tem ' + floattostr(dias) + ' dias para o termino de avalia��o e o programa ir� expirar, contacte o programador')
end;
end;





procedure TFrmLogin.btnLoginClick(Sender: TObject);
begin
     if Trim(EdtUsuario.Text) = '' then
     begin
         MessageDlg('Preencha o Usu�rio!', mtInformation, mbOKCancel, 0);
         EdtUsuario.SetFocus;
         exit;
     end;

      if Trim(EdtSenha.Text) = '' then
     begin
         MessageDlg('Preencha a Senha!', mtInformation, mbOKCancel, 0);
         EdtSenha.SetFocus;
         exit;
     end;


     login;
end;

procedure TFrmLogin.centralizarPainel;
begin
    pnlLogin.Top := (self.Height div 2) - (pnlLogin.Height div 2);
    pnlLogin.Left := (self.Width div 2) - (pnlLogin.Width div 2);
end;

procedure TFrmLogin.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
     centralizarPainel;
end;

procedure TFrmLogin.FormCreate(Sender: TObject);
begin
dm.arquivoconf;
//ShowMessage(servidor);
FDconectarMYSQL.Params.Add('Server=' + servidor);
FDcriarBanco.Active := true;
FDCriarTabelas.Active := true;

end;

procedure TFrmLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = 13 then
 login;

end;

procedure TFrmLogin.FormShow(Sender: TObject);
var
rgn: HRGN;
dc : HDC;

 begin
      //EFEITO VISUAL ARREDONDAR IMAGEM MENU
      rgn := CreateRoundRectRgn(5, 5, imgLogin.Width, imgLogin.Height, 19, 19);
      dc := GetDC(pnlLogin.Handle);
      SetWindowRgn(pnlLogin.Handle, rgn, true);
      ReleaseDC(pnlLogin.Handle, dc);
      DeleteObject(rgn);
      //verifica��o de licen�a

        verificarLicenca;
        //bloquear;


 end;

procedure TFrmLogin.linksiteClick(Sender: TObject);
begin
ShellExecute(GetDesktopWindow,'open','http://www.clickvendaspdv.com.br',nil,nil,SW_NORMAL);

end;

procedure TFrmLogin.login;
begin
//AQUI VIRA O C�DIGO DE LOGIN

       dm.query_usuarios.Close;
       dm.query_usuarios.SQL.Clear;
       dm.query_usuarios.SQL.Add('SELECT * from usuarios where usuario = :usuario and senha = :senha');
        dm.query_usuarios.ParamByName('usuario').Value := edtUsuario.Text;
         dm.query_usuarios.ParamByName('senha').Value := edtSenha.Text;
       dm.query_usuarios.Open;

       if not dm.query_usuarios.isEmpty then
       begin
         nomeUsuario :=  dm.query_usuarios['nome'];
         cargoUsuario :=  dm.query_usuarios['cargo'];

         //VERIFICAR SE QUEM LOGOU FOI UM OPERADOR DE CAIXA
         if cargoUsuario = 'Operador de Caixa' then
         begin
           FrmCaixa := TFrmCaixa.Create(FrmLogin);
           EdtSenha.Text := '';
           statusCaixa := 'Abertura';
           FrmCaixa.ShowModal;

           exit;
         end;


         FrmMenu := TFrmMenu.Create(FrmLogin);
         EdtSenha.Text := '';
         FrmMenu.ShowModal;

          end
          else
          begin
           MessageDlg('Os dados est�o incorretos!!', mtInformation, mbOKCancel, 0);
           edtusuario.Text := '';
           EdtSenha.Text := '';
           edtUsuario.SetFocus;
       end;




end;

procedure TFrmLogin.verificarLicenca;
var
serialkeyInstalado : string;
datainicial, datainicial2 : Tdate;
    Function Crypt(Action, Src: String): String;
Label Fim;
var KeyLen : Integer;
  KeyPos : Integer;
  OffSet : Integer;
  Dest, Key : String;
  SrcPos : Integer;
  SrcAsc : Integer;
  TmpSrcAsc : Integer;
  Range : Integer;
begin
  if (Src = '') Then
  begin
    Result:= '';
    Goto Fim;
  end;
  Key :=
'YUQL23KL23DF90WI5E1JAS467NMCXXL6JAOAUWWMCL0AOMM4A4VZYW9KHJUI2347EJHJKDF3424SKL K3LAKDJSL9RTIKJ';
  Dest := '';
  KeyLen := Length(Key);
  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 256;
  if (Action = UpperCase('C')) then
  begin
    Randomize;
    OffSet := Random(Range);
    Dest := Format('%1.2x',[OffSet]);
    for SrcPos := 1 to Length(Src) do
    begin
      Application.ProcessMessages;
      SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
      if KeyPos < KeyLen then KeyPos := KeyPos + 1 else KeyPos := 1;
      SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      Dest := Dest + Format('%1.2x',[SrcAsc]);
      OffSet := SrcAsc;
    end;
  end
  Else if (Action = UpperCase('D')) then
  begin
    OffSet := StrToInt('$'+ copy(Src,1,2));
    SrcPos := 3;
  repeat
    SrcAsc := StrToInt('$'+ copy(Src,SrcPos,2));
    if (KeyPos < KeyLen) Then KeyPos := KeyPos + 1 else KeyPos := 1;
    TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
    if TmpSrcAsc <= OffSet then TmpSrcAsc := 255 + TmpSrcAsc - OffSet
    else TmpSrcAsc := TmpSrcAsc - OffSet;
    Dest := Dest + Chr(TmpSrcAsc);
    OffSet := SrcAsc;
    SrcPos := SrcPos + 2;
  until (SrcPos >= Length(Src));
  end;
  Result:= Dest;
  Fim:
end;

begin



       dm.query_registro.Close;
       dm.query_registro.SQL.Clear;
       dm.query_registro.SQL.Add('SELECT * from registro');
       //dm.query_registro.ParamByName('serial').Value := serialKey;
       dm.query_registro.Open;

        if dm.query_registro.isEmpty then
                   begin

                     FrmAtivacao := TFrmAtivacao.Create(self);
                     FrmAtivacao.ShowModal;
                     exit;
                   end
                   else
                   begin
                       //serialKeyCalculo := StrToFloat(dm.query_registro.FieldByName('serialkey').Value);
                       numeroInstalacao := Crypt('D', dm.query_registro.FieldByName('numero').Value);
                       serialkeyInstalado := Crypt('D',dm.query_registro.FieldByName('serialkey').Value);
                       //calculo da valida��o



                          //Usa-se C para Criptografar e D para Descriptografar
                          //Ex de Criptografia:

                            if numeroInstalacao <> serialkeyInstalado then
                              begin
                                FrmAtivacao := TFrmAtivacao.Create(self);
                                FrmAtivacao.ShowModal;
                                exit;


                            end;



                          //Ex: de Descriptografia
                          //editSeriallicenca.text:= Crypt('D',Edit1.text);



                     //if serialKeyCalculo ='' then
                         //begin
                         //chamada := 'serialinvalido';

                        end;



 end;
 end.
