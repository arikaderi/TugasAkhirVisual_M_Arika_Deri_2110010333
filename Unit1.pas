unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, frxClass,
  frxDBSet;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    cbb1: TComboBox;
    dtp1: TDateTimePicker;
    edt6: TEdit;
    edt7: TEdit;
    cbb2: TComboBox;
    cbb3: TComboBox;
    edt8: TEdit;
    edt9: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    lbl14: TLabel;
    btn6: TButton;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form1: TForm1;

implementation
 var
      id:Integer;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
edt1.Enabled  := False;
edt2.Enabled  := False;
edt3.Enabled  := False;
edt4.Enabled  := False;
edt5.Enabled  := False;
edt6.Enabled  := False;
cbb1.Enabled  := False;
cbb2.Enabled  := False;
cbb3.Enabled  := False;
edt7.Enabled  := False;
edt8.Enabled  := False;
edt9.Enabled  := False;
dtp1.Enabled := False;
btn2.Enabled  := False;
btn3.Enabled := False;
btn4.Enabled := False;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
edt1.Enabled  := True ;
edt2.Enabled  := True;
edt3.Enabled  := True ;
edt4.Enabled  := True;
edt5.Enabled  := True;
edt6.Enabled  := True ;
cbb1.Enabled  := True;
cbb2.Enabled  := True;
cbb3.Enabled  := True;
edt7.Enabled  := True;
edt8.Enabled  := True ;
edt9.Enabled  := True ;
dtp1.Enabled := True;
btn2.Enabled  := True;

end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  zqry1.SQL.Clear();
 zqry1.SQL.Add('INSERT INTO data_siswa VALUES (null, "' + edt1.Text + '", "' + edt2.Text + '", "' + edt3.Text + '", "' + edt4.Text + '", "' + edt5.Text + '", "' + FormatDateTime('YYYY-MM-DD', dtp1.Date) + '","'+ cbb1.Text  +'","'+ cbb2.Text +'","'+ cbb3.text +'","'+ edt8.Text +'","'+ edt9.Text +'","'+ edt6.Text +'","'+ edt7.Text +'")');
 zqry1.ExecSQL;
 zqry1.SQL.Clear;
 zqry1.SQL.Add('select * from data_siswa');
 zqry1.Open;


 //fungsi clear
 edt1.Text := '';
    edt2.Text := '';
    edt3.Text := '';
    edt4.Text := '';
    edt5.Text := '';
    edt6.Text := '';
    cbb1.ItemIndex := -1;
    cbb2.ItemIndex := -1;
    cbb3.ItemIndex := -1;
    edt7.Text := '';
    edt8.Text := '';
    edt9.Text := '';
    dtp1.Date := Now;
    btn2.Enabled := False;
    end;
procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
  //enable textbox
btn1.Enabled := false;
btn3.Enabled := True;
btn4.Enabled := True;
edt1.Enabled  := True ;
edt2.Enabled  := True;
edt3.Enabled  := True ;
edt4.Enabled  := True;
edt5.Enabled  := True;
edt6.Enabled  := True ;
cbb1.Enabled  := True;
cbb2.Enabled  := True;
cbb3.Enabled  := True;
edt7.Enabled  := True;
edt8.Enabled  := True ;
edt9.Enabled  := True ;
dtp1.Enabled := True;
btn2.Enabled  := True;
  id :=    zqry1.FieldList[0].AsInteger ;
edt1.Text := zqry1.FieldList[1].AsString;
edt2.Text := zqry1.FieldList[2].AsString;
edt3.Text := zqry1.FieldList[3].AsString;
edt4.Text := zqry1.FieldList[4].AsString;
edt5.Text := zqry1.FieldList[5].AsString;
edt6.Text := zqry1.FieldList[12].AsString;
 if dbgrd1.SelectedRows.Count = 0 then
  begin
    if dbgrd1.DataSource.DataSet.RecNo > 0 then
      cbb1.ItemIndex := cbb1.Items.IndexOf(dbgrd1.Fields[7].AsString);
      cbb2.ItemIndex := cbb2.Items.IndexOf(dbgrd1.Fields[8].AsString);
      cbb3.ItemIndex := cbb3.Items.IndexOf(dbgrd1.Fields[9].AsString);
  end;
dtp1.Date := Now;
cbb2.text := zqry1.FieldList[8].AsString;
cbb3.text := zqry1.FieldList[9].AsString;
edt7.Text := zqry1.FieldList[13].AsString;
edt8.Text := zqry1.FieldList[10].AsString;
edt9.Text := zqry1.FieldList[11].AsString;



btn2.Enabled := False;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
zqry1.SQL.Add('UPDATE data_siswa SET');
zqry1.SQL.Add('  nis = "' + edt1.Text + '",');
zqry1.SQL.Add('  nisn = "' + edt2.Text + '",');
zqry1.SQL.Add('  nik = "' + edt3.Text + '",');
zqry1.SQL.Add('  nama = "' + edt4.Text + '",');
zqry1.SQL.Add('  tempat_lahir = "' + edt5.Text + '",');
zqry1.SQL.Add('  tanggal_lahir = "' + FormatDateTime('YYYY-MM-DD', dtp1.Date) + '",');
zqry1.SQL.Add('  jenis_kelamin = "' + cbb1.Text + '",');
zqry1.SQL.Add('  kelas = "' + cbb2.Text + '",');
zqry1.SQL.Add('  jurusan = "' + cbb3.Text + '",');
zqry1.SQL.Add('  wali_kelas = "' + edt8.Text + '",');
zqry1.SQL.Add('  alamat = "' + edt9.Text + '",');
zqry1.SQL.Add('  no_telpon = "' + edt6.Text + '",');
zqry1.SQL.Add('  status = "' + edt7.Text + '"');
zqry1.SQL.Add('WHERE id = ' + IntToStr(id));
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('SELECT * FROM data_siswa');
zqry1.Open;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
zqry1.SQL.Clear;
    zqry1.SQL.Add('DELETE FROM data_siswa WHERE id = ' + IntToStr(id));
    zqry1.ExecSQL;

    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT * FROM data_siswa');
    zqry1.Open;
        ShowMessage('Data berhasil dihapus.');
    //fungsi clear
     edt1.Text := '';
    edt2.Text := '';
    edt3.Text := '';
    edt4.Text := '';
    edt5.Text := '';
    edt6.Text := '';
    cbb1.ItemIndex := -1;
    cbb2.ItemIndex := -1;
    cbb3.ItemIndex := -1;
    edt7.Text := '';
    edt8.Text := '';
    edt9.Text := '';
    dtp1.Date := Now;
    btn2.Enabled := False;

end;

procedure TForm1.btn6Click(Sender: TObject);
begin
         edt1.Text := '';
    edt2.Text := '';
    edt3.Text := '';
    edt4.Text := '';
    edt5.Text := '';
    edt6.Text := '';
    cbb1.ItemIndex := -1;
    cbb2.ItemIndex := -1;
    cbb3.ItemIndex := -1;
    edt7.Text := '';
    edt8.Text := '';
    edt9.Text := '';
    dtp1.Date := Now;
    btn2.Enabled := False;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
 frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\laporansiswa.fr3');
 frxrprt1.ShowReport();
end;

end.
