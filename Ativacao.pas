unit Ativacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.jpeg, ShellAPI;

type
  TFrmAtivacao = class(TForm)
    btnregistrar: TSpeedButton;
    edtSeriallicenca: TEdit;
    Label2: TLabel;
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Label3: TLabel;
    Label4: TLabel;
    edtID: TEdit;
    btnSair: TButton;

  procedure FormShow(Sender: TObject);
    procedure btnregistrarClick(Sender: TObject);
    procedure btncomprarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure edtSeriallicencaChange(Sender: TObject);
  private
    { Private declarations }
    procedure associarCampos;

  public
    { Public declarations }
  end;

var
  FrmAtivacao: TFrmAtivacao;

implementation

{$R *.dfm}

uses Modulo, Login;











procedure TFrmAtivacao.associarCampos;
begin
 dm.tb_registro.FieldByName('numero').Value := numeroInstalacao;
 dm.tb_registro.FieldByName('serialkey').Value := edtSeriallicenca.Text;
 dm.tb_registro.FieldByName('data').Value := dateTOstr(Date);
end;

procedure TFrmAtivacao.FormShow(Sender: TObject);
  var
  Num, Num2: Byte;
  a, a2 : integer;
   function GetRandomPassword(Size: Integer; Tipo : Integer = 1): String;

              var
                I: Integer;
                Chave: String;
              const
                str1 = '1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
                str2 = '1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ';
                str3 = '1234567890abcdefghijklmnopqrstuvwxyz';
                str4 = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
                str5 = '1234567890';
                str6 = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
                str7 = 'abcdefghijklmnopqrstuvwxyz';
               begin
                dm.tb_registro.Active := true;
                dm.tb_registro.insert;

                Chave := '';

                for I := 1 to Size do
                begin
                  case Tipo of
                    1 : Chave := Chave + str1[Random(Length(str1)) + 1];
                    2 : Chave := Chave + str2[Random(Length(str2)) + 1];
                    3 : Chave := Chave + str3[Random(Length(str3)) + 1];
                    4 : Chave := Chave + str4[Random(Length(str4)) + 1];
                    5 : Chave := Chave + str5[Random(Length(str5)) + 1];
                    6 : Chave := Chave + str6[Random(Length(str6)) + 1];
                    7 : Chave := Chave + str7[Random(Length(str7)) + 1];
                  end;
                end;

                Result := Chave;

              end;

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
       dm.query_registro.Open;
     {if chamada = 'serialinvalido' then
     begin
     numeroInstalacao := dm.query_registro.FieldByName('numero').Value;
     end; }

        if dm.query_registro.isEmpty then
         begin
                Randomize;
                for a := 1 to 10000 do
                  begin
                    Num := Random(10000);
                     //edit7.Text := (IntToStr(Num));
                    //Memo1.Lines.Add(IntToStr(Num));
                  end;

                 Randomize;
                for a := 1000 to 2000 do
                  begin
                    Num2 := Random(2000);
                     //editSeriallicenca.Text := (IntToStr(Num2));
                    //Memo1.Lines.Add(IntToStr(Num));
                  end;

                  edtID.Text := IntToStr(Num) +  IntToStr(Num2) + GetRandomPassword(12, 5);
                  numeroInstalacao := Crypt('C',edtID.text);
                  associarCampos;
                  dm.tb_registro.Post;


          end
          else
          begin
          edtID.Text := Crypt('D',dm.query_registro.FieldByName('numero').Value);

          end;






 end;
procedure TFrmAtivacao.btnSairClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TFrmAtivacao.edtSeriallicencaChange(Sender: TObject);
begin
edtSeriallicenca.Font.Color := clWindowText;
end;

procedure TFrmAtivacao.btncomprarClick(Sender: TObject);
begin
ShellExecute(Handle,'open','http://www.globo.com','','',1);
end;

procedure TFrmAtivacao.btnregistrarClick(Sender: TObject);
 //calculo de serial e guardar registro
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
    dm.tb_registro.Active := true;
    dm.tb_registro.edit;

  //Ex: de Descriptografia
   serialKey := Crypt('D',edtSeriallicenca.text);
   numeroInstalacao := Crypt('C',edtID.text);
   if serialKey = edtID.text then
    begin
    MessageDlg('REGISTRO DE LICEN�A EFETUADO COM SUCESSO!', mtInformation, mbOKCancel, 0);
    serialKey := Crypt('C',serialkey);
       // associarCampos;

       associarCampos;
       dm.query_coringaReg.Close;
       dm.query_coringaReg.SQL.Clear;
       dm.query_coringaReg.SQL.Add('UPDATE registro set serialkey = :serialkey, numero = :numero, data = curdate() where id = id');
       dm.query_coringaReg.ParamByName('numero').Value := numeroInstalacao;
       dm.query_coringaReg.ParamByName('serialkey').Value := serialkey;
       dm.query_coringaReg.ExecSQL;

       close;
    end
    else
    begin
    MessageDlg('CHAVE DE LICEN�A INV�LIDA REGISTRO N�O EFETUADO!', mtInformation, mbOKCancel, 0);
    edtSeriallicenca.Font.Color := clRed;
    end;

    end;
end.
