unit para9uro_diastasewn;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TDiastaseis }

  TDiastaseis = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    pl_platos: TEdit;
    pl_upsos: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    kmp_apodoxh: TSpeedButton;
    kmp_aporripsh: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure kmp_apodoxhClick(Sender: TObject);
    procedure kmp_aporripshClick(Sender: TObject);
  private
  public
  function pare_platos:integer;
  function pare_upsos:integer;
  end;

var
  Diastaseis: TDiastaseis;

implementation

{$R *.lfm}

{ TDiastaseis }

function TDiastaseis.pare_platos:integer;
begin
   Result:=StrToInt(pl_platos.Text);
end;

function TDiastaseis.pare_upsos:integer;
begin
   Result:=StrToInt(pl_upsos.Text);
end;

procedure TDiastaseis.kmp_aporripshClick(Sender: TObject);
begin
  ModalResult:=mrCancel;
  Hide;
end;

procedure TDiastaseis.kmp_apodoxhClick(Sender: TObject);
begin
  ModalResult:=mrOk;
  Hide;
end;

procedure TDiastaseis.FormShow(Sender: TObject);
begin

end;

end.

