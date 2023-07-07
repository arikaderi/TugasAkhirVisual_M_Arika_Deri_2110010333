object Form5: TForm5
  Left = 297
  Top = 188
  Width = 928
  Height = 480
  Caption = 'Form5'
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
    Top = 104
    Width = 14
    Height = 13
    Caption = 'Nik'
  end
  object lbl4: TLabel
    Left = 120
    Top = 136
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object lbl5: TLabel
    Left = 104
    Top = 189
    Width = 51
    Height = 13
    Caption = 'Pendidikan'
  end
  object lbl7: TLabel
    Left = 96
    Top = 165
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object lbl9: TLabel
    Left = 464
    Top = 136
    Width = 63
    Height = 13
    Caption = 'Tingkat Kelas'
  end
  object lbl10: TLabel
    Left = 472
    Top = 168
    Width = 39
    Height = 13
    Caption = 'Jabatan'
  end
  object lbl11: TLabel
    Left = 472
    Top = 104
    Width = 28
    Height = 13
    Caption = 'Mapel'
  end
  object lbl1: TLabel
    Left = 368
    Top = 40
    Width = 161
    Height = 25
    Caption = 'Data WaliKelas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 472
    Top = 192
    Width = 54
    Height = 13
    Caption = 'No Telepon'
  end
  object edtnik: TEdit
    Left = 168
    Top = 96
    Width = 249
    Height = 21
    TabOrder = 0
  end
  object edtnama: TEdit
    Left = 168
    Top = 128
    Width = 249
    Height = 21
    TabOrder = 1
  end
  object edttingkatkelas: TEdit
    Left = 528
    Top = 136
    Width = 249
    Height = 21
    TabOrder = 2
  end
  object edtjabatan: TEdit
    Left = 528
    Top = 168
    Width = 249
    Height = 21
    TabOrder = 3
  end
  object cbbjenisk: TComboBox
    Left = 168
    Top = 160
    Width = 249
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Items.Strings = (
      'Laki-Laki'
      'Perempuan')
  end
  object edtpendidikan: TEdit
    Left = 168
    Top = 192
    Width = 249
    Height = 21
    TabOrder = 5
  end
  object edtmapel: TEdit
    Left = 528
    Top = 96
    Width = 249
    Height = 21
    TabOrder = 6
  end
  object btn1: TButton
    Left = 144
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 7
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 240
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 8
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 336
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Ubah'
    TabOrder = 9
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 432
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 10
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 616
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 11
    OnClick = btn5Click
  end
  object dbgrd1: TDBGrid
    Left = 96
    Top = 304
    Width = 785
    Height = 129
    DataSource = ds1
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object btn6: TButton
    Left = 528
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 13
    OnClick = btn6Click
  end
  object edtnotelepon: TEdit
    Left = 528
    Top = 192
    Width = 249
    Height = 21
    TabOrder = 14
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
      'select * from data_walikelas')
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
    ReportOptions.CreateDate = 45113.030837650500000000
    ReportOptions.LastChange = 45113.468694525470000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 112
    Top = 32
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
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      object PageHeader1: TfrxPageHeader
        Height = 132.283550000000000000
        Top = 18.897650000000000000
        Width = 1122.520410000000000000
        object Memo1: TfrxMemoView
          Left = 461.102660000000000000
          Top = 30.236240000000000000
          Width = 192.756030000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Laporan Wali Kelas')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 105.826840000000000000
          Width = 94.488250000000000000
          Height = 26.456692913385800000
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
          Top = 105.826840000000000000
          Width = 94.488250000000000000
          Height = 26.456692913385800000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Nik')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 192.756030000000000000
          Top = 105.826840000000000000
          Width = 94.488250000000000000
          Height = 26.456692913385800000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Nama')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 287.244280000000000000
          Top = 105.826840000000000000
          Width = 170.078850000000000000
          Height = 26.456692913385800000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Jenis Kelamin')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 457.323130000000000000
          Top = 105.826840000000000000
          Width = 117.165430000000000000
          Height = 26.456692913385800000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Pendidikan')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 574.488560000000000000
          Top = 105.826840000000000000
          Width = 166.299320000000000000
          Height = 26.456692913385800000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Mata Pelajaran')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 740.787880000000000000
          Top = 105.826840000000000000
          Width = 94.488250000000000000
          Height = 26.456692913385800000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Kelas')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 835.276130000000000000
          Top = 105.826840000000000000
          Width = 94.488250000000000000
          Height = 26.456692913385800000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Jabatan')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 929.764380000000000000
          Top = 105.826840000000000000
          Width = 128.504020000000000000
          Height = 26.456692913385800000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'No Telpon')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 211.653680000000000000
        Width = 1122.520410000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
        RowCount = 0
        object Memo11: TfrxMemoView
          Left = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 22.677165354330700000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."id"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 98.267780000000000000
          Width = 94.488250000000000000
          Height = 22.677165350000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."nik"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 192.756030000000000000
          Width = 94.488250000000000000
          Height = 22.677165354330700000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."nama"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 287.244280000000000000
          Width = 170.078850000000000000
          Height = 22.677165354330700000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."jenis_kelamin"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 457.323130000000000000
          Width = 117.165430000000000000
          Height = 22.677165354330700000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."pendidikan"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 574.488560000000000000
          Width = 166.299320000000000000
          Height = 22.677165354330700000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."mata_pelajaran"][frxdbdtst1."pendidikan"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 740.787880000000000000
          Width = 94.488250000000000000
          Height = 22.677165354330700000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."kelas"][frxdbdtst1."pendidikan"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 835.276130000000000000
          Width = 94.488250000000000000
          Height = 22.677165354330700000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."jabatan"][frxdbdtst1."pendidikan"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 929.764380000000000000
          Width = 128.504020000000000000
          Height = 22.677165350000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."no_telpon"][frxdbdtst1."pendidikan"]')
          ParentFont = False
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    DataSet = zqry1
    Left = 184
    Top = 32
  end
end
