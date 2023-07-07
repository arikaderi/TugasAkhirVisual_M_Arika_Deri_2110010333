unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TForm6 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    mm1: TMainMenu;
    Menu1: TMenuItem;
    DataSiswa1: TMenuItem;
    DataOrangTua1: TMenuItem;
    DataPoint1: TMenuItem;
    DataCatatanSiswa1: TMenuItem;
    DataWaliKelas1: TMenuItem;
    procedure btn1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit1, Unit2, Unit3, Crud, Unit4;

{$R *.dfm}

procedure TForm6.btn1Click(Sender: TObject);
begin
  Form1.showModal;
end;

procedure TForm6.btn4Click(Sender: TObject);
begin
Form2.showmodal;
end;

procedure TForm6.btn3Click(Sender: TObject);
begin
form3.showmodal;
end;

procedure TForm6.btn5Click(Sender: TObject);
begin
form5.showmodal;
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
form4.showmodal;
end;

end.
