object fItensOrdem: TfItensOrdem
  Left = 257
  Top = 279
  Caption = 'Itens da Ordem'
  ClientHeight = 510
  ClientWidth = 835
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
  object Panel1: TPanel
    Left = 0
    Top = 469
    Width = 835
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    object butSalvar: TBitBtn
      Left = 456
      Top = 8
      Width = 81
      Height = 25
      Hint = 'F8'
      CustomHint = BalloonHint1
      Caption = '&Salvar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = butSalvarClick
    end
    object butNovo: TBitBtn
      Left = 543
      Top = 8
      Width = 81
      Height = 25
      Hint = 'INSERT'
      CustomHint = BalloonHint1
      Caption = '&Novo'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = butNovoClick
    end
    object butSair: TBitBtn
      Left = 718
      Top = 8
      Width = 81
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
      TabOrder = 3
      OnClick = butSairClick
    end
    object btnEtiqueta: TBitBtn
      Left = 631
      Top = 8
      Width = 81
      Height = 25
      Caption = '&Etiquetas'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFCB6601CB6601CB6601CB6601CB6601CB6601CB66
        01CB6601CB6601CB6601CB6601CB6601CB6601CB6601CB6601CB6601CB6601CB
        6601FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCB6601FFFFFFFFFBF4FFF7EB
        FFF3E3FFEFDAFFEBD1FFE7C9FFE4C2FFE1BBFFDEB6FFDCB3FFDCB3FFDCB3FFDC
        B3FFDCB3FFE5C0CB6601FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCB6601FF
        FFFFFEF9F1FFF4EAFEF1E2FFEEDAFEEAD2FEE6C9FEE2C2FEDEBAFEDBB4FED9AF
        FED7ABFED7ABFED7ABFED7ABFFE0B8CB6601FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFCB6601FFFFFFFFFCF7FFF8F1FFF5EBFEF1E3FFEEDBFEEAD2FEE6CAFE
        E2C2FEDEBBFEDBB4FED9AEFED7ABFED7ABFED7ABFFE0B8CB6601FF00FFFF00FF
        FF00FFCB6601CB6601CB6601CB6601FFFFFFFFFEFDFFFCF7FFF9F2FFF5EBFEF2
        E3FEEEDBFFEAD3FEE6CBFEE2C2FEDEBBFEDCB5FED9AFFED7ACFED7ABFFE0B8CB
        6601FF00FFFF00FFFF00FFCB6601FFFFFFFFFBF4CB6601FFFFFFFFFFFFFFFEFD
        FFFCF8FFF9F3FFF6EBFEF3E3FFEEDBFFEAD3FFE6CBFFE2C4FEDFBCFEDCB5FED9
        AFFED8ACFFE0B8CB6601FF00FFFF00FFFF00FFCB6601FFFFFFFEF9F1CB6601FF
        FFFFFFFFFFFFFFFFFFFEFEFFFCF8FEF9F3FEF7EDFFF2E4FEEFDCFEEBD3FFE7CC
        FFE2C3FEDEBCFFDDB5FED9B0FFE0B9CB6601FF00FFFF00FFFF00FFCB6601FFFF
        FFFFFCF7CB6601FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFCF9FFFAF4FFF6ECFF
        F2E4FEEEDCFFEBD4FEE6CCFFE3C4FEE0BDFFDCB6FFE2BECB6601CB6601CB6601
        CB6601CB6601FFFFFFFFFEFDCB6601FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
        FEFFFDFAFFF9F4FEF6EDFEF2E5FEEFDEFFECD5FFE7CCFEE3C5FFDFBDFFE5C4CB
        6601CB6601FFFFFFFFFBF4CB6601FFFFFFFFFFFFCB6601FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFEFFFCFAFFFAF4FFF6EDFFF3E6FFEFDEFEEBD5FEE7
        CEFEE4C5FFE8CBCB6601CB6601FFFFFFFEF9F1CB6601FFFFFFFFFFFFCB6601FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFAFFF9F4FFF6EE
        FFF3E7FEF0DEFEEBD6FEE8CEFFECD4CB6601CB6601FFFFFFFFFCF7CB6601FFFF
        FFFFFFFFCB6601FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FEFEFFFDFAFFFAF4FFF7EEFFF3E6FEF0DFFEECD7FFF1DDCB6601CB6601FFFFFF
        FFFEFDCB6601FFFFFFFFFFFFCB6601FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFBF4FFFFFCCB
        6601CB6601FFFFFFFFFFFFCB6601FFFFFFFFFFFFCB6601F3BE7AF2BD7AF2BD7A
        F2BD7AF2BD7AF2BD7AF2BD7AF2BD7AF2BD7AF2BD7AF2BC79F2BC77F2BB74F2B9
        71F2B76EF3BB72CB6601CB6601FFFFFFFFFFFFCB6601FFFFFFFFFFFFCD6600D1
        6300D06300D06300D06300D06300D06300D06300D06300D06300D06300D06300
        D06300D06300D06300D06400D16400CD6700CB6601FFFFFFFFFFFFCB6601FFFF
        FFFFFFFFFFFFFFCB6601CB6601CB6601CB6601CB6601CB6601CB6601CB6601CB
        6601CB6601CB6601CB6601CB6601CB6601CB6601CB6601FF00FFCB6601FFFFFF
        FFFFFFCB6601FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFBF4FFFFFCCB6601FF00FFFF00FFFF
        00FFCB6601FFFFFFFFFFFFCB6601F3BE7AF2BD7AF2BD7AF2BD7AF2BD7AF2BD7A
        F2BD7AF2BD7AF2BD7AF2BD7AF2BC79F2BC77F2BB74F2B971F2B76EF3BB72CB66
        01FF00FFFF00FFFF00FFCB6601FFFFFFFFFFFFCD6600D16300D06300D06300D0
        6300D06300D06300D06300D06300D06300D06300D06300D06300D06300D06300
        D06400D16400CD6700FF00FFFF00FFFF00FFCB6601FFFFFFFFFFFFFFFFFFCB66
        01CB6601CB6601CB6601CB6601CB6601CB6601CB6601CB6601CB6601CB6601CB
        6601CB6601CB6601CB6601CB6601FF00FFFF00FFFF00FFFF00FFCB6601FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFDFFFBF4FFFFFCCB6601FF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFCB6601F3BE7AF2BD7AF2BD7AF2BD7AF2BD7AF2BD7AF2BD7AF2BD7AF2BD7A
        F2BD7AF2BC79F2BC77F2BB74F2B971F2B76EF3BB72CB6601FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFCD6600D16300D06300D06300D06300D06300D06300D0
        6300D06300D06300D06300D06300D06300D06300D06300D06400D16400CD6700
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCB6601CB6601CB6601CB66
        01CB6601CB6601CB6601CB6601CB6601CB6601CB6601CB6601CB6601CB6601CB
        6601CB6601FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 2
      OnClick = btnEtiquetaClick
    end
  end
  object pnlCodBarras: TPanel
    Left = 0
    Top = 0
    Width = 835
    Height = 58
    Align = alTop
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label37: TLabel
      Left = 8
      Top = 39
      Width = 98
      Height = 13
      Caption = 'C'#243'digo de Barras'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblCliente: TLabel
      Left = 8
      Top = 12
      Width = 40
      Height = 13
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label38: TLabel
      Left = 591
      Top = 12
      Width = 55
      Height = 13
      Caption = 'N'#186' Ordem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label39: TLabel
      Left = 591
      Top = 39
      Width = 26
      Height = 13
      Caption = 'Selo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtCodBarras: TEdit
      Left = 112
      Top = 31
      Width = 473
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnKeyDown = edtCodBarrasKeyDown
    end
    object edtNomePessoa: TEdit
      Left = 168
      Top = 6
      Width = 417
      Height = 21
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object edtNumOrdem: TEdit
      Left = 652
      Top = 4
      Width = 67
      Height = 21
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 111
      Top = 6
      Width = 49
      Height = 21
      TabStop = False
      Color = clSilver
      DataField = 'CODPESSOA'
      DataSource = dsOrdem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object edtNumSelo: TEdit
      Left = 652
      Top = 31
      Width = 173
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 5
      OnKeyDown = edtNumSeloKeyDown
    end
    object butImprimir: TBitBtn
      Left = 725
      Top = 2
      Width = 100
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
      TabStop = False
      OnClick = butImprimirClick
    end
  end
  object pnlCorpo: TPanel
    Left = 0
    Top = 58
    Width = 835
    Height = 411
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    object Label3: TLabel
      Left = 625
      Top = 8
      Width = 47
      Height = 13
      Caption = 'N'#186' Cliente'
    end
    object Label22: TLabel
      Left = 744
      Top = 8
      Width = 48
      Height = 13
      Caption = 'Selo Atual'
    end
    object Label1: TLabel
      Left = 519
      Top = 8
      Width = 57
      Height = 13
      Caption = 'Capacidade'
    end
    object Label4: TLabel
      Left = 240
      Top = 8
      Width = 30
      Height = 13
      Caption = 'Marca'
    end
    object Label2: TLabel
      Left = 7
      Top = 9
      Width = 24
      Height = 13
      Caption = 'S'#233'rie'
    end
    object Label5: TLabel
      Left = 688
      Top = 8
      Width = 40
      Height = 13
      Caption = 'Ano Fab'
    end
    object butMarca: TSpeedButton
      Left = 475
      Top = 24
      Width = 18
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
    object Label21: TLabel
      Left = 8
      Top = 148
      Width = 48
      Height = 13
      Caption = 'Resultado'
    end
    object Label6: TLabel
      Left = 8
      Top = 52
      Width = 62
      Height = 13
      Caption = 'N'#237'vel Manut.'
    end
    object Label7: TLabel
      Left = 8
      Top = 192
      Width = 55
      Height = 13
      Caption = 'Agente Ext.'
    end
    object Label12: TLabel
      Left = 280
      Top = 192
      Width = 90
      Height = 13
      Cursor = crArrow
      Caption = 'Lote/Complemento'
    end
    object Label23: TLabel
      Left = 440
      Top = 232
      Width = 32
      Height = 13
      Caption = 'Compl.'
    end
    object Label29: TLabel
      Left = 8
      Top = 232
      Width = 62
      Height = 13
      Caption = 'Responsavel'
    end
    object Label27: TLabel
      Left = 528
      Top = 192
      Width = 55
      Height = 13
      Caption = 'Estoque P'#243
    end
    object Label24: TLabel
      Left = 440
      Top = 192
      Width = 23
      Height = 13
      Caption = 'Qtde'
    end
    object Label8: TLabel
      Left = 280
      Top = 152
      Width = 68
      Height = 13
      Caption = 'Vencto Carga:'
    end
    object Label9: TLabel
      Left = 528
      Top = 152
      Width = 63
      Height = 13
      Caption = 'Conserva'#231#227'o'
    end
    object Label28: TLabel
      Left = 608
      Top = 152
      Width = 55
      Height = 13
      Caption = 'Cod.Projeto'
    end
    object Label10: TLabel
      Left = 360
      Top = 152
      Width = 64
      Height = 13
      Caption = 'Vencto Teste'
    end
    object Label26: TLabel
      Left = 440
      Top = 152
      Width = 54
      Height = 13
      Caption = 'Data Carga'
    end
    object butResultado: TSpeedButton
      Left = 227
      Top = 164
      Width = 17
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
      OnClick = butResultadoClick
    end
    object butManutencao: TSpeedButton
      Left = 227
      Top = 69
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
      OnClick = butManutencaoClick
    end
    object butAgente: TSpeedButton
      Left = 227
      Top = 208
      Width = 17
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
    object butResponsavel: TSpeedButton
      Left = 227
      Top = 248
      Width = 17
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
      OnClick = butResponsavelClick
    end
    object Label11: TLabel
      Left = 280
      Top = 232
      Width = 21
      Height = 13
      Caption = 'Lote'
    end
    object Label25: TLabel
      Left = 256
      Top = 80
      Width = 198
      Height = 13
      Caption = 'N'#237'vel Reteste para acessar estes campos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label30: TLabel
      Left = 376
      Top = 48
      Width = 24
      Height = 13
      Caption = 'Peso'
    end
    object Label31: TLabel
      Left = 480
      Top = 48
      Width = 73
      Height = 13
      Caption = 'Tipo BC/ABC...'
    end
    object SpeedButton1: TSpeedButton
      Left = 587
      Top = 24
      Width = 18
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
      OnClick = SpeedButton1Click
    end
    object Label33: TLabel
      Left = 104
      Top = 8
      Width = 67
      Height = 13
      Caption = 'Pesquisa Selo'
    end
    object butBuscarSelo: TSpeedButton
      Left = 747
      Top = 48
      Width = 67
      Height = 22
      Hint = 'Pesquisa Cadastro'
      Caption = 'Buscar'
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
      OnClick = butBuscarSeloClick
    end
    object Label34: TLabel
      Left = 8
      Top = 275
      Width = 85
      Height = 13
      Caption = 'Perda de Massa%'
    end
    object Label35: TLabel
      Left = 8
      Top = 322
      Width = 68
      Height = 13
      Caption = 'Norma Cilindro'
    end
    object Label36: TLabel
      Left = 8
      Top = 366
      Width = 70
      Height = 13
      Caption = 'Data Inspe'#231#227'o'
    end
    object Label40: TLabel
      Left = 99
      Top = 366
      Width = 81
      Height = 13
      Caption = 'Vencto Inspe'#231#227'o'
    end
    object Serie: TDBEdit
      Left = 8
      Top = 24
      Width = 78
      Height = 21
      DataField = 'SERIE'
      DataSource = dsCad
      TabOrder = 0
      OnEnter = SerieEnter
      OnExit = SerieExit
    end
    object CodMarca: TDBEdit
      Left = 240
      Top = 24
      Width = 42
      Height = 21
      DataField = 'CODMARCA'
      DataSource = dsCad
      TabOrder = 2
      OnEnter = CodMarcaEnter
      OnExit = CodMarcaExit
    end
    object DescCapacidade: TDBEdit
      Left = 520
      Top = 24
      Width = 62
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CAPACIDADE'
      DataSource = dsCad
      TabOrder = 4
      OnExit = DescCapacidadeExit
    end
    object AnoFab: TMaskEdit
      Left = 688
      Top = 24
      Width = 39
      Height = 21
      EditMask = '####'
      MaxLength = 4
      TabOrder = 6
      Text = '    '
    end
    object Selo: TDBEdit
      Left = 744
      Top = 24
      Width = 77
      Height = 21
      DataField = 'NUMSELO'
      DataSource = dsCad
      TabOrder = 7
    end
    object DBEdit7: TDBEdit
      Left = 625
      Top = 24
      Width = 53
      Height = 21
      DataField = 'NUMERO'
      DataSource = dsCad
      TabOrder = 5
    end
    object DescMarca: TEdit
      Left = 288
      Top = 24
      Width = 183
      Height = 21
      CharCase = ecUpperCase
      Color = clSilver
      TabOrder = 3
      OnEnter = DescMarcaEnter
      OnExit = DescMarcaExit
    end
    object CodResultado: TDBEdit
      Left = 8
      Top = 164
      Width = 37
      Height = 21
      DataField = 'CODRESULTADO'
      DataSource = dsCad
      TabOrder = 13
      OnEnter = CodResultadoEnter
      OnExit = CodResultadoExit
    end
    object GrpSelo: TGroupBox
      Left = 607
      Top = 195
      Width = 102
      Height = 41
      Caption = 'Trocar Selo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 25
      OnExit = GrpSeloExit
      object RSim: TRadioButton
        Left = 8
        Top = 16
        Width = 41
        Height = 17
        Caption = 'Sim'
        TabOrder = 0
      end
      object RNao: TRadioButton
        Left = 56
        Top = 16
        Width = 41
        Height = 17
        Caption = 'N'#227'o'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object CodManutencao: TDBEdit
      Left = 8
      Top = 69
      Width = 42
      Height = 21
      DataField = 'CODNIVEL'
      DataSource = dsCad
      TabOrder = 10
      OnEnter = CodManutencaoEnter
      OnExit = CodManutencaoExit
    end
    object CodAgente: TDBEdit
      Left = 8
      Top = 208
      Width = 37
      Height = 21
      DataField = 'CODAGENTE'
      DataSource = dsCad
      TabOrder = 20
      OnEnter = CodAgenteEnter
      OnExit = CodAgenteExit
    end
    object Qtde: TDBEdit
      Left = 440
      Top = 208
      Width = 69
      Height = 21
      DataField = 'QTDE'
      DataSource = dsCad
      TabOrder = 23
    end
    object DBEdit23: TDBEdit
      Left = 440
      Top = 248
      Width = 69
      Height = 21
      TabStop = False
      Color = clSilver
      DataField = 'COMPLEMENTO'
      DataSource = dsCad
      ReadOnly = True
      TabOrder = 29
    end
    object DBEdit24: TDBEdit
      Left = 280
      Top = 248
      Width = 141
      Height = 21
      TabStop = False
      Color = clSilver
      DataField = 'LOTE'
      DataSource = dsCad
      ReadOnly = True
      TabOrder = 28
    end
    object CodResp: TDBEdit
      Left = 8
      Top = 248
      Width = 35
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CODRESP'
      DataSource = dsCad
      TabOrder = 26
      OnEnter = CodRespEnter
      OnExit = CodRespExit
    end
    object Grade: TDBGrid
      Left = 280
      Top = 280
      Width = 429
      Height = 81
      TabStop = False
      DataSource = dsTabPeca
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 33
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = GradeDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'C_DESCPECA'
          Title.Caption = 'Pe'#231'a'
          Width = 144
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDE'
          Title.Caption = 'Qtde'
          Visible = True
        end>
    end
    object VenctoCarga: TMaskEdit
      Left = 280
      Top = 168
      Width = 61
      Height = 21
      EditMask = '##/####'
      MaxLength = 7
      TabOrder = 15
      Text = '  /    '
    end
    object DBEdit27: TDBEdit
      Left = 528
      Top = 168
      Width = 62
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CONSERVACAO'
      DataSource = dsCad
      TabOrder = 18
    end
    object CodProjeto: TDBEdit
      Left = 608
      Top = 168
      Width = 62
      Height = 21
      DataField = 'CODPROJETO'
      DataSource = dsCad
      TabOrder = 19
    end
    object VenctoTeste: TMaskEdit
      Left = 360
      Top = 168
      Width = 64
      Height = 21
      EditMask = '####'
      MaxLength = 4
      TabOrder = 16
      Text = '    '
    end
    object DBEdit29: TDBEdit
      Left = 440
      Top = 168
      Width = 73
      Height = 21
      DataField = 'DATACARREGAMENTO'
      DataSource = dsCad
      TabOrder = 17
    end
    object butExc: TBitBtn
      Left = 370
      Top = 367
      Width = 89
      Height = 25
      Caption = '&Excluir Pe'#231'a'
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
        03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
        33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
        0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
        3333333337FFF7F3333333333000003333333333377777333333}
      NumGlyphs = 2
      TabOrder = 36
      TabStop = False
      OnClick = butExcClick
    end
    object CboLote: TComboBox
      Left = 280
      Top = 208
      Width = 145
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 22
      OnChange = CboLoteChange
      OnExit = CboLoteExit
    end
    object QtdeEstoque: TEdit
      Left = 528
      Top = 208
      Width = 73
      Height = 21
      TabStop = False
      Color = clSilver
      ReadOnly = True
      TabOrder = 24
      Text = '0'
    end
    object butNovaPeca: TBitBtn
      Left = 280
      Top = 367
      Width = 81
      Height = 25
      Caption = 'Nova &Pe'#231'a'
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
      TabOrder = 35
      TabStop = False
      OnClick = butNovaPecaClick
    end
    object GroupBox2: TGroupBox
      Left = 608
      Top = 236
      Width = 104
      Height = 41
      Caption = 'Extintor Ativo:'
      TabOrder = 30
      object RExtSim: TRadioButton
        Left = 8
        Top = 16
        Width = 41
        Height = 17
        Caption = 'Sim'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RExtNao: TRadioButton
        Left = 56
        Top = 16
        Width = 41
        Height = 17
        Caption = 'N'#227'o'
        TabOrder = 1
      end
    end
    object DescResultado: TEdit
      Left = 56
      Top = 164
      Width = 169
      Height = 21
      CharCase = ecUpperCase
      Color = clSilver
      TabOrder = 14
      OnEnter = DescResultadoEnter
      OnExit = DescResultadoExit
    end
    object DescManutencao: TEdit
      Left = 56
      Top = 69
      Width = 169
      Height = 21
      CharCase = ecUpperCase
      Color = clSilver
      TabOrder = 11
      OnEnter = DescManutencaoEnter
      OnExit = DescManutencaoExit
    end
    object DescAgente: TEdit
      Left = 56
      Top = 208
      Width = 169
      Height = 21
      CharCase = ecUpperCase
      Color = clSilver
      TabOrder = 21
      OnEnter = DescAgenteEnter
      OnExit = DescAgenteExit
    end
    object DescResp: TEdit
      Left = 56
      Top = 248
      Width = 169
      Height = 21
      CharCase = ecUpperCase
      Color = clSilver
      TabOrder = 27
      OnEnter = DescRespEnter
      OnExit = DescRespExit
    end
    object Painel: TPanel
      Left = 8
      Top = 96
      Width = 705
      Height = 49
      BevelOuter = bvLowered
      TabOrder = 12
      object Label13: TLabel
        Left = 8
        Top = 4
        Width = 54
        Height = 13
        Caption = 'Press.Trab.'
      end
      object Label14: TLabel
        Left = 80
        Top = 4
        Width = 61
        Height = 13
        Caption = 'Press.Ensaio'
      end
      object Label15: TLabel
        Left = 152
        Top = 4
        Width = 49
        Height = 13
        Caption = 'Tara Atual'
      end
      object Label16: TLabel
        Left = 224
        Top = 4
        Width = 68
        Height = 13
        Caption = 'P.Cilind. Cheio'
      end
      object Label19: TLabel
        Left = 296
        Top = 4
        Width = 63
        Height = 13
        Caption = 'Volume Litros'
      end
      object Label18: TLabel
        Left = 371
        Top = 4
        Width = 58
        Height = 13
        Caption = 'Cap.M'#225'xima'
      end
      object Label17: TLabel
        Left = 448
        Top = 4
        Width = 24
        Height = 13
        Caption = 'DVM'
      end
      object Label20: TLabel
        Left = 523
        Top = 4
        Width = 22
        Height = 13
        Caption = 'DVP'
      end
      object Label32: TLabel
        Left = 600
        Top = 4
        Width = 59
        Height = 13
        Caption = 'Percentual%'
      end
      object DBEdit8: TDBEdit
        Left = 8
        Top = 20
        Width = 65
        Height = 21
        DataField = 'PRESTRABALHO'
        DataSource = dsCad
        TabOrder = 0
      end
      object DBEdit9: TDBEdit
        Left = 80
        Top = 20
        Width = 65
        Height = 21
        DataField = 'PRESENSAIO'
        DataSource = dsCad
        TabOrder = 1
      end
      object DBEdit10: TDBEdit
        Left = 152
        Top = 20
        Width = 65
        Height = 21
        DataField = 'PESOVAZIO'
        DataSource = dsCad
        TabOrder = 2
      end
      object DBEdit11: TDBEdit
        Left = 224
        Top = 20
        Width = 65
        Height = 21
        DataField = 'PESOCHEIO'
        DataSource = dsCad
        TabOrder = 3
      end
      object DBEdit12: TDBEdit
        Left = 296
        Top = 20
        Width = 65
        Height = 21
        DataField = 'VOLUME'
        DataSource = dsCad
        TabOrder = 4
      end
      object DBEdit13: TDBEdit
        Left = 370
        Top = 20
        Width = 65
        Height = 21
        DataField = 'CAPACMAXIMA'
        DataSource = dsCad
        TabOrder = 5
      end
      object DBEdit14: TDBEdit
        Left = 448
        Top = 20
        Width = 65
        Height = 21
        DataField = 'DVM'
        DataSource = dsCad
        TabOrder = 6
      end
      object DBEdit15: TDBEdit
        Left = 522
        Top = 20
        Width = 65
        Height = 21
        DataField = 'DVB'
        DataSource = dsCad
        TabOrder = 7
      end
      object DBEdit3: TDBEdit
        Left = 602
        Top = 20
        Width = 65
        Height = 21
        DataField = 'PERCENTUAL'
        DataSource = dsCad
        TabOrder = 8
      end
    end
    object edtPeso: TDBEdit
      Left = 376
      Top = 61
      Width = 81
      Height = 21
      TabStop = False
      DataField = 'PESO'
      DataSource = dsCad
      TabOrder = 8
    end
    object edtTipo: TDBEdit
      Left = 480
      Top = 61
      Width = 73
      Height = 21
      TabStop = False
      DataField = 'TIPO'
      DataSource = dsCad
      TabOrder = 9
    end
    object EditSelo: TEdit
      Left = 104
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 1
      OnEnter = EditSeloEnter
      OnExit = EditSeloExit
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 293
      Width = 85
      Height = 21
      DataField = 'PERC_PERDA_MASSA'
      DataSource = dsCad
      TabOrder = 31
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 339
      Width = 85
      Height = 21
      DataField = 'NORMA_CILINDRO'
      DataSource = dsCad
      TabOrder = 34
    end
    object edtDataInspecao: TDBEdit
      Left = 7
      Top = 379
      Width = 85
      Height = 21
      DataField = 'DATA_INSPECAO'
      DataSource = dsCad
      TabOrder = 37
    end
    object DBEdit5: TDBEdit
      Left = 98
      Top = 379
      Width = 85
      Height = 21
      DataField = 'VENCTO_INSPECAO'
      DataSource = dsCad
      TabOrder = 38
    end
    object dbrgrpLEGENDA: TDBRadioGroup
      Left = 111
      Top = 287
      Width = 114
      Height = 73
      Caption = 'Legenda'
      DataField = 'LEGENDA'
      DataSource = dsCad
      Items.Strings = (
        'Aprovado'
        'A Manuterir')
      TabOrder = 32
      Values.Strings = (
        'A'
        'M')
    end
  end
  object dsCad: TDataSource
    DataSet = DM.ItensOrdem
    OnStateChange = dsCadStateChange
    Left = 624
    Top = 352
  end
  object dsTabPeca: TDataSource
    DataSet = DM.TabPecas
    Left = 568
    Top = 352
  end
  object QOrdem: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CONTROLE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '   M.DESCMARCA,'
      '   R.DESCRESULTADO,'
      '   A.DESCAGENTE,'
      '   N.DESCMANUTENCAO,'
      '   P.NOME,'
      '   E.QTDEESTOQUE,'
      '   EXTRACT(YEAR FROM I.ANOFAB) AS ANOFAB,'
      '   EXTRACT(YEAR FROM I.DATACARGA) AS VENCTO_TESTE,'
      
        '   EXTRACT(MONTH FROM I.VENCIMENTO)||"/"||EXTRACT(YEAR FROM I.VE' +
        'NCIMENTO) AS VENCTO_CARGA'
      'from TIORDEM I'
      'left join TMARCA M on I.CODMARCA = M.CODMARCA'
      'left join TRESULT R on I.CODRESULTADO = R.CODRESULTADO'
      'left join TAGENTE A on I.CODAGENTE = A.CODAGENTE'
      'left join TMANUT N on I.CODNIVEL = N.CODMANUTENCAO'
      'left join TRESP P on I.CODRESP = P.CODRESP'
      'left join TESTLOTE E on I.LOTERESUMIDO = E.LOTERESUMIDO'
      'where I.CONTROLE = :CONTROLE ')
    SQLConnection = DmBanco.BancoDados
    Left = 264
    Top = 256
    object QOrdemDESCMARCA: TStringField
      FieldName = 'DESCMARCA'
      Size = 30
    end
    object QOrdemDESCRESULTADO: TStringField
      FieldName = 'DESCRESULTADO'
      Size = 40
    end
    object QOrdemDESCAGENTE: TStringField
      FieldName = 'DESCAGENTE'
      Size = 40
    end
    object QOrdemDESCMANUTENCAO: TStringField
      FieldName = 'DESCMANUTENCAO'
      Size = 40
    end
    object QOrdemNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object QOrdemANOFAB: TSmallintField
      FieldName = 'ANOFAB'
    end
    object QOrdemVENCTO_TESTE: TSmallintField
      FieldName = 'VENCTO_TESTE'
    end
    object QOrdemVENCTO_CARGA: TStringField
      FieldName = 'VENCTO_CARGA'
      Size = 13
    end
    object QOrdemQTDEESTOQUE: TFloatField
      FieldName = 'QTDEESTOQUE'
    end
  end
  object Qativo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODPESSOA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SERIE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select SITUACAO from TCLIEXT'
      ' where CODPESSOA = :CODPESSOA'
      ' and SERIE = :SERIE')
    SQLConnection = DmBanco.BancoDados
    Left = 256
    Top = 208
    object QativoSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
  end
  object dtCliExt: TSQLDataSet
    CommandText = 
      'select'#13#10' C.CODMARCA,'#13#10'  (select M.DESCMARCA from TMARCA M where ' +
      'C.CODMARCA =  M.CODMARCA) as DESCMARCA,'#13#10' C.CODCAPACIDADE,'#13#10' C.C' +
      'APACIDADE,'#13#10' C.NUMERO,'#13#10' C.DATACARGA,'#13#10' extract(year from C.ANOF' +
      'AB) as ANOFAB,'#13#10' extract(year from C.VENCIMENTO) as VENCTO_TESTE' +
      ','#13#10' extract(month from C.VENCTOCARGA)||'#39'/'#39'||extract(year from   ' +
      ' C.VENCTOCARGA) as VENCTO_CARGA,'#13#10' C.SELO,'#13#10' C.PESO,'#13#10' C.SERIE,'#13 +
      #10' C.TIPO,'#13#10' C.CONSERVACAO,'#13#10' C.LOTERESUMIDO,'#13#10' C.SITUACAO'#13#10' from' +
      ' TCLIEXT C'#13#10' where C.CODPESSOA = :CODPESSOA'#13#10' and C.SERIE = :SER' +
      'IE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODPESSOA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SERIE'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 176
    Top = 280
    object dtCliExtCODMARCA: TFloatField
      FieldName = 'CODMARCA'
    end
    object dtCliExtDESCMARCA: TStringField
      FieldName = 'DESCMARCA'
      Size = 30
    end
    object dtCliExtCAPACIDADE: TStringField
      FieldName = 'CAPACIDADE'
      Size = 10
    end
    object dtCliExtNUMERO: TFloatField
      FieldName = 'NUMERO'
    end
    object dtCliExtANOFAB: TSmallintField
      FieldName = 'ANOFAB'
    end
    object dtCliExtVENCTO_TESTE: TSmallintField
      FieldName = 'VENCTO_TESTE'
    end
    object dtCliExtVENCTO_CARGA: TStringField
      FieldName = 'VENCTO_CARGA'
      Size = 13
    end
    object dtCliExtSELO: TFloatField
      FieldName = 'SELO'
    end
    object dtCliExtCONSERVACAO: TStringField
      FieldName = 'CONSERVACAO'
      Size = 6
    end
    object dtCliExtSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object dtCliExtDATACARGA: TSQLTimeStampField
      FieldName = 'DATACARGA'
    end
    object dtCliExtLOTERESUMIDO: TStringField
      FieldName = 'LOTERESUMIDO'
      Size = 30
    end
    object dtCliExtPESO: TFloatField
      FieldName = 'PESO'
    end
    object dtCliExtTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object dtCliExtSERIE: TStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object dtCliExtCODCAPACIDADE: TIntegerField
      FieldName = 'CODCAPACIDADE'
    end
  end
  object QConsultaSelo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODPESSOA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SELO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      ' C.CODPESSOA,'
      ' C.SERIE'
      ' from TCLIEXT C'
      ' where C.CODPESSOA = :CODPESSOA'
      ' and C.SELO = :SELO')
    SQLConnection = DmBanco.BancoDados
    Left = 232
    Top = 232
    object QConsultaSeloCODPESSOA: TFloatField
      FieldName = 'CODPESSOA'
    end
    object QConsultaSeloSERIE: TStringField
      FieldName = 'SERIE'
      Size = 10
    end
  end
  object QAge: TSQLDataSet
    CommandText = 'select DESCAGENTE from TAGENTE'#13#10' where CODAGENTE = :CODAGENTE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'CODAGENTE'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 752
    Top = 208
    object QAgeDESCAGENTE: TStringField
      FieldName = 'DESCAGENTE'
      Size = 40
    end
  end
  object QInativo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODPESSOA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SERIE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select '
      ' SITUACAO'
      'from TCLIEXT '
      '  where CODPESSOA = :CODPESSOA'
      '  and SERIE = :SERIE')
    SQLConnection = DmBanco.BancoDados
    Left = 736
    Top = 168
    object QInativoSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
  end
  object BalloonHint1: TBalloonHint
    Left = 744
    Top = 280
  end
  object dsOrdem: TDataSource
    DataSet = DM.Ordem
    Left = 680
    Top = 352
  end
end
