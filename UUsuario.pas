unit UUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfUsuario = class(TForm)
    Label1: TLabel;
    Nome: TEdit;
    Label2: TLabel;
    Senha: TEdit;
    Label3: TLabel;
    Senha2: TEdit;
    Panel1: TPanel;
    butOk: TBitBtn;
    butExc: TBitBtn;
    butFechar: TBitBtn;
    chGerente: TCheckBox;
    butPesq: TBitBtn;
    chSelo: TCheckBox;
    chCadastro: TCheckBox;
    chValidaSelo: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NomeExit(Sender: TObject);
    procedure butFecharClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NomeEnter(Sender: TObject);
    procedure butOkClick(Sender: TObject);
    procedure butExcClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure butPesqClick(Sender: TObject);
  private
    { Private declarations }
    Tm: String;
    procedure Limpa;
    procedure Existe;
  public
    { Public declarations }
  end;

var
  fUsuario: TfUsuario;

implementation

uses UUtil, UDM, UJUsuario;

{$R *.dfm}

procedure TfUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   dm.CadUsuario.Close;
   action := Cafree;
end;

procedure TfUsuario.NomeExit(Sender: TObject);
begin
   Nome.Enabled := false;
   if Trim(Nome.Text) = '' then
      exit;

   dm.GetUsuario(Nome.Text);
   if dm.CadUsuario.IsEmpty then
      Limpa
   else
      Existe;
end;

procedure TfUsuario.butFecharClick(Sender: TObject);
begin
   close;
end;

procedure TfUsuario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_Escape then
   begin
      if Nome.Focused then
         close
      else begin
         Nome.Enabled := True;
         Nome.SetFocus;
      end;
   end;
end;

procedure TfUsuario.Existe;
begin
   Nome.Text := dm.CadUsuarioNOME.Text;
   Senha.Text := dm.CadUsuarioSENHA.text;
   chGerente.Checked := (dm.CadUsuarioGERENTE.Text = 'S');
   chSelo.Checked := (dm.CadUsuarioALTERAR_SELO.text = 'S');
   chCadastro.Checked := (dm.CadUsuarioALTERAR_CADASTRO.text = 'S');
   chValidaSelo.Checked := (dm.CadUsuarioVALIDA_INTERVALO_SELO.Text = 'S');

   Tm := 'A';
   butOk.Enabled := True;
   butExc.Enabled := True;
   butPesq.Enabled := True;
end;

procedure TfUsuario.Limpa;
begin
   tm := 'I';
   butOk.Enabled := True;
   butExc.Enabled := False;
   butPesq.Enabled := False;
end;

procedure TfUsuario.NomeEnter(Sender: TObject);
begin
   LimpaTela(fUsuario);
   chGerente.Checked := False;
   chCadastro.Checked := False;
   chSelo.Checked := False;
   butOk.Enabled := False;
   butExc.Enabled := False;
   butPesq.Enabled := True;
end;

procedure TfUsuario.butOkClick(Sender: TObject);
begin

   if Senha.Modified then
   begin
      if Senha.Text <> Senha2.Text then
      begin
         Mensagem('Primeira Senha difente da Segunda Senha');
         Senha.SetFocus;
         exit;
      end;
   end;

   if Nome.Text = 'SUPERVISOR' then
   begin
      mensagem('Usu�rio inv�lido');
      exit;
   end;

   if Tm = 'I' then
   begin
      dm.CadUsuario.Append;
      DM.CadUsuarioNOME.Text := Nome.Text;
   end
   else
      dm.CadUsuario.Edit;

   dm.CadUsuarioSENHA.Text := Senha.Text;
   if chGerente.Checked then
      dm.CadUsuarioGERENTE.Text := 'S'
   else
      dm.CadUsuarioGERENTE.Text := 'N';

   if chSelo.Checked then
      dm.CadUsuarioALTERAR_SELO.Text := 'S'
   else
      dm.CadUsuarioALTERAR_SELO.Text := 'N';

   if chCadastro.Checked then
      dm.CadUsuarioALTERAR_CADASTRO.Text := 'S'
   else
      dm.CadUsuarioALTERAR_CADASTRO.Text := 'N';

   if chValidaSelo.Checked then
      dm.CadUsuarioVALIDA_INTERVALO_SELO.Text := 'S'
   else
      dm.CadUsuarioVALIDA_INTERVALO_SELO.Text := 'N';

   dm.CadUsuario.Post;
   GravaTab(dm.CadUsuario);
   Nome.Enabled := True;
   Nome.SetFocus;
end;

procedure TfUsuario.butExcClick(Sender: TObject);
begin
   if Confirma('Deseja Excluir?','N') = idyes then
   begin
      dm.CadUsuario.Delete;
      GravaTab(dm.CadUsuario);
      Nome.Enabled := true;
      Nome.SetFocus;
   end;
end;

procedure TfUsuario.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TfUsuario.butPesqClick(Sender: TObject);
begin
   fJUsuario := TfJUsuario.Create(Self);
   if fJUsuario.ShowModal = mrOk then
   begin
      dm.GetUsuario(fJUsuario.CadUsuarioNOME.Text);
      Existe;
      Senha.SetFocus;
   end;
   fJUsuario.CadUsuario.Close;
   fJUsuario.Free;

end;

end.

