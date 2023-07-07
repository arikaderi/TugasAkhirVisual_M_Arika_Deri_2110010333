unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, frxClass,
  frxDBSet;

type
  TForm3 = class(TForm)
    edtnamapoint: TEdit;
    edttotal: TEdit;
    edtketerangan: TEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl7: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    lbl1: TLabel;
    btn6: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
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
  Form3: TForm3;

implementation
       var
         id:Integer;
{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
edtnamapoint.Enabled  := False;
edttotal.Enabled  := False;
edtketerangan.Enabled  := False;
btn2.Enabled  := False;
btn3.Enabled := False;
btn4.Enabled := False;
end;

procedure TForm3.btn1Click(Sender: TObject);
begin
edtnamapoint.Enabled := True;
edttotal.Enabled := True;
edtketerangan.Enabled := True;
btn2.Enabled := True;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
      zqry1.SQL.Clear;
zqry1.SQL.Add('INSERT INTO data_point (nama_point, total, keterangan) VALUES (' +
              QuotedStr(edtnamapoint.Text) + ', ' +
              QuotedStr(edttotal.Text) + ', ' +
              QuotedStr(edtketerangan.Text) + ')');

zqry1.ExecSQL;
    zqry1.SQL.Clear;
zqry1.SQL.Add('select * from data_point');
zqry1.Open;

//fungsi clear
edtnamapoint.Text := '';
edttotal.Text := '';
edtketerangan.Text := '';
btn2.Enabled := False;


end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
  //enable textbox
edtnamapoint.Enabled := True;
edttotal.Enabled := True;
edtketerangan.Enabled := True;

btn3.Enabled  := true;
btn4.Enabled := True;
  id :=    zqry1.FieldList[0].AsInteger ;
edtnamapoint.Text := zqry1.FieldList[1].AsString;
edttotal.Text := zqry1.FieldList[2].AsString;
edtketerangan.Text := zqry1.FieldList[3].AsString;
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('UPDATE data_point SET ' +
              'nama_point = ' + QuotedStr(edtnamapoint.Text) + ', ' +
              'total = ' + QuotedStr(edttotal.Text) + ', ' +
              'keterangan = ' + QuotedStr(edtketerangan.Text) +
              ' WHERE id = ' + IntToStr(id));

zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('SELECT * FROM data_point');
zqry1.Open;

// fungsi clear
edtnamapoint.Text := '';
edttotal.Text := '';
edtketerangan.Text := '';
btn3.Enabled := False;
btn4.Enabled := False;

end;

procedure TForm3.btn4Click(Sender: TObject);
begin
zqry1.SQL.Clear;
    zqry1.SQL.Add('DELETE FROM data_point WHERE id = ' + IntToStr(id));
    zqry1.ExecSQL;

    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT * FROM data_point');
    zqry1.Open;
        ShowMessage('Data berhasil dihapus.');
  edtnamapoint.Text := '';
  edttotal.Text := '';
  edtketerangan.Text := '';
  btn4.Enabled := false;
  btn3.Enabled := False;
end;

procedure TForm3.btn6Click(Sender: TObject);
begin
 edtnamapoint.Text := '';
  edttotal.Text := '';
  edtketerangan.Text := '';
btn2.Enabled  := False;
btn3.Enabled := False;
btn4.Enabled := False;
end;

procedure TForm3.btn5Click(Sender: TObject);
begin
frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\point.fr3');
 frxrprt1.ShowReport();
end;

end.
