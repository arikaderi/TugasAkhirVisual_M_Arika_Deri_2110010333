unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, frxClass,
  frxDBSet;

type
  TForm2 = class(TForm)
    edtnik: TEdit;
    edtnama: TEdit;
    edtpekerjaan: TEdit;
    cbbjenisk: TComboBox;
    edtpendidikan: TEdit;
    edtalamat: TEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl7: TLabel;
    lbl9: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    edtnotelepon: TEdit;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    lbl1: TLabel;
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
  Form2: TForm2;

implementation
var
  id:Integer;
{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
edtnik.Enabled  := False;
edtnama.Enabled  := False;
cbbjenisk.Enabled  := False;
edtpendidikan.Enabled  := False;
edtnotelepon.Enabled  := False;
edtalamat.Enabled  := False;
edtpekerjaan.Enabled  := False;
btn2.Enabled  := False;
btn3.Enabled := False;
btn4.Enabled := False;
end;

procedure TForm2.btn1Click(Sender: TObject);
begin
edtnik.Enabled := True;
edtnama.Enabled := True;
cbbjenisk.Enabled := True;
edtpendidikan.Enabled := True;
edtnotelepon.Enabled := True;
edtalamat.Enabled := True;
edtpekerjaan.Enabled := True;

btn2.Enabled := True;

end;

procedure TForm2.btn2Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('INSERT INTO data_ortu (nik, nama, jenis_kelamin, pendidikan, no_telpon, alamat, pekerjaan) VALUES (' +
              QuotedStr(edtnik.Text) + ', ' +
              QuotedStr(edtnama.Text) + ', ' +
              QuotedStr(cbbjenisk.Text) + ', ' +
              QuotedStr(edtpendidikan.Text) + ', ' +
              QuotedStr(edtnotelepon.Text) + ', ' +
              QuotedStr(edtalamat.Text) + ', ' +
              QuotedStr(edtpekerjaan.Text) + ')');

zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from data_ortu');
zqry1.Open;

//fungsi clear
edtnik.Text := '';
  edtnama.Text := '';
  cbbjenisk.ItemIndex := -1;
  edtpendidikan.Text := '';
  edtnotelepon.Text := '';
  edtalamat.Text := '';
  edtpekerjaan.Text := '';
  btn2.Enabled := false;
end;

procedure TForm2.dbgrd1CellClick(Column: TColumn);
begin
  //enable textbox
edtnik.Enabled := True;
edtnama.Enabled := True;
cbbjenisk.Enabled := True;
edtpendidikan.Enabled := True;
edtnotelepon.Enabled := True;
edtalamat.Enabled := True;
edtpekerjaan.Enabled := True;
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
edtnotelepon.Text := zqry1.FieldList[5].AsString;
edtpekerjaan.Text := zqry1.FieldList[6].AsString;
edtalamat.Text := zqry1.FieldList[7].AsString;




btn2.Enabled := False;
end;

procedure TForm2.btn3Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('UPDATE data_ortu SET ' +
              'nik = ' + QuotedStr(edtnik.Text) + ', ' +
              'nama = ' + QuotedStr(edtnama.Text) + ', ' +
              'jenis_kelamin = ' + QuotedStr(cbbjenisk.Text) + ', ' +
              'pendidikan = ' + QuotedStr(edtpendidikan.Text) + ', ' +
              'no_telpon = ' + QuotedStr(edtnotelepon.Text) + ', ' +
              'alamat = ' + QuotedStr(edtalamat.Text) + ', ' +
              'pekerjaan = ' + QuotedStr(edtpekerjaan.Text) +
              ' WHERE id = ' +IntToStr(id));
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from data_ortu');
zqry1.Open;
        edtnik.Text := '';
  edtnama.Text := '';
  cbbjenisk.ItemIndex := -1;
  edtpendidikan.Text := '';
  edtnotelepon.Text := '';
  edtalamat.Text := '';
  edtpekerjaan.Text := '';
  btn3.Enabled := false;
end;

procedure TForm2.btn4Click(Sender: TObject);
begin
zqry1.SQL.Clear;
    zqry1.SQL.Add('DELETE FROM data_ortu WHERE id = ' + IntToStr(id));
    zqry1.ExecSQL;

    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT * FROM data_ortu');
    zqry1.Open;
        ShowMessage('Data berhasil dihapus.');
             edtnik.Text := '';
  edtnama.Text := '';
  cbbjenisk.ItemIndex := -1;
  edtpendidikan.Text := '';
  edtnotelepon.Text := '';
  edtalamat.Text := '';
  edtpekerjaan.Text := '';
  btn4.Enabled := false;
        
end;

procedure TForm2.btn6Click(Sender: TObject);
begin
edtnik.Text := '';
  edtnama.Text := '';
  cbbjenisk.ItemIndex := -1;
  edtpendidikan.Text := '';
  edtnotelepon.Text := '';
  edtalamat.Text := '';
  edtpekerjaan.Text := '';
  btn2.Enabled := false;
  btn3.Enabled := false;
  btn4.Enabled:=False;
end;

procedure TForm2.btn5Click(Sender: TObject);
begin
 frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\lapranortu.fr3');
 frxrprt1.ShowReport();
end;

end.
