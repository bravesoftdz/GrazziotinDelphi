unit UTrocaSelo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, DBClient, Provider, StdCtrls, Mask, DBCtrls,
  Buttons, ExtCtrls;

type
  TfTrocaSelo = class(TForm)
    QSelo: TSQLQuery;
    EditSelo: TDBEdit;
    Label1: TLabel;
    dspSelo: TDataSetProvider;
    Selo: TClientDataSet;
    QSeloCODIGO: TFloatField;
    QSeloCODTABELA: TStringField;
    SeloCODTABELA: TStringField;
    SeloCODIGO: TFloatField;
    Panel1: TPanel;
    butSalvar: TBitBtn;
    butSair: TBitBtn;
    dsSelo: TDataSource;
    btnIntervalo: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure butSalvarClick(Sender: TObject);
    procedure butSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsSeloStateChange(Sender: TObject);
    procedure btnIntervaloClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTrocaSelo: TfTrocaSelo;

implementation

uses UDMBanco, UUtil, UIntervaloSelo;

{$R *.dfm}

procedure TfTrocaSelo.FormCreate(Sender: TObject);
begin
   selo.Close;
   selo.Open;
end;

procedure TfTrocaSelo.butSalvarClick(Sender: TObject);
begin
   if EditSelo.Text = '' then
   begin
      ShowMessage('Informe o Selo!');
      EditSelo.SetFocus;
      exit;
   end;
   Selo.Post;
   GravaTab(Selo);
end;

procedure TfTrocaSelo.butSairClick(Sender: TObject);
begin
   close;
end;

procedure TfTrocaSelo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Selo.Close;
   action := Cafree;
end;

procedure TfTrocaSelo.dsSeloStateChange(Sender: TObject);
begin
   butSalvar.Enabled := Selo.State in [dsEdit,dsInsert];
end;

procedure TfTrocaSelo.btnIntervaloClick(Sender: TObject);
begin
   fIntervaloSelo := TfIntervaloSelo.Create(self);
   fIntervaloSelo.ShowModal;
   fIntervaloSelo.Free;
end;

end.
