unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, frxClass,
  frxDBSet;

type
  TForm4 = class(TForm)
    edtnamasiswa: TEdit;
    edtkelas: TEdit;
    edtketerangan: TEdit;
    edttotal: TEdit;
    edtwali: TEdit;
    edtpoint: TEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl7: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    edtortu: TEdit;
    dtp1: TDateTimePicker;
    btn6: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    lbl1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn4Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation
var
  id:Integer;

{$R *.dfm}

procedure TForm4.FormCreate(Sender: TObject);
begin
edtkelas.Enabled  := False;
edtnamasiswa.Enabled  := False;
edtwali.Enabled  := False;
edtortu.Enabled  := False;
edtpoint.Enabled  := False;
edtketerangan.Enabled  := False;
edttotal.Enabled  := False;
dtp1.Enabled  := False;
btn2.Enabled  := False;
btn3.Enabled := False;
btn4.Enabled := False;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('INSERT INTO data_catatansiswa (kelas, nama_siswa, nama_walikelas, nama_ortu, nama_point, keterangan, total, tanggal) VALUES (' +
              QuotedStr(edtkelas.Text) + ', ' +
              QuotedStr(edtnamasiswa.Text) + ', ' +
              QuotedStr(edtwali.Text) + ', ' +
              QuotedStr(edtortu.Text) + ', ' +
              QuotedStr(edtpoint.Text) + ', ' +
              QuotedStr(edtketerangan.Text) + ', ' +
              QuotedStr(edttotal.Text) + ', ' +
              QuotedStr(FormatDateTime('YYYY-MM-DD', dtp1.Date)) + ')');

zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('SELECT * FROM data_catatansiswa');
zqry1.Open;

edtkelas.Text := '';
edtnamasiswa.Text := '';
edtwali.Text := '';
edtortu.Text := '';
edtpoint.Text := '';
edtketerangan.Text := '';
edttotal.Text := '';
dtp1.Date := Now;

btn2.Enabled := False;

end;

procedure TForm4.btn1Click(Sender: TObject);
begin
edtkelas.Enabled := True;
edtnamasiswa.Enabled := True;
edtwali.Enabled := True;
edtortu.Enabled := True;
edtpoint.Enabled := True;
edtketerangan.Enabled := True;
edttotal.Enabled := True;
dtp1.Enabled := True;
btn2.Enabled := True;
end;

procedure TForm4.btn3Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('UPDATE data_catatansiswa SET kelas = ' + QuotedStr(edtkelas.Text) +
              ', nama_siswa = ' + QuotedStr(edtnamasiswa.Text) +
              ', nama_walikelas = ' + QuotedStr(edtwali.Text) +
              ', nama_ortu = ' + QuotedStr(edtortu.Text) +
              ', nama_point = ' + QuotedStr(edtpoint.Text) +
              ', keterangan = ' + QuotedStr(edtketerangan.Text) +
              ', total = ' + QuotedStr(edttotal.Text) +
              ', tanggal = ' + QuotedStr(FormatDateTime('YYYY-MM-DD', dtp1.Date)) +
              ' WHERE id = ' + IntToStr(id));

zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('SELECT * FROM data_catatansiswa');
zqry1.Open;

edtkelas.Text := '';
edtnamasiswa.Text := '';
edtwali.Text := '';
edtortu.Text := '';
edtpoint.Text := '';
edtketerangan.Text := '';
edttotal.Text := '';
dtp1.Date := Now;

btn3.Enabled := False;
btn4.Enabled := False;

end;

procedure TForm4.dbgrd1CellClick(Column: TColumn);
begin
edtkelas.Enabled := True;
edtnamasiswa.Enabled := True;
edtwali.Enabled := True;
edtortu.Enabled := True;
edtpoint.Enabled := True;
edtketerangan.Enabled := True;
edttotal.Enabled := True;
dtp1.Enabled := True;
btn3.Enabled := True;
btn4.Enabled := True;
btn2.Enabled := false;
  id :=    zqry1.FieldList[0].AsInteger ;
edtnamasiswa.Text := zqry1.FieldList[1].AsString;
edtkelas.Text := zqry1.FieldList[2].AsString;
edtwali.Text := zqry1.FieldList[3].AsString;
edtortu.Text := zqry1.FieldList[4].AsString;
edtpoint.Text := zqry1.FieldList[5].AsString;
edtketerangan.Text := zqry1.FieldList[6].AsString;
edttotal.Text := zqry1.FieldList[7].AsString;
dtp1.Date := zqry1.FieldList[8].AsDateTime;
end;

procedure TForm4.btn4Click(Sender: TObject);
begin

      zqry1.SQL.Clear;
  zqry1.SQL.Add('DELETE FROM data_catatansiswa WHERE id = ' + IntToStr(id));
  zqry1.ExecSQL;

  // Refresh data
  zqry1.SQL.Clear;
  zqry1.SQL.Add('SELECT * FROM data_catatansiswa');
  zqry1.Open;
  ShowMessage('Data berhasil dihapus.');

edtkelas.Text := '';
  edtnamasiswa.Text := '';
  edtwali.Text := '';
  edtortu.Text := '';
  edtpoint.Text := '';
  edtketerangan.Text := '';
  edttotal.Text := '';
  dtp1.Date := Now;

  // Menonaktifkan tombol
  btn3.Enabled := False;
  btn4.Enabled := False;
end;

procedure TForm4.btn6Click(Sender: TObject);
begin
            edtnamasiswa.Text := '';
  edtwali.Text := '';
  edtortu.Text := '';
  edtpoint.Text := '';
  edtketerangan.Text := '';
  edttotal.Text := '';
  dtp1.Date := Now;

  // Menonaktifkan tombol
  btn3.Enabled := False;
  btn4.Enabled := False;
  btn2.Enabled := False;
end;

procedure TForm4.btn5Click(Sender: TObject);
begin
frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\catatan.fr3');
frxrprt1.ShowReport();
end;

end.
