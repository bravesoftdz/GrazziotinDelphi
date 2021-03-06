object fjProposta: TfjProposta
  Left = 102
  Top = 133
  BorderStyle = bsDialog
  Caption = 'Pesquisa Propostas'
  ClientHeight = 338
  ClientWidth = 604
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 604
    Height = 65
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 54
      Height = 13
      Caption = 'Emiss'#227'o de'
    end
    object Label2: TLabel
      Left = 104
      Top = 8
      Width = 16
      Height = 13
      Caption = 'At'#233
    end
    object Label3: TLabel
      Left = 192
      Top = 8
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object butPessoa: TSpeedButton
      Left = 483
      Top = 24
      Width = 23
      Height = 22
      Hint = 'Pesquisa Cadastro'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = butPessoaClick
    end
    object Dataini: TMaskEdit
      Left = 16
      Top = 24
      Width = 71
      Height = 21
      EditMask = '##/##/####'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object Datafin: TMaskEdit
      Left = 104
      Top = 24
      Width = 72
      Height = 21
      EditMask = '##/##/####'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object Codpessoa: TMaskEdit
      Left = 192
      Top = 24
      Width = 56
      Height = 21
      EditMask = '######;0;_'
      MaxLength = 6
      TabOrder = 2
      OnExit = CodpessoaExit
    end
    object Nome: TEdit
      Left = 256
      Top = 24
      Width = 225
      Height = 21
      CharCase = ecUpperCase
      Color = clSilver
      TabOrder = 3
      OnExit = NomeExit
    end
    object butMostra: TBitBtn
      Left = 520
      Top = 24
      Width = 65
      Height = 25
      Caption = 'Mostrar'
      TabOrder = 4
      OnClick = butMostraClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object Grade: TDBGrid
    Left = 0
    Top = 65
    Width = 604
    Height = 232
    Align = alClient
    DataSource = dsPesq
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = GradeDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'NUMPROPOSTA'
        Title.Caption = 'N'#186'Proposta'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMISSAO'
        Title.Caption = 'Emiss'#227'o'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODPESSOA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 352
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 297
    Width = 604
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    object lblRegua: TLabel
      Left = 16
      Top = 16
      Width = 70
      Height = 13
      Caption = 'F6-Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object butConf: TBitBtn
      Left = 424
      Top = 8
      Width = 75
      Height = 25
      Caption = '&OK'
      Enabled = False
      ModalResult = 1
      TabOrder = 0
      OnClick = butConfClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object butCancel: TBitBtn
      Left = 504
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object dtpesq: TSQLDataSet
    SQLConnection = DmBanco.BancoDados
    CommandText = 
      'select '#13#10'O.CODPESSOA, '#13#10'P.NOME,'#13#10'O.EMISSAO, '#13#10'O.NUMPROPOSTA '#13#10' f' +
      'rom TPROPOST O, TPESSOA P'#13#10' where O.CODPESSOA = P.CODPESSOA'
    Params = <>
    Left = 136
    Top = 96
  end
  object dspPesq: TDataSetProvider
    DataSet = dtpesq
    Constraints = True
    Options = [poAllowCommandText]
    Left = 168
    Top = 96
  end
  object Pesq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesq'
    Left = 200
    Top = 96
    object PesqCODPESSOA: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODPESSOA'
    end
    object PesqNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 70
    end
    object PesqEMISSAO: TSQLTimeStampField
      FieldName = 'EMISSAO'
    end
    object PesqNUMPROPOSTA: TFloatField
      FieldName = 'NUMPROPOSTA'
    end
  end
  object dsPesq: TDataSource
    DataSet = Pesq
    OnStateChange = dsPesqStateChange
    Left = 232
    Top = 96
  end
end
