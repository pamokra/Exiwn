program Exiwn;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, kurio_para9uro, para9uro_diastasewn, para9uro_biblio9hkhs_antikeimenwn
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDiastaseis, Diastaseis);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.

