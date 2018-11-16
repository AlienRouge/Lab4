unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Go: TButton;
    TExit: TButton;
    DataEdit: TEdit;
    AccEdit: TEdit;
    Lab4: TLabel;
    TData: TLabel;
    TAccuarcy: TLabel;
    TValue: TLabel;
    TIter: TLabel;
    OutValue: TLabel;
    OutIter: TLabel;
    procedure GoClick(Sender: TObject);
    procedure OutIterClick(Sender: TObject);
    procedure OutValueClick(Sender: TObject);
    procedure TExitClick(Sender: TObject);
    procedure DataEditChange(Sender: TObject);
    procedure AccEditChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Lab4Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1; a,b,c:integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Lab4Click(Sender: TObject);
begin

end;

procedure TForm1.TExitClick(Sender: TObject);
begin
 close
end;

procedure TForm1.GoClick(Sender: TObject);
var
   x,eps, s, y, t: real; k,iter: integer;
begin
  try
    x:=strtofloat(DataEdit.text);
    except
      showmessage('Error value');
    end;
    try
    eps:=strtofloat(AccEdit.text);
    except
    showmessage('Error value');
    end;
      iter := 0;
      k := 1;
      y := (x - 1) / (x + 1);
      t := y;
      s := t;
      while abs(t) / (2 * k - 1) >= eps do
      begin
        k := k + 1;
        t := t * y * y;
        s := s + t / (2 * k - 1);
        iter := iter + 1;
      end;
      s := 2 * s;
      y := ln(x);
      OutValue.Caption:=floattostr(s);
      OutIter.Caption:=inttostr(iter);
end;

procedure TForm1.OutIterClick(Sender: TObject);
begin

end;

procedure TForm1.OutValueClick(Sender: TObject);
begin

end;

procedure TForm1.DataEditChange(Sender: TObject);
begin

end;

procedure TForm1.AccEditChange(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

end.

