unit UItemExtintor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, DB, FMTBcd, SqlExpr;

type
  TfItemExtintor = class(TForm)
    Label2: TLabel;
    Descricao: TDBEdit;
    Label4: TLabel;
    CodMarca: TDBEdit;
    DescMarca: TEdit;
    butMarca: TSpeedButton;
    DescCapacidade: TDBEdit;
    Label3: TLabel;
    AnoFab: TMaskEdit;
    Label5: TLabel;
    VenctoTeste: TMaskEdit;
    Label6: TLabel;
    CodLocal: TDBEdit;
    Label8: TLabel;
    lblSerie: TLabel;
    butLocal: TSpeedButton;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    Label10: TLabel;
    DataCarga: TDBEdit;
    Label14: TLabel;
    VenctoCarga: TMaskEdit;
    Label15: TLabel;
    Selo: TDBEdit;
    Label12: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label11: TLabel;
    DBEdit2: TDBEdit;
    Panel4: TPanel;
    butCancelar: TBitBtn;
    butOk: TBitBtn;
    DescLocal: TEdit;
    butInc: TBitBtn;
    dsCad: TDataSource;
    Pesq: TSQLQuery;
    PesqANOFAB: TSmallintField;
    PesqVENCTO_CARGA: TStringField;
    PesqDESCMARCA: TStringField;
    PesqDESCLOCAL: TStringField;
    PesqVENCTO_TESTE: TSmallintField;
    CodPessoa: TEdit;
    DBEdit5: TDBEdit;
    Label1: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBEdit8: TDBEdit;
    Label16: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure butCancelarClick(Sender: TObject);
    procedure butIncClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AnoFabExit(Sender: TObject);
    procedure DescMarcaEnter(Sender: TObject);
    procedure CodMarcaEnter(Sender: TObject);
    procedure CodLocalEnter(Sender: TObject);
    procedure DescLocalEnter(Sender: TObject);
    procedure DescMarcaExit(Sender: TObject);
    procedure DescLocalExit(Sender: TObject);
    procedure VenctoCargaExit(Sender: TObject);
    procedure VenctoTesteExit(Sender: TObject);
    procedure CodMarcaExit(Sender: TObject);
    procedure butMarcaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsCadStateChange(Sender: TObject);
    procedure butOkClick(Sender: TObject);
    procedure DescricaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DescricaoEnter(Sender: TObject);
    procedure DescricaoExit(Sender: TObject);
    procedure CodLocalExit(Sender: TObject);
    procedure butLocalClick(Sender: TObject);
    procedure DataCargaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DescCapacidadeExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ExisteDados;
    procedure pesquisaMarca(Tipo: string);
    procedure pesquisaLocal(Tipo: string);
    procedure pesquisaCapacidade(Tipo: string);
    procedure Limpa;
  public
    { Public declarations }
  end;

var
  fItemExtintor: TfItemExtintor;

implementation

uses UUtil, UDM, UDMBANCO, UMarca, UCliExtintor, ULocal, UCapacidade,
  uclassCapacidade;

{$R *.dfm}

procedure TfItemExtintor.pesquisaCapacidade(Tipo: string);
var
  obj: TCapacidade;
begin
  if DescCapacidade.Modified then
  begin
    obj := TCapacidade.Create;
    try
      obj.LocalizarPorMarca(StrToIntDef(CodMarca.Text, 0), DescCapacidade.Text);
      if obj.Codigo = 0 then
        dm.ExtintorCODCAPACIDADE.Clear
      else
        dm.ExtintorCODCAPACIDADE.AsInteger := obj.Codigo;

      dm.ExtintorCAPACIDADE.AsString := obj.Nome;
      dm.ExtintorPESO.AsString := obj.Peso;
      dm.ExtintorTIPO.AsString := obj.Tipo;
//      ProcuraCapacidade(obj.CodAgente);
//      PressTrabalho;
//      BuscarLotes();

    finally
      FreeAndNil(obj);
    end;
    DescCapacidade.Modified := False;
  end;

//  if DescCapacidade.Modified then
//  begin
//      ComandoQuery(dm.Qsql, 'SELECT CODCAPACIDADE, DESCCAPACIDADE, PESO, TIPO, CODAGENTE FROM CAPACIDADE WHERE DESCCAPACIDADE LIKE ''' + DescCapacidade.Text + '%'' AND CODMARCA = ' + IntToStr(StrToIntDef(CodMarca.Text,0)));
//      if dm.Qsql.IsEmpty then
//      begin
//         dm.ExtintorCAPACIDADE.Clear;
//         dm.ExtintorCODCAPACIDADE.Clear;
//         dm.ExtintorPESO.Clear;
//         dm.ExtintorTIPO.Clear;
//      end;
//
//      if dm.Qsql.RecordCount = 1 then
//      begin
//         dm.ExtintorCODCapacidade.Text := dm.Qsql.FieldByName('CODCAPACIDADE').AsString;
//         DM.ExtintorCAPACIDADE.Text := dm.Qsql.FieldByName('DESCCAPACIDADE').AsString;
//         dm.ExtintorPESO.Text:=dm.Qsql.FieldByName('PESO').AsString;
//         dm.ExtintorTIPO.Text:=dm.Qsql.FieldByName('TIPO').AsString;
////         ProcuraCapacidade(dm.Qsql.FieldByName('CODAGENTE').AsString);
//      end;
//
//      if dm.Qsql.RecordCount > 1 then
//      begin
//         vgcodigo:='';
//         fCapacidade:=TfCapacidade.create(Self);
//         fCapacidade.butConf.Visible:=true;
//         fCapacidade.showModal;
//         if vgcodigo <> '' then
//         begin
//            ComandoQuery(dm.Qsql,'select CODCAPACIDADE,DESCCAPACIDADE,PESO,TIPO,CODAGENTE,QTDE_PO from CAPACIDADE where CODCAPACIDADE = '+vgcodigo);
//            dm.ExtintorCODCapacidade.Text:=dm.Qsql.fieldbyname('CODCapacidade').Text;
//            DM.ExtintorCAPACIDADE.Text:=dm.Qsql.fieldbyname('DESCCAPACIDADE').Text;
//            dm.ExtintorPESO.Text:=dm.Qsql.fieldbyname('PESO').Text;
//            dm.ExtintorTIPO.Text:=dm.Qsql.fieldbyname('TIPO').Text;
//            //dm.ExtintorQTDE.AsFloat := dm.Qsql.fieldbyname('QTDE_PO').AsFloat;
////            ProcuraCapacidade(dm.Qsql.fieldbyname('CODAGENTE').Text);
//         end
//         else begin
//            dm.ExtintorCAPACIDADE.Clear;
//            dm.ExtintorCODCAPACIDADE.Clear;
//            dm.ExtintorPESO.Clear;
//            dm.ExtintorTIPO.Clear;
//         end;
//      end;
//
//      dm.Qsql.Close;
//      dm.Capacidade.Close;
//  end;
//
//  Exit;
//
//   if (DescCapacidade.Modified) then
//   begin
//      procura(dm.Capacidade,DescCapacidade.Text+'%');
//      if dm.Capacidade.RecordCount = 0 then
//      begin
//         dm.ExtintorCAPACIDADE.Clear;
//         dm.ExtintorCODCAPACIDADE.Clear;
//         dm.ExtintorPESO.Clear;
//         dm.ExtintorTIPO.Clear;
//      end;
//      if dm.Capacidade.RecordCount = 1 then
//      begin
//         dm.ExtintorCODCapacidade.Text:=dm.CapacidadeCODCAPACIDADE.Text;
//         DM.ExtintorCAPACIDADE.Text:=dm.CapacidadeDESCCAPACIDADE.Text;
//         dm.ExtintorPESO.Text:=dm.CapacidadePESO.Text;
//         dm.ExtintorTIPO.Text:=dm.CapacidadeTIPO.Text;
//      end;
//      if dm.Capacidade.RecordCount > 1 then
//      begin
//         //procura(dm.Marca,DescMarca.Text+'%');
//         vgcodigo:='';
//         fCapacidade:=TfCapacidade.create(Self);
//         fCapacidade.butConf.Visible:=true;
//         fCapacidade.showModal;
//         if vgcodigo <> '' then
//         begin
//            ComandoQuery(dm.Qsql,'select CODCAPACIDADE,DESCCAPACIDADE,PESO,TIPO from CAPACIDADE where CODCAPACIDADE = '+vgcodigo);
//            dm.ExtintorCODCapacidade.Text:=dm.Qsql.fieldbyname('CODCapacidade').Text;
//            DM.ExtintorCAPACIDADE.Text:=dm.Qsql.fieldbyname('DESCCAPACIDADE').Text;
//            dm.ExtintorPESO.Text:=dm.Qsql.fieldbyname('PESO').Text;
//            dm.ExtintorTIPO.Text:=dm.Qsql.fieldbyname('TIPO').Text;
//         end
//         else begin
//            dm.ExtintorCAPACIDADE.Clear;
//            dm.ExtintorCODCAPACIDADE.Clear;
//            dm.ExtintorPESO.Clear;
//            dm.ExtintorTIPO.Clear;
//         end;
//      end;
//      dm.Qsql.Close;
//      dm.Capacidade.Close;
//   end;
end;

procedure TfItemExtintor.Limpa;
begin
   procura(dm.Control,'CLIEXT');
   procura(dm.Extintor,dm.controlCODIGO.text);
   if dm.Extintor.IsEmpty then
   begin
      dm.Extintor.Append;
      dm.ExtintorCONTROLE.AsFloat:=dm.controlCODIGO.asfloat;
      dm.ExtintorDATACARGA.AsDateTime:=date;
      dm.ExtintorSITUACAO.Text:='A';
      dm.ExtintorCONSERVACAO.Text:='BOA';
   end
   else
      existeDados;
   dm.control.close;
end;

procedure TfItemExtintor.pesquisaLocal(Tipo: string);
begin
   if (CodLocal.Modified) or (DescLocal.Modified) then
   begin
      if Tipo = 'C' then
         ComandoQuery(dm.Qsql,'select CODLOCAL,DESCLOCAL from TLOCAL where CODLOCAL = '+CodLocal.Text)
      else
         ComandoQuery(dm.Qsql,'select CODLOCAL,DESCLOCAL from TLOCAL where DESCLOCAL like "'+DescLocal.Text+'%"');
      if dm.Qsql.RecordCount = 0 then
      begin
         dm.ExtintorCODLOCAL.Clear;
         DescLocal.Clear;
      end;
      if dm.Qsql.RecordCount = 1 then
      begin
         dm.ExtintorCODLOCAL.Text:=dm.Qsql.fieldbyname('CODLOCAL').Text;
         DESCLOCAL.Text:=dm.Qsql.fieldbyname('DESCLOCAL').Text;
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
            dm.ExtintorCODLOCAL.Text:=vgcodigo;
            DESCLOCAL.Text:=dm.Qsql.fieldbyname('DESCLOCAL').Text;
            DescLocal.SetFocus;
         end
         else begin
            dm.ExtintorCODLOCAL.Clear;
            DescLocal.clear;
         end;
      end;
      dm.Qsql.Close;
   end;
   CodLocal.Modified:=false;
   DescLocal.Modified:=false;
end;

procedure TfItemExtintor.pesquisaMarca(Tipo: string);
begin
   if (CodMarca.Modified) or (DescMarca.Modified) then
   begin
      if Tipo = 'C' then
         ComandoQuery(dm.Qsql,'select CODMARCA,DESCMARCA from TMARCA where CODMARCA = '+CodMarca.Text)
      else
         ComandoQuery(dm.Qsql,'select CODMARCA,DESCMARCA from TMARCA where DESCMARCA like "'+DescMarca.Text+'%"');
      if dm.Qsql.RecordCount = 0 then
      begin
         dm.ExtintorCODMARCA.Clear;
         DescMarca.Clear;
      end;
      if dm.Qsql.RecordCount = 1 then
      begin
         dm.ExtintorCODMARCA.Text:=dm.Qsql.fieldbyname('CODMARCA').Text;
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
            dm.ExtintorCODMARCA.Text:=vgcodigo;
            DESCMARCA.Text:=dm.Qsql.fieldbyname('DESCMARCA').Text;
            DescMarca.SetFocus;
         end
         else begin
            dm.ExtintorCODMARCA.Clear;
            DescMarca.clear;
         end;
      end;
      dm.Qsql.Close;
   end;
   dm.ExtintorCAPACIDADE.Clear;
   dm.ExtintorCODCAPACIDADE.Clear;
   dm.ExtintorPESO.Clear;
   dm.ExtintorTIPO.Clear;

   CodMarca.Modified:=false;
   DescMarca.Modified:=false;
end;

procedure TfItemExtintor.ExisteDados;
begin
   Pesq.Close;
   Pesq.Params[0].Text:=dm.ExtintorCONTROLE.Text;
   Pesq.Open;
   AnoFab.Text:=PesqANOFAB.Text;
   VenctoTeste.Text:=PesqVENCTO_TESTE.Text;
   VenctoCarga.Text:=PesqVENCTO_CARGA.Text;
   DescMarca.Text:=PesqDESCMARCA.Text;
   DescLocal.Text:=PesqDESCLOCAL.Text;
   Pesq.Close;
   Descricao.Enabled:=false;
end;

procedure TfItemExtintor.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TfItemExtintor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_Escape then
      close;
end;

procedure TfItemExtintor.butCancelarClick(Sender: TObject);
begin
   close;
end;

procedure TfItemExtintor.butIncClick(Sender: TObject);
var vcod: string[10];
begin
   Limpa;
   Descricao.Enabled:=true;
   descricao.setfocus;
   vcod:=CodPessoa.Text;
   LimpaTela(fItemExtintor);
   CodPessoa.Text:=vcod;
end;

procedure TfItemExtintor.FormCreate(Sender: TObject);
begin
   if fCliExtintor.Extintor.IsEmpty then
   begin
      procura(dm.Extintor,'0');
      Limpa;
   end
   else begin
      procura(dm.Extintor,fCliExtintor.ExtintorCONTROLE.Text);
      ExisteDados;
   end;
end;

procedure TfItemExtintor.AnoFabExit(Sender: TObject);
begin
   if AnoFab.Modified then
   begin
      if copy(AnoFab.Text,1,1) = ' ' then
         exit;
      ModoEdicao(dm.Extintor);
      if DataErro('01/01/'+AnoFab.Text) = 'S' then
         AnoFab.SetFocus;
   end;
end;

procedure TfItemExtintor.DescMarcaEnter(Sender: TObject);
begin
   DescMarca.Modified:=false;
end;

procedure TfItemExtintor.CodMarcaEnter(Sender: TObject);
begin
   CodMarca.Modified:=false;
end;

procedure TfItemExtintor.CodLocalEnter(Sender: TObject);
begin
   CodLocal.Modified:=false;
end;

procedure TfItemExtintor.DescLocalEnter(Sender: TObject);
begin
   DescMarca.Modified:=false;
end;

procedure TfItemExtintor.DescMarcaExit(Sender: TObject);
begin
   if DescMarca.Modified = false then
      exit;
   ModoEdicao(dm.Extintor);
   if DescMarca.Text <> '' then
      PesquisaMarca('D')
   else begin
      dm.ExtintorCODMARCA.Clear;
      dm.ExtintorCAPACIDADE.Clear;
      dm.ExtintorCODCAPACIDADE.Clear;
      dm.ExtintorPESO.Clear;
      dm.ExtintorTIPO.Clear;
   end;
end;

procedure TfItemExtintor.DescLocalExit(Sender: TObject);
begin
   if DescLocal.Modified = false then exit;
   ModoEdicao(dm.Extintor);
   if DescLocal.Text <> '' then
      PesquisaLocal('D')
   else
      dm.ExtintorCODLOCAL.Clear;
end;

procedure TfItemExtintor.VenctoCargaExit(Sender: TObject);
begin
   if VenctoCarga.Modified then
   begin
      if copy(venctoCarga.Text,1,1) = ' ' then
         exit;
      ModoEdicao(dm.Extintor);
      if DataErro('01/'+VenctoCarga.Text) = 'S' then
         VenctoCarga.SetFocus;
   end;
end;

procedure TfItemExtintor.VenctoTesteExit(Sender: TObject);
begin
   if VenctoTeste.Modified then
   begin
      if copy(venctoTeste.Text,1,1) = ' ' then
         exit;
      ModoEdicao(dm.Extintor);
      if DataErro('01/01/'+VenctoTeste.Text) = 'S' then
         VenctoTeste.SetFocus;
   end;
end;

procedure TfItemExtintor.CodMarcaExit(Sender: TObject);
begin
   if CodMarca.Modified = false then exit;
   if CodMarca.Text <> '' then
      PesquisaMarca('C')
   else begin
      DescMarca.Clear;
     dm.ExtintorCAPACIDADE.Clear;
     dm.ExtintorCODCAPACIDADE.Clear;
     dm.ExtintorPESO.Clear;
     dm.ExtintorTIPO.Clear;
   end;
end;

procedure TfItemExtintor.butMarcaClick(Sender: TObject);
begin
   vgcodigo:='';
   procura(dm.Marca,'%');
   fMarca:=TfMarca.create(Self);
   fMarca.butConf.Visible:=true;
   fMarca.showModal;
   if vgcodigo <> '' then
   begin
      ModoEdicao(dm.Extintor);
      ComandoQuery(dm.Qsql,'select DESCMARCA from TMARCA where CODMARCA = '+vgcodigo);
      dm.ExtintorCODMARCA.Text:=vgcodigo;
      DESCMARCA.Text:=dm.Qsql.fieldbyname('DESCMARCA').Text;

      dm.ExtintorCAPACIDADE.Clear;
      dm.ExtintorCODCAPACIDADE.Clear;
      dm.ExtintorPESO.Clear;
      dm.ExtintorTIPO.Clear;

      DescMarca.SetFocus;
      dm.Qsql.Close;
   end;
end;

procedure TfItemExtintor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if dsCad.State in [dsedit,dsinsert] then
      dsCad.DataSet.Cancel;
   action:=cafree;
end;

procedure TfItemExtintor.dsCadStateChange(Sender: TObject);
begin
   butInc.Enabled:=dsCad.State = dsBrowse;
end;

procedure TfItemExtintor.butOkClick(Sender: TObject);
begin
   if trim(Descricao.text) = '' then
   begin
      Mensagem('Informe o N�mero de S�rie');
      Descricao.SetFocus;
      exit;
   end;

   if Codmarca.Text = '' then
   begin
      Mensagem('Informe a Marca');
      CodMarca.SetFocus;
      exit;
   end;

   if dsCad.State in [dsedit,dsinsert] then
   begin
      dm.IniTrans;
      try
      begin
         if dm.Extintor.State = dsInsert then
         begin
            dm.Qsql.Close;
            dm.Qsql.SQL.Clear;
            dm.Qsql.SQL.Add(' select CONTROLE from TCLIEXT');
            dm.Qsql.SQL.Add(' where CODPESSOA = ' + IntToString(CodPessoa.Text));
            dm.Qsql.SQL.Add(' and SERIE = ' + QuotedStr(Descricao.Text));
            dm.Qsql.Open;
            if not dm.Qsql.FieldByName('CONTROLE').IsNull then
            begin
               mensagem('Extintor j� cadastrado');
               dm.Qsql.Close;
               exit;
            end;
            dm.Qsql.Close;
            procura(dm.Control,'CLIEXT');
            dm.ExtintorCONTROLE.AsInteger:=dm.ControlCODIGO.AsInteger;
            dm.Control.Edit;
            dm.ControlCODIGO.AsInteger:=dm.ControlCODIGO.AsInteger + 1;
            dm.Control.Post;
            GravaTab(dm.Control);
            dm.Control.Close;

            if copy(Descricao.text,1,2) = 'B-' then
            begin
               procura(dm.Control,'EXT_B');
               if dm.Control.IsEmpty then
               begin
                  dm.Control.Append;
                  dm.ControlCODTABELA.Text    := 'EXT_B';
                  dm.ControlCODIGO.AsInteger  := 1;
               end
               else begin
                  dm.Control.Edit;
                  dm.controlCODIGO.asinteger:=dm.controlCODIGO.asinteger + 1;
               end;
               dm.Control.Post;
               GravaTab(dm.Control);
               dm.Control.Close;
            end;
         end;

         with dm do
         begin
            ExtintorANOFAB.Text       := '';
            ExtintorVENCIMENTO.Text   := '';
            ExtintorVENCTOCARGA.Text  := '';

            if copy(anoFab.Text,1,1) <> ' ' then
               ExtintorANOFAB.Text:='01/01/' + anofab.Text;

            if copy(VenctoTeste.Text,1,1) <> ' ' then
               ExtintorVENCIMENTO.Text := '01/01/' + VenctoTeste.Text;

            if copy(VenctoCarga.Text,1,2) <> '  ' then
               ExtintorVENCTOCARGA.Text := '01/' + VenctoCarga.Text;
         end;

         dm.ExtintorCODPESSOA.Text := CodPessoa.Text;
         dm.Extintor.Post;

         GravaTab(dm.Extintor);
         dm.GravaTrans;
         butInc.SetFocus;
      end
         except begin
            mensagem('Erro ao Salvar os Dados');
            dm.CancelaTrans;
         end;
      end;
   end;
end;

procedure TfItemExtintor.DescricaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_F2 then
   begin
      ModoEdicao(dm.Extintor);
      procura(dm.Control,'EXT_B');
      DM.ExtintorSERIE.Text:='B-'+dm.controlCODIGO.text;
      dm.Control.Close;
   end;
end;

procedure TfItemExtintor.DescricaoEnter(Sender: TObject);
begin
   lblserie.Visible:=true;
end;

procedure TfItemExtintor.DescricaoExit(Sender: TObject);
begin
   lblserie.Visible:=false;
end;

procedure TfItemExtintor.CodLocalExit(Sender: TObject);
begin
   if CodLocal.Modified = false then exit;
   if CodLocal.Text <> '' then
      PesquisaLocal('C')
   else
      DescLocal.Clear;
end;

procedure TfItemExtintor.butLocalClick(Sender: TObject);
begin
   vgcodigo:='';
   procura(dm.Local,'ABCD%');
   fLocal:=TfLocal.create(Self);
   fLocal.butConf.Visible:=true;
   fLocal.showModal;
   if vgcodigo <> '' then
   begin
      ModoEdicao(dm.Extintor);
      ComandoQuery(dm.Qsql,'select DESCLOCAL from TLOCAL where CODLOCAL = '+vgcodigo);
      dm.ExtintorCODLOCAL.Text:=vgcodigo;
      DESCLOCAL.Text:=dm.Qsql.fieldbyname('DESCLOCAL').Text;
      DescLocal.SetFocus;
      dm.Qsql.Close;
   end;
end;

procedure TfItemExtintor.DataCargaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 8 then
   begin
      ModoEdicao(dm.Extintor);
      dm.ExtintorDATACARGA.Clear;
   end;
end;

procedure TfItemExtintor.DescCapacidadeExit(Sender: TObject);
begin
   if DescCapacidade.Modified = false then exit;
   if DescCapacidade.Text <> '' then
      PesquisaCapacidade('D')
   else begin
      dm.ExtintorCAPACIDADE.Clear;
      dm.ExtintorCODCAPACIDADE.Clear;
      dm.ExtintorPESO.Clear;
      dm.ExtintorTIPO.Clear;
   end;
   DescCapacidade.Modified := False;
end;

procedure TfItemExtintor.SpeedButton1Click(Sender: TObject);
begin
  if CodMarca.Text = '' then
    raise Exception.Create('Informe a Marca Primeiro.');

   vgcodigo:='';
   procura(dm.Capacidade,'%');
   fCapacidade:=TfCapacidade.create(Self);
   fCapacidade.butConf.Visible:=true;
   fCapacidade.showModal;
   if vgcodigo <> '' then
   begin
      ModoEdicao(dm.Extintor);
      ComandoQuery(dm.Qsql,'select CODCAPACIDADE,DESCCAPACIDADE,PESO,TIPO from Capacidade where CODCapacidade = '+vgcodigo);
      dm.ExtintorCODCapacidade.Text:=dm.Qsql.fieldbyname('CODCapacidade').Text;
      DM.ExtintorCAPACIDADE.Text:=dm.Qsql.fieldbyname('DESCCAPACIDADE').Text;
      DescCapacidade.Modified := True;
      PesquisaCapacidade('D');

//      DM.ExtintorCAPACIDADE.Text:=dm.Qsql.fieldbyname('DESCCAPACIDADE').Text;
//      dm.ExtintorPESO.Text:=dm.Qsql.fieldbyname('PESO').Text;
//      dm.ExtintorTIPO.Text:=dm.Qsql.fieldbyname('TIPO').Text;


      DescCapacidade.SetFocus;
      dm.Qsql.Close;
      DescCapacidade.Modified := False;
   end;
end;

end.
