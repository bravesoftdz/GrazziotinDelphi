unit UIRastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask;

type
  TfIRastro = class(TForm)
    Label1: TLabel;
    Label4: TLabel;
    DataIni: TMaskEdit;
    EditSerie: TEdit;
    GroupBox1: TGroupBox;
    RLote: TRadioButton;
    RSerie: TRadioButton;
    Panel1: TPanel;
    butSair: TBitBtn;
    butImprimir: TBitBtn;
    Label2: TLabel;
    DataFin: TMaskEdit;
    Label3: TLabel;
    CboLote: TComboBox;
    procedure butSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure butImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fIRastro: TfIRastro;

implementation

uses UDM, URRastro;

{$R *.dfm}

procedure TfIRastro.butSairClick(Sender: TObject);
begin
   close;
end;

procedure TfIRastro.FormCreate(Sender: TObject);
begin
   dataini.Text:='01/10/2005';
   datafin.Text:='30/10/2005';
   dm.Qsql.Close;
   dm.Qsql.SQL.Clear;
   dm.Qsql.SQL.Add('select LOTERESUMIDO from TESTLOTE');
   dm.Qsql.Open;
   CboLote.Clear;
   while not dm.Qsql.Eof do
   begin
      CboLote.Items.Add(dm.Qsql.fieldbyname('LOTERESUMIDO').Text);
      dm.Qsql.Next;
   end;
   dm.Qsql.Close;
end;

procedure TfIRastro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TfIRastro.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TfIRastro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_Escape then
      close;
end;

procedure TfIRastro.butImprimirClick(Sender: TObject);
var vsql: string;
begin
   vsql:='';
   if CboLote.Text <> '' then
      vsql:=vsql + ' and I.LoteResumido = "'+Cbolote.Text+'"';
   if editSerie.Text <> '' then
      vsql:=vsql + ' and I.Serie = "'+editSerie.Text+'"';

   frRastro:=TfrRastro.create(Self);
   with frRastro do
   begin
      if rLote.Checked then
         vsql:=vsql + ' order by I.LOTERESUMIDO';
      if RSerie.Checked then
         vsql:=vsql + ' order by I.SERIE';
      lblData.Caption:='Per�odo de '+Dataini.Text+' At� '+DataFin.Text;
      lblData1.Caption:='Per�odo de '+Dataini.Text+' At� '+DataFin.Text;
      Lote.close;
      QLote.SQL.Add(vsql);
      QLote.Params[0].AsDate:=strtodate(dataini.text);
      QLote.Params[1].AsDate:=strtodate(datafin.text);
      Lote.open;
      if rLote.Checked then
         RelLote.print;
      if rSerie.Checked then
         RelLote1.Print;
      lote.close;
      free;
   end;
end;

end.
