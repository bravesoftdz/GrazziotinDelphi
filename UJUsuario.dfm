object fJUsuario: TfJUsuario
  Left = 394
  Top = 143
  BorderStyle = bsDialog
  Caption = 'Pesquisa de Usu'#225'rios'
  ClientHeight = 310
  ClientWidth = 329
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 269
    Width = 329
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object butOk: TBitBtn
      Left = 56
      Top = 5
      Width = 89
      Height = 30
      Caption = '&OK'
      Enabled = False
      TabOrder = 0
      OnClick = butOkClick
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
    object butFechar: TBitBtn
      Left = 154
      Top = 5
      Width = 92
      Height = 30
      Caption = '&Fechar'
      TabOrder = 1
      OnClick = butFecharClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
  end
  object Grade: TDBGrid
    Left = 0
    Top = 0
    Width = 329
    Height = 269
    Align = alClient
    DataSource = dsCadUsuario
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = GradeDblClick
    OnKeyDown = GradeKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GERENTE'
        Title.Caption = 'Gerente'
        Visible = True
      end>
  end
  object QCadUsuario: TSQLQuery
    SQLConnection = DmBanco.BancoDados
    Params = <>
    SQL.Strings = (
      'select'
      '   NOME,'
      '   GERENTE'
      'from CADUSUARIO'
      '   order by NOME')
    Left = 144
    Top = 56
  end
  object dspCadUsuario: TDataSetProvider
    DataSet = QCadUsuario
    Constraints = True
    UpdateMode = upWhereKeyOnly
    Left = 184
    Top = 56
  end
  object CadUsuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCadUsuario'
    Left = 224
    Top = 56
    object CadUsuarioNOME: TStringField
      FieldName = 'NOME'
      Required = True
    end
    object CadUsuarioGERENTE: TStringField
      FieldName = 'GERENTE'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dsCadUsuario: TDataSource
    DataSet = CadUsuario
    OnStateChange = dsCadUsuarioStateChange
    Left = 280
    Top = 56
  end
end
