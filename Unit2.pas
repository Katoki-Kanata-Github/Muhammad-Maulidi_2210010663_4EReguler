unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    edte1: TEdit;
    btn1: TButton;
    lbl1: TLabel;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);
begin
  if edte1.Text = 'Admin' then
  begin
  Form1.mm1.Items[1].Visible:=True;
  Form1.mm1.Items[2].Visible:=False;
  Form1.mm1.Items[3].Visible:=False;
  end else if edte1.Text = 'Kasir' then
begin
  Form1.mm1.Items[1].Visible:=False;
  Form1.mm1.Items[2].Visible:=True;
  Form1.mm1.Items[3].Visible:=False;
  end else if edte1.Text = 'Pemilik' then
begin
  Form1.mm1.Items[1].Visible:=False;
  Form1.mm1.Items[2].Visible:=False;
  Form1.mm1.Items[3].Visible:=True;
end else
begin

end;
Form2.Close;
end;
end.
