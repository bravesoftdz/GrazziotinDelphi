unit UICliExtintor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, FMTBcd, DB, SqlExpr,
  System.MaskUtils;

type
  TfICliExtintor = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    butPessoa: TSpeedButton;
    Codpessoa: TMaskEdit;
    Nome: TEdit;
    Data: TMaskEdit;
    NumRel: TEdit;
    CboSit: TComboBox;
    Panel1: TPanel;
    butSair: TBitBtn;
    butImprimir: TBitBtn;
    butConfig: TBitBtn;
    chLote: TCheckBox;
    Qselos: TSQLQuery;
    QselosCODPESSOA: TFloatField;
    QselosSERIE: TStringField;
    BitBtn1: TBitBtn;
    chkExtintora: TCheckBox;
    btnConfigExtintora: TBitBtn;
    BitBtn2: TBitBtn;
    procedure CodpessoaExit(Sender: TObject);
    procedure NomeExit(Sender: TObject);
    procedure butSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CodpessoaEnter(Sender: TObject);
    procedure NomeEnter(Sender: TObject);
    procedure butPessoaClick(Sender: TObject);
    procedure butImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure butConfigClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnConfigExtintoraClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    procedure pesquisaPessoa(Tipo: string);
    procedure InspecaoTecnica;
    procedure Relatorio3;
    procedure RelatorioCapacidadeExtintora;
    procedure RelatorioParaClientes;
  public
    { Public declarations }
    function DadosEmpresa: string;
  end;

var
  fICliExtintor: TfICliExtintor;

implementation

uses UDM, UPessoa, UUtil, UrCliExtintor, UDMBanco, UDMR, UrCliExtintor_2,
  URCliExtintor_3;

{$R *.dfm}

procedure TfICliExtintor.pesquisaPessoa(Tipo: string);
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

procedure TfICliExtintor.Relatorio3;
begin
  frCliExtintor_3:=TfrCliExtintor_3.create(Self);
  try
    with frCliExtintor_3 do
    begin
      Servico.close;
      Servico.params[0].text:=Codpessoa.text;
      if copy(CboSit.Text,1,1) = 'T' then
         Servico.params[1].text:='T';
      if copy(CboSit.Text,1,1) = 'A' then
         Servico.params[1].text:='I';
      if copy(CboSit.Text,1,1) = 'I' then
         Servico.params[1].text:='A';

//      if chkRTM.Checked then
//      begin
//        RelServico.Template.FileName:='ClienteExtintor.rtm';
//        DgCliExt.Report.Template.LoadFromFile;
//      end;

      Servico.open;
      Qnormas.close;
      Qnormas.Open;
      lblnormas.Caption:='';
      lblObs.Caption:='';
      while not Qnormas.Eof do
      begin
         lblNormas.Caption:=lblNormas.Caption + QnormasDESCRICAO.Text;
         Qnormas.Next;
      end;
      Qobs.close;
      Qobs.Open;
      while not Qobs.Eof do
      begin
         lblOBS.Caption:=lblobs.Caption + QobsDESCRICAO.Text;
         Qobs.Next;
      end;
      TamanhoPagina(RelServico);
      //Relatorio.Preview;
      Servico.close;
      Qobs.close;
      Qnormas.close;
    end;
  finally
    frCliExtintor_3.free;
  end;

end;

procedure TfICliExtintor.RelatorioCapacidadeExtintora;
begin
  frCliExtintor_2:=TfrCliExtintor_2.create(Self);
  try
    with frCliExtintor_2 do
    begin
      Servico.close;
      Servico.params[0].AsInteger := StrToIntDef(Codpessoa.text,0);
      if copy(CboSit.Text,1,1) = 'T' then
         Servico.params[1].text:='T';
      if copy(CboSit.Text,1,1) = 'A' then
         Servico.params[1].text:='I';
      if copy(CboSit.Text,1,1) = 'I' then
         Servico.params[1].text:='A';

      RelServico.Template.FileName:='ClienteExtintor_Paisagem.rtm';
      DgCliExt.Report.Template.LoadFromFile;
      Servico.open;
      Qnormas.close;
      Qnormas.Open;
      lblnormas.Caption:='';
      lblObs.Caption:='';
      while not Qnormas.Eof do
      begin
         lblNormas.Caption:=lblNormas.Caption + QnormasDESCRICAO.Text;
         Qnormas.Next;
      end;
      Qobs.close;
      Qobs.Open;
      while not Qobs.Eof do
      begin
         lblOBS.Caption:=lblobs.Caption + QobsDESCRICAO.Text;
         Qobs.Next;
      end;
//        TamanhoPagina(RelServico);
      try
        frCliExtintor_2.lblDadosEmpresa1.Caption := DadosEmpresa;
      except
      end;

      RelServico.Print;
      Servico.close;
      Qobs.close;
      Qnormas.close;
    end;
  finally
    frCliExtintor_2.free;
  end;
end;

procedure TfICliExtintor.RelatorioParaClientes;
begin
  frCliExtintor_2:=TfrCliExtintor_2.create(Self);
  try
    with frCliExtintor_2 do
    begin
      Servico.close;
      Servico.params[0].AsInteger := StrToIntDef(Codpessoa.text,0);
      if copy(CboSit.Text,1,1) = 'T' then
         Servico.params[1].text:='T';
      if copy(CboSit.Text,1,1) = 'A' then
         Servico.params[1].text:='I';
      if copy(CboSit.Text,1,1) = 'I' then
         Servico.params[1].text:='A';

      RelServico.Template.FileName:='ClienteExtintor_Paisagem.rtm';
      DgCliExt.Report.Template.LoadFromFile;
      Servico.open;
      Qnormas.close;
      Qnormas.Open;
      lblnormas2.Caption:='';
      lblObs2.Caption:='';
      while not Qnormas.Eof do
      begin
         lblNormas2.Caption:=lblNormas2.Caption + QnormasDESCRICAO.Text;
         Qnormas.Next;
      end;
      Qobs.close;
      Qobs.Open;
      while not Qobs.Eof do
      begin
         lblOBS2.Caption:=lblobs2.Caption + QobsDESCRICAO.Text;
         Qobs.Next;
      end;
//        TamanhoPagina(RelServico);
      try
        frCliExtintor_2.lblDadosEmpresa1.Caption := DadosEmpresa;
      except
      end;

      RelTeste.Print;
      Servico.close;
      Qobs.close;
      Qnormas.close;
    end;
  finally
    frCliExtintor_2.free;
  end;
end;

procedure TfICliExtintor.CodpessoaExit(Sender: TObject);
begin
   if CodPessoa.Modified = false then exit;
   if CodPessoa.Text <> '' then
      PesquisaPessoa('C')
   else
      Nome.Clear;
end;

function TfICliExtintor.DadosEmpresa: string;
begin
  Result := dm.DadosEmpresa;
end;

procedure TfICliExtintor.NomeExit(Sender: TObject);
begin
   if Nome.Modified = false then exit;
   if Nome.Text <> '' then
      PesquisaPessoa('D')
   else
      Codpessoa.Clear;
end;

procedure TfICliExtintor.butSairClick(Sender: TObject);
begin
   close;
end;

procedure TfICliExtintor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_Escape then
      close;
end;

procedure TfICliExtintor.CodpessoaEnter(Sender: TObject);
begin
   CodPessoa.Modified:=false;
end;

procedure TfICliExtintor.NomeEnter(Sender: TObject);
begin
   Nome.Modified:=false;
end;

procedure TfICliExtintor.butPessoaClick(Sender: TObject);
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

procedure TfICliExtintor.butImprimirClick(Sender: TObject);
begin
//  if chkValdir.Checked then
//  begin
//    Relatorio3();
//    Exit;
//  end;

  if chkExtintora.Checked then
    RelatorioCapacidadeExtintora
  else begin
    RelatorioParaClientes;
    Exit;
  end;
//  begin
//    frCliExtintor_2:=TfrCliExtintor_2.create(Self);
//    try
//      with frCliExtintor_2 do
//      begin
//        Servico.close;
//        Servico.params[0].AsInteger := StrToIntDef(Codpessoa.text,0);
//        if copy(CboSit.Text,1,1) = 'T' then
//           Servico.params[1].text:='T';
//        if copy(CboSit.Text,1,1) = 'A' then
//           Servico.params[1].text:='I';
//        if copy(CboSit.Text,1,1) = 'I' then
//           Servico.params[1].text:='A';
//
//        RelServico.Template.FileName:='ClienteExtintor_Paisagem.rtm';
//        DgCliExt.Report.Template.LoadFromFile;
//        Servico.open;
//        Qnormas.close;
//        Qnormas.Open;
//        lblnormas.Caption:='';
//        lblObs.Caption:='';
//        while not Qnormas.Eof do
//        begin
//           lblNormas2.Caption:=lblNormas.Caption + QnormasDESCRICAO.Text;
//           Qnormas.Next;
//        end;
//        Qobs.close;
//        Qobs.Open;
//        while not Qobs.Eof do
//        begin
//           lblOBS2.Caption:=lblobs.Caption + QobsDESCRICAO.Text;
//           Qobs.Next;
//        end;
////        TamanhoPagina(RelServico);
//        RelTeste.Print;
////        if chkValdir.Checked then
////          RelTeste.Print
////        else
////          RelServico.Print;
//        Servico.close;
//        Qobs.close;
//        Qnormas.close;
//      end;
//    finally
//      frCliExtintor_2.free;
//    end;
//  end
//  else begin
    frCliExtintor:=TfrCliExtintor.create(Self);
    try
      with frCliExtintor do
      begin
        Servico.close;
        Servico.params[0].text:=Codpessoa.text;
        if copy(CboSit.Text,1,1) = 'T' then
           Servico.params[1].text:='T';
        if copy(CboSit.Text,1,1) = 'A' then
           Servico.params[1].text:='I';
        if copy(CboSit.Text,1,1) = 'I' then
           Servico.params[1].text:='A';

        RelServico.Template.FileName:='ClienteExtintor.rtm';
        DgCliExt.Report.Template.LoadFromFile;

//        try
//          frCliExtintor.lblDadosEmpresa1.Caption := DadosEmpresa;
//        except
//        end;

        try
          frCliExtintor.lblDadosEmpresa2.Caption := DadosEmpresa;
        except

        end;

        Servico.open;
        Qnormas.close;
        Qnormas.Open;
        lblnormas.Caption:='';
        lblObs.Caption:='';
        while not Qnormas.Eof do
        begin
           lblNormas.Caption:=lblNormas.Caption + QnormasDESCRICAO.Text;
           Qnormas.Next;
        end;
        Qobs.close;
        Qobs.Open;
        while not Qobs.Eof do
        begin
           lblOBS.Caption:=lblobs.Caption + QobsDESCRICAO.Text;
           Qobs.Next;
        end;
        TamanhoPagina(RelServico);
        RelServico.Print;
        Servico.close;
        Qobs.close;
        Qnormas.close;
      end;
    finally
      frCliExtintor.free;
    end;
end;

procedure TfICliExtintor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TfICliExtintor.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TfICliExtintor.InspecaoTecnica;
begin
  frCliExtintor_2:=TfrCliExtintor_2.create(Self);
  try
    with frCliExtintor_2 do
    begin
      Servico.close;
      Servico.params[0].text:=Codpessoa.text;
      if copy(CboSit.Text,1,1) = 'T' then
         Servico.params[1].text:='T';
      if copy(CboSit.Text,1,1) = 'A' then
         Servico.params[1].text:='I';
      if copy(CboSit.Text,1,1) = 'I' then
         Servico.params[1].text:='A';

      RelServico.Template.FileName:='InspecaoTecnica.rtm';
      DgCliExt.Report.Template.LoadFromFile;
      Servico.open;
      Qnormas.close;
      Qnormas.Open;
      lblnormas.Caption:='';
      lblObs.Caption:='';
      while not Qnormas.Eof do
      begin
         lblNormas.Caption:=lblNormas.Caption + QnormasDESCRICAO.Text;
         Qnormas.Next;
      end;
//      Qobs.close;
//      Qobs.Open;
//      while not Qobs.Eof do
//      begin
//         lblOBS.Caption:=lblobs.Caption + QobsDESCRICAO.Text;
//         Qobs.Next;
//      end;
//        TamanhoPagina(RelServico);
      try
        frCliExtintor_2.lblDadosEmpresa1.Caption := DadosEmpresa;
      except
      end;

      RelServico.Print;
      Servico.close;
      Qobs.close;
      Qnormas.close;
    end;
  finally
    frCliExtintor_2.free;
  end;
end;

procedure TfICliExtintor.BitBtn2Click(Sender: TObject);
begin
  InspecaoTecnica;
end;

procedure TfICliExtintor.btnConfigExtintoraClick(Sender: TObject);
begin
   frCliExtintor_2:=TfrCliExtintor_2.create(Self);
   frCliExtintor_2.dgCliExt.Show;
end;

procedure TfICliExtintor.butConfigClick(Sender: TObject);
begin
   frCliExtintor:=TfrCliExtintor.create(Self);
   frCliExtintor.dgCliExt.Show;
end;

procedure TfICliExtintor.BitBtn1Click(Sender: TObject);
var vlSelo: String;
begin
   if Codpessoa.text = '' then
   begin
      mensagem('Informe o Cliente');
      exit;
   end;
   if confirma('Deseja Criar os Selos anteriores dos extintores deste cliente?','N')=idno then
      exit;
   screen.Cursor:=crHourglass;
   Qselos.Close;
   Qselos.Params[0].Text:=Codpessoa.Text;
   Qselos.open;
   while not Qselos.Eof do
   begin
      vlSelo:=dmr.Get_SeloAnterior(QselosCODPESSOA.Text, QselosSERIE.Text);
      DmBanco.BancoDados.ExecuteDirect(' update TCLIEXT set ULTIMOSELO = '+vlSelo+' where CODPESSOA = '+QselosCODPESSOA.Text +' and SERIE = '''+QselosSERIE.Text+'''');
      Qselos.Next;
   end;
   Qselos.Close;
   screen.Cursor:=crDefault;
   showmessage('Fim do Processo');
end;

end.
