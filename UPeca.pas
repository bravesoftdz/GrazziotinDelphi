unit UPeca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, ExtCtrls, ComCtrls, StdCtrls, DBCtrls,
  Mask, DB, FMTBcd, SqlExpr, DBClient;

type
  TfPeca = class(TForm)
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
    DBCheckBox1: TDBCheckBox;
    dbchkSO_INSPECAO: TDBCheckBox;
    dbchkSO_INSPECAO1: TDBCheckBox;
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
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPeca: TfPeca;

implementation

uses UDM, UDMBanco, UUtil, UPesquisa;

{$R *.dfm}

procedure TfPeca.FormActivate(Sender: TObject);
begin
   if sheetLista.Showing then
      Grade.SetFocus;
end;

procedure TfPeca.butCancelarClick(Sender: TObject);
begin
   dsCad.DataSet.Cancel;
   sheetLista.TabVisible:=true;
   sheetCad.TabVisible:=false;
   Grade.SetFocus;
end;

procedure TfPeca.butOkClick(Sender: TObject);
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
end;

procedure TfPeca.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TfPeca.GradeDblClick(Sender: TObject);
begin
   if dsCad.DataSet.IsEmpty then
      exit;
   if butConf.Visible then
   begin
      butConfClick(Self);
      exit;
   end;
   sheetLista.TabVisible:=false;
   sheetCad.TabVisible:=true;
   dsCad.DataSet.Edit;
   Nome.SetFocus;
end;

procedure TfPeca.GradeKeyDown(Sender: TObject; var Key: Word;
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

procedure TfPeca.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TfPeca.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfPeca.butIncClick(Sender: TObject);
begin
   sheetLista.TabVisible:=false;
   sheetCad.TabVisible:=true;
   dsCad.DataSet.Append;
   Nome.SetFocus;
end;

procedure TfPeca.butExcClick(Sender: TObject);
begin
   if dsCad.DataSet.IsEmpty then
      exit;
   if dm.Integridade('TTABPECA','CODPECA',dm.PecaCODPECA.Text) = false then
      exit;
   if confirma('Confirma Exclus�o?','N')=idno then
      exit;
   dm.IniTrans;
   dsCad.DataSet.Delete;
   GravaTab((dsCad.dataset as TClientDataSet));
   dm.GravaTrans;
end;

procedure TfPeca.ButFecharClick(Sender: TObject);
begin
   close;
end;

procedure TfPeca.butPesqClick(Sender: TObject);
begin
   fPesquisa:=TfPesquisa.create(self);
   fPesquisa.dsCad:=dsCad;
   fPesquisa.showModal;
   fPesquisa.free;
   Grade.SetFocus;
end;

procedure TfPeca.GradeEnter(Sender: TObject);
begin
   fPeca.KeyPreview:=false;
end;

procedure TfPeca.GradeExit(Sender: TObject);
begin
   fPeca.KeyPreview:=true;
end;

procedure TfPeca.butAltClick(Sender: TObject);
begin
   if dsCad.DataSet.IsEmpty then
      exit;
   dsCad.DataSet.Edit;
   sheetLista.TabVisible:=false;
   sheetCad.TabVisible:=true;
   Nome.SetFocus;
end;

procedure TfPeca.butConfClick(Sender: TObject);
begin
   vgcodigo:=dsCad.DataSet.Fields[0].Text;
   close;
end;

procedure TfPeca.FormCreate(Sender: TObject);
begin
   sheetCad.TabVisible:=false;
   if dscad.DataSet.Active = false then
      procura((dsCad.dataset as TClientDataSet),'-1');
end;

end.
