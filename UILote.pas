unit UILote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, Provider, DBClient, DB, SqlExpr, StdCtrls, Buttons, ExtCtrls, ppViewr,
  ppVar, ppCtrls, ppBands, ppPrnabl, ppCache;

type
  TfILote = class(TForm)
    Panel1: TPanel;
    butSair: TBitBtn;
    butImprimir: TBitBtn;
    dtLote: TSQLDataSet;
    dsLote: TDataSource;
    Lote: TClientDataSet;
    dspLote: TDataSetProvider;
    dbLote: TppDBPipeline;
    RelLote: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel4: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    procedure butSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RelLotePreviewFormCreate(Sender: TObject);
    procedure butImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fILote: TfILote;

implementation

uses UDMbanco, UUtil;

{$R *.dfm}

procedure TfILote.butSairClick(Sender: TObject);
begin
   close;
end;

procedure TfILote.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Lote.Close;
   action:=cafree;
end;

procedure TfILote.RelLotePreviewFormCreate(Sender: TObject);
begin
   TPPReport(Sender).PreviewForm.WindowState:=wsMaximized;
   TPPViewer(TPPReport(Sender).PreviewForm.Viewer).ZoomPercentage:=90;
end;

procedure TfILote.butImprimirClick(Sender: TObject);
begin
   Lote.Close;
   Lote.Open;
   TamanhoPagina(RelLote);
   RelLote.Print;
   Lote.Close;
end;

end.
