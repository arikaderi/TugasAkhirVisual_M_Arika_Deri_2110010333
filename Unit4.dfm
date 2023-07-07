object Form4: TForm4
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Form4'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl3: TLabel
    Left = 128
    Top = 72
    Width = 38
    Height = 13
    Caption = 'Tanggal'
  end
  object lbl4: TLabel
    Left = 136
    Top = 104
    Width = 25
    Height = 13
    Caption = 'Kelas'
  end
  object lbl5: TLabel
    Left = 104
    Top = 165
    Width = 48
    Height = 13
    Caption = 'Wali Kelas'
  end
  object lbl7: TLabel
    Left = 104
    Top = 133
    Width = 57
    Height = 13
    Caption = 'Nama Siswa'
  end
  object lbl9: TLabel
    Left = 472
    Top = 128
    Width = 56
    Height = 13
    Caption = 'Keterangan'
  end
  object lbl10: TLabel
    Left = 480
    Top = 160
    Width = 22
    Height = 13
    Caption = 'total'
  end
  object lbl11: TLabel
    Left = 472
    Top = 96
    Width = 54
    Height = 13
    Caption = 'Nama Point'
  end
  object lbl12: TLabel
    Left = 472
    Top = 64
    Width = 51
    Height = 13
    Caption = 'Orang Tua'
  end
  object lbl1: TLabel
    Left = 408
    Top = 24
    Width = 156
    Height = 19
    Caption = 'LAPORAN CATATAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtnamasiswa: TEdit
    Left = 168
    Top = 128
    Width = 249
    Height = 21
    TabOrder = 0
  end
  object edtkelas: TEdit
    Left = 168
    Top = 96
    Width = 249
    Height = 21
    TabOrder = 1
  end
  object edtketerangan: TEdit
    Left = 536
    Top = 128
    Width = 249
    Height = 21
    TabOrder = 2
  end
  object edttotal: TEdit
    Left = 536
    Top = 160
    Width = 249
    Height = 21
    TabOrder = 3
  end
  object edtwali: TEdit
    Left = 168
    Top = 160
    Width = 249
    Height = 21
    TabOrder = 4
  end
  object edtpoint: TEdit
    Left = 536
    Top = 96
    Width = 249
    Height = 21
    TabOrder = 5
  end
  object btn1: TButton
    Left = 144
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 6
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 240
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 7
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 336
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Ubah'
    TabOrder = 8
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 432
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 9
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 616
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 10
    OnClick = btn5Click
  end
  object dbgrd1: TDBGrid
    Left = 96
    Top = 272
    Width = 785
    Height = 153
    DataSource = ds1
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edtortu: TEdit
    Left = 536
    Top = 64
    Width = 249
    Height = 21
    TabOrder = 12
  end
  object dtp1: TDateTimePicker
    Left = 168
    Top = 64
    Width = 249
    Height = 21
    Date = 45112.713840092590000000
    Time = 45112.713840092590000000
    TabOrder = 13
  end
  object btn6: TButton
    Left = 528
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 14
    OnClick = btn6Click
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'laporan_siswa'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\User\Documents\Laporan Siswa\libmysql.dll'
    Left = 48
    Top = 72
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from data_catatansiswa')
    Params = <>
    Left = 56
    Top = 136
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 48
    Top = 232
  end
  object frxrprt1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45113.031432939820000000
    ReportOptions.LastChange = 45113.450624062500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 112
    Top = 16
    Datasets = <
      item
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object PageHeader1: TfrxPageHeader
        Height = 109.606370000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 309.921460000000000000
          Top = 26.456710000000000000
          Width = 166.299320000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Laporan Catatan')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 90.708720000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'No')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 98.267780000000000000
          Top = 90.708720000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Nama Siswa')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 222.992270000000000000
          Top = 90.708720000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Kelas')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 317.480520000000000000
          Top = 90.708720000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Nama Wali Kelas')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 453.543600000000000000
          Top = 90.708720000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Nama Orang Tua')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 597.165740000000000000
          Top = 90.708720000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Keterangan')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 695.433520000000000000
          Top = 90.708720000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Total')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 188.976500000000000000
        Width = 793.701300000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
        RowCount = 0
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 98.267780000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."nama_siswa"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 222.992270000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."kelas"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 317.480520000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."nama_walikelas"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 453.543600000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."nama_ortu"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 597.165740000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."keterangan"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 691.653990000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."total"]')
          ParentFont = False
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    DataSet = zqry1
    Left = 192
    Top = 16
  end
end
