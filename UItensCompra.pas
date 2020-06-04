unit UItensCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, Grids, DBGrids;

type
  TfItensCompra = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    CboLote: TComboBox;
    Qtde: TDBEdit;
    ValorUnit: TDBEdit;
    ValorTotal: TDBEdit;
    Panel1: TPanel;
    butNovo: TBitBtn;
    butSalvar: TBitBtn;
    butSair: TBitBtn;
    EditEstoque: TEdit;
    dsItens: TDataSource;
    NumItem: TEdit;
    total: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure butSairClick(Sender: TObject);
    procedure dsItensStateChange(Sender: TObject);
    procedure QtdeExit(Sender: TObject);
    procedure ValorUnitExit(Sender: TObject);
    procedure ValorTotalExit(Sender: TObject);
    procedure butNovoClick(Sender: TObject);
    procedure butSalvarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CboLoteExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fItensCompra: TfItensCompra;

implementation

uses UDM, UUtil, UDMBanco;

var vloteant,vqtdeant: string[30];

{$R *.dfm}

procedure TfItensCompra.FormCreate(Sender: TObject);
begin
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
   CboLote.Text:=dm.ItensCompraLOTERESUMIDO.Text;
   if not dm.ItensCompra.IsEmpty then
   begin
      comandoQuery(dm.Qsql,'select QTDEESTOQUE from TESTLOTE where LOTERESUMIDO = "'+dm.ItensCompraLOTERESUMIDO.Text+'"');
      editEstoque.text:=formatfloat('###,###,##0.00',dm.Qsql.fieldbyname('QTDEESTOQUE').AsFloat);
   end;
   CboLote.Text:=dm.ItensCompraLOTERESUMIDO.Text;
   vloteant:=dm.ItensCompraLOTERESUMIDO.Text;
   vqtdeant:=dm.ItensCompraQTDE.AsString;
   dm.Qsql.close;
end;

procedure TfItensCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if dsItens.State in [dsedit,dsinsert] then
      dsItens.DataSet.Cancel;
   action:=cafree;
end;

procedure TfItensCompra.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TfItensCompra.butSairClick(Sender: TObject);
begin
   close;
end;

procedure TfItensCompra.dsItensStateChange(Sender: TObject);
begin
   butSalvar.Enabled:=dsItens.State in [dsinsert,dsEdit];
   butNovo.Enabled:=(dsItens.State = dsbrowse);
end;

procedure TfItensCompra.QtdeExit(Sender: TObject);
begin
   if Qtde.Modified then
   begin
      dm.ItensCompraVALORTOTAL.AsFloat:=dm.ItensCompraQTDE.AsFloat * dm.ItensCompraVALOR.AsFloat;
      Qtde.Modified:=false;
   end;
end;

procedure TfItensCompra.ValorUnitExit(Sender: TObject);
begin
   if ValorUnit.Modified then
   begin
      dm.ItensCompraVALORTOTAL.AsFloat:=dm.ItensCompraQTDE.AsFloat * dm.ItensCompraVALOR.AsFloat;
      ValorUnit.Modified:=false;
   end;
end;

procedure TfItensCompra.ValorTotalExit(Sender: TObject);
begin
   if ValorTotal.Modified then
   begin
      if dm.ItensCompraVALORTOTAL.AsFloat > 0 then
         dm.ItensCompraVALOR.AsFloat:=dm.ItensCompraVALORTOTAL.AsFloat / dm.ItensCompraQTDE.AsFloat;
      ValorTotal.Modified:=false;
   end;
end;

procedure TfItensCompra.butNovoClick(Sender: TObject);
begin
   vloteant:='';
   vqtdeant:='0';
   dm.ItensCompra.Append;
   CboLote.Text:='';
   editEstoque.Text:='0,00';
   CboLote.SetFocus;
end;

procedure TfItensCompra.butSalvarClick(Sender: TObject);
var vqtde: string[20];
   vitem: integer;
begin
   if CboLote.Text = '' then
   begin
      mensagem('Informe o Lote');
      exit;
   end;
   if dm.ItensCompraQTDE.AsFloat = 0 then
   begin
      mensagem('Informe a Quantidade');
      exit;
   end;
   try
      dm.IniTrans;
      ModoEdicao(dm.Compra);
      if dsItens.State = dsInsert then
      begin
         dm.ItensCompraNUMORDEM.Text:=dm.CompraNUMORDEM.Text;
         dm.ItensCompraNUMITEM.AsInteger:=strtoint(Numitem.Text) + 1;
         vitem:=strtoint(NumItem.Text) + 1;
         NumItem.Text:=inttostr(vitem);
      end;
      dm.ItensCompraLOTERESUMIDO.Text:=CboLote.Text;
      dm.ItensCompra.Post;
      dm.CompraTOTALCOMPRA.asfloat:=preparaextenso(total.Text);
      if dm.Compra.State = dsInsert then
      begin
         procura(dm.Control,'Compra');
         dm.Control.Edit;
         dm.ControlCODIGO.AsInteger:=dm.ControlCODIGO.AsInteger + 1;
         dm.Control.Post;
         GravaTab(dm.Control);
         dm.Control.close;
      end;
      dm.Compra.Post;

      GravaTab(dm.Compra);
      GravaTab(dm.ItensCompra);
   //===============================================
      dm.GravaTrans;
      except begin
         mensagem('Grava��o Cancelada');
         dm.CancelaTrans;
      end;
   end;
   vloteant:=dm.ItensCompraLOTERESUMIDO.Text;
   vqtdeant:=dm.ItensCompraQTDE.AsString;
   butNovo.SetFocus;
end;

procedure TfItensCompra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_Escape then
      close;
end;

procedure TfItensCompra.CboLoteExit(Sender: TObject);
begin
   comandoQuery(dm.Qsql,'select * from TESTLOTE where LOTERESUMIDO = "'+CboLote.Text+'"');
   EditEstoque.Text:=formatfloat('###,###,##0.00',dm.Qsql.fieldbyname('QTDEESTOQUE').AsFloat);
   dm.Qsql.close;
end;

end.
