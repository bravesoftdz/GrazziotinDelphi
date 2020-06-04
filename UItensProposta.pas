unit UItensProposta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls, DB, FMTBcd, SqlExpr, Buttons,
  Grids, DBGrids;

type
  TfItensProposta = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Numero: TMaskEdit;
    Capacidade: TDBEdit;
    Nivel: TMaskEdit;
    CodLocal: TDBEdit;
    DescLocal: TDBEdit;
    Reteste: TMaskEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Panel1: TPanel;
    dsItens: TDataSource;
    Qproposta: TSQLQuery;
    lblMens: TLabel;
    QTabPreco: TSQLQuery;
    butSalvar: TBitBtn;
    butNovo: TBitBtn;
    butSair: TBitBtn;
    Seq: TDBEdit;
    butLocal: TSpeedButton;
    procedure NumeroExit(Sender: TObject);
    procedure NivelExit(Sender: TObject);
    procedure butSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure butSalvarClick(Sender: TObject);
    procedure NivelEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure butNovoClick(Sender: TObject);
    procedure dsItensStateChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CodLocalExit(Sender: TObject);
    procedure DescLocalExit(Sender: TObject);
    procedure CodLocalEnter(Sender: TObject);
    procedure DescLocalEnter(Sender: TObject);
    procedure butLocalClick(Sender: TObject);
    procedure NumeroEnter(Sender: TObject);
  private
    { Private declarations }
    procedure pesquisaLocal(Tipo: string);
  public
    { Public declarations }
  end;

var
  fItensProposta: TfItensProposta;

implementation

uses UDM, UDMBanco, UUtil, ULocal;

{$R *.dfm}

procedure TfItensProposta.pesquisaLocal(Tipo: string);
begin
   if (CodLocal.Modified) or (DescLocal.Modified) then
   begin
      if Tipo = 'C' then
         ComandoQuery(dm.Qsql,'select CODLOCAL,DESCLOCAL from TLOCAL where CODLOCAL = '+CodLocal.Text)
      else
         ComandoQuery(dm.Qsql,'select CODLOCAL,DESCLOCAL from TLOCAL where DESCLOCAL like "'+DescLocal.Text+'%"');
      if dm.Qsql.RecordCount = 0 then
      begin
         dm.ItensPropostaCODLOCAL.Clear;
         dm.ItensPropostaDescLocal.Clear;
      end;
      if dm.Qsql.RecordCount = 1 then
      begin
         dm.ItensPropostaCODLOCAL.Text:=dm.Qsql.fieldbyname('CODLOCAL').Text;
         dm.ItensPropostaDESCLOCAL.Text:=dm.Qsql.fieldbyname('DESCLOCAL').Text;
      end;
      if dm.Qsql.RecordCount > 1 then
      begin
         procura(dm.Local,DescLocal.Text+'%');
         vgcodigo:='';
         fLocal:=TfLocal.create(Self);
         fLocal.butConf.Visible:=true;
         fLocal.showModal;
         if vgcodigo <> '' then
         begin
            ComandoQuery(dm.Qsql,'select DESCLOCAL from TLOCAL where CODLOCAL = '+vgcodigo);
            dm.ItensPropostaCODLOCAL.Text:=vgcodigo;
            dm.ItensPropostaDESCLOCAL.Text:=dm.Qsql.fieldbyname('DESCLOCAL').Text;
            DescLocal.SetFocus;
         end
         else begin
            dm.ItensPropostaCODLOCAL.Clear;
            DescLocal.clear;
         end;
      end;
      dm.Qsql.Close;
   end;
   CodLocal.Modified:=false;
   DescLocal.Modified:=false;
end;

procedure TfItensProposta.NumeroExit(Sender: TObject);
begin
   if Numero.Modified = false then
      exit;
   if trim(Numero.text) = '' then
      exit;
   Qproposta.close;
   Qproposta.SQL.Clear;
   Qproposta.SQL.Add(' select C.SERIE,C.NUMERO,C.CAPACIDADE,C.CODLOCAL,C.VENCIMENTO,');
   Qproposta.SQL.Add(' (select L.DESCLOCAL from TLOCAL L where C.CODLOCAL = L.CODLOCAL) as DESCLOCAL');
   Qproposta.SQL.Add(' from TCLIEXT C');
   Qproposta.SQL.Add(' where C.CODPESSOA = '+DM.PropostaCODPESSOA.Text);
   Qproposta.SQL.Add(' and C.NUMERO = '+NUMERO.Text);
   Qproposta.SQL.Add(' and C.SITUACAO = "A"');
   Qproposta.Open;
   dm.ItensPropostaCAPACIDADE.Text:=Qproposta.fieldbyname('CAPACIDADE').Text;
   dm.ItensPropostaCODLOCAL.Text:=Qproposta.fieldbyname('CODLOCAL').Text;
   dm.ItensPropostaDESCLOCAL.Text:=Qproposta.fieldbyname('DESCLOCAL').Text;
   Reteste.Text:=copy(Qproposta.fieldbyname('VENCIMENTO').Text,7,4);
   Qproposta.Close;
end;

procedure TfItensProposta.NivelExit(Sender: TObject);
begin
   if Nivel.Modified = false then
      exit;
   if Nivel.Text = '0' then
      exit;
   with dm.Qsql do
   begin
      Close;
      SQL.Clear;
      Sql.Add('select VALORUNIT from TABPRECO where NIVEL = '''+Nivel.Text+''' and CAPACIDADE = '''+Capacidade.Text+'''');
      open;
      if not IsEmpty then
      begin
         dm.ItensPropostaVALORUNIT.AsFloat:=fieldbyname('VALORUNIT').AsFloat;
         dm.ItensPropostaVALORTOTAL.AsFloat:=dm.ItensPropostaVALORUNIT.AsFloat -
         ((dm.ItensPropostaVALORUNIT.AsFloat * dm.PropostaDESCONTO.AsFloat)/100);
      end
      else begin
         showmessage('Nivel n�o Cadastrado');
         Nivel.Clear;
         Nivel.SetFocus;
      end;
   end;
end;

procedure TfItensProposta.butSairClick(Sender: TObject);
begin
   close;
end;

procedure TfItensProposta.FormCreate(Sender: TObject);
begin
   if dm.ItensProposta.RecordCount = 0 then
      dm.ItensProposta.Append
   else
   begin
      Numero.text:=dm.ItensPropostaNUMEXTINTOR.Text;
      Nivel.Text:=dm.ItensPropostaCODNIVEL.Text;
      Reteste.Text:=dm.ItensPropostaC_VENCTOTESTE.Text;
      dm.ItensProposta.Edit;
   end;
end;

procedure TfItensProposta.butSalvarClick(Sender: TObject);
var vconta: integer;
begin
   if (trim(numero.text) = '') and (trim(capacidade.text) = '') and (trim(nivel.Text) = '') then
   begin
      mensagem('Informe o N�mero, Capacidade e o N�vel');
      exit;
   end;
   dm.IniTrans;

   if dm.ItensProposta.RecordCount = 0 then
      vconta:=0
   else
      vconta:=strtoint(Seq.Text) + 1;
   if trim(Nivel.Text) <> '' then
      dm.ItensPropostaCODNIVEL.text:=Nivel.Text;
   if trim(reteste.Text) <> '' then
      dm.ItensPropostaVENCTOTESTE.Text:='01/01/'+reteste.Text;
   if dsItens.State = dsInsert then
   begin
      dm.ItensPropostaNUMPROPOSTA.Text:=dm.PropostaNUMPROPOSTA.Text;
      dm.ItensPropostaSEQUENCIA.Asinteger:=vconta;
   end;
   dm.itenspropostaNUMEXTINTOR.Text:=Numero.Text;
   if dm.Proposta.State in [dsedit,dsinsert] then
   begin
      if dm.Proposta.State = dsInsert then
      begin
         procura(dm.Control,'Proposta');
         dm.Control.Edit;
         dm.ControlCODIGO.AsInteger:=dm.ControlCODIGO.AsInteger + 1;
         dm.Control.Post;
         GravaTab(dm.Control);
         dm.Control.Close;
      end;
      dm.Proposta.Post;
   end;
   dm.ItensProposta.Post;
   GravaTab(dm.Proposta);
   GravaTab(dm.ItensProposta);
   dm.GravaTrans;
   butNovo.SetFocus;
end;

procedure TfItensProposta.NivelEnter(Sender: TObject);
begin
   Nivel.Modified:=false;
end;

procedure TfItensProposta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if dsItens.State in [dsedit,dsinsert] then
      dsItens.DataSet.Cancel;
   action:=cafree;
end;

procedure TfItensProposta.butNovoClick(Sender: TObject);
begin
   Numero.clear;
   Nivel.clear;
   Reteste.Clear;
   dm.ItensProposta.Append;
   Numero.SetFocus;
end;

procedure TfItensProposta.dsItensStateChange(Sender: TObject);
begin
   butNovo.Enabled:=dsItens.State in [dsedit,dsbrowse];
   butSalvar.Enabled:=dsItens.State in [dsedit,dsInsert];
end;

procedure TfItensProposta.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TfItensProposta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_Escape then
      close;
end;

procedure TfItensProposta.CodLocalExit(Sender: TObject);
begin
   if CodLocal.Modified = false then exit;
   if CodLocal.Text <> '' then
      PesquisaLocal('C')
   else
      dm.ItensPropostaDescLocal.Clear;
end;

procedure TfItensProposta.DescLocalExit(Sender: TObject);
begin
   if DescLocal.Modified = false then exit;
   ModoEdicao(dm.ItensProposta);
   if DescLocal.Text <> '' then
      PesquisaLocal('D')
   else
      dm.ItensPropostaCODLOCAL.Clear;
end;

procedure TfItensProposta.CodLocalEnter(Sender: TObject);
begin
   CodLocal.Modified:=false;
end;

procedure TfItensProposta.DescLocalEnter(Sender: TObject);
begin
   DescLocal.Modified:=false;
end;

procedure TfItensProposta.butLocalClick(Sender: TObject);
begin
   vgcodigo:='';
   procura(dm.Local,'ABCD%');
   fLocal:=TfLocal.create(Self);
   fLocal.butConf.Visible:=true;
   fLocal.showModal;
   if vgcodigo <> '' then
   begin
      ModoEdicao(dm.ItensProposta);
      ComandoQuery(dm.Qsql,'select DESCLOCAL from TLOCAL where CODLOCAL = '+vgcodigo);
      dm.ItensPropostaCODLOCAL.Text:=vgcodigo;
      dm.ItensPropostaDESCLOCAL.Text:=dm.Qsql.fieldbyname('DESCLOCAL').Text;
      DescLocal.SetFocus;
      dm.Qsql.Close;
   end;
end;

procedure TfItensProposta.NumeroEnter(Sender: TObject);
begin
   Numero.Modified:=false;
end;

end.
