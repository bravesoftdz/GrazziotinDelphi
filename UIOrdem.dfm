object fIOrdem: TfIOrdem
  Left = 192
  Top = 114
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Relat'#243'rio de Ordens de Servi'#231'o'
  ClientHeight = 266
  ClientWidth = 475
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 8
    Top = 40
    Width = 32
    Height = 13
    Caption = 'Cliente'
  end
  object Label6: TLabel
    Left = 8
    Top = 64
    Width = 26
    Height = 13
    Caption = 'Selos'
  end
  object Label7: TLabel
    Left = 8
    Top = 112
    Width = 57
    Height = 13
    Caption = 'Capacidade'
  end
  object Label9: TLabel
    Left = 8
    Top = 160
    Width = 30
    Height = 13
    Caption = 'Marca'
  end
  object Label10: TLabel
    Left = 8
    Top = 184
    Width = 34
    Height = 13
    Caption = 'Agente'
  end
  object Label11: TLabel
    Left = 176
    Top = 64
    Width = 16
    Height = 13
    Caption = 'At'#233
  end
  object Label1: TLabel
    Left = 8
    Top = 17
    Width = 57
    Height = 13
    Caption = 'Emiss'#227'o de:'
  end
  object Label2: TLabel
    Left = 169
    Top = 17
    Width = 19
    Height = 13
    Caption = 'At'#233':'
  end
  object butPessoa: TSpeedButton
    Left = 429
    Top = 32
    Width = 21
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
  object butMarca: TSpeedButton
    Left = 429
    Top = 152
    Width = 21
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
    OnClick = butMarcaClick
  end
  object butAgente: TSpeedButton
    Left = 429
    Top = 176
    Width = 21
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
    OnClick = butAgenteClick
  end
  object Label3: TLabel
    Left = 8
    Top = 136
    Width = 24
    Height = 13
    Caption = 'S'#233'rie'
  end
  object Label4: TLabel
    Left = 8
    Top = 88
    Width = 24
    Height = 13
    Caption = 'Nivel'
  end
  object Label8: TLabel
    Left = 112
    Top = 88
    Width = 16
    Height = 13
    Caption = 'At'#233
  end
  object CodPessoa: TEdit
    Left = 71
    Top = 32
    Width = 51
    Height = 21
    TabOrder = 2
    OnEnter = CodPessoaEnter
    OnExit = CodPessoaExit
  end
  object Nome: TEdit
    Left = 136
    Top = 32
    Width = 291
    Height = 21
    CharCase = ecUpperCase
    Color = clSilver
    TabOrder = 3
    OnEnter = NomeEnter
    OnExit = NomeExit
  end
  object SeloIni: TEdit
    Left = 71
    Top = 56
    Width = 89
    Height = 21
    TabOrder = 4
  end
  object SeloFin: TEdit
    Left = 200
    Top = 56
    Width = 89
    Height = 21
    TabOrder = 5
  end
  object Capacidade: TEdit
    Left = 71
    Top = 104
    Width = 115
    Height = 21
    TabOrder = 8
  end
  object Serie: TEdit
    Left = 71
    Top = 128
    Width = 115
    Height = 21
    TabOrder = 9
  end
  object CodMarca: TEdit
    Left = 71
    Top = 152
    Width = 51
    Height = 21
    TabOrder = 10
    OnEnter = CodMarcaEnter
    OnExit = CodMarcaExit
  end
  object DescMarca: TEdit
    Left = 136
    Top = 152
    Width = 291
    Height = 21
    CharCase = ecUpperCase
    Color = clSilver
    TabOrder = 11
    OnEnter = DescMarcaEnter
    OnExit = DescMarcaExit
  end
  object CodAgente: TEdit
    Left = 71
    Top = 176
    Width = 51
    Height = 21
    TabOrder = 12
    OnEnter = CodAgenteEnter
    OnExit = CodAgenteExit
  end
  object DescAgente: TEdit
    Left = 136
    Top = 176
    Width = 291
    Height = 21
    CharCase = ecUpperCase
    Color = clSilver
    TabOrder = 13
    OnEnter = DescAgenteEnter
    OnExit = DescAgenteExit
  end
  object DataIni: TMaskEdit
    Left = 71
    Top = 9
    Width = 90
    Height = 22
    EditMask = '##/##/####'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
    TabOrder = 0
    Text = '  /  /    '
  end
  object DataFin: TMaskEdit
    Left = 199
    Top = 9
    Width = 90
    Height = 22
    EditMask = '##/##/####'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
    TabOrder = 1
    Text = '  /  /    '
  end
  object Panel1: TPanel
    Left = 0
    Top = 225
    Width = 475
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 14
    object butImprimir: TBitBtn
      Left = 112
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      TabOrder = 0
      OnClick = butImprimirClick
    end
    object butSair: TBitBtn
      Left = 272
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Fechar'
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
      TabOrder = 2
      OnClick = butSairClick
    end
    object butResumo: TBitBtn
      Left = 192
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Resumo'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      TabOrder = 1
      OnClick = butResumoClick
    end
  end
  object NivelIni: TMaskEdit
    Left = 71
    Top = 80
    Width = 32
    Height = 21
    EditMask = '###;0;_'
    MaxLength = 3
    TabOrder = 6
    Text = '0'
  end
  object NivelFin: TMaskEdit
    Left = 152
    Top = 80
    Width = 32
    Height = 21
    EditMask = '###;0;_'
    MaxLength = 3
    TabOrder = 7
    Text = '999'
  end
  object Cad: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 368
    Top = 72
    Data = {
      400000009619E0BD010000001800000002000000000003000000400004544950
      4F01004900000001000557494454480200020005000451544445080004000000
      00000000}
    object CadTIPO: TStringField
      FieldName = 'TIPO'
      Size = 5
    end
    object CadQTDE: TFloatField
      FieldName = 'QTDE'
    end
  end
end
