object fIVencimento: TfIVencimento
  Left = 114
  Top = 160
  Caption = 'Relat'#243'rio de Vencimento de Extintores'
  ClientHeight = 188
  ClientWidth = 578
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
  object Label1: TLabel
    Left = 152
    Top = 24
    Width = 65
    Height = 13
    Caption = 'Vencto Carga'
  end
  object Label2: TLabel
    Left = 304
    Top = 24
    Width = 16
    Height = 13
    Caption = 'At'#233
  end
  object Label8: TLabel
    Left = 152
    Top = 48
    Width = 32
    Height = 13
    Caption = 'Cliente'
  end
  object Label3: TLabel
    Left = 152
    Top = 72
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object lblAtivo: TLabel
    Left = 152
    Top = 120
    Width = 29
    Height = 13
    Caption = 'Ativos'
  end
  object butPessoa: TSpeedButton
    Left = 547
    Top = 40
    Width = 22
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
  object butCidade: TSpeedButton
    Left = 547
    Top = 64
    Width = 22
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
    OnClick = butCidadeClick
  end
  object Label5: TLabel
    Left = 152
    Top = 96
    Width = 46
    Height = 13
    Caption = 'Vendedor'
  end
  object butVendedor: TSpeedButton
    Left = 547
    Top = 88
    Width = 22
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
    OnClick = butVendedorClick
  end
  object Dataini: TMaskEdit
    Left = 224
    Top = 16
    Width = 67
    Height = 21
    EditMask = '##/##/####'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
  end
  object Datafin: TMaskEdit
    Left = 328
    Top = 16
    Width = 69
    Height = 21
    EditMask = '##/##/####'
    MaxLength = 10
    TabOrder = 2
    Text = '  /  /    '
  end
  object CodPessoa: TMaskEdit
    Left = 224
    Top = 40
    Width = 46
    Height = 21
    EditMask = '######;0;_'
    MaxLength = 6
    TabOrder = 3
    Text = ''
    OnEnter = CodPessoaEnter
    OnExit = CodPessoaExit
  end
  object Nome: TEdit
    Left = 280
    Top = 40
    Width = 265
    Height = 21
    CharCase = ecUpperCase
    Color = clSilver
    TabOrder = 4
    OnEnter = NomeEnter
    OnExit = NomeExit
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 135
    Height = 73
    Caption = 'Relat'#243'rios'
    TabOrder = 0
    object RGeral: TRadioButton
      Left = 3
      Top = 25
      Width = 57
      Height = 17
      Caption = 'Geral'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object Rcidade: TRadioButton
      Left = 3
      Top = 48
      Width = 121
      Height = 17
      Caption = 'Resumo por Cidade'
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 147
    Width = 578
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 10
    object butImprimir: TBitBtn
      Left = 328
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 0
      OnClick = butImprimirClick
    end
    object butSair: TBitBtn
      Left = 488
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 2
      OnClick = butSairClick
    end
    object butResumo: TBitBtn
      Left = 408
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Resumo'
      TabOrder = 1
      OnClick = butResumoClick
    end
  end
  object CodCidade: TMaskEdit
    Left = 224
    Top = 64
    Width = 47
    Height = 21
    EditMask = '######;0;_'
    MaxLength = 6
    TabOrder = 5
    Text = ''
    OnEnter = CodCidadeEnter
    OnExit = CodCidadeExit
  end
  object DescCidade: TEdit
    Left = 280
    Top = 64
    Width = 265
    Height = 21
    CharCase = ecUpperCase
    Color = clSilver
    TabOrder = 6
    OnEnter = DescCidadeEnter
    OnExit = DescCidadeExit
  end
  object CboAtivo: TComboBox
    Left = 224
    Top = 112
    Width = 112
    Height = 21
    TabOrder = 9
    Text = 'Ativos'
    Items.Strings = (
      'Ativos'
      'Inativos'
      'Todos')
  end
  object CodVendedor: TMaskEdit
    Left = 224
    Top = 88
    Width = 48
    Height = 21
    EditMask = '######;0;_'
    MaxLength = 6
    TabOrder = 7
    Text = ''
    OnEnter = CodVendedorEnter
    OnExit = CodVendedorExit
  end
  object DescVendedor: TEdit
    Left = 280
    Top = 88
    Width = 265
    Height = 21
    CharCase = ecUpperCase
    Color = clSilver
    TabOrder = 8
    OnEnter = DescVendedorEnter
    OnExit = DescVendedorExit
  end
  object chkInspecao: TCheckBox
    Left = 16
    Top = 95
    Width = 97
    Height = 17
    Caption = 'Inspe'#231#227'o'
    TabOrder = 11
    OnClick = chkInspecaoClick
  end
end
