object Form6: TForm6
  Left = 344
  Top = 175
  Width = 928
  Height = 480
  Caption = 'Form6'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btn1: TButton
    Left = 336
    Top = 136
    Width = 113
    Height = 41
    Caption = 'Data Siswa'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 336
    Top = 176
    Width = 113
    Height = 33
    Caption = 'Data Catatan Siswa'
    TabOrder = 1
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 552
    Top = 176
    Width = 97
    Height = 33
    Caption = 'Data Point'
    TabOrder = 2
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 552
    Top = 136
    Width = 97
    Height = 41
    Caption = 'Data Orang Tua'
    TabOrder = 3
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 448
    Top = 136
    Width = 105
    Height = 41
    Caption = 'Data Wali Kelas'
    TabOrder = 4
    OnClick = btn5Click
  end
  object mm1: TMainMenu
    Left = 72
    Top = 40
    object Menu1: TMenuItem
      Caption = 'Menu'
      object DataSiswa1: TMenuItem
        Caption = 'Data Siswa'
        OnClick = btn1Click
      end
      object DataOrangTua1: TMenuItem
        Caption = 'Data Orang Tua'
        OnClick = btn4Click
      end
      object DataPoint1: TMenuItem
        Caption = 'Data Point'
        OnClick = btn3Click
      end
      object DataCatatanSiswa1: TMenuItem
        Caption = 'Data Catatan Siswa'
        OnClick = btn2Click
      end
      object DataWaliKelas1: TMenuItem
        Caption = 'Data Wali Kelas'
        OnClick = btn5Click
      end
    end
  end
end
