object Form1: TForm1
  Left = 333
  Top = 230
  Width = 928
  Height = 480
  Caption = 'Form1'
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
  object lbl1: TLabel
    Left = 136
    Top = 56
    Width = 14
    Height = 13
    Caption = 'Nis'
  end
  object lbl2: TLabel
    Left = 136
    Top = 80
    Width = 20
    Height = 13
    Caption = 'Nisn'
  end
  object lbl3: TLabel
    Left = 136
    Top = 104
    Width = 14
    Height = 13
    Caption = 'Nik'
  end
  object lbl4: TLabel
    Left = 128
    Top = 128
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object lbl5: TLabel
    Left = 104
    Top = 149
    Width = 62
    Height = 13
    Caption = 'Tempat Lahir'
  end
  object lbl6: TLabel
    Left = 104
    Top = 176
    Width = 64
    Height = 13
    Caption = 'Tanggal Lahir'
  end
  object lbl7: TLabel
    Left = 96
    Top = 197
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object lbl8: TLabel
    Left = 472
    Top = 72
    Width = 74
    Height = 13
    Caption = 'Tingkatan kelas'
  end
  object lbl9: TLabel
    Left = 496
    Top = 96
    Width = 38
    Height = 13
    Caption = 'Jurusan'
  end
  object lbl10: TLabel
    Left = 480
    Top = 120
    Width = 58
    Height = 13
    Caption = 'Id WaliKelas'
  end
  object lbl11: TLabel
    Left = 496
    Top = 144
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object lbl12: TLabel
    Left = 488
    Top = 168
    Width = 48
    Height = 13
    Caption = 'No Telpon'
  end
  object lbl13: TLabel
    Left = 496
    Top = 192
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object lbl14: TLabel
    Left = 416
    Top = 8
    Width = 119
    Height = 25
    Caption = 'Data Siswa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edt1: TEdit
    Left = 176
    Top = 56
    Width = 249
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 176
    Top = 80
    Width = 249
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 176
    Top = 104
    Width = 249
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 176
    Top = 128
    Width = 249
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 176
    Top = 152
    Width = 249
    Height = 21
    TabOrder = 4
  end
  object cbb1: TComboBox
    Left = 176
    Top = 200
    Width = 249
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      'Laki-Laki'
      'Perempuan')
  end
  object dtp1: TDateTimePicker
    Left = 176
    Top = 176
    Width = 249
    Height = 21
    Date = 45112.699130532400000000
    Time = 45112.699130532400000000
    TabOrder = 6
  end
  object edt6: TEdit
    Left = 560
    Top = 160
    Width = 249
    Height = 21
    TabOrder = 7
  end
  object edt7: TEdit
    Left = 560
    Top = 184
    Width = 249
    Height = 21
    TabOrder = 8
  end
  object cbb2: TComboBox
    Left = 560
    Top = 64
    Width = 249
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 9
    Items.Strings = (
      '10'
      '11'
      '12')
  end
  object cbb3: TComboBox
    Left = 560
    Top = 88
    Width = 249
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 10
    Items.Strings = (
      'IPS'
      'IPA '
      'BAHASA'
      'TKJ'
      'MULTIMEDIA'
      'TATA BOGA'
      'FARMASI'
      'TATA BUSANA')
  end
  object edt8: TEdit
    Left = 560
    Top = 112
    Width = 249
    Height = 21
    TabOrder = 11
  end
  object edt9: TEdit
    Left = 560
    Top = 136
    Width = 249
    Height = 21
    TabOrder = 12
  end
  object btn1: TButton
    Left = 144
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 13
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 240
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 14
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 336
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Ubah'
    TabOrder = 15
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 432
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 16
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 624
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 17
    OnClick = btn5Click
  end
  object dbgrd1: TDBGrid
    Left = 16
    Top = 304
    Width = 865
    Height = 129
    DataSource = ds1
    TabOrder = 18
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nisn'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nis'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nik'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tempat_lahir'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal_lahir'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jenis_kelamin'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kelas'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jurusan'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'wali_kelas'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'no_telpon'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Width = 100
        Visible = True
      end>
  end
  object btn6: TButton
    Left = 528
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 19
    OnClick = btn6Click
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    ReadOnly = True
    Connected = True
    SQLHourGlass = True
    HostName = 'localhost'
    Port = 3306
    Database = 'laporan_siswa'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\User\Documents\Laporan Siswa\libmysql.dll'
    Left = 32
    Top = 72
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from data_siswa')
    Params = <>
    Left = 32
    Top = 152
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 40
    Top = 224
  end
  object frxrprt1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45113.032476377300000000
    ReportOptions.LastChange = 45113.418300011570000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 88
    Top = 8
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
        Height = 94.488250000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 294.803340000000000000
          Top = 26.456710000000000000
          Width = 215.433210000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Laporan Data Siswa')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 75.590600000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'No')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 98.267780000000000000
          Top = 75.590600000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Nis')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 181.417440000000000000
          Top = 75.590600000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Nisn')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 272.126160000000000000
          Top = 75.590600000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Nama')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 366.614410000000000000
          Top = 75.590600000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Tempat Lahir')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 517.795610000000000000
          Top = 75.590600000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Kelas')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 706.772110000000000000
          Top = 75.590600000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Status')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 612.283860000000000000
          Top = 75.590600000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'No Telpon')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 173.858380000000000000
        Width = 793.701300000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
        RowCount = 0
        object Memo10: TfrxMemoView
          Left = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."id"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 98.267780000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."nis"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 177.637910000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."nisn"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 272.126160000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."nama"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 366.614410000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."tempat_lahir"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 517.795610000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."kelas"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 612.283860000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."no_telpon"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 706.772110000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."status"]')
          ParentFont = False
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    DataSet = zqry1
    Left = 152
    Top = 8
  end
end
