unit UPessoa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, ExtCtrls, ComCtrls, StdCtrls, DBCtrls,
  Mask, DB, FMTBcd, SqlExpr, DBClient;

type
  TfPessoa = class(TForm)
    PageControl1: TPageControl;
    sheetLista: TTabSheet;
    sheetCad: TTabSheet;
    Panel1: TPanel;
    Grade: TDBGrid;
    dsCad: TDataSource;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Codigo: TDBEdit;
    Label7: TLabel;
    Nome: TDBEdit;
    Panel4: TPanel;
    butCancelar: TBitBtn;
    butOk: TBitBtn;
    butInc: TBitBtn;
    butExc: TBitBtn;
    butPesq: TBitBtn;
    butFechar: TBitBtn;
    butAlt: TBitBtn;
    butConf: TBitBtn;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBComboBox1: TDBComboBox;
    Label5: TLabel;
    edtFJ: TDBComboBox;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    Label23: TLabel;
    DBEdit4: TDBEdit;
    CodVendedor: TDBEdit;
    Label1: TLabel;
    DescVendedor: TEdit;
    butVendedor: TSpeedButton;
    Label3: TLabel;
    CodCidade: TDBEdit;
    DescCidade: TEdit;
    CodBairro: TDBEdit;
    Label11: TLabel;
    DescBairro: TEdit;
    butBairro: TSpeedButton;
    butCidade: TSpeedButton;
    DBEdit10: TDBEdit;
    Uf: TEdit;
    Label13: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Label4: TLabel;
    edtCNPJ: TDBEdit;
    Label17: TLabel;
    edtInscEstadual: TDBEdit;
    Label18: TLabel;
    edtCPF: TDBEdit;
    Label19: TLabel;
    DBEdit18: TDBEdit;
    Label20: TLabel;
    DBEdit19: TDBEdit;
    Label21: TLabel;
    DBEdit20: TDBEdit;
    Label22: TLabel;
    DBMemo1: TDBMemo;
    dtPesq: TSQLDataSet;
    dtPesqDESCBAIRRO: TStringField;
    dtPesqDESCCIDADE: TStringField;
    dtPesqUF: TStringField;
    dtPesqDESCVENDEDOR: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure butCancelarClick(Sender: TObject);
    procedure butOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GradeDblClick(Sender: TObject);
    procedure GradeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure butIncClick(Sender: TObject);
    procedure butExcClick(Sender: TObject);
    procedure ButFecharClick(Sender: TObject);
    procedure butPesqClick(Sender: TObject);
    procedure GradeEnter(Sender: TObject);
    procedure GradeExit(Sender: TObject);
    procedure butAltClick(Sender: TObject);
    procedure butConfClick(Sender: TObject);
    procedure CodBairroExit(Sender: TObject);
    procedure DescBairroExit(Sender: TObject);
    procedure CodCidadeExit(Sender: TObject);
    procedure DescCidadeExit(Sender: TObject);
    procedure butCidadeClick(Sender: TObject);
    procedure butBairroClick(Sender: TObject);
    procedure CodVendedorExit(Sender: TObject);
    procedure DescVendedorExit(Sender: TObject);
    procedure butVendedorClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtFJClick(Sender: TObject);
    procedure sheetCadShow(Sender: TObject);
  private
    { Private declarations }
    procedure pesquisaBairro(Tipo: string);
    procedure pesquisaCIDADE(Tipo: string);
    procedure pesquisaVendedor(Tipo: string);
    procedure ControleFJ;
  public
    { Public declarations }
  end;

var
  fPessoa: TfPessoa;

implementation

uses UDM, UDMBanco, UUtil, UPesquisa, UBairro, UCidade, UVendedor;

{$R *.dfm}

procedure TfPessoa.pesquisaVendedor(Tipo: string);
begin
   if (CodVendedor.Modified) or (DescVendedor.Modified) then
   begin
      if Tipo = 'C' then
         ComandoQuery(dm.Qsql,'select CODVENDEDOR,DESCVENDEDOR from TVENDEDO where CODVENDEDOR = '+CodVendedor.Text)
      else
         ComandoQuery(dm.Qsql,'select CODVENDEDOR,DESCVENDEDOR from TVENDEDO where DESCVENDEDOR like "'+DescVendedor.Text+'%"');
      if dm.Qsql.RecordCount = 0 then
      begin
         dm.PessoaCODVENDEDOR.Clear;
         DescVendedor.Clear;
      end;
      if dm.Qsql.RecordCount = 1 then
      begin
         dm.PessoaCODVENDEDOR.Text:=dm.Qsql.fieldbyname('CODVENDEDOR').Text;
         DESCVENDEDOR.Text:=dm.Qsql.fieldbyname('DESCVENDEDOR').Text;
      end;
      if dm.Qsql.RecordCount > 1 then
      begin
         procura(dm.Vendedor,DescVendedor.Text+'%');
         vgcodigo:='';
         fVendedor:=TfVendedor.create(Self);
         fVendedor.butConf.Visible:=true;
         fVendedor.showModal;
         if vgcodigo <> '' then
         begin
            ComandoQuery(dm.Qsql,'select DESCVENDEDOR from TVENDEDO where CODVENDEDOR = '+vgcodigo);
            dm.PessoaCODVENDEDOR.Text:=vgcodigo;
            DESCVENDEDOR.Text:=dm.Qsql.fieldbyname('DESCVENDEDOR').Text;
            DescVendedor.SetFocus;
         end
         else begin
            dm.PessoaCODVENDEDOR.Clear;
            DescVendedor.clear;
         end;
      end;
      dm.Qsql.Close;
   end;
   CodVendedor.Modified:=false;
   DescVendedor.Modified:=false;
end;

procedure TfPessoa.pesquisaCIDADE(Tipo: string);
begin
   if (CodCIDADE.Modified) or (DescCIDADE.Modified) then
   begin
      if Tipo = 'C' then
         ComandoQuery(dm.Qsql,'select CODCIDADE,DESCCIDADE,CEP,UF from TCIDADE where CODCIDADE = '+CodCIDADE.Text)
      else
         ComandoQuery(dm.Qsql,'select CODCIDADE,DESCCIDADE,CEP,UF from TCIDADE where DESCCIDADE like "'+DescCIDADE.Text+'%"');
      if dm.Qsql.RecordCount = 0 then
      begin
         dm.PessoaCODCIDADE.Clear;
         dm.PessoaCEP.Clear;
         uf.Clear;
         DescCIDADE.Clear;
      end;
      if dm.Qsql.RecordCount = 1 then
      begin
         dm.PessoaCODCIDADE.Text:=dm.Qsql.fieldbyname('CODCIDADE').Text;
         DESCCIDADE.Text:=dm.Qsql.fieldbyname('DESCCIDADE').Text;
         dm.PessoaCEP.Text:=dm.Qsql.fieldbyname('CEP').Text;
         uf.Text:=dm.Qsql.fieldbyname('UF').Text;
      end;
      if dm.Qsql.RecordCount > 1 then
      begin
         procura(dm.CIDADE,DescCIDADE.Text+'%');
         vgcodigo:='';
         fCIDADE:=TfCIDADE.create(Self);
         fCIDADE.butConf.Visible:=true;
         fCIDADE.showModal;
         if vgcodigo <> '' then
         begin
            ComandoQuery(dm.Qsql,'select DESCCIDADE,CEP,UF from TCIDADE where CODCIDADE = '+vgcodigo);
            dm.PessoaCODCIDADE.Text:=vgcodigo;
            DESCCIDADE.Text:=dm.Qsql.fieldbyname('DESCCIDADE').Text;
            dm.PessoaCEP.Text:=dm.Qsql.fieldbyname('CEP').Text;
            uf.Text:=dm.Qsql.fieldbyname('UF').Text;
            DescCIDADE.SetFocus;
         end
         else begin
            dm.PessoaCODCIDADE.clear;
            DESCCIDADE.clear;
            dm.PessoaCEP.clear;
            uf.clear;
         end;
      end;
      dm.Qsql.Close;
   end;
   CodCIDADE.Modified:=false;
   DescCIDADE.Modified:=false;
end;

procedure TfPessoa.pesquisaBairro(Tipo: string);
begin
   if (CodBairro.Modified) or (DescBairro.Modified) then
   begin
      if Tipo = 'C' then
         ComandoQuery(dm.Qsql,'select CODBAIRRO,DESCBAIRRO from TBAIRRO where CODBAIRRO = '+CodBairro.Text)
      else
         ComandoQuery(dm.Qsql,'select CODBAIRRO,DESCBAIRRO from TBAIRRO where DESCBAIRRO like "'+DescBairro.Text+'%"');
      if dm.Qsql.RecordCount = 0 then
      begin
         dm.PessoaCODBAIRRO.Clear;
         DescBairro.Clear;
      end;
      if dm.Qsql.RecordCount = 1 then
      begin
         dm.PessoaCODBAIRRO.Text:=dm.Qsql.fieldbyname('CODBAIRRO').Text;
         DESCBAIRRO.Text:=dm.Qsql.fieldbyname('DESCBAIRRO').Text;
      end;
      if dm.Qsql.RecordCount > 1 then
      begin
         procura(dm.Bairro,DescBairro.Text+'%');
         vgcodigo:='';
         fBairro:=TfBairro.create(Self);
         fBairro.butConf.Visible:=true;
         fBairro.showModal;
         if vgcodigo <> '' then
         begin
            ComandoQuery(dm.Qsql,'select DESCBAIRRO from TBAIRRO where CODBAIRRO = '+vgcodigo);
            dm.PessoaCODBAIRRO.Text:=vgcodigo;
            DESCBAIRRO.Text:=dm.Qsql.fieldbyname('DESCBAIRRO').Text;
            DescBairro.SetFocus;
         end
         else begin
            dm.PessoaCODBAIRRO.Clear;
            DescBairro.clear;
         end;
      end;
      dm.Qsql.Close;
   end;
   CodBairro.Modified:=false;
   DescBairro.Modified:=false;
end;

procedure TfPessoa.FormActivate(Sender: TObject);
begin
   if sheetLista.Showing then
      Grade.SetFocus;
end;

procedure TfPessoa.butCancelarClick(Sender: TObject);
begin
   dsCad.DataSet.Cancel;
   sheetLista.TabVisible:=true;
   sheetCad.TabVisible:=false;
   Grade.SetFocus;
end;

procedure TfPessoa.butOkClick(Sender: TObject);
var tm: string[1];
begin
   dm.IniTrans;
   tm:='A';
   if dsCad.State = dsInsert then
      tm:='I';
   dsCad.DataSet.Post;
   GravaTab((dsCad.dataset as TClientDataSet));
   if tm = 'I' then
   begin
      dsCad.DataSet.Append;
      Nome.SetFocus;
   end
   else begin
      sheetLista.TabVisible:=true;
      sheetCad.TabVisible:=false;
      Grade.SetFocus;
   end;
   dm.GravaTrans;
   LimpaTela(fPessoa);
end;

procedure TfPessoa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if dsCad.DataSet.State in [dsedit,dsinsert] then
   begin
      if Confirma('Deseja salvar as altera��es?','S') = idNo then
         butCancelarClick(Self)
      else
         butOkClick(Self);
   end;
   dsCad.DataSet.close;
   action:=cafree;
end;

procedure TfPessoa.GradeDblClick(Sender: TObject);
begin
   if dsCad.DataSet.IsEmpty then
      exit;
   if butConf.Visible then
   begin
      butConfClick(Self);
      exit;
   end;
   butAltClick(Self);
   {sheetLista.TabVisible:=false;
   sheetCad.TabVisible:=true;
   dsCad.DataSet.Edit;}
   Nome.SetFocus;
end;

procedure TfPessoa.GradeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_Return then
   begin
      if dsCad.DataSet.IsEmpty then
         exit;
      GradeDblClick(Self);
      if butConf.Visible = false then
         sheetCad.SetFocus;
   end;
   case key of
      vk_F2: butIncClick(Self);
      vk_F3: butAltClick(Self);
      vk_F4: butExcClick(Self);
      vk_F5: butPesqClick(Self);
      vk_F6: begin
               if butConf.Visible then
                  butConfClick(Self);
             end;
      vk_Escape: close;
   end;
end;

procedure TfPessoa.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TfPessoa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_Escape then
   begin
      if sheetCad.Showing then
         butCancelarClick(Self)
      else
         close;
   end;
end;

procedure TfPessoa.butIncClick(Sender: TObject);
begin
   LimpaTela(fPessoa);
   sheetLista.TabVisible:=false;
   sheetCad.TabVisible:=true;
   dsCad.DataSet.Append;
   Nome.SetFocus;
end;

procedure TfPessoa.butExcClick(Sender: TObject);
begin
   if dsCad.DataSet.IsEmpty then
      exit;
   if confirma('Confirma Exclus�o?','N')=idno then
      exit;
   dm.IniTrans;
   dsCad.DataSet.Delete;
   GravaTab((dsCad.dataset as TClientDataSet));
   dm.GravaTrans;
end;

procedure TfPessoa.ButFecharClick(Sender: TObject);
begin
   close;
end;

procedure TfPessoa.butPesqClick(Sender: TObject);
begin
   fPesquisa:=TfPesquisa.create(self);
   fPesquisa.dsCad:=dsCad;
   fPesquisa.showModal;
   fPesquisa.free;
   Grade.SetFocus;
end;

procedure TfPessoa.GradeEnter(Sender: TObject);
begin
   fPessoa.KeyPreview:=false;
end;

procedure TfPessoa.GradeExit(Sender: TObject);
begin
   fPessoa.KeyPreview:=true;
end;

procedure TfPessoa.butAltClick(Sender: TObject);
begin
   if dsCad.DataSet.IsEmpty then
      exit;
   dsCad.DataSet.Edit;
   dtPesq.Close;
   dtPesq.Params[0].text:=codigo.Text;
   dtpesq.Open;
   DescBairro.Text:=dtPesqDESCBAIRRO.Text;
   DescCidade.Text:=dtpesqDESCCIDADE.text;
   Uf.Text:=dtpesqUF.Text;
   DescVendedor.Text:=dtpesqDESCVENDEDOR.Text;
   dtpesq.Close;
   sheetLista.TabVisible:=false;
   sheetCad.TabVisible:=true;
   Nome.SetFocus;
end;

procedure TfPessoa.butConfClick(Sender: TObject);
begin
   vgcodigo:=dsCad.DataSet.Fields[0].Text;
   close;
end;

procedure TfPessoa.CodBairroExit(Sender: TObject);
begin
   if CodBairro.Text <> '' then
      PesquisaBairro('C')
   else
      DescBairro.Clear;
end;

procedure TfPessoa.DescBairroExit(Sender: TObject);
begin
   if DescBairro.Text <> '' then
      PesquisaBairro('D')
   else
      dm.PessoaCODBAIRRO.Clear;
end;

procedure TfPessoa.CodCidadeExit(Sender: TObject);
begin
   if CodCidade.Text <> '' then
      PesquisaCidade('C')
   else begin
      DescCidade.Clear;
      uf.Clear;
   end;
end;

procedure TfPessoa.DescCidadeExit(Sender: TObject);
begin
   if DescCidade.Text <> '' then
      PesquisaCidade('D')
   else begin
      dm.PessoaCODCIDADE.Clear;
      dm.PessoaCEP.clear;
      uf.Clear;
   end;
end;

procedure TfPessoa.butCidadeClick(Sender: TObject);
begin
   vgcodigo:='';
   procura(dm.CIDADE,'%');
   fCIDADE:=TfCIDADE.create(Self);
   fCIDADE.butConf.Visible:=true;
   fCIDADE.showModal;
   if vgcodigo <> '' then
   begin
      ComandoQuery(dm.Qsql,'select DESCCIDADE,CEP,UF from TCIDADE where CODCIDADE = '+vgcodigo);
      dm.PessoaCODCIDADE.Text:=vgcodigo;
      DESCCIDADE.Text:=dm.Qsql.fieldbyname('DESCCIDADE').Text;
      dm.PessoaCEP.Text:=dm.Qsql.fieldbyname('CEP').Text;
      uf.Text:=dm.Qsql.fieldbyname('UF').Text;
      DescCIDADE.SetFocus;
      dm.Qsql.Close;
   end;
end;

procedure TfPessoa.butBairroClick(Sender: TObject);
begin
   vgcodigo:='';
   procura(dm.Bairro,'%');
   fBairro:=TfBairro.create(Self);
   fBairro.butConf.Visible:=true;
   fBairro.showModal;
   if vgcodigo <> '' then
   begin
      ComandoQuery(dm.Qsql,'select DESCBAIRRO from TBAIRRO where CODBAIRRO = '+vgcodigo);
      dm.PessoaCODBAIRRO.Text:=vgcodigo;
      DESCBAIRRO.Text:=dm.Qsql.fieldbyname('DESCBAIRRO').Text;
      DescBairro.SetFocus;
      dm.Qsql.Close;
   end;
end;

procedure TfPessoa.CodVendedorExit(Sender: TObject);
begin
   if CodVendedor.Text <> '' then
      PesquisaVendedor('C')
   else
      DescVendedor.Clear;
end;

procedure TfPessoa.DescVendedorExit(Sender: TObject);
begin
   if DescVendedor.Text <> '' then
      PesquisaVendedor('D')
   else
      dm.PessoaCODVENDEDOR.Clear;
end;

procedure TfPessoa.butVendedorClick(Sender: TObject);
begin
   vgcodigo:='';
   procura(dm.Vendedor,'%');
   fVendedor:=TfVendedor.create(Self);
   fVendedor.butConf.Visible:=true;
   fVendedor.showModal;
   if vgcodigo <> '' then
   begin
      ComandoQuery(dm.Qsql,'select DESCVENDEDOR from TVENDEDO where CODVENDEDOR = '+vgcodigo);
      dm.PessoaCODVENDEDOR.Text:=vgcodigo;
      DESCVENDEDOR.Text:=dm.Qsql.fieldbyname('DESCVENDEDOR').Text;
      DescVendedor.SetFocus;
      dm.Qsql.Close;
   end;
end;

procedure TfPessoa.FormCreate(Sender: TObject);
begin
   sheetCad.TabVisible:=false;
   if dscad.DataSet.Active = false then
      procura((dsCad.dataset as TClientDataSet),'-1');
end;

procedure TfPessoa.ControleFJ;
begin
   if edtFJ.Text = 'J' then
   begin
      edtCNPJ.Enabled := True;
      edtCPF.Enabled := False;
      edtInscEstadual.Enabled := True;
   end
   else begin
      edtCNPJ.Enabled := False;
      edtCPF.Enabled := True;
      edtInscEstadual.Enabled := False;
   end;
end;

procedure TfPessoa.edtFJClick(Sender: TObject);
begin
   ControleFJ;
end;

procedure TfPessoa.sheetCadShow(Sender: TObject);
begin
   ControleFJ;
end;

end.
