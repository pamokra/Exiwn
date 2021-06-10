unit kurio_para9uro;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Menus,
  ComCtrls, Buttons, StdCtrls, LCLType;

type TKambas=class(TImage)
constructor Create(Idiokt:TComponent);override;
procedure pathseKatw(Sender:TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
procedure diadikasiaTrabhgmatos(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
procedure telosTrabhgmatos(Sender:TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
private
ergaleio:integer;
pathse:boolean;
px,py:integer;
xrwma_proskhniou:integer;
xrwma_paraskhniou:integer;
proswrinh_perioxh:TLabel;
public
procedure gemisma(X,Y,xrwma,xrwma_shmeiou:Integer);
end;

type TPerioxhKulishs=class(TScrollBox)
constructor Create(Idiokt:TComponent);override;
procedure Paint;override;
end;

type

  { TForm1 }

  TForm1 = class(TForm)
    epilogh_orizontia_anastrofh: TMenuItem;
    MenuItem2: TMenuItem;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Xrwmata: TColorDialog;
    Label2: TLabel;
    koumpi_dhmiourgia: TSpeedButton;
    SpeedButton2: TSpeedButton;
    koumpi_apo9hkeush: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    trexon_xrwma_proskhniou: TShape;
    trexon_xrwma_paraskhniou: TShape;
    sxedio_megalhs_klimakas: TImage;
    kmp_pinelo: TSpeedButton;
    kmp_grammh: TSpeedButton;
    kmp_or9ogwnio: TSpeedButton;
    Label1: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    epilogh_Ka9arismosOlwn: TMenuItem;
    epilogh_KlimakwshKamba: TMenuItem;
    epilogh_perioxhs_megalhs_klimakas: TMenuItem;
    N4: TMenuItem;
    epilogh_Kleisimo: TMenuItem;
    N3: TMenuItem;
    MenuItem6: TMenuItem;
    N2: TMenuItem;
    N1: TMenuItem;
    epilogh_dhmiourgia: TMenuItem;
    epilogh_anoigma: TMenuItem;
    epilogh_apo9hkeush: TMenuItem;
    MenuItem5: TMenuItem;
    epilogh_E3odos: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    perioxh_megalhs_klimakas: TPanel;
    Para9uroAnoigmatos: TOpenDialog;
    Para9uroApo9hkeushs: TSaveDialog;
    ScrollBox1: TScrollBox;
    selides: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    kmp_molubi: TSpeedButton;
    kmp_gomma: TSpeedButton;
    kmp_mauro: TShape;
    kmp_mwv: TShape;
    kmp_9alassi: TShape;
    kmp_ashmi: TShape;
    kmp_roz: TShape;
    kmP_galazio: TShape;
    kmp_aspro: TShape;
    kmp_kokkino: TShape;
    kmp_kitrino: TShape;
    kmp_prasino: TShape;
    kmp_mple: TShape;
    kmp_mporntw: TShape;
    kmp_ladi: TShape;
    kmp_mpleskouro: TShape;
    Shape1: TShape;
    SpeedButton1: TSpeedButton;
    procedure epilogh_apo9hkeushClick(Sender: TObject);
    procedure epilogh_E3odosClick(Sender: TObject);
    procedure epilogh_Ka9arismosOlwnClick(Sender: TObject);
    procedure epilogh_KleisimoClick(Sender: TObject);
    procedure epilogh_KlimakwshKambaClick(Sender: TObject);
    procedure epilogh_orizontia_anastrofhClick(Sender: TObject);
    procedure epilogh_perioxhs_megalhs_klimakasClick(Sender: TObject);
    procedure kmp_gommaClick(Sender: TObject);
    procedure kmp_grammhClick(Sender: TObject);
    procedure kmp_molubiClick(Sender: TObject);
    procedure kmp_or9ogwnioClick(Sender: TObject);
    procedure kmp_pineloClick(Sender: TObject);
    procedure epilogh_dhmiourgiaClick(Sender: TObject);
    procedure epilogh_anoigmaClick(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure pathsexrwma(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure perioxh_megalhs_klimakasPaint(Sender: TObject);
    procedure selidesChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);

    procedure pathseKatw(Sender:TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
    procedure diadikasiaTrabhgmatos(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
procedure telosTrabhgmatos(Sender:TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);

    procedure SpeedButton2Click(Sender: TObject);
    procedure koumpi_apo9hkeushClick(Sender: TObject);
  private
  trexousa_selida:TTabSheet;
  trexon_sxedio:TKambas;
  trexousa_perioxh:TPerioxhKulishs;
  trexon_plaisio:TPanel;
  pathse:boolean;
  gemise:boolean;

  public
  procedure NeoSxedio(platos,upsos:integer);
  end;

var
  Form1: TForm1;

implementation

uses para9uro_diastasewn, FPImage;

{$R *.lfm}

{TKambas}

constructor TKambas.Create(Idiokt:TComponent);
begin
  inherited Create(Idiokt);
  OnMouseDown:=@pathseKatw;
  OnMouseMove:=@diadikasiaTrabhgmatos;
  OnMouseUp:=@telosTrabhgmatos;
  pathse:=false;

  xrwma_proskhniou:=clBlack;
  xrwma_paraskhniou:=clWhite;

end;

procedure TKambas.pathseKatw(Sender:TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var t,xx,yy:integer;
begin
 pathse:=true;
 px:=X;
 py:=Y;
 if (ergaleio in [4..6]) then
 begin
   proswrinh_perioxh:=TLabel.Create(Self);
   proswrinh_perioxh.AutoSize:=false;
   proswrinh_perioxh.BorderSpacing.Around:=0;
   proswrinh_perioxh.Left:=0;
   proswrinh_perioxh.Top:=0;
   proswrinh_perioxh.Width:=Self.Width;
   proswrinh_perioxh.Height:=Self.Height;
   proswrinh_perioxh.Parent:=Self.Parent;

   proswrinh_perioxh.Canvas.Pen.Color:=Self.Picture.Bitmap.Canvas.Pen.Color;
 end;

   if ergaleio=7 then
  begin
   Randomize;
    for t:=1 to 20 do
    begin
     xx:=X+(Random(50)-25);
     yy:=Y+(Random(50)-25);
     Canvas.Pixels[xx,yy]:=xrwma_proskhniou;
     Application.ProcessMessages;
    end;
  end;

  if ergaleio=8 then
  begin
     gemisma(X,Y,xrwma_proskhniou,Canvas.Pixels[X,Y]);
  end;
end;

procedure TKambas.diadikasiaTrabhgmatos(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var t,xx,yy:integer;
begin
  if pathse then
  begin
    case (ergaleio) of
    1..3:
    begin
       Picture.Bitmap.Canvas.Line(px,py,X,Y);
       px:=X;
       py:=Y;
    end;
    4:
    begin
       proswrinh_perioxh.Refresh;
       proswrinh_perioxh.Canvas.Line(px,py,X,Y);

    end;
    5:
    begin
       proswrinh_perioxh.Refresh;
       proswrinh_perioxh.Canvas.Rectangle(px,py,X,Y);

    end;
    6:
    begin
    proswrinh_perioxh.Refresh;
    proswrinh_perioxh.Canvas.Ellipse(px,py,X,Y);
    end;
    7:
    begin
    Randomize;
     for t:=1 to 20 do
     begin
      xx:=X+(Random(50)-25);
      yy:=Y+(Random(50)-25);
      Canvas.Pixels[xx,yy]:=xrwma_proskhniou;
      Application.ProcessMessages;
     end;
    end;
  end;
end;

end;

procedure TKambas.telosTrabhgmatos(Sender:TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
pathse:=false;
if ergaleio=4 then
begin
 if proswrinh_perioxh<> nil then
    proswrinh_perioxh.Free;
    Picture.Bitmap.Canvas.Line(px,py,X,Y);
end;
if ergaleio=5 then
begin
 if proswrinh_perioxh<> nil then
    proswrinh_perioxh.Free;
 Picture.Bitmap.Canvas.Brush.Style:=bsClear;
 Picture.Bitmap.Canvas.Rectangle(px,py,X,Y);
end;

if ergaleio=6 then
begin
 if proswrinh_perioxh<> nil then
    proswrinh_perioxh.Free;
 Picture.Bitmap.Canvas.Brush.Style:=bsClear;
 Picture.Bitmap.Canvas.Ellipse(px,py,X,Y);
end;

if Form1.perioxh_megalhs_klimakas.Visible then Form1.perioxh_megalhs_klimakas.Repaint;
end;

procedure TKambas.gemisma(X,Y,xrwma,xrwma_shmeiou:Integer);

begin
  Picture.Bitmap.Canvas.Brush.Color:=xrwma;
  Picture.Bitmap.Canvas.FloodFill(X,Y,clBlack,fsBorder);
  Picture.Bitmap.Canvas.Brush.Color:=xrwma_shmeiou;
end;

{TPerioxhKulishs}

constructor TPerioxhKulishs.Create(Idiokt:TComponent);
begin
  inherited Create(Idiokt);
end;

procedure TPerioxhKulishs.Paint;
begin
  inherited Paint;
  Canvas.Brush.Color:=clGray;
  Canvas.FillRect(0,0,Width,Height);
end;

{ TForm1 }

procedure TForm1.NeoSxedio(platos,upsos:integer);
begin
   trexousa_selida:=selides.AddTabSheet;
   trexousa_selida.Caption:='Ανώνυμο';
   trexousa_selida.Color:=clLtGray;
   trexousa_perioxh:=TPerioxhKulishs.Create(trexousa_selida);
   trexousa_perioxh.Align:=alClient;
   trexousa_perioxh.Parent:=trexousa_selida;
   trexousa_perioxh.ParentBackground:=false;
   trexon_plaisio:=TPanel.Create(trexousa_perioxh);
   trexon_plaisio.Align:=alNone;
   trexon_plaisio.BorderWidth:=1;
   trexon_plaisio.BevelInner:=bvNone;
   trexon_plaisio.BevelOuter:=bvNone;
   trexon_plaisio.BorderStyle:=bsSingle;
   trexon_sxedio:=TKambas.Create(trexon_plaisio);
   trexon_plaisio.Left:=3;
   trexon_plaisio.Top:=3;
   trexon_plaisio.Width:=platos+4;
   trexon_plaisio.Height:=upsos+4;
   trexon_sxedio.BorderSpacing.Around:=0;
   trexon_sxedio.Left:=0;
   trexon_sxedio.Top:=0;
   trexon_sxedio.Width:=platos;
   trexon_sxedio.Height:=upsos;
   trexon_sxedio.Picture.Bitmap:=TBitmap.Create;
   trexon_sxedio.Picture.Bitmap.Width:=trexon_sxedio.Width;
   trexon_sxedio.Picture.Bitmap.Height:=trexon_sxedio.Height;
   trexon_xrwma_proskhniou.Brush.Color:=clBlack;
   trexon_xrwma_paraskhniou.Brush.Color:=clWhite;
   trexon_sxedio.xrwma_proskhniou:=clBlack;
   trexon_sxedio.xrwma_paraskhniou:=clWhite;
   trexon_sxedio.Picture.Bitmap.Canvas.Brush.Color:=trexon_sxedio.xrwma_paraskhniou;
   trexon_sxedio.Picture.Bitmap.Canvas.FillRect(0,0,trexon_sxedio.Picture.Bitmap.Width,trexon_sxedio.Picture.Bitmap.Height);
   trexon_sxedio.Parent:=trexon_plaisio;
   trexon_plaisio.Parent:=trexousa_perioxh;

   selides.ActivePage:=trexousa_selida;

   if perioxh_megalhs_klimakas.Visible then
   begin
     Form1.perioxh_megalhs_klimakas.Repaint;
   end;
end;

procedure TForm1.epilogh_dhmiourgiaClick(Sender: TObject);
begin

  if Diastaseis.ShowModal=mrOk then
  begin
    NeoSxedio(Diastaseis.pare_platos, Diastaseis.pare_upsos);
  end;

  Diastaseis.Close;

end;

procedure TForm1.kmp_molubiClick(Sender: TObject);
begin
  trexon_sxedio.ergaleio:=1;
  trexon_sxedio.Canvas.Pen.Width:=1;
  trexon_sxedio.Canvas.Pen.Color:=trexon_sxedio.xrwma_proskhniou;
end;

procedure TForm1.kmp_or9ogwnioClick(Sender: TObject);
begin
  trexon_sxedio.ergaleio:=5;
  trexon_sxedio.Canvas.Pen.Width:=1;
  trexon_sxedio.Canvas.Pen.Color:=trexon_sxedio.xrwma_proskhniou;
end;

procedure TForm1.kmp_pineloClick(Sender: TObject);
begin
  trexon_sxedio.ergaleio:=3;
  trexon_sxedio.Canvas.Pen.Width:=5;
  trexon_sxedio.Canvas.Pen.Color:=trexon_sxedio.xrwma_proskhniou;
end;

procedure TForm1.kmp_gommaClick(Sender: TObject);
begin
  trexon_sxedio.ergaleio:=2;
  trexon_sxedio.Canvas.Pen.Width:=10;
  trexon_sxedio.Canvas.Pen.Color:=trexon_sxedio.xrwma_paraskhniou;
end;

procedure TForm1.kmp_grammhClick(Sender: TObject);
begin
  trexon_sxedio.ergaleio:=4;
  trexon_sxedio.Canvas.Pen.Width:=1;
  trexon_sxedio.Canvas.Pen.Color:=trexon_sxedio.xrwma_proskhniou;
end;

procedure TForm1.epilogh_Ka9arismosOlwnClick(Sender: TObject);
begin
  trexon_sxedio.Canvas.Brush.Color:=trexon_sxedio.xrwma_paraskhniou;
  trexon_sxedio.Canvas.FillRect(0,0,Width,Height);
  trexon_sxedio.Canvas.Brush.Color:=trexon_sxedio.xrwma_proskhniou;
end;

procedure TForm1.epilogh_KleisimoClick(Sender: TObject);
begin
  if trexousa_selida<>nil then
  begin
     trexon_sxedio.Free;
     trexon_plaisio.Free;
     trexousa_perioxh.Free;
     trexousa_selida.Free;
  end;
end;

procedure TForm1.epilogh_KlimakwshKambaClick(Sender: TObject);
var mnhmh:TBitmap;
begin
  if Diastaseis.ShowModal=mrOk then
  begin
    mnhmh:=TBitmap.Create;
    mnhmh.Assign(trexon_sxedio.Picture.Bitmap);
    trexon_plaisio.Left:=3;
    trexon_plaisio.Top:=3;
    trexon_plaisio.Width:=Diastaseis.pare_platos+2;
    trexon_plaisio.Height:=Diastaseis.pare_upsos+2;
    trexon_sxedio.Width:=Diastaseis.pare_platos;
    trexon_sxedio.Height:=Diastaseis.pare_upsos;
    trexon_sxedio.Picture.Bitmap.Width:=trexon_sxedio.Width;
    trexon_sxedio.Picture.Bitmap.Height:=trexon_sxedio.Height;
    trexon_sxedio.Picture.Bitmap.Canvas.Brush.Color:=clWhite;
    trexon_sxedio.Picture.Bitmap.Canvas.FillRect(0,0,trexon_sxedio.Picture.Bitmap.Width,trexon_sxedio.Picture.Bitmap.Height);
    trexon_sxedio.Picture.Bitmap.Canvas.Brush.Color:=trexon_sxedio.xrwma_proskhniou;
    trexon_sxedio.Picture.Bitmap.Canvas.Draw(0,0,mnhmh);
    mnhmh.Free;
  end;

  Diastaseis.Close;
end;

procedure TForm1.epilogh_orizontia_anastrofhClick(Sender: TObject);
var xx,yy:integer;
    mnhmh:TBitmap;
begin
  mnhmh:=TBitmap.Create;
    mnhmh.Assign(trexon_sxedio.Picture.Bitmap);
  for yy:=0 to trexon_sxedio.Picture.Bitmap.Height-1 do
  for xx:=0 to trexon_sxedio.Picture.Bitmap.Width-1 do
  begin
  mnhmh.Canvas.Pixels[trexon_sxedio.Picture.Bitmap.Width-xx,yy]:=trexon_sxedio.Picture.Bitmap.Canvas.Pixels[xx,yy];
  Application.ProcessMessages;
  end;

  trexon_sxedio.Picture.Bitmap.Assign(mnhmh);

  mnhmh.Free;
end;

procedure TForm1.epilogh_perioxhs_megalhs_klimakasClick(Sender: TObject);
begin
  perioxh_megalhs_klimakas.Visible:=true;
end;

procedure TForm1.epilogh_E3odosClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.epilogh_apo9hkeushClick(Sender: TObject);
begin

end;

procedure TForm1.epilogh_anoigmaClick(Sender: TObject);
begin
  if Para9uroAnoigmatos.Execute then
  begin
    NeoSxedio(100,100);
    trexon_sxedio.AutoSize:=true;
    trexon_sxedio.Picture.LoadFromFile(Para9uroAnoigmatos.Filename);
    trexon_sxedio.AutoSize:=false;
    trexon_plaisio.Width:=trexon_sxedio.Picture.Width+2;
    trexon_plaisio.Height:=trexon_sxedio.Picture.Height+2;
  end;
end;

procedure TForm1.MenuItem2Click(Sender: TObject);
var xx,yy:integer;
    mnhmh:TBitmap;
begin
  mnhmh:=TBitmap.Create;
    mnhmh.Assign(trexon_sxedio.Picture.Bitmap);
  for yy:=0 to trexon_sxedio.Picture.Bitmap.Height-1 do
  for xx:=0 to trexon_sxedio.Picture.Bitmap.Width-1 do
  begin
  mnhmh.Canvas.Pixels[xx,trexon_sxedio.Picture.Bitmap.Height-yy-1]:=trexon_sxedio.Picture.Bitmap.Canvas.Pixels[xx,yy];
  Application.ProcessMessages;
  end;

  trexon_sxedio.Picture.Bitmap.Assign(mnhmh);

  mnhmh.Free;
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  if Para9uroApo9hkeushs.Execute then
  begin
     trexon_sxedio.Picture.SaveToFile(Para9uroApo9hkeushs.FileName,'PNG');
  end;
end;

procedure TForm1.pathsexrwma(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
     if Button=mbLeft then
     begin
     trexon_sxedio.xrwma_proskhniou:=TShape(Sender).Brush.Color;
     trexon_sxedio.Canvas.Pen.Color:=TShape(Sender).Brush.Color;
     trexon_xrwma_proskhniou.Brush.Color:=trexon_sxedio.xrwma_proskhniou;
     end;

     if Button=mbRight then
     begin
      trexon_sxedio.xrwma_paraskhniou:=TShape(Sender).Brush.Color;
      trexon_xrwma_paraskhniou.Brush.Color:=trexon_sxedio.xrwma_paraskhniou;
     end;
end;

procedure TForm1.pathseKatw(Sender:TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var px,py:integer;
begin

  pathse:=true;

  px:=X div 10;
  py:=Y div 10;


  if (px>=1) and (px<=sxedio_megalhs_klimakas.Width div 10-1) and
     (py>=1) and (py<=sxedio_megalhs_klimakas.Height div 10-1) then
  begin


   if (sxedio_megalhs_klimakas.Picture.Bitmap.Canvas.Pixels[px*10,py*10]=clBlack) and
      (sxedio_megalhs_klimakas.Picture.Bitmap.Canvas.Pixels[px*10+1,py*10+1]=clWhite) then
   begin
   sxedio_megalhs_klimakas.Picture.Bitmap.Canvas.Brush.Color:=trexon_sxedio.xrwma_proskhniou;
     sxedio_megalhs_klimakas.Picture.Bitmap.Canvas.FillRect(px*10,py*10,(px+1)*10,(py+1)*10);
     sxedio_megalhs_klimakas.Picture.Bitmap.Canvas.Brush.Color:=clWhite;
     trexon_sxedio.Canvas.Pixels[px-1,py-1]:=trexon_sxedio.xrwma_proskhniou;
     gemise:=true;
   end else
   begin
    sxedio_megalhs_klimakas.Picture.Bitmap.Canvas.Brush.Color:=clWhite;
    sxedio_megalhs_klimakas.Picture.Bitmap.Canvas.Rectangle(px*10,py*10,(px+1)*10,(py+1)*10);
    trexon_sxedio.Canvas.Pixels[px-1,py-1]:=trexon_sxedio.xrwma_paraskhniou;
    gemise:=false;
   end;
  end;



end;

procedure TForm1.diadikasiaTrabhgmatos(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var px,py:integer;
begin
if pathse then
begin
   px:=X div 10;
  py:=Y div 10;


  if (px>=1) and (px<=sxedio_megalhs_klimakas.Width div 10-1) and
     (py>=1) and (py<=sxedio_megalhs_klimakas.Height div 10-1) then
  begin


   if gemise then
   begin
   sxedio_megalhs_klimakas.Picture.Bitmap.Canvas.Brush.Color:=trexon_sxedio.xrwma_proskhniou;
     sxedio_megalhs_klimakas.Picture.Bitmap.Canvas.FillRect(px*10,py*10,(px+1)*10,(py+1)*10);
     sxedio_megalhs_klimakas.Picture.Bitmap.Canvas.Brush.Color:=clWhite;
     trexon_sxedio.Canvas.Pixels[px-1,py-1]:=trexon_sxedio.xrwma_proskhniou;
   end else
   begin
    sxedio_megalhs_klimakas.Picture.Bitmap.Canvas.Brush.Color:=clWhite;
    sxedio_megalhs_klimakas.Picture.Bitmap.Canvas.Rectangle(px*10,py*10,(px+1)*10,(py+1)*10);
    trexon_sxedio.Canvas.Pixels[px-1,py-1]:=trexon_sxedio.xrwma_paraskhniou;
   end;
  end;
end;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  trexon_sxedio.ergaleio:=6;
  trexon_sxedio.Canvas.Pen.Width:=1;
  trexon_sxedio.Canvas.Pen.Color:=trexon_sxedio.xrwma_proskhniou;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
  if Xrwmata.Execute then
  begin
     trexon_sxedio.xrwma_proskhniou:=Xrwmata.Color;
     trexon_sxedio.Canvas.Pen.Color:=Xrwmata.Color;
     trexon_xrwma_proskhniou.Brush.Color:=trexon_sxedio.xrwma_proskhniou;
  end;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
  trexon_sxedio.ergaleio:=7;
  trexon_sxedio.Canvas.Pen.Width:=1;
  trexon_sxedio.Canvas.Pen.Color:=trexon_sxedio.xrwma_proskhniou;
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
  trexon_sxedio.ergaleio:=8;
  trexon_sxedio.Canvas.Pen.Width:=1;
  trexon_sxedio.Canvas.Pen.Color:=trexon_sxedio.xrwma_proskhniou;
end;

procedure TForm1.telosTrabhgmatos(Sender:TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pathse:=false;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  epilogh_anoigmaClick(Sender);
end;

procedure TForm1.koumpi_apo9hkeushClick(Sender: TObject);
begin
 epilogh_apo9hkeushClick(Sender);
end;

procedure TForm1.perioxh_megalhs_klimakasPaint(Sender: TObject);
var t,s:integer;
    eikona:TBitmap;
begin
 if selides.PageCount>0 then
 begin

  sxedio_megalhs_klimakas.OnMouseDown:=@pathseKatw;
  sxedio_megalhs_klimakas.OnMouseMove:=@diadikasiaTrabhgmatos;
  sxedio_megalhs_klimakas.OnMouseUp:=@telosTrabhgmatos;
  if trexon_sxedio<>nil then
  begin
    eikona:=TBitmap.Create;
    eikona.Width:=trexon_sxedio.Width*10+20;
    eikona.Height:=trexon_sxedio.Height*10+20;
    eikona.Canvas.Brush.Color:=clWhite;
    eikona.Canvas.FillRect(0,0,eikona.Width,eikona.Height);

    for t:=0 to trexon_sxedio.Width do
      for s:=0 to trexon_sxedio.Height do
        begin
        if trexon_sxedio.Canvas.Pixels[t,s]=clWhite then
        begin
          eikona.Canvas.Brush.Color:=clWhite;
          eikona.Canvas.Rectangle(10+t*10,10+s*10, 10+(t+1)*10, 10+(s+1)*10);
          Application.ProcessMessages;
        end else
        begin
          eikona.Canvas.Brush.Color:=trexon_sxedio.Canvas.Pixels[t,s];
          eikona.Canvas.FillRect(10+t*10,10+s*10, 10+(t+1)*10, 10+(s+1)*10);
          Application.ProcessMessages;
        end;

       end;
    sxedio_megalhs_klimakas.Width:=eikona.Width;
    sxedio_megalhs_klimakas.Height:=eikona.Height;
    sxedio_megalhs_klimakas.Picture.Bitmap.Assign(eikona);
    eikona.Free;
  end;
 end;
end;

procedure TForm1.selidesChange(Sender: TObject);
begin


  if perioxh_megalhs_klimakas.Visible then
   begin
     perioxh_megalhs_klimakas.Repaint;
   end;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  perioxh_megalhs_klimakas.Visible:=false;
end;

end.

