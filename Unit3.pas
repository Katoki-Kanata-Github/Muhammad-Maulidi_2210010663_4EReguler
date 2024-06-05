unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    lbl2: TLabel;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    dbgrd1: TDBGrid;
    btnClose: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a : string;

implementation

uses
  Unit4;

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
DataModule4.ZQuery1.SQL.Clear;
DataModule4.ZQuery1.SQL.Add('insert into kategori values(null, "'+edt1.Text+'")');
DataModule4.ZQuery1.ExecSQL;

DataModule4.ZQuery1.SQL.Clear;
DataModule4.ZQuery1.SQL.Add('Select * from kategori');
DataModule4.ZQuery1.Open;
ShowMessage('Data berhasil di Simpan');

end;

procedure TForm3.btn2Click(Sender: TObject);
begin
DataModule4.ZQuery1.SQL.Clear;
DataModule4.ZQuery1.SQL.Add('update kategori set name = "'+edt1.text+'" where id= "'+a+'"');
DataModule4.ZQuery1.ExecSQL;

DataModule4.ZQuery1.SQL.Clear;
DataModule4.ZQuery1.SQL.Add('Select * from kategori');
DataModule4.ZQuery1.Open;
ShowMessage('Data berhasil di Update');
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
with DataModule4.ZQuery1 do
begin
SQL.Clear;
SQL.Add('delete from kategori where id= "'+a+'"');
ExecSQL;

SQL.Clear;
SQL.Add('Select * from kategori');
Open;
end;

ShowMessage('Data berhasil di Hapus');
end;
procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text := DataModule4.ZQuery1.Fields[1].AsString;
a:= DataModule4.ZQuery1.Fields[0].AsString;
end;

procedure TForm3.btnCloseClick(Sender: TObject);
begin
Close
end;

end.
