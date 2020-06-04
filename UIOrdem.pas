unit UIOrdem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, DB, DBClient;

type
  TfIOrdem = class(TForm)
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    butPessoa: TSpeedButton;
    butMarca: TSpeedButton;
    butAgente: TSpeedButton;
    CodPessoa: TEdit;
    Nome: TEdit;
    SeloIni: TEdit;
    SeloFin: TEdit;
    Capacidade: TEdit;
    Serie: TEdit;
    CodMarca: TEdit;
    DescMarca: TEdit;
    CodAgente: TEdit;
    DescAgente: TEdit;
    DataIni: TMaskEdit;
    DataFin: TMaskEdit;
    Panel1: TPanel;
    butImprimir: TBitBtn;
    butSair: TBitBtn;
    Cad: TClientDataSet;
    CadTIPO: TStringField;
    CadQTDE: TFloatField;
    butResumo: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    NivelIni: TMaskEdit;
    NivelFin: TMaskEdit;
    procedure butSairClick(Sender: TObject);
    procedure CodPessoaExit(Sender: TObject);
    procedure NomeExit(Sender: TObject);
    procedure CodPessoaEnter(Sender: TObject);
    procedure NomeEnter(Sender: TObject);
    procedure CodMarcaEnter(Sender: TObject);
    procedure CodAgenteEnter(Sender: TObject);
    procedure DescMarcaEnter(Sender: TObject);
    procedure DescAgenteEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure butPessoaClick(Sender: TObject);
    procedure CodMarcaExit(Sender: TObject);
    procedure DescMarcaExit(Sender: TObject);
    procedure butMarcaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CodAgenteExit(Sender: TObject);
    procedure DescAgenteExit(Sender: TObject);
    procedure butAgenteClick(Sender: TObject);
    procedure butImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure butResumoClick(Sender: TObject);
  private
    { Private declarations }
    procedure pesquisaPessoa(Tipo: string);
    procedure pesquisaMarca(Tipo: string);
    procedure pesquisaAgente(Tipo: string);
    function Filtro: string;
    function ValidaNivel: boolean;
  public
    { Public declarations }
  end;

var
  fIOrdem: TfIOrdem;

implementation

uses UDM, UPessoa, UUtil, UMarca, UAgente, UROrdem;

{$R *.dfm}

procedure TfIordem.pesquisaAgente(Tipo: string);
begin
   if (CodAgente.Modified) or (DescAgente.Modified) then
   begin
      if Tipo = 'C' then
         ComandoQuery(dm.Qsql,'select CODAGENTE,DESCAGENTE from TAGENTE where CODAGENTE = '+CodAgente.Text)
      else
         ComandoQuery(dm.Qsql,'select CODAGENTE,DESCAGENTE from TAGENTE where DESCAGENTE like "'+DescAgente.Text+'%"');
      if dm.Qsql.RecordCount = 0 then
      begin
         CODAGENTE.Clear;
         DescAgente.Clear;
      end;
      if dm.Qsql.RecordCount = 1 then
      begin
         CODAGENTE.Text:=dm.Qsql.fieldbyname('CODAGENTE').Text;
         DESCAGENTE.Text:=dm.Qsql.fieldbyname('DESCAGENTE').Text;
      end;
      if dm.Qsql.RecordCount > 1 then
      begin
         procura(dm.Agente,DescAgente.Text+'%');
         vgcodigo:='';
         fAgente:=TfAgente.create(Self);
         fAgente.butConf.Visible:=true;
         fAgente.showModal;
         if vgcodigo <> '' then
         begin
            ComandoQuery(dm.Qsql,'select DESCAGENTE from TAGENTE where CODAGENTE = '+vgcodigo);
            CODAGENTE.Text:=vgcodigo;
            DESCAGENTE.Text:=dm.Qsql.fieldbyname('DESCAGENTE').Text;
            DescAgente.SetFocus;
         end
         else begin
            CODAGENTE.Clear;
            DescAgente.clear;
         end;
      end;
      dm.Qsql.Close;
   end;
end;

procedure TfIordem.pesquisaMarca(Tipo: string);
begin
   if (CodMarca.Modified) or (DescMarca.Modified) then
   begin
      if Tipo = 'C' then
         ComandoQuery(dm.Qsql,'select CODMARCA,DESCMARCA from TMARCA where CODMARCA = '+CodMarca.Text)
      else
         ComandoQuery(dm.Qsql,'select CODMARCA,DESCMARCA from TMARCA where DESCMARCA like "'+DescMarca.Text+'%"');
      if dm.Qsql.RecordCount = 0 then
      begin
         CODMARCA.Clear;
         DescMarca.Clear;
      end;
      if dm.Qsql.RecordCount = 1 then
      begin
         CODMARCA.Text:=dm.Qsql.fieldbyname('CODMARCA').Text;
         DESCMARCA.Text:=dm.Qsql.fieldbyname('DESCMARCA').Text;
      end;
      if dm.Qsql.RecordCount > 1 then
      begin
         procura(dm.Marca,DescMarca.Text+'%');
         vgcodigo:='';
         fMarca:=TfMarca.create(Self);
         fMarca.butConf.Visible:=true;
         fMarca.showModal;
         if vgcodigo <> '' then
         begin
            ComandoQuery(dm.Qsql,'select DESCMARCA from TMARCA where CODMARCA = '+vgcodigo);
            CODMARCA.Text:=vgcodigo;
            DESCMARCA.Text:=dm.Qsql.fieldbyname('DESCMARCA').Text;
            DescMarca.SetFocus;
         end
         else begin
            CODMARCA.Clear;
            DescMarca.clear;
         end;
      end;
      dm.Qsql.Close;
   end;
end;

procedure TfIordem.pesquisaPessoa(Tipo: string);
begin
   if (CodPessoa.Modified) or (Nome.Modified) then
   begin
      if Tipo = 'C' then
         ComandoQuery(dm.Qsql,'select CODPESSOA,NOME from TPESSOA where CODPESSOA = '+CodPessoa.Text)
      else
         ComandoQuery(dm.Qsql,'select CODPESSOA,NOME from TPESSOA where NOME like "'+Nome.Text+'%" order by NOME');
      if dm.Qsql.RecordCount = 0 then
      begin
         CodPessoa.Clear;
         Nome.Clear;
      end;
      if dm.Qsql.RecordCount = 1 then
      begin
         CodPessoa.Text:=dm.Qsql.fieldbyname('CODPESSOA').Text;
         NOME.Text:=dm.Qsql.fieldbyname('NOME').Text;
      end;
      if dm.Qsql.RecordCount > 1 then
      begin
         procura(dm.Pessoa,Nome.Text+'%');
         vgcodigo:='';
         fPessoa:=TfPessoa.create(Self);
         fPessoa.butConf.Visible:=true;
         fPessoa.showModal;
         if vgcodigo <> '' then
         begin
            ComandoQuery(dm.Qsql,'select NOME from TPESSOA where CODPESSOA = '+vgcodigo);
            CodPessoa.Text:=vgcodigo;
            NOME.Text:=dm.Qsql.fieldbyname('NOME').Text;
            Nome.SetFocus;
         end
         else begin
            CodPessoa.Clear;
            Nome.clear;
         end;
      end;
      dm.Qsql.Close;
   end;
end;

procedure TfIOrdem.butSairClick(Sender: TObject);
begin
   close;
end;

procedure TfIOrdem.CodPessoaExit(Sender: TObject);
begin
   if CodPessoa.Modified = false then exit;
   if CodPessoa.Text <> '' then
      PesquisaPessoa('C')
   else
      Nome.Clear;
end;

procedure TfIOrdem.NomeExit(Sender: TObject);
begin
   if Nome.Modified = false then exit;
   if Nome.Text <> '' then
      PesquisaPessoa('D')
   else
      Codpessoa.Clear;
end;

procedure TfIOrdem.CodPessoaEnter(Sender: TObject);
begin
   CodPessoa.Modified:=false;
end;

procedure TfIOrdem.NomeEnter(Sender: TObject);
begin
   Nome.Modified:=false;
end;

procedure TfIOrdem.CodMarcaEnter(Sender: TObject);
begin
   CodMarca.Modified:=false;
end;

procedure TfIOrdem.CodAgenteEnter(Sender: TObject);
begin
   CodAgente.Modified:=false;
end;

procedure TfIOrdem.DescMarcaEnter(Sender: TObject);
begin
   DescMarca.Modified:=false;
end;

procedure TfIOrdem.DescAgenteEnter(Sender: TObject);
begin
   DescMarca.Modified:=false;
end;

procedure TfIOrdem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TfIOrdem.butPessoaClick(Sender: TObject);
begin
   procura(dm.Pessoa,'ABCDE%');
   vgcodigo:='';
   fPessoa:=TfPessoa.create(Self);
   fPessoa.butConf.Visible:=true;
   fPessoa.showModal;
   if vgcodigo <> '' then
   begin
      ComandoQuery(dm.Qsql,'select NOME from TPESSOA where CODPESSOA = '+vgcodigo);
      CodPessoa.Text:=vgcodigo;
      NOME.Text:=dm.Qsql.fieldbyname('NOME').Text;
      Nome.SetFocus;
   end;
end;

procedure TfIOrdem.CodMarcaExit(Sender: TObject);
begin
   if CodMarca.Text <> '' then
      PesquisaMarca('C')
   else
      DescMarca.Clear;
end;

procedure TfIOrdem.DescMarcaExit(Sender: TObject);
begin
   if DescMarca.Text <> '' then
      PesquisaMarca('D')
   else
      CODMARCA.Clear;
end;

procedure TfIOrdem.butMarcaClick(Sender: TObject);
begin
   vgcodigo:='';
   procura(dm.Marca,'%');
   fMarca:=TfMarca.create(Self);
   fMarca.butConf.Visible:=true;
   fMarca.showModal;
   if vgcodigo <> '' then
   begin
      ComandoQuery(dm.Qsql,'select DESCMARCA from TMARCA where CODMARCA = '+vgcodigo);
      CODMARCA.Text:=vgcodigo;
      DESCMARCA.Text:=dm.Qsql.fieldbyname('DESCMARCA').Text;
      DescMarca.SetFocus;
      dm.Qsql.Close;
   end;
end;

procedure TfIOrdem.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TfIOrdem.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_escape then
      close;
end;

procedure TfIOrdem.CodAgenteExit(Sender: TObject);
begin
   if CodAgente.Text <> '' then
      PesquisaAgente('C')
   else
      DescAgente.Clear;
end;

procedure TfIOrdem.DescAgenteExit(Sender: TObject);
begin
   if DescAgente.Text <> '' then
      PesquisaAgente('D')
   else
      CODAGENTE.Clear;
end;

procedure TfIOrdem.butAgenteClick(Sender: TObject);
begin
   vgcodigo:='';
   procura(dm.Agente,'%');
   fAgente:=TfAgente.create(Self);
   fAgente.butConf.Visible:=true;
   fAgente.showModal;
   if vgcodigo <> '' then
   begin
      ComandoQuery(dm.Qsql,'select DESCAGENTE from TAGENTE where CODAGENTE = '+vgcodigo);
      CODAGENTE.Text:=vgcodigo;
      DESCAGENTE.Text:=dm.Qsql.fieldbyname('DESCAGENTE').Text;
      DescAgente.SetFocus;
      dm.Qsql.Close;
   end;
end;

procedure TfIOrdem.butImprimirClick(Sender: TObject);
var a,b: string;
begin
   if ValidaNivel = false then
      exit;
      
   frOrdem:=TfrOrdem.create(self);
   with frOrdem do
   begin
      Ordem.close;
      Qordem.SQL.Add(filtro);
      Qordem.sql.add(' order by O.DATAORDEM, I.NUMORDEM');

      Qordem.params[0].asdate:=strtodate(dataini.text);
      Qordem.params[1].asdate:=strtodate(datafin.text);
      ordem.open;

      cad.First;
      while not cad.Eof do
         cad.Delete;

      while not ordem.Eof do
      begin
         if Cad.Locate('TIPO',OrdemTIPO.Text,[]) then
         begin
            Cad.Edit;
            CadQTDE.AsFloat:=CadQTDE.AsFloat + OrdemPESO.AsFloat;
            Cad.Post;
         end
         else begin
            Cad.Append;
            CadTIPO.Text:=OrdemTIPO.Text;
            CadQTDE.AsFloat:=OrdemPESO.AsFloat;
            Cad.Post;
         end;
         ordem.Next;
      end;
      ordem.First;

      Memo01.Clear;
      cad.First;
      while not Cad.Eof do
      begin
         if cadQTDE.asfloat > 0 then
         begin
            a:=format('%10n',[cadQTDE.asfloat]);
            b:=copy(CadTIPO.Text+stringofchar(' ',10),1,5);
            Memo01.Lines.Add(b + ' => '+a);
         end;
         Cad.Next;
      end;
      lbldata01.caption:='Per�odo de '+dataini.Text+' at� '+datafin.Text;
      RelOrdem1.print;
      ordem.close;
      free;
   end;
end;

procedure TfIOrdem.FormCreate(Sender: TObject);
begin
   dataini.Text:=datetostr(date);
   datafin.Text:=datetostr(date);
end;

function TfIOrdem.Filtro: string;
var vsql: string;
begin
   vsql:='';
   if CodPessoa.Text <> '' then
      vsql:=vsql + ' and O.CODPESSOA = '+CodPessoa.Text;
   if Seloini.Text <> '' then
      vsql:=vsql + ' and I.NUMSELO between '+Seloini.Text+' and '+Selofin.Text;
   if Capacidade.Text <> '' then
      vsql:=vsql + ' and I.CAPACIDADE = '''+Capacidade.Text+'''';
   if Serie.text <> '' then
      vsql:=vsql + ' and I.SERIE = '''+Serie.Text+'''';
   if CodMarca.Text <> '' then
      vsql:=vsql + ' and I.CODMARCA = '+Codmarca.Text;
   if CodAgente.Text <> '' then
      vsql:=vsql + ' and I.CODAGENTE = '+CodAgente.Text;
   vsql:=vsql + ' and I.CODNIVEL between '+NivelIni.Text+' and '+NivelFin.text;
   result:=vsql;

end;

procedure TfIOrdem.butResumoClick(Sender: TObject);
begin
   if ValidaNivel = false then
      exit;

   frOrdem:=TfrOrdem.create(self);
   with frOrdem do
   begin
      screen.Cursor:=crHourglass;
      Qini.Close;
      Qini.SQL.Add(filtro);
      QIni.params[0].asdate:=strtodate(dataini.text);
      QIni.params[1].asdate:=strtodate(datafin.text);
      Qini.Open;

      QtdeSelos.Close;
      QtdeSelos.SQL.Add(filtro);
      QtdeSelos.params[0].asdate:=strtodate(dataini.text);
      QtdeSelos.params[1].asdate:=strtodate(datafin.text);
      QtdeSelos.Open;

      Resumo.close;
      QResumo.SQL.Add(filtro);
      QResumo.SQL.Add(' group by I.TIPO, I.CODAGENTE, I.CAPACIDADE, A.DESCAGENTE');
      QResumo.sql.add(' order by I.TIPO, I.CAPACIDADE, I.CODAGENTE');
      QResumo.params[0].asdate:=strtodate(dataini.text);
      QResumo.params[1].asdate:=strtodate(datafin.text);
      Resumo.open;

      lblData1.Caption:='Per�do de: '+DataIni.Text+' At�: '+DataFin.Text;

      lblSeloIni.Caption:=QIniNUMSELO.Text;
      lblSeloFin.Caption:=QIniMAX_NUMSELO.Text;
      lblServIni.Caption:=QIniNUMORDEM.Text;
      lblServFin.Caption:=QIniMAX_NUMORDEM.Text;
      lblQtdeSelos.Caption:=QtdeSelosQTDE.Text;

      screen.Cursor:=crDefault;
      RelResumo.print;

      Resumo.close;
      Qini.Close;
      QtdeSelos.Close;
      free;
   end;
end;

function TfIOrdem.ValidaNivel: boolean;
begin
   result:=true;
   if (trim(NivelIni.Text) = '') and (trim(NivelFin.Text) = '') then
   begin
      mensagem('Informe o Intervalo dos N�veis');
      result:=false;
   end;
   if strtoint(NivelIni.Text) > strtoint(NivelFin.Text) then
   begin
      mensagem('Nivel Inicial maior que Nivel Final');
      result:=false;
   end;
end;

end.
