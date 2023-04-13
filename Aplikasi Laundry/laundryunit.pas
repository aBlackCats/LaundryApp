unit LaundryUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    btn_pesan: TButton;
    btn_btl: TButton;
    descText: TLabel;
    inp1: TEdit;
    Label1: TLabel;
    harga: TLabel;
    Label2: TLabel;
    harga_total: TLabel;
    Panel1: TPanel;
    desc: TPanel;
    normal: TRadioButton;
    normalplus: TRadioButton;
    Panel2: TPanel;
    premium: TRadioButton;
    ultrafast: TRadioButton;
    RadioGroup1: TRadioGroup;
    procedure btn_btlClick(Sender: TObject);
    procedure btn_pesanClick(Sender: TObject);
    procedure hargaClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure normalChange(Sender: TObject);
    procedure normalplusChange(Sender: TObject);
    procedure premiumChange(Sender: TObject);
    procedure ultrafastChange(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  harga_awal,berat : real;

implementation

{$R *.lfm}

{ TForm1 }



procedure TForm1.hargaClick(Sender: TObject);
begin

end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.btn_btlClick(Sender: TObject);
begin
  descText.Caption:='';
  harga.Caption:='';
  harga_total.Caption:='';
  inp1.Text:='';
end;

procedure TForm1.btn_pesanClick(Sender: TObject);
begin
  berat := StrToFloat(inp1.Text);
  if normal.Checked = true then
    begin
     harga_awal := 15000 * berat;
     if berat <= 5 then harga_total.Caption := FloatToStr(harga_awal - (harga_awal * 0.10))
     else harga_total.Caption:= FloatToStr(harga_awal);
    end
  else if normalplus.Checked = true then
    begin
     harga_awal := 20000 * berat;
     if berat <= 8 then harga_total.Caption := FloatToStr(harga_awal - (harga_awal * 0.11))
     else harga_total.Caption:= FloatToStr(harga_awal);
    end
  else if premium.Checked = true then
    begin
     harga_awal := 23000 * berat;
     if berat <= 10 then harga_total.Caption := FloatToStr(harga_awal - (harga_awal * 0.13))
     else harga_total.Caption:= FloatToStr(harga_awal);
    end
  else if ultrafast.Checked = true then
     begin
     harga_awal := 28000 * berat;
     if berat <= 10 then harga_total.Caption := FloatToStr(harga_awal - (harga_awal * 0.15))
     else harga_total.Caption:= FloatToStr(harga_awal);
     end
  else
      ShowMessage('Pilih Paket Laundry');

end;

procedure TForm1.normalChange(Sender: TObject);
begin
  descText.Caption:='Cuci + Kering 12 Jam. Max 5 KG';
  harga.Caption:='Rp.15000 Jika Berat lebih dari 5 KG. Harga Turun 10% Jika Berat dibawah 5 KG';
end;

procedure TForm1.normalplusChange(Sender: TObject);
begin
  descText.Caption:='Cuci + Kering + Lipat 8 Jam. Max 8 KG';
  harga.Caption:='Rp.20000 Jika Berat lebih dari 8 KG. Harga Turun 11% Jika Berat dibawah 8 KG';
end;

procedure TForm1.premiumChange(Sender: TObject);
begin
  descText.Caption:='Cuci + Kering + Lipat 6 Jam. Max 10 KG';
  harga.Caption:='Rp.23000 Jika Berat lebih dari 10 KG. Harga Turun 13% Jika Berat dibawah 10 KG';
end;

procedure TForm1.ultrafastChange(Sender: TObject);
begin
  descText.Caption:='Cuci + Kering + Lipat 3 Jam. Max 10 KG';
  harga.Caption:='Rp.28000 Jika Berat Lebih dari 10 KG. Harga Turun 15% Jika Berat dibawah 10 KG';
end;

end.

