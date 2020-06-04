object FrRastro: TFrRastro
  Left = 190
  Top = 114
  Width = 333
  Height = 148
  Caption = 'FrRastro'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Lote: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 104
    Top = 24
  end
  object dsLote: TDataSource
    DataSet = Lote
    Left = 136
    Top = 24
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = Qlote
    Constraints = True
    Left = 72
    Top = 24
  end
  object Qlote: TSQLQuery
    SQLConnection = DmBanco.BancoDados
    Params = <
      item
        DataType = ftDate
        Name = 'DATAINI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATAFIN'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      'O.NUMORDEM,'
      'O.DATAORDEM,'
      'I.SERIE,'
      'I.CAPACIDADE,'
      'extract(year from I.ANOFAB) as ANOFAB,'
      'I.NUMSELO,'
      'I.CODNIVEL,'
      'I.CODAGENTE,'
      'I.QTDE,'
      'I.LOTE,'
      'I.LOTERESUMIDO,'
      'I.COMPLEMENTO,'
      'I.DATACARREGAMENTO'
      ' from TIORDEM I, TORDEM O'
      ' where O.NUMORDEM = I.NUMORDEM'
      ' and O.DATAORDEM between :DATAINI and :DATAFIN')
    Left = 40
    Top = 24
  end
  object RelLote: TppReport
    AutoStop = False
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    OnPreviewFormCreate = RelLotePreviewFormCreate
    Left = 200
    Top = 24
    Version = '6.0'
    mmColumnWidth = 0
    DataPipelineName = 'dbLote'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 17463
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Relat'#243'rio de Rastreamento de P'#243' Qu'#237'mico por Lote'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 39688
        mmTop = 0
        mmWidth = 120121
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Pag'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 169069
        mmTop = 0
        mmWidth = 4763
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 177800
        mmTop = 0
        mmWidth = 9260
        BandType = 0
      end
      object lblData: TppLabel
        UserName = 'lblData'
        AutoSize = False
        Caption = 'lblData'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 39688
        mmTop = 4498
        mmWidth = 119856
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Ordem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 12700
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 14288
        mmTop = 12700
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'S'#233'rie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 32808
        mmTop = 12700
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Capacidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 55563
        mmTop = 12700
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Ano Fab'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 73819
        mmTop = 12700
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Selo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 92075
        mmTop = 12700
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'N'#237'vel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 115888
        mmTop = 12435
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Qtde P'#243
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 136525
        mmTop = 12435
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Data Carga'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 151607
        mmTop = 12435
        mmWidth = 13758
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Position = lpBottom
        Weight = 0.75
        mmHeight = 2381
        mmLeft = 0
        mmTop = 15081
        mmWidth = 197115
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 13758
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 3969
        mmWidth = 10583
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'Numordem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbLote'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'DataOrdem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbLote'
        mmHeight = 3175
        mmLeft = 14288
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'Serie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbLote'
        mmHeight = 3175
        mmLeft = 33338
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'Capacidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbLote'
        mmHeight = 3175
        mmLeft = 54769
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'AnoFab'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbLote'
        mmHeight = 3175
        mmLeft = 73819
        mmTop = 0
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'NumSelo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbLote'
        mmHeight = 3175
        mmLeft = 92075
        mmTop = 0
        mmWidth = 21431
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'CodNivel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbLote'
        mmHeight = 3175
        mmLeft = 115888
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'Qtde'
        DisplayFormat = '###,###,##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbLote'
        mmHeight = 3175
        mmLeft = 130969
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'DataCarregamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbLote'
        mmHeight = 3175
        mmLeft = 151607
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Total Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 3175
        mmWidth = 13494
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'Lote'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbLote'
        mmHeight = 3175
        mmLeft = 15875
        mmTop = 3175
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'Qtde'
        DisplayFormat = '###,###,##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbLote'
        mmHeight = 3175
        mmLeft = 127265
        mmTop = 2646
        mmWidth = 20902
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'LOTERESUMIDO'
      DataPipeline = dbLote
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbLote'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppLabel12: TppLabel
          UserName = 'Label12'
          Caption = 'Lote'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 0
          mmTop = 1588
          mmWidth = 5556
          BandType = 3
          GroupNo = 0
        end
        object ppDBText10: TppDBText
          UserName = 'DBText10'
          DataField = 'LOTERESUMIDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'dbLote'
          mmHeight = 3175
          mmLeft = 7938
          mmTop = 1588
          mmWidth = 44186
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 8202
        mmPrintPosition = 0
        object ppLabel13: TppLabel
          UserName = 'Label13'
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 0
          mmTop = 2117
          mmWidth = 6085
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'Lote'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'dbLote'
          mmHeight = 3175
          mmLeft = 16669
          mmTop = 2117
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'Qtde'
          DisplayFormat = '###,###,##0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbLote'
          mmHeight = 3175
          mmLeft = 126736
          mmTop = 1323
          mmWidth = 21431
          BandType = 5
          GroupNo = 0
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Pen.Style = psDot
          Position = lpBottom
          Weight = 0.75
          mmHeight = 2381
          mmLeft = 0
          mmTop = 5556
          mmWidth = 197380
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object dbLote: TppDBPipeline
    DataSource = dsLote
    UserName = 'dbLote'
    Left = 168
    Top = 24
  end
  object RelLote1: TppReport
    AutoStop = False
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    OnPreviewFormCreate = RelLotePreviewFormCreate
    Left = 200
    Top = 56
    Version = '6.0'
    mmColumnWidth = 0
    DataPipelineName = 'DBLote1'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 17463
      mmPrintPosition = 0
      object ppLabel15: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Relat'#243'rio de Rastreamento de P'#243' Qu'#237'mico por S'#233'rie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 39688
        mmTop = 0
        mmWidth = 120121
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label2'
        Caption = 'Pag'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 169069
        mmTop = 0
        mmWidth = 4763
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 177800
        mmTop = 0
        mmWidth = 9260
        BandType = 0
      end
      object lblData1: TppLabel
        UserName = 'lblData'
        AutoSize = False
        Caption = 'lblData'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 39688
        mmTop = 4498
        mmWidth = 119856
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label3'
        Caption = 'Ordem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 12700
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label4'
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 14288
        mmTop = 12700
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label6'
        Caption = 'Capacidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 76994
        mmTop = 12700
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label7'
        Caption = 'Ano Fab'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 95250
        mmTop = 12700
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label8'
        Caption = 'Selo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 113506
        mmTop = 12700
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label9'
        Caption = 'N'#237'vel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 137319
        mmTop = 12435
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label10'
        Caption = 'Qtde P'#243
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 157957
        mmTop = 12435
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label11'
        Caption = 'Data Carga'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 173038
        mmTop = 12435
        mmWidth = 13758
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line1'
        Position = lpBottom
        Weight = 0.75
        mmHeight = 2381
        mmLeft = 0
        mmTop = 15081
        mmWidth = 197115
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 13758
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 3969
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label12'
        Caption = 'Lote'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 34131
        mmTop = 12700
        mmWidth = 5292
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText11: TppDBText
        UserName = 'DBText1'
        DataField = 'Numordem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBLote1'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText2'
        DataField = 'DataOrdem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBLote1'
        mmHeight = 3175
        mmLeft = 14288
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText4'
        DataField = 'Capacidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBLote1'
        mmHeight = 3175
        mmLeft = 76200
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText5'
        DataField = 'AnoFab'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBLote1'
        mmHeight = 3175
        mmLeft = 95250
        mmTop = 0
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText6'
        DataField = 'NumSelo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBLote1'
        mmHeight = 3175
        mmLeft = 113506
        mmTop = 0
        mmWidth = 21431
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText7'
        DataField = 'CodNivel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBLote1'
        mmHeight = 3175
        mmLeft = 137319
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText8'
        DataField = 'Qtde'
        DisplayFormat = '###,###,##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBLote1'
        mmHeight = 3175
        mmLeft = 152400
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText9'
        DataField = 'DataCarregamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBLote1'
        mmHeight = 3175
        mmLeft = 173038
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText10'
        DataField = 'LOTERESUMIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBLote1'
        mmHeight = 3175
        mmLeft = 33338
        mmTop = 0
        mmWidth = 40746
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
      object ppLabel28: TppLabel
        UserName = 'Label14'
        Caption = 'Total Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 3175
        mmWidth = 13494
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'Lote'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'DBLote1'
        mmHeight = 3175
        mmLeft = 15875
        mmTop = 3175
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'Qtde'
        DisplayFormat = '###,###,##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBLote1'
        mmHeight = 3175
        mmLeft = 148696
        mmTop = 2646
        mmWidth = 20902
        BandType = 7
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'Serie'
      DataPipeline = DBLote1
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DBLote1'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppDBText21: TppDBText
          UserName = 'DBText3'
          DataField = 'Serie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'DBLote1'
          mmHeight = 3175
          mmLeft = 10319
          mmTop = 1588
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppLabel29: TppLabel
          UserName = 'Label5'
          Caption = 'S'#233'rie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 0
          mmTop = 1588
          mmWidth = 6350
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 8202
        mmPrintPosition = 0
        object ppLabel30: TppLabel
          UserName = 'Label13'
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 0
          mmTop = 2117
          mmWidth = 6085
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'Lote'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'DBLote1'
          mmHeight = 3175
          mmLeft = 16669
          mmTop = 2117
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc8: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'Qtde'
          DisplayFormat = '###,###,##0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBLote1'
          mmHeight = 3175
          mmLeft = 148167
          mmTop = 1323
          mmWidth = 21431
          BandType = 5
          GroupNo = 0
        end
        object ppLine4: TppLine
          UserName = 'Line2'
          Pen.Style = psDot
          Position = lpBottom
          Weight = 0.75
          mmHeight = 2381
          mmLeft = 0
          mmTop = 5556
          mmWidth = 197380
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object DBLote1: TppDBPipeline
    DataSource = dsLote
    UserName = 'DBLote1'
    Left = 168
    Top = 56
  end
end
