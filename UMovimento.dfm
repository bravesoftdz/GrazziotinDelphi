object fMovimento: TfMovimento
  Left = 110
  Top = 86
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Movimento Manual do Estoque'
  ClientHeight = 415
  ClientWidth = 583
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
  object Grade: TDBGrid
    Left = 0
    Top = 49
    Width = 583
    Height = 316
    Align = alClient
    DataSource = dsCad
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = GradeDblClick
    OnEnter = GradeEnter
    OnExit = GradeExit
    OnKeyDown = GradeKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Caption = 'Data'
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOTERESUMIDO'
        Title.Caption = 'Lote'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE'
        Title.Caption = 'Qtde'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TEXTO'
        Title.Caption = 'Texto'
        Width = 171
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Title.Caption = 'E/S'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 365
    Width = 583
    Height = 50
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    object butExcluir: TBitBtn
      Left = 120
      Top = 16
      Width = 100
      Height = 25
      Caption = '&Excluir Item'
      TabOrder = 0
      OnClick = butExcluirClick
    end
    object butExcluirTudo: TBitBtn
      Left = 226
      Top = 16
      Width = 100
      Height = 25
      Caption = 'Excluir &Tudo'
      TabOrder = 1
      OnClick = butExcluirTudoClick
    end
    object butSair: TBitBtn
      Left = 328
      Top = 16
      Width = 100
      Height = 25
      Caption = 'Sai&r'
      TabOrder = 2
      OnClick = butSairClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 583
    Height = 49
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Data de:'
    end
    object Label2: TLabel
      Left = 88
      Top = 8
      Width = 19
      Height = 13
      Caption = 'At'#233':'
    end
    object DataIni: TMaskEdit
      Left = 8
      Top = 24
      Width = 70
      Height = 21
      EditMask = '##/##/####'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
      OnExit = DataIniExit
    end
    object DataFin: TMaskEdit
      Left = 88
      Top = 24
      Width = 72
      Height = 21
      EditMask = '##/##/####'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
      OnExit = DataFinExit
    end
    object butOk: TBitBtn
      Left = 192
      Top = 16
      Width = 75
      Height = 25
      Caption = 'OK'
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
      TabOrder = 2
      OnClick = butOkClick
    end
  end
  object dsCad: TDataSource
    DataSet = DM.Movimento
    Left = 232
    Top = 144
  end
end
