unit Crud;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ADODB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, frxClass,
  frxDBSet;

type
  TForm5 = class(TForm)
    edtnik: TEdit;
    edtnama: TEdit;
    edttingkatkelas: TEdit;
    edtjabatan: TEdit;
    cbbjenisk: TComboBox;
    edtpendidikan: TEdit;
    edtmapel: TEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl7: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    lbl1: TLabel;
    btn6: TButton;
    lbl2: TLabel;
    edtnotelepon: TEdit;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn4Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation
var
  id:integer;
{$R *.dfm}

procedure TForm5.FormCreate(Sender: TObject);
begin
edtnik.Enabled  := False;
edtnama.Enabled  := False;
cbbjenisk.Enabled  := False;
edtpendidikan.Enabled  := False;
edtmapel.Enabled  := False;
edttingkatkelas.Enabled  := False;
edtnotelepon.Enabled  := False;
edtjabatan.Enabled  := False;
btn2.Enabled  := False;
btn3.Enabled := False;
btn4.Enabled := False;
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('INSERT INTO data_walikelas (nik, nama, jenis_kelamin, pendidikan, mata_pelajaran, kelas, jabatan,no_telpon) VALUES (' +
              QuotedStr(edtnik.Text) + ', ' +
              QuotedStr(edtnama.Text) + ', ' +
              QuotedStr(cbbjenisk.Text) + ', ' +
              QuotedStr(edtpendidikan.Text) + ', ' +
              QuotedStr(edtmapel.Text) + ', ' +
              QuotedStr(edttingkatkelas.Text) + ', ' +
              QuotedStr(edtjabatan.Text)+ ', ' +
              QuotedStr(edtnotelepon.Text) + ')');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('SELECT * FROM data_walikelas');
zqry1.Open;

edtnik.Text := '';
edtnama.Text := '';
cbbjenisk.ItemIndex := -1;
edtpendidikan.Text := '';
edtmapel.Text := '';
edtnotelepon.text := '';
edttingkatkelas.Text := '';
edtjabatan.Text := '';

end;

procedure TForm5.btn1Click(Sender: TObject);
begin
     edtnik.Enabled := True;
edtnama.Enabled := True;
cbbjenisk.Enabled := True;
edtpendidikan.Enabled := True;
edtmapel.Enabled := True;
edttingkatkelas.Enabled := True;
edtjabatan.Enabled := True;
edtnotelepon.Enabled:=True;
btn2.Enabled := True;


end;

procedure TForm5.dbgrd1CellClick(Column: TColumn);
begin
edtnik.Enabled := True;
edtnama.Enabled := True;
cbbjenisk.Enabled := True;
edtpendidikan.Enabled := True;
edtmapel.Enabled := True;
edttingkatkelas.Enabled := True;
edtjabatan.Enabled := True;
edtnotelepon.Enabled := True;

btn3.Enabled  := true;
btn4.Enabled := True;
  id :=    zqry1.FieldList[0].AsInteger ;
edtnik.Text := zqry1.FieldList[1].AsString;
edtnama.Text := zqry1.FieldList[2].AsString;
if dbgrd1.SelectedRows.Count = 0 then
  begin
    if dbgrd1.DataSource.DataSet.RecNo > 0 then
      cbbjenisk.ItemIndex := cbbjenisk.Items.IndexOf(dbgrd1.Fields[3].AsString);
  end;
edtpendidikan.Text := zqry1.FieldList[4].AsString;
edtmapel.Text := zqry1.FieldList[5].AsString;
edttingkatkelas.Text := zqry1.FieldList[6].AsString;
edtjabatan.Text := zqry1.FieldList[7].AsString;
edtnotelepon.Text := zqry1.FieldList[7].AsString;

btn2.Enabled := False;
end;

procedure TForm5.btn4Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('DELETE FROM data_walikelas WHERE id = ' + IntToStr(id));
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('SELECT * FROM data_walikelas');
zqry1.Open;
showMessage('Data berhasil dihapus.');

edtnik.Text := '';
edtnama.Text := '';
cbbjenisk.ItemIndex := -1;
edtpendidikan.Text := '';
edtmapel.Text := '';
edtnotelepon.Text := '';
edttingkatkelas.Text := '';
edtjabatan.Text := '';

btn3.Enabled := False;
btn4.Enabled := False;
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('UPDATE data_walikelas SET ' +
              'nik = ' + QuotedStr(edtnik.Text) + ', ' +
              'nama = ' + QuotedStr(edtnama.Text) + ', ' +
              'jenis_kelamin = ' + QuotedStr(cbbjenisk.Text) + ', ' +
              'pendidikan = ' + QuotedStr(edtpendidikan.Text) + ', ' +
              'mata_pelajaran = ' + QuotedStr(edtmapel.Text) + ', ' +
              'kelas = ' + QuotedStr(edttingkatkelas.Text) + ', ' +
              'jabatan = ' + QuotedStr(edtjabatan.Text) + ', ' +
              'no_telpon = ' + QuotedStr(edtnotelepon.Text) +
              ' WHERE id = ' + IntToStr(id));
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('SELECT * FROM data_walikelas');
zqry1.Open;

edtnik.Text := '';
edtnama.Text := '';
cbbjenisk.ItemIndex := -1;
edtpendidikan.Text := '';
edtmapel.Text := '';
edtnotelepon.Text := '';
edttingkatkelas.Text := '';
edtjabatan.Text := '';

btn3.Enabled := False;
btn4.Enabled := False;

end;

procedure TForm5.btn6Click(Sender: TObject);
begin
        edtnik.Text := '';
edtnama.Text := '';
cbbjenisk.ItemIndex := -1;
edtpendidikan.Text := '';
edtmapel.Text := '';
edtnotelepon.Text := '';
edttingkatkelas.Text := '';
edtjabatan.Text := '';

btn3.Enabled := False;
btn4.Enabled := False;
btn2.Enabled := False;
end;

procedure TForm5.btn5Click(Sender: TObject);
begin
frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\walikelas.fr3');
frxrprt1.ShowReport();
end;

end.
