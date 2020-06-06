unit UDM;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr, DBXFirebird, DateUtils, dialogs,
  MidasLib, System.MaskUtils;

const DataEmBranco: string = '/  /';

type
  TDM = class(TDataModule)
    dtEmpresa: TSQLDataSet;
    dtEmpresaCEP: TStringField;
    dtEmpresaCGC: TStringField;
    dtEmpresaCODBAIRRO: TFloatField;
    dtEmpresaCODCIDADE: TFloatField;
    dtEmpresaCODEMPRESA: TFloatField;
    dtEmpresaCOMPLEMENTO: TStringField;
    dtEmpresaFONEFAX: TStringField;
    dtEmpresaFRANQUEADA: TStringField;
    dtEmpresaINSCESTADUAL: TStringField;
    dtEmpresaNOME: TStringField;
    dtEmpresaNROIMETRO: TStringField;
    dtEmpresaNUMERO: TStringField;
    dtEmpresaRUA: TStringField;
    dspEmpresa: TDataSetProvider;
    Empresa: TClientDataSet;
    EmpresaCODEMPRESA: TFloatField;
    EmpresaCEP: TStringField;
    EmpresaCGC: TStringField;
    EmpresaCODBAIRRO: TFloatField;
    EmpresaCODCIDADE: TFloatField;
    EmpresaCOMPLEMENTO: TStringField;
    EmpresaFONEFAX: TStringField;
    EmpresaFRANQUEADA: TStringField;
    EmpresaINSCESTADUAL: TStringField;
    EmpresaNOME: TStringField;
    EmpresaNROIMETRO: TStringField;
    EmpresaNUMERO: TStringField;
    EmpresaRUA: TStringField;
    Qsql: TSQLQuery;
    dtBairro: TSQLDataSet;
    dspBairro: TDataSetProvider;
    Bairro: TClientDataSet;
    dtBairroCODBAIRRO: TFloatField;
    dtBairroDESCBAIRRO: TStringField;
    BairroCODBAIRRO: TFloatField;
    BairroDESCBAIRRO: TStringField;
    dtCidade: TSQLDataSet;
    dtCidadeCEP: TStringField;
    dtCidadeCODCIDADE: TFloatField;
    dtCidadeDESCCIDADE: TStringField;
    dtCidadeUF: TStringField;
    dspCidade: TDataSetProvider;
    Cidade: TClientDataSet;
    CidadeCODCIDADE: TFloatField;
    CidadeCEP: TStringField;
    CidadeDESCCIDADE: TStringField;
    CidadeUF: TStringField;
    dtLocal: TSQLDataSet;
    dtLocalCODLOCAL: TFloatField;
    dtLocalDESCLOCAL: TStringField;
    dspLocal: TDataSetProvider;
    Local: TClientDataSet;
    LocalCODLOCAL: TFloatField;
    LocalDESCLOCAL: TStringField;
    dtAgente: TSQLDataSet;
    dtAgenteCODAGENTE: TFloatField;
    dtAgenteCONTESTOQUE: TStringField;
    dtAgenteDESCAGENTE: TStringField;
    dtAgentePESQLOTE: TStringField;
    dspAgente: TDataSetProvider;
    Agente: TClientDataSet;
    AgenteCODAGENTE: TFloatField;
    AgenteDESCAGENTE: TStringField;
    AgenteCONTESTOQUE: TStringField;
    AgentePESQLOTE: TStringField;
    dtResultado: TSQLDataSet;
    dspResultado: TDataSetProvider;
    Resultado: TClientDataSet;
    dtResultadoCODRESULTADO: TFloatField;
    dtResultadoDESCRESULTADO: TStringField;
    ResultadoCODRESULTADO: TFloatField;
    ResultadoDESCRESULTADO: TStringField;
    Manutencao: TClientDataSet;
    dspManutencao: TDataSetProvider;
    dtManutencao: TSQLDataSet;
    dtManutencaoCODMANUTENCAO: TFloatField;
    dtManutencaoDESCMANUTENCAO: TStringField;
    ManutencaoCODMANUTENCAO: TFloatField;
    ManutencaoDESCMANUTENCAO: TStringField;
    dtMarca: TSQLDataSet;
    dspMarca: TDataSetProvider;
    Marca: TClientDataSet;
    dtMarcaCODMARCA: TFloatField;
    dtMarcaDESCMARCA: TStringField;
    MarcaCODMARCA: TFloatField;
    MarcaDESCMARCA: TStringField;
    dtPeca: TSQLDataSet;
    dspPeca: TDataSetProvider;
    Peca: TClientDataSet;
    dtPecaCODPECA: TFloatField;
    dtPecaDESCPECA: TStringField;
    PecaCODPECA: TFloatField;
    PecaDESCPECA: TStringField;
    dtObs: TSQLDataSet;
    dtObsCODIGO: TFloatField;
    dtObsCONTROLE: TIntegerField;
    dtObsDESCRICAO: TStringField;
    dspObs: TDataSetProvider;
    Obs: TClientDataSet;
    ObsCODIGO: TFloatField;
    ObsDESCRICAO: TStringField;
    ObsCONTROLE: TIntegerField;
    Vendedor: TClientDataSet;
    dspVendedor: TDataSetProvider;
    dtVendedor: TSQLDataSet;
    dtVendedorCODVENDEDOR: TFloatField;
    dtVendedorDESCVENDEDOR: TStringField;
    dtVendedorFONE: TStringField;
    dtVendedorFONE2: TStringField;
    VendedorCODVENDEDOR: TFloatField;
    VendedorDESCVENDEDOR: TStringField;
    VendedorFONE: TStringField;
    VendedorFONE2: TStringField;
    dtResp: TSQLDataSet;
    dtRespCODRESP: TStringField;
    dtRespNOME: TStringField;
    dspResp: TDataSetProvider;
    Resp: TClientDataSet;
    RespCODRESP: TStringField;
    RespNOME: TStringField;
    dtContol: TSQLDataSet;
    dtContolCODTABELA: TStringField;
    dtContolCODIGO: TFloatField;
    dspControl: TDataSetProvider;
    Control: TClientDataSet;
    ControlCODTABELA: TStringField;
    ControlCODIGO: TFloatField;
    Lote: TClientDataSet;
    dspLote: TDataSetProvider;
    dtLote: TSQLDataSet;
    dtLoteCODPRODUTO: TFloatField;
    dtLoteCOMPLEMENTO: TStringField;
    dtLoteLOTE: TStringField;
    dtLoteLOTERESUMIDO: TStringField;
    dtLoteNUMORDEM: TFloatField;
    dtLoteQTDEESTOQUE: TFloatField;
    LoteLOTERESUMIDO: TStringField;
    LoteCODPRODUTO: TFloatField;
    LoteCOMPLEMENTO: TStringField;
    LoteLOTE: TStringField;
    LoteNUMORDEM: TFloatField;
    LoteQTDEESTOQUE: TFloatField;
    dtPessoa: TSQLDataSet;
    dspPessoa: TDataSetProvider;
    Pessoa: TClientDataSet;
    dtPessoaCEP: TStringField;
    dtPessoaCGC: TStringField;
    dtPessoaCODBAIRRO: TFloatField;
    dtPessoaCODCIDADE: TFloatField;
    dtPessoaCODPESSOA: TFloatField;
    dtPessoaCODVENDEDOR: TFloatField;
    dtPessoaCOMPLEMENTO: TStringField;
    dtPessoaCONTATO: TStringField;
    dtPessoaCPF: TStringField;
    dtPessoaEMAIL: TStringField;
    dtPessoaFAX: TStringField;
    dtPessoaFONE1: TStringField;
    dtPessoaFONE2: TStringField;
    dtPessoaINSCESTADUAL: TStringField;
    dtPessoaNOME: TStringField;
    dtPessoaNUMERO: TStringField;
    dtPessoaOBS: TStringField;
    dtPessoaRG: TStringField;
    dtPessoaRUA: TStringField;
    dtPessoaSITE: TStringField;
    dtPessoaTIPO: TStringField;
    dtPessoaTIPOPESSOA: TStringField;
    PessoaCODPESSOA: TFloatField;
    PessoaCEP: TStringField;
    PessoaCGC: TStringField;
    PessoaCODBAIRRO: TFloatField;
    PessoaCODCIDADE: TFloatField;
    PessoaCODVENDEDOR: TFloatField;
    PessoaCOMPLEMENTO: TStringField;
    PessoaCONTATO: TStringField;
    PessoaCPF: TStringField;
    PessoaEMAIL: TStringField;
    PessoaFAX: TStringField;
    PessoaFONE1: TStringField;
    PessoaFONE2: TStringField;
    PessoaINSCESTADUAL: TStringField;
    PessoaNOME: TStringField;
    PessoaNUMERO: TStringField;
    PessoaOBS: TStringField;
    PessoaRG: TStringField;
    PessoaRUA: TStringField;
    PessoaSITE: TStringField;
    PessoaTIPO: TStringField;
    PessoaTIPOPESSOA: TStringField;
    dtExtintor: TSQLDataSet;
    dtExtintorANOFAB: TSQLTimeStampField;
    dtExtintorCAPACIDADE: TStringField;
    dtExtintorCODLOCAL: TFloatField;
    dtExtintorCODMARCA: TFloatField;
    dtExtintorCODPESSOA: TFloatField;
    dtExtintorCODPROJETO: TStringField;
    dtExtintorCONSERVACAO: TStringField;
    dtExtintorCONTROLE: TIntegerField;
    dtExtintorDATACARGA: TSQLTimeStampField;
    dtExtintorLOTERESUMIDO: TStringField;
    dtExtintorNUMERO: TFloatField;
    dtExtintorREFERENCIA: TStringField;
    dtExtintorSELO: TFloatField;
    dtExtintorSERIE: TStringField;
    dtExtintorSITUACAO: TStringField;
    dtExtintorULTIMOSELO: TFloatField;
    dtExtintorVENCIMENTO: TSQLTimeStampField;
    dtExtintorVENCTOCARGA: TSQLTimeStampField;
    dspExtintor: TDataSetProvider;
    Extintor: TClientDataSet;
    ExtintorCONTROLE: TIntegerField;
    ExtintorANOFAB: TSQLTimeStampField;
    ExtintorCAPACIDADE: TStringField;
    ExtintorCODLOCAL: TFloatField;
    ExtintorCODMARCA: TFloatField;
    ExtintorCODPESSOA: TFloatField;
    ExtintorCODPROJETO: TStringField;
    ExtintorCONSERVACAO: TStringField;
    ExtintorDATACARGA: TSQLTimeStampField;
    ExtintorLOTERESUMIDO: TStringField;
    ExtintorNUMERO: TFloatField;
    ExtintorREFERENCIA: TStringField;
    ExtintorSELO: TFloatField;
    ExtintorSERIE: TStringField;
    ExtintorSITUACAO: TStringField;
    ExtintorULTIMOSELO: TFloatField;
    ExtintorVENCIMENTO: TSQLTimeStampField;
    ExtintorVENCTOCARGA: TSQLTimeStampField;
    dtOrdem: TSQLDataSet;
    dtOrdemCODPESSOA: TFloatField;
    dtOrdemDATAORDEM: TSQLTimeStampField;
    dtOrdemNUMORDEM: TFloatField;
    dspOrdem: TDataSetProvider;
    Ordem: TClientDataSet;
    OrdemNUMORDEM: TFloatField;
    OrdemCODPESSOA: TFloatField;
    OrdemDATAORDEM: TSQLTimeStampField;
    ItensOrdem: TClientDataSet;
    dspItensOrdem: TDataSetProvider;
    dtItensOrdem: TSQLDataSet;
    dtItensOrdemANOFAB: TSQLTimeStampField;
    dtItensOrdemCAPACIDADE: TStringField;
    dtItensOrdemCAPACMAXIMA: TStringField;
    dtItensOrdemCODAGENTE: TFloatField;
    dtItensOrdemCODLOCAL: TFloatField;
    dtItensOrdemCODMARCA: TFloatField;
    dtItensOrdemCODNIVEL: TFloatField;
    dtItensOrdemCODPESSOA: TFloatField;
    dtItensOrdemCODPROJETO: TStringField;
    dtItensOrdemCODRESP: TStringField;
    dtItensOrdemCODRESULTADO: TFloatField;
    dtItensOrdemCOMPLEMENTO: TStringField;
    dtItensOrdemCONSERVACAO: TStringField;
    dtItensOrdemCONTROLE: TIntegerField;
    dtItensOrdemDATACARGA: TSQLTimeStampField;
    dtItensOrdemDATACARREGAMENTO: TSQLTimeStampField;
    dtItensOrdemDVB: TStringField;
    dtItensOrdemDVM: TStringField;
    dtItensOrdemLOTE: TStringField;
    dtItensOrdemLOTERESUMIDO: TStringField;
    dtItensOrdemNUMERO: TFloatField;
    dtItensOrdemNUMORDEM: TFloatField;
    dtItensOrdemNUMSELO: TFloatField;
    dtItensOrdemOUTROSELO: TFloatField;
    dtItensOrdemPESOCHEIO: TStringField;
    dtItensOrdemPESOVAZIO: TStringField;
    dtItensOrdemPRESENSAIO: TStringField;
    dtItensOrdemPRESTRABALHO: TStringField;
    dtItensOrdemQTDE: TFloatField;
    dtItensOrdemSERIE: TStringField;
    dtItensOrdemULTIMOSELO: TFloatField;
    dtItensOrdemVENCIMENTO: TSQLTimeStampField;
    dtItensOrdemVENCTOCARGA: TSQLTimeStampField;
    dtItensOrdemVOLUME: TStringField;
    ItensOrdemCONTROLE: TIntegerField;
    ItensOrdemANOFAB: TSQLTimeStampField;
    ItensOrdemCAPACIDADE: TStringField;
    ItensOrdemCAPACMAXIMA: TStringField;
    ItensOrdemCODAGENTE: TFloatField;
    ItensOrdemCODLOCAL: TFloatField;
    ItensOrdemCODMARCA: TFloatField;
    ItensOrdemCODNIVEL: TFloatField;
    ItensOrdemCODPESSOA: TFloatField;
    ItensOrdemCODPROJETO: TStringField;
    ItensOrdemCODRESP: TStringField;
    ItensOrdemCODRESULTADO: TFloatField;
    ItensOrdemCOMPLEMENTO: TStringField;
    ItensOrdemCONSERVACAO: TStringField;
    ItensOrdemDATACARGA: TSQLTimeStampField;
    ItensOrdemDATACARREGAMENTO: TSQLTimeStampField;
    ItensOrdemDVB: TStringField;
    ItensOrdemDVM: TStringField;
    ItensOrdemLOTE: TStringField;
    ItensOrdemLOTERESUMIDO: TStringField;
    ItensOrdemNUMERO: TFloatField;
    ItensOrdemNUMORDEM: TFloatField;
    ItensOrdemNUMSELO: TFloatField;
    ItensOrdemOUTROSELO: TFloatField;
    ItensOrdemPESOCHEIO: TStringField;
    ItensOrdemPESOVAZIO: TStringField;
    ItensOrdemPRESENSAIO: TStringField;
    ItensOrdemPRESTRABALHO: TStringField;
    ItensOrdemQTDE: TFloatField;
    ItensOrdemSERIE: TStringField;
    ItensOrdemULTIMOSELO: TFloatField;
    ItensOrdemVENCIMENTO: TSQLTimeStampField;
    ItensOrdemVENCTOCARGA: TSQLTimeStampField;
    ItensOrdemVOLUME: TStringField;
    ItensOrdemCVENCTOCARGA: TStringField;
    ItensOrdemCVENCTOTESTE: TStringField;
    dtAuxOrdem: TSQLDataSet;
    dtTabPecas: TSQLDataSet;
    dtTabPecasCODPECA: TFloatField;
    dtTabPecasNUMSERVICO: TFloatField;
    dtTabPecasQTDE: TFloatField;
    dtTabPecasSERIE: TStringField;
    dspTabPecas: TDataSetProvider;
    TabPecas: TClientDataSet;
    TabPecasNUMSERVICO: TFloatField;
    TabPecasSERIE: TStringField;
    TabPecasCODPECA: TFloatField;
    TabPecasQTDE: TFloatField;
    TabPecasC_DESCPECA: TStringField;
    dtCompra: TSQLDataSet;
    dtCompraCODPESSOA: TFloatField;
    dtCompraDATA: TSQLTimeStampField;
    dtCompraDATANOTA: TSQLTimeStampField;
    dtCompraNF: TStringField;
    dtCompraNUMORDEM: TFloatField;
    dtCompraTOTALCOMPRA: TFloatField;
    dspCompra: TDataSetProvider;
    Compra: TClientDataSet;
    CompraNUMORDEM: TFloatField;
    CompraCODPESSOA: TFloatField;
    CompraDATA: TSQLTimeStampField;
    CompraDATANOTA: TSQLTimeStampField;
    CompraNF: TStringField;
    CompraTOTALCOMPRA: TFloatField;
    ItensCompra: TClientDataSet;
    dspItensCompra: TDataSetProvider;
    dtItensCompra: TSQLDataSet;
    dtItensCompraCODPRODUTO: TFloatField;
    dtItensCompraCOMPLEMENTO: TStringField;
    dtItensCompraLOTE: TStringField;
    dtItensCompraLOTERESUMIDO: TStringField;
    dtItensCompraNUMITEM: TFloatField;
    dtItensCompraNUMORDEM: TFloatField;
    dtItensCompraQTDE: TFloatField;
    dtItensCompraVALOR: TFloatField;
    dtItensCompraVALORTOTAL: TFloatField;
    ItensCompraNUMORDEM: TFloatField;
    ItensCompraNUMITEM: TFloatField;
    ItensCompraCODPRODUTO: TFloatField;
    ItensCompraCOMPLEMENTO: TStringField;
    ItensCompraLOTE: TStringField;
    ItensCompraLOTERESUMIDO: TStringField;
    ItensCompraQTDE: TFloatField;
    ItensCompraVALOR: TFloatField;
    ItensCompraVALORTOTAL: TFloatField;
    ItensCompraTOTALCOMPRA: TAggregateField;
    ItensCompraQTDEITENS: TAggregateField;
    rel: TClientDataSet;
    relALTURA: TFloatField;
    relLARGURA: TFloatField;
    relM_SUPERIOR: TFloatField;
    relM_INFERIOR: TFloatField;
    dtCliente: TSQLDataSet;
    dtClienteCEP: TStringField;
    dtClienteCGC: TStringField;
    dtClienteCODBAIRRO: TFloatField;
    dtClienteCODCIDADE: TFloatField;
    dtClienteCODPESSOA: TFloatField;
    dtClienteCODVENDEDOR: TFloatField;
    dtClienteCOMPLEMENTO: TStringField;
    dtClienteCONTATO: TStringField;
    dtClienteCPF: TStringField;
    dtClienteEMAIL: TStringField;
    dtClienteFAX: TStringField;
    dtClienteFONE1: TStringField;
    dtClienteFONE2: TStringField;
    dtClienteINSCESTADUAL: TStringField;
    dtClienteNOME: TStringField;
    dtClienteNUMERO: TStringField;
    dtClienteOBS: TStringField;
    dtClienteRG: TStringField;
    dtClienteRUA: TStringField;
    dtClienteSITE: TStringField;
    dtClienteTIPO: TStringField;
    dtClienteTIPOPESSOA: TStringField;
    dspCliente: TDataSetProvider;
    Cliente: TClientDataSet;
    ClienteCODPESSOA: TFloatField;
    ClienteCEP: TStringField;
    ClienteCGC: TStringField;
    ClienteCODBAIRRO: TFloatField;
    ClienteCODCIDADE: TFloatField;
    ClienteCODVENDEDOR: TFloatField;
    ClienteCOMPLEMENTO: TStringField;
    ClienteCONTATO: TStringField;
    ClienteCPF: TStringField;
    ClienteEMAIL: TStringField;
    ClienteFAX: TStringField;
    ClienteFONE1: TStringField;
    ClienteFONE2: TStringField;
    ClienteINSCESTADUAL: TStringField;
    ClienteNOME: TStringField;
    ClienteNUMERO: TStringField;
    ClienteOBS: TStringField;
    ClienteRG: TStringField;
    ClienteRUA: TStringField;
    ClienteSITE: TStringField;
    ClienteTIPO: TStringField;
    ClienteTIPOPESSOA: TStringField;
    dtMovimento: TSQLDataSet;
    dtMovimentoCODAGENTE: TFloatField;
    dtMovimentoCOMPLEMENTO: TStringField;
    dtMovimentoDATA: TSQLTimeStampField;
    dtMovimentoLOTE: TStringField;
    dtMovimentoLOTERESUMIDO: TStringField;
    dtMovimentoQTDE: TFloatField;
    dtMovimentoSERIE: TStringField;
    dtMovimentoTEXTO: TStringField;
    dtMovimentoTIPO: TStringField;
    dsMovimento: TDataSetProvider;
    Movimento: TClientDataSet;
    MovimentoDATA: TSQLTimeStampField;
    MovimentoLOTERESUMIDO: TStringField;
    MovimentoCODAGENTE: TFloatField;
    MovimentoCOMPLEMENTO: TStringField;
    MovimentoLOTE: TStringField;
    MovimentoQTDE: TFloatField;
    MovimentoSERIE: TStringField;
    MovimentoTEXTO: TStringField;
    MovimentoTIPO: TStringField;
    dtProposta: TSQLDataSet;
    dtPropostaCODPESSOA: TFloatField;
    dtPropostaCODVENDEDOR: TFloatField;
    dtPropostaCONDPAGTO: TStringField;
    dtPropostaDESCONTO: TFloatField;
    dtPropostaEMISSAO: TSQLTimeStampField;
    dtPropostaENTREGA: TStringField;
    dtPropostaNUMPROPOSTA: TFloatField;
    dtPropostaTOTALBRUTO: TFloatField;
    dtPropostaVALIDADE: TStringField;
    dtPropostaVALORPROPOSTA: TFloatField;
    dspProposta: TDataSetProvider;
    Proposta: TClientDataSet;
    PropostaNUMPROPOSTA: TFloatField;
    PropostaCODPESSOA: TFloatField;
    PropostaCODVENDEDOR: TFloatField;
    PropostaCONDPAGTO: TStringField;
    PropostaDESCONTO: TFloatField;
    PropostaEMISSAO: TSQLTimeStampField;
    PropostaENTREGA: TStringField;
    PropostaTOTALBRUTO: TFloatField;
    PropostaVALIDADE: TStringField;
    PropostaVALORPROPOSTA: TFloatField;
    dtItensProposta: TSQLDataSet;
    dtItensPropostaCAPACIDADE: TStringField;
    dtItensPropostaCODLOCAL: TFloatField;
    dtItensPropostaCODMANUTENCAO: TFloatField;
    dtItensPropostaCODNIVEL: TFloatField;
    dtItensPropostaNUMEXTINTOR: TFloatField;
    dtItensPropostaNUMPROPOSTA: TFloatField;
    dtItensPropostaSEQUENCIA: TIntegerField;
    dtItensPropostaSERIE: TFloatField;
    dtItensPropostaVALORTOTAL: TFloatField;
    dtItensPropostaVALORUNIT: TFloatField;
    dtItensPropostaVENCTOTESTE: TSQLTimeStampField;
    dspItensProposta: TDataSetProvider;
    ItensProposta: TClientDataSet;
    ItensPropostaSEQUENCIA: TIntegerField;
    ItensPropostaCAPACIDADE: TStringField;
    ItensPropostaCODLOCAL: TFloatField;
    ItensPropostaCODMANUTENCAO: TFloatField;
    ItensPropostaCODNIVEL: TFloatField;
    ItensPropostaNUMEXTINTOR: TFloatField;
    ItensPropostaNUMPROPOSTA: TFloatField;
    ItensPropostaSERIE: TFloatField;
    ItensPropostaVALORTOTAL: TFloatField;
    ItensPropostaVALORUNIT: TFloatField;
    ItensPropostaVENCTOTESTE: TSQLTimeStampField;
    ItensPropostaC_VENCTOTESTE: TStringField;
    dtTabPreco: TSQLDataSet;
    dtTabPrecoCAPACIDADE: TStringField;
    dtTabPrecoNIVEL: TStringField;
    dtTabPrecoVALORUNIT: TFloatField;
    dspTabPreco: TDataSetProvider;
    TabPreco: TClientDataSet;
    TabPrecoCAPACIDADE: TStringField;
    TabPrecoNIVEL: TStringField;
    TabPrecoVALORUNIT: TFloatField;
    ItensPropostaTotalItems: TAggregateField;
    dtItensPropostaDESCLOCAL: TStringField;
    ItensPropostaDESCLOCAL: TStringField;
    dtCapacidade: TSQLDataSet;
    dtCapacidadeCODCAPACIDADE: TIntegerField;
    dtCapacidadeDESCCAPACIDADE: TStringField;
    dtCapacidadePESO: TFloatField;
    dtCapacidadeTIPO: TStringField;
    dspCapacidade: TDataSetProvider;
    Capacidade: TClientDataSet;
    CapacidadeCODCAPACIDADE: TIntegerField;
    CapacidadeDESCCAPACIDADE: TStringField;
    CapacidadePESO: TFloatField;
    CapacidadeTIPO: TStringField;
    dtItensOrdemCODCAPACIDADE: TIntegerField;
    dtItensOrdemPESO: TFloatField;
    dtItensOrdemTIPO: TStringField;
    dtItensOrdemPERCENTUAL: TStringField;
    ItensOrdemCODCAPACIDADE: TIntegerField;
    ItensOrdemPESO: TFloatField;
    ItensOrdemTIPO: TStringField;
    ItensOrdemPERCENTUAL: TStringField;
    dtExtintorCODCAPACIDADE: TIntegerField;
    dtExtintorPESO: TFloatField;
    dtExtintorTIPO: TStringField;
    ExtintorCODCAPACIDADE: TIntegerField;
    ExtintorPESO: TFloatField;
    ExtintorTIPO: TStringField;
    QCadUsuario: TSQLQuery;
    QCadUsuarioNOME: TStringField;
    QCadUsuarioGERENTE: TStringField;
    QCadUsuarioSENHA: TStringField;
    dspCadUsuario: TDataSetProvider;
    CadUsuario: TClientDataSet;
    CadUsuarioNOME: TStringField;
    CadUsuarioGERENTE: TStringField;
    CadUsuarioSENHA: TStringField;
    QCadUsuarioALTERAR_SELO: TStringField;
    CadUsuarioALTERAR_SELO: TStringField;
    QCadUsuarioALTERAR_CADASTRO: TStringField;
    CadUsuarioALTERAR_CADASTRO: TStringField;
    QCapacidade: TSQLDataSet;
    QCapacidadeCODCAPACIDADE: TIntegerField;
    QCapacidadeDESCCAPACIDADE: TStringField;
    QCapacidadePESO: TFloatField;
    QCapacidadeTIPO: TStringField;
    dtCapacidadeQTDE_PO: TFloatField;
    dtCapacidadeCODAGENTE: TFloatField;
    CapacidadeQTDE_PO: TFloatField;
    CapacidadeCODAGENTE: TFloatField;
    QCapacidadeQTDE_PO: TFloatField;
    QCapacidadeCODAGENTE: TFloatField;
    QTabControle: TSQLQuery;
    QTabControleID: TIntegerField;
    QTabControleSELOINICIAL: TFloatField;
    QTabControleSELOFINAL: TFloatField;
    dspTabControle: TDataSetProvider;
    dtTabControle: TClientDataSet;
    dtTabControleID: TIntegerField;
    dtTabControleSELOINICIAL: TFloatField;
    dtTabControleSELOFINAL: TFloatField;
    QCadUsuarioVALIDA_INTERVALO_SELO: TStringField;
    CadUsuarioVALIDA_INTERVALO_SELO: TStringField;
    dtOrdemNUMNOTA: TIntegerField;
    OrdemNUMNOTA: TIntegerField;
    dtRespATIVO: TStringField;
    RespATIVO: TStringField;
    dtOrdemOUTRASNOTAS: TStringField;
    OrdemOUTRASNOTAS: TStringField;
    dtItensOrdemPERC_PERDA_MASSA: TFloatField;
    dtItensOrdemNORMA_CILINDRO: TStringField;
    ItensOrdemPERC_PERDA_MASSA: TFloatField;
    ItensOrdemNORMA_CILINDRO: TStringField;
    dtEmpresaVERSAO: TStringField;
    EmpresaVERSAO: TStringField;
    dtPessoaOBSERVACAO: TMemoField;
    PessoaOBSERVACAO: TMemoField;
    dtClienteOBSERVACAO: TMemoField;
    ClienteOBSERVACAO: TMemoField;
    QParametro: TSQLQuery;
    QParametroSIGLA: TStringField;
    QParametroDESCRICAO: TStringField;
    QParametroPARAM_STRING: TStringField;
    QParametroPARAM_INTEIRO: TIntegerField;
    QParametroPARAM_VALOR: TFMTBCDField;
    QParametroPARAM_DATA: TSQLTimeStampField;
    dspParametro: TDataSetProvider;
    Parametro: TClientDataSet;
    ParametroSIGLA: TStringField;
    ParametroDESCRICAO: TStringField;
    ParametroPARAM_STRING: TStringField;
    ParametroPARAM_INTEIRO: TIntegerField;
    ParametroPARAM_VALOR: TFMTBCDField;
    ParametroPARAM_DATA: TSQLTimeStampField;
    QParametroID: TIntegerField;
    ParametroID: TIntegerField;
    dtCapacidadeCAPACID_EXTINTORA: TStringField;
    CapacidadeCAPACID_EXTINTORA: TStringField;
    QEmpresa: TSQLQuery;
    QEmpresaNOME: TStringField;
    QEmpresaVERSAO: TStringField;
    dtRespUSAR_INSPECAO: TStringField;
    RespUSAR_INSPECAO: TStringField;
    dtPecaUSAR_INSPECAO: TStringField;
    PecaUSAR_INSPECAO: TStringField;
    dtItensOrdemDATA_INSPECAO: TSQLTimeStampField;
    ItensOrdemDATA_INSPECAO: TSQLTimeStampField;
    dtExtintorDATA_INSPECAO: TSQLTimeStampField;
    ExtintorDATA_INSPECAO: TSQLTimeStampField;
    dtCapacidadeCODMARCA: TFloatField;
    CapacidadeCODMARCA: TFloatField;
    dtCapacidadeDESCMARCA: TStringField;
    CapacidadeDESCMARCA: TStringField;
    dtItensOrdemVENCTO_INSPECAO: TSQLTimeStampField;
    ItensOrdemVENCTO_INSPECAO: TSQLTimeStampField;
    dtPecaSO_INSPECAO: TStringField;
    PecaSO_INSPECAO: TStringField;
    dtItensOrdemLEGENDA: TStringField;
    ItensOrdemLEGENDA: TStringField;
    dtPecaATIVO: TStringField;
    PecaATIVO: TStringField;
    dtManutencaoRETESTE: TStringField;
    ManutencaoRETESTE: TStringField;
    procedure EmpresaNewRecord(DataSet: TDataSet);
    procedure BairroNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure EmpresaBeforePost(DataSet: TDataSet);
    procedure CidadeNewRecord(DataSet: TDataSet);
    procedure CidadeBeforePost(DataSet: TDataSet);
    procedure BairroBeforePost(DataSet: TDataSet);
    procedure LocalBeforePost(DataSet: TDataSet);
    procedure LocalNewRecord(DataSet: TDataSet);
    procedure AgenteBeforePost(DataSet: TDataSet);
    procedure AgenteNewRecord(DataSet: TDataSet);
    procedure ResultadoBeforePost(DataSet: TDataSet);
    procedure ResultadoNewRecord(DataSet: TDataSet);
    procedure ManutencaoBeforePost(DataSet: TDataSet);
    procedure ManutencaoNewRecord(DataSet: TDataSet);
    procedure MarcaBeforePost(DataSet: TDataSet);
    procedure MarcaNewRecord(DataSet: TDataSet);
    procedure PecaBeforePost(DataSet: TDataSet);
    procedure PecaNewRecord(DataSet: TDataSet);
    procedure VendedorBeforePost(DataSet: TDataSet);
    procedure VendedorNewRecord(DataSet: TDataSet);
    procedure PessoaBeforePost(DataSet: TDataSet);
    procedure PessoaNewRecord(DataSet: TDataSet);
    procedure ItensOrdemCalcFields(DataSet: TDataSet);
    procedure TabPecasCalcFields(DataSet: TDataSet);
    procedure ItensOrdemBeforePost(DataSet: TDataSet);
    procedure ItensCompraReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure TabPecasNewRecord(DataSet: TDataSet);
    procedure ClienteNewRecord(DataSet: TDataSet);
    procedure ItensPropostaCalcFields(DataSet: TDataSet);
    procedure OrdemReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure ItensOrdemReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure ClienteReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure CapacidadeBeforePost(DataSet: TDataSet);
    procedure CapacidadeNewRecord(DataSet: TDataSet);
    procedure CadUsuarioNewRecord(DataSet: TDataSet);
    procedure ItensOrdemBeforeDelete(DataSet: TDataSet);
    procedure TabPecasAfterPost(DataSet: TDataSet);
    procedure ItensOrdemDATACARREGAMENTOSetText(Sender: TField;
      const Text: string);
    procedure OrdemDATAORDEMSetText(Sender: TField; const Text: string);
    procedure OrdemBeforePost(DataSet: TDataSet);
    procedure CompraDATASetText(Sender: TField; const Text: string);
    procedure CompraDATANOTASetText(Sender: TField; const Text: string);
    procedure CompraBeforePost(DataSet: TDataSet);
    procedure ItensCompraBeforePost(DataSet: TDataSet);
    procedure ItensCompraBeforeDelete(DataSet: TDataSet);
    procedure MovimentoBeforeDelete(DataSet: TDataSet);
    procedure MovimentoBeforePost(DataSet: TDataSet);
    procedure MovimentoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure RespNewRecord(DataSet: TDataSet);
    procedure ItensOrdemDATA_INSPECAOSetText(Sender: TField;
      const Text: string);
    procedure ExtintorDATA_INSPECAOSetText(Sender: TField; const Text: string);
    procedure ItensOrdemVENCTO_INSPECAOSetText(Sender: TField;
      const Text: string);
    procedure ItensOrdemVENCTO_INSPECAOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ItensOrdemNewRecord(DataSet: TDataSet);
  private
    { Private declarations }


  public
    { Public declarations }
    function Incrementa(Tabela,Campo: string): integer;
    procedure IniTrans;
    procedure GravaTrans;
    procedure CancelaTrans;
    function Integridade(Tab_A_Pesquisar, Campo_Tab, Campo_Atual: string): boolean;
    function Integridade2(Tab_A_Pesquisar, Campo_Tab, Campo_Atual: string): boolean;
    procedure GetUsuario(Nome: String);
    procedure GetTabControle;
    procedure GetParametros(sigla: string);
    function AutoIncrementar(NomeGenerator: string): Integer;
    procedure GetEmpresa; overload;
    procedure GetEmpresa(ANome: string); overload;
    function DadosEmpresa: string;
  end;

var
  DM: TDM;
  vgcodigo: string[20];
  vgUsuario: String;

implementation

uses UDMBanco, UUtil;

var TransDesc: TTransactionDesc;
{$R *.dfm}

procedure TDM.IniTrans;
begin
   if not dmBanco.BancoDados.InTransaction then
      dmBanco.BancoDados.StartTransaction(TransDesc);
end;

procedure TDM.GravaTrans;
begin
   if dmBanco.BancoDados.InTransaction then
      dmBanco.BancoDados.Commit(TransDesc);
end;

procedure TDM.CancelaTrans;
begin
   if dmBanco.BancoDados.InTransaction then
      dmBanco.BancoDados.Rollback(TransDesc);
end;

function TDM.Incrementa(Tabela, Campo: string): integer;
begin
   Qsql.Close;
   Qsql.SQL.Text:='select max('+Campo+')+1 as CODIGO from '+Tabela;
   Qsql.Open;
   if not Qsql.FieldByName('CODIGO').IsNull then
      result:=Qsql.FieldByName('CODIGO').AsInteger
   else
      result:=1;
   Qsql.Close;
end;

procedure TDM.EmpresaNewRecord(DataSet: TDataSet);
begin
   EmpresaCODEMPRESA.AsInteger:=Incrementa('TMEMP','CODEMPRESA');
end;

procedure TDM.ExtintorDATA_INSPECAOSetText(Sender: TField; const Text: string);
begin
  if Trim(Text) = '/  /' then
    Sender.Clear
  else
    Sender.Value := Text;
end;

procedure TDM.BairroNewRecord(DataSet: TDataSet);
begin
   BairroCODBAIRRO.AsInteger:=Incrementa('TBAIRRO','CODBAIRRO');
end;

function TDM.DadosEmpresa: string;
var
  cnpj: string;
  ie: string;
  telefone: string;
begin
  DM.GetEmpresa('G'+'%');
  cnpj := FormatMaskText('##.###.###/####-##;0;_', DM.EmpresaCGC.AsString);
  ie := dm.EmpresaINSCESTADUAL.AsString;
  telefone := dm.EmpresaFONEFAX.AsString;

  Result := 'CNPJ: ' + cnpj + '   Insc. Estadual: ' + ie + '   FONE/FAX: ' + telefone;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
   TransDesc.TransactionID:=1;
   TransDesc.IsolationLevel:=xilREADCOMMITTED;
   
   if fileexists('Medida.cds') then
      rel.LoadFromFile('Medida.cds');
end;

procedure TDM.EmpresaBeforePost(DataSet: TDataSet);
begin
   if Empresa.State = dsInsert then
      EmpresaCODEMPRESA.AsInteger:=Incrementa('TMEMP','CODEMPRESA');
end;

procedure TDM.CidadeNewRecord(DataSet: TDataSet);
begin
   CIDADECODCIDADE.AsInteger:=Incrementa('TCIDADE','CODCIDADE');
end;

procedure TDM.CidadeBeforePost(DataSet: TDataSet);
begin
   if Cidade.State = dsInsert then
      CIDADECODCIDADE.AsInteger:=Incrementa('TCIDADE','CODCIDADE');
end;

procedure TDM.BairroBeforePost(DataSet: TDataSet);
begin
   if Bairro.State = dsInsert then
      BairroCODBAIRRO.AsInteger:=Incrementa('TBAIRRO','CODBAIRRO');
end;

procedure TDM.LocalBeforePost(DataSet: TDataSet);
begin
   if local.State = dsInsert then
      LOCALCODLOCAL.AsInteger:=Incrementa('TLOCAL','CODLOCAL');
end;

procedure TDM.LocalNewRecord(DataSet: TDataSet);
begin
   LOCALCODLOCAL.AsInteger:=Incrementa('TLOCAL','CODLOCAL');
end;

procedure TDM.AgenteBeforePost(DataSet: TDataSet);
begin
   if Agente.State = dsInsert then
      AGENTECODAGENTE.AsInteger:=Incrementa('TAGENTE','CODAGENTE');
end;

procedure TDM.AgenteNewRecord(DataSet: TDataSet);
begin
   AGENTECODAGENTE.AsInteger:=Incrementa('TAGENTE','CODAGENTE');
end;

function TDM.AutoIncrementar(NomeGenerator: string): Integer;
begin
   Qsql.Close;
   Qsql.SQL.Text:='select gen_id('+NomeGenerator+', 1) from rdb$database';
   Qsql.Open;

   Result := Qsql.Fields[0].AsInteger;
   Qsql.Close;
end;

procedure TDM.RespNewRecord(DataSet: TDataSet);
begin
  RespUSAR_INSPECAO.AsString := 'S';
  RespATIVO.AsString := 'S';
end;

procedure TDM.ResultadoBeforePost(DataSet: TDataSet);
begin
   if Resultado.State = dsInsert then
      ResultadoCODRESULTADO.AsInteger:=Incrementa('TRESULT','CODRESULTADO');
end;

procedure TDM.ResultadoNewRecord(DataSet: TDataSet);
begin
   ResultadoCODRESULTADO.AsInteger:=Incrementa('TRESULT','CODRESULTADO');
end;

procedure TDM.ManutencaoBeforePost(DataSet: TDataSet);
begin
   if Manutencao.State = dsInsert then
      ManutencaoCODMANUTENCAO.AsInteger:=Incrementa('TMANUT','CODMANUTENCAO');
end;

procedure TDM.ManutencaoNewRecord(DataSet: TDataSet);
begin
   ManutencaoCODMANUTENCAO.AsInteger:=Incrementa('TMANUT','CODMANUTENCAO');
   ManutencaoRETESTE.AsString := 'N';
end;

procedure TDM.MarcaBeforePost(DataSet: TDataSet);
begin
   if Marca.State = dsInsert then
      MarcaCODMARCA.AsInteger:=Incrementa('TMARCA','CODMARCA');
end;

procedure TDM.MarcaNewRecord(DataSet: TDataSet);
begin
   MarcaCODMARCA.AsInteger:=Incrementa('TMARCA','CODMARCA');
end;

procedure TDM.MovimentoBeforeDelete(DataSet: TDataSet);
begin
  if dm.MovimentoTIPO.AsString = 'S' then
    dmBanco.BancoDados.ExecuteDirect('update TESTLOTE set QTDEESTOQUE = QTDEESTOQUE + ' + MovimentoQTDE.AsString + ' where LOTERESUMIDO = "' + dm.MovimentoLOTERESUMIDO.text + '"')
  else
    dmBanco.BancoDados.ExecuteDirect('update TESTLOTE set QTDEESTOQUE = QTDEESTOQUE - ' + MovimentoQTDE.AsString + ' where LOTERESUMIDO = "' + dm.MovimentoLOTERESUMIDO.text + '"');
end;

procedure TDM.MovimentoBeforePost(DataSet: TDataSet);
begin
  if Movimento.State = dsEdit then
  begin
    if dm.MovimentoTIPO.OldValue = 'E' then
      dmBanco.BancoDados.ExecuteDirect('update TESTLOTE set QTDEESTOQUE = QTDEESTOQUE - ' + FloatToStr(MovimentoQTDE.OldValue) + ' where LOTERESUMIDO = "' + dm.MovimentoLOTERESUMIDO.OldValue + '"')
    else
      dmBanco.BancoDados.ExecuteDirect('update TESTLOTE set QTDEESTOQUE = QTDEESTOQUE + ' + FloatToStr(MovimentoQTDE.OldValue) + ' where LOTERESUMIDO = "' + dm.MovimentoLOTERESUMIDO.OldValue + '"');
  end;

  if dm.MovimentoTIPO.AsString = 'E' then
    dmBanco.BancoDados.ExecuteDirect('update TESTLOTE set QTDEESTOQUE = QTDEESTOQUE + ' + MovimentoQTDE.AsString + ' where LOTERESUMIDO = "' + dm.MovimentoLOTERESUMIDO.AsString + '"')
  else
    dmBanco.BancoDados.ExecuteDirect('update TESTLOTE set QTDEESTOQUE = QTDEESTOQUE - ' + MovimentoQTDE.AsString + ' where LOTERESUMIDO = "' + dm.MovimentoLOTERESUMIDO.AsString + '"');
end;

procedure TDM.MovimentoReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  ShowMessage(E.Message);
end;

procedure TDM.PecaBeforePost(DataSet: TDataSet);
begin
   if Peca.State = dsInsert then
      PecaCODPECA.AsInteger:=Incrementa('TPECA','CODPECA');
end;

procedure TDM.PecaNewRecord(DataSet: TDataSet);
begin
   PecaCODPECA.AsInteger:=Incrementa('TPECA','CODPECA');
   PecaUSAR_INSPECAO.AsString := 'S';
   PecaATIVO.AsString := 'S';
end;

procedure TDM.VendedorBeforePost(DataSet: TDataSet);
begin
   if Vendedor.State = dsInsert then
      VendedorCODVENDEDOR.AsInteger:=Incrementa('TVENDEDO','CODVENDEDOR');
end;

procedure TDM.VendedorNewRecord(DataSet: TDataSet);
begin
   VendedorCODVENDEDOR.AsInteger:=Incrementa('TVENDEDO','CODVENDEDOR');
end;

procedure TDM.PessoaBeforePost(DataSet: TDataSet);
begin
   if Pessoa.State = dsInsert then
      PessoaCODPESSOA.AsInteger:=Incrementa('TPESSOA','CODPESSOA');
end;

procedure TDM.PessoaNewRecord(DataSet: TDataSet);
begin
//   PessoaCODPESSOA.AsInteger:=Incrementa('TPESSOA','CODPESSOA');
   PessoaTIPO.text:='C';
   PessoaTIPOPESSOA.Text:='J';
end;

procedure TDM.ItensOrdemCalcFields(DataSet: TDataSet);
begin

   if ItensOrdem.State = dsInternalCalc then
   begin
      ItensOrdemCVENCTOTESTE.Text:=inttostr(yearof(ItensOrdemDATACARGA.asDateTime));
      ItensOrdemCVENCTOCARGA.Text:=inttostr(yearof(ItensOrdemVENCIMENTO.asDateTime));
   end;
   
end;

procedure TDM.ItensOrdemDATACARREGAMENTOSetText(Sender: TField;
  const Text: string);
begin
  VerificarDatas(Sender, Text);
end;

procedure TDM.ItensOrdemDATA_INSPECAOSetText(Sender: TField;
  const Text: string);
begin
  if Trim(Text) = '/  /' then
    Sender.Clear
  else
    Sender.Value := Text;
end;

procedure TDM.ItensOrdemNewRecord(DataSet: TDataSet);
begin
  ItensOrdemLEGENDA.AsString := 'A';
end;

procedure TDM.TabPecasAfterPost(DataSet: TDataSet);
begin
  GravaTab(TabPecas);
end;

procedure TDM.TabPecasCalcFields(DataSet: TDataSet);
begin
   if TabPecas.State = dsInternalCalc then
   begin
      dm.Qsql.Close;
      dm.Qsql.SQL.Clear;
      dm.Qsql.SQL.Add('select DESCPECA from TPECA where CODPECA = '+TabPecasCODPECA.Text);
      DM.Qsql.Open;
      TabPecasC_DESCPECA.Text:=Qsql.fieldbyname('DESCPECA').Text;
      dm.Qsql.Close;
   end;
end;

procedure TDM.ItensOrdemBeforeDelete(DataSet: TDataSet);
var
  Sql: TStringBuilder;
begin
  if (ItensOrdemQTDE.AsFloat > 0) then
  begin
    Sql := TStringBuilder.Create;
    try
      Sql.AppendLine(' update TESTLOTE set QTDEESTOQUE = QTDEESTOQUE + ' + ItensOrdemQTDE.AsString);
      Sql.AppendLine(' where LOTERESUMIDO = ' + QuotedStr(ItensOrdemLOTERESUMIDO.AsString));
      DmBanco.BancoDados.ExecuteDirect(Sql.ToString);
    finally
      FreeAndNil(Sql);
    end;
  end;

  dmBanco.BancoDados.ExecuteDirect('delete from TTABPECA where NUMSERVICO = ' + ItensOrdemNUMORDEM.AsString + ' and SERIE = ' + QuotedStr(dm.ItensOrdemSERIE.Text));
end;

procedure TDM.ItensOrdemBeforePost(DataSet: TDataSet);
var
  Sql: TStringBuilder;
begin

  if Trim(ItensOrdemSERIE.AsString) = '' then
    raise Exception.Create('Informe a S�rie.');

  if ItensOrdemCODMARCA.AsInteger = 0 then
    raise Exception.Create('Informe a Marca.');

  if ItensOrdemCODAGENTE.AsInteger = 15 then
  begin
    Qsql.Close;
    Qsql.SQL.Text := 'select first 1 LOTERESUMIDO  from TESTLOTE where LOTERESUMIDO = ' + QuotedStr(ItensOrdemLOTERESUMIDO.Text) + ' and COMPLEMENTO = ' + QuotedStr(ItensOrdemTIPO.AsString);
    Qsql.Open;

    if Qsql.IsEmpty then
    begin
      Qsql.Close;
      raise Exception.Create('Lote para o Agente Extintor 15 inv�lido.');
    end;
    Qsql.Close;

  end;

   if ItensOrdem.State = dsInsert then
   begin
      procura(Control,'I_ORDEM');
      ItensOrdemCONTROLE.AsFloat:=ControlCODIGO.AsFloat;
      Control.Edit;
      ControlCODIGO.AsInteger:=ControlCODIGO.AsInteger + 1;
      Control.Post;
      GravaTab(Control);
      Control.Close;
   end;

   Sql := TStringBuilder.Create;
   try

    if ItensOrdem.State = dsEdit then
    begin
      if (ItensOrdemQTDE.OldValue > 0) then
      begin
        Sql.AppendLine(' update TESTLOTE set QTDEESTOQUE = QTDEESTOQUE + ' + FloatToStr(ItensOrdemQTDE.OldValue));
        Sql.AppendLine(' where LOTERESUMIDO = ' + QuotedStr(ItensOrdemLOTERESUMIDO.OldValue));
        DmBanco.BancoDados.ExecuteDirect(Sql.ToString);
      end;
    end;

    if (ItensOrdemQTDE.AsFloat > 0) then
    begin
      Sql.Clear;
      Sql.AppendLine(' update TESTLOTE set QTDEESTOQUE = QTDEESTOQUE - ' + FloatToStr(ItensOrdemQTDE.AsFloat));
      Sql.AppendLine(' where LOTERESUMIDO = ' + QuotedStr(ItensOrdemLOTERESUMIDO.AsString));
      DmBanco.BancoDados.ExecuteDirect(Sql.ToString);
    end;
   finally
     FreeAndNil(Sql);
   end;

end;

procedure TDM.ItensCompraBeforeDelete(DataSet: TDataSet);
var
  Sql: TStringBuilder;
begin
  if (ItensCompraQTDE.AsFloat > 0) then
  begin
    Sql := TStringBuilder.Create;
    try
      Sql.AppendLine(' update TESTLOTE set QTDEESTOQUE = QTDEESTOQUE - ' + ItensCompraQTDE.AsString);
      Sql.AppendLine(' where LOTERESUMIDO = ' + QuotedStr(ItensCompraLOTERESUMIDO.AsString));
      DmBanco.BancoDados.ExecuteDirect(Sql.ToString);
    finally
      FreeAndNil(Sql);
    end;
  end;
end;

procedure TDM.ItensCompraBeforePost(DataSet: TDataSet);
var
  Sql: TStringBuilder;
begin
   Sql := TStringBuilder.Create;
   try

    if ItensCompra.State = dsEdit then
    begin
      if (ItensCompraQTDE.OldValue > 0) then
      begin
        Sql.AppendLine(' update TESTLOTE set QTDEESTOQUE = QTDEESTOQUE - ' + FloatToStr(ItensCompraQTDE.OldValue));
        Sql.AppendLine(' where LOTERESUMIDO = ' + QuotedStr(ItensCompraLOTERESUMIDO.OldValue));
        DmBanco.BancoDados.ExecuteDirect(Sql.ToString);
      end;
    end;

    if (ItensCompraQTDE.AsFloat > 0) then
    begin
      Sql.Clear;
      Sql.AppendLine(' update TESTLOTE set QTDEESTOQUE = QTDEESTOQUE + ' + FloatToStr(ItensCompraQTDE.AsFloat));
      Sql.AppendLine(' where LOTERESUMIDO = ' + QuotedStr(ItensCompraLOTERESUMIDO.AsString));
      DmBanco.BancoDados.ExecuteDirect(Sql.ToString);
    end;
   finally
     FreeAndNil(Sql);
   end;

end;

procedure TDM.ItensCompraReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
   showmessage(e.Message);
end;

procedure TDM.TabPecasNewRecord(DataSet: TDataSet);
begin
   TabPecasQTDE.AsInteger:=1;
end;

procedure TDM.ClienteNewRecord(DataSet: TDataSet);
begin
   ClienteTIPO.Text:='C';
   ClienteTIPOPESSOA.Text:='J';
end;

procedure TDM.ItensPropostaCalcFields(DataSet: TDataSet);
begin
   if ItensProposta.State = dsInternalCalc then
      ItensPropostaC_VENCTOTESTE.Text:=inttostr(yearof(ItensPropostaVENCTOTESTE.asDateTime));
end;

procedure TDM.OrdemBeforePost(DataSet: TDataSet);
begin
  if OrdemNUMORDEM.AsInteger <= 0 then
    raise Exception.Create('Informe o N�mero da Ordem.');

  if OrdemDATAORDEM.AsString = '' then
    raise Exception.Create('Informe a Data de Emiss�o.');

  if OrdemCODPESSOA.AsInteger <= 0 then
    raise Exception.Create('Informe o Cliente.');
end;

procedure TDM.OrdemDATAORDEMSetText(Sender: TField; const Text: string);
begin
  VerificarDatas(Sender, Text);
end;

procedure TDM.OrdemReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
   showmessage(E.Message);
end;

procedure TDM.ItensOrdemReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
   showmessage(E.Message);
end;

procedure TDM.ItensOrdemVENCTO_INSPECAOGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  try
    Text := FormatDateTime('mm/yyyy', StrToDate(Sender.Value));
  except
    //
  end;
end;

procedure TDM.ItensOrdemVENCTO_INSPECAOSetText(Sender: TField;
  const Text: string);
var
  sTexto: string;
begin
  sTexto := Trim(Text);
  if Trim(sTexto) = '/' then
    Sender.Clear
  else
    Sender.Value := '01/' + Text;
end;

procedure TDM.ClienteReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
   showmessage(E.Message);
end;

procedure TDM.CompraBeforePost(DataSet: TDataSet);
begin
  if CompraNUMORDEM.AsInteger = 0 then
    raise Exception.Create('Informe o N�mero da Compra.');

  if CompraCODPESSOA.AsInteger = 0 then
    raise Exception.Create('Informe o Fornecedor.');
end;

procedure TDM.CompraDATANOTASetText(Sender: TField; const Text: string);
begin
  VerificarDatas(Sender, Text);
end;

procedure TDM.CompraDATASetText(Sender: TField; const Text: string);
begin
  VerificarDatas(Sender, Text);
end;

procedure TDM.CapacidadeBeforePost(DataSet: TDataSet);
begin
//  if CapacidadeCODMARCA.AsInteger = 0 then
//    raise Exception.Create('Informe a Marca.');

   if Capacidade.State = dsInsert then
      CapacidadeCODCAPACIDADE.AsInteger:=Incrementa('CAPACIDADE','CODCAPACIDADE');
end;

procedure TDM.CapacidadeNewRecord(DataSet: TDataSet);
begin
   CapacidadeCODCAPACIDADE.AsInteger:=Incrementa('CAPACIDADE','CODCAPACIDADE');
end;

function TDM.Integridade(Tab_A_Pesquisar, Campo_Tab,
  Campo_Atual: string): boolean;
begin
   result:=true;
   Qsql.Close;
   Qsql.SQL.Clear;
   Qsql.SQL.Add('select '+Campo_Tab+' from '+Tab_A_Pesquisar+' where '+Campo_Tab+' = '+Campo_Atual);
   Qsql.Open;
   if not Qsql.IsEmpty then
   begin
      mensagem('N�o ser� poss�vel excluir, possui movimento');
      result:=false;
   end;
   Qsql.Close;
end;

function TDM.Integridade2(Tab_A_Pesquisar, Campo_Tab,
  Campo_Atual: string): boolean;
begin
   result:=true;
   Qsql.Close;
   Qsql.SQL.Clear;
   Qsql.SQL.Add('select '+Campo_Tab+' from '+Tab_A_Pesquisar+' where '+Campo_Tab+' = '''+Campo_Atual+'''');
   Qsql.Open;
   if not Qsql.IsEmpty then
   begin
      mensagem('N�o ser� poss�vel excluir, possui movimento');
      result:=false;
   end;
   Qsql.Close;
end;

procedure TDM.GetUsuario(Nome: String);
begin
   CadUsuario.Close;
   CadUsuario.Params[0].Text := Nome;
   CadUsuario.Open;
end;

procedure TDM.CadUsuarioNewRecord(DataSet: TDataSet);
begin
   CadUsuarioGERENTE.text := 'S';
   CadUsuarioALTERAR_SELO.Text := 'S';
   CadUsuarioALTERAR_CADASTRO.Text := 'S';
   CadUsuarioVALIDA_INTERVALO_SELO.Text := 'S';
end;

procedure TDM.GetEmpresa;
begin
  QEmpresa.Close;
  QEmpresa.Open;
end;

procedure TDM.GetEmpresa(ANome: string);
begin
  Empresa.Close;
  Empresa.Params[0].AsString := ANome;
  Empresa.Open;
end;

procedure TDM.GetParametros(sigla: string);
begin
  Parametro.Close;
  Parametro.Params[0].AsString := sigla;
  Parametro.Open;
end;

procedure TDM.GetTabControle;
begin
   dtTabControle.Close;
   dtTabControle.Open;
end;

end.
