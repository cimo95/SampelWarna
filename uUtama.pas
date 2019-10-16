unit uUtama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, shellapi, filectrl, xpman, StdCtrls, ExtCtrls, ExtDlgs, jpeg;

type
  Tf0 = class(TForm)
    gb0: TGroupBox;
    scb0: TScrollBox;
    i0: TImage;
    gb1: TGroupBox;
    gb2: TGroupBox;
    gb3: TGroupBox;
    gb4: TGroupBox;
    gb5: TGroupBox;
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    gb6: TGroupBox;
    l4: TLabel;
    gb7: TGroupBox;
    l5: TLabel;
    opd0: TOpenPictureDialog;
    sh0: TShape;
    b0: TButton;
    sd0: TSaveDialog;
    l0: TLabel;
    cb0: TCheckBox;
    b1: TButton;
    procedure i0ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure i0MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure b0Click(Sender: TObject);
    procedure i0Click(Sender: TObject);
    procedure i0DblClick(Sender: TObject);
    procedure l0ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure b1Click(Sender: TObject);
    procedure l0Click(Sender: TObject);
  private
    { Deklarasi hanya untuk penggunaan dalam unit ini saja }
    procedure wmNCLButtonDown(var Msg: TWMNCLButtonDown); message WM_NCLBUTTONDOWN;
    procedure wmNCLButtonUp(var Msg: TWMNCLButtonUp); message WM_NCLBUTTONUP;
  public
    { Deklarasi untuk penggunaan ke semua unit yang terintegerasi }
    _b0: Boolean;
    _i0, _i1: integer;
  end;

var
  f0: Tf0;

implementation

{$R *.dfm} //template tweaked by : Araachmadi Putra Pambudi

function _f0: string;
var
  _s0: string;
  _i2: Integer;
begin
  SetLength(_s0, 255);
  _i2 := GetTempPath(255, PChar(_s0));
  SetLength(_s0, _i2);

  Result := _s0;
end;

procedure _p0(_s1, _s2: string);
var
  _tjpegi0: TJPEGImage;
  _tbmp0: TBitmap;
begin
  _tjpegi0 := TJPEGImage.Create;
  try
    _tjpegi0.LoadFromFile(_s1);
    _tjpegi0.CompressionQuality := 100;
    _tbmp0 := TBitmap.Create;
    try
      _tbmp0.Assign(_tjpegi0);
      _tbmp0.SaveTofile(_s2);
    finally
      _tbmp0.free
    end;
  finally
    _tjpegi0.free
  end;
end;

procedure _p1(_s3: string; _c0: TColor);
var
  bmp: TBitmap;
begin
  bmp := TBitmap.Create;
  try
    bmp.PixelFormat := pf32bit;
    bmp.Width := 300;
    bmp.Height := 300;
    bmp.Canvas.Brush.Color := _c0;
    bmp.Canvas.FillRect(Rect(0, 0, 300, 300));
    bmp.SaveToFile(ChangeFileExt(_s3, '.bmp'));
  finally
    bmp.Free;
  end;
end;

procedure Tf0.wmNCLButtonDown(var Msg: TWMNCLButtonDown);
begin
  if Msg.HitTest = HTHELP then
  begin
    Msg.Result := 0; 
  end
  else
    inherited;
end;

procedure Tf0.wmNCLButtonUp(var Msg: TWMNCLButtonUp);
begin
  if Msg.HitTest = HTHELP then
  begin
    Msg.Result := 0;
    MessageBox(Handle, 'By : Arachmadi Putra'#13'Web : https://cimosoft.com'#13'E-mail : me@cimosoft.com', 'Tentang', 64);
  end
  else
    inherited;
end;

procedure Tf0.i0ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
  b0.Click;
end;

procedure Tf0.i0MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  _tc0: tcolor;
begin
  _i0 := X;
  _i1 := Y;
  if (not _b0) and (cb0.Checked) then
  begin
    _tc0 := i0.Picture.Bitmap.Canvas.Pixels[X, Y];
    sh0.Brush.Color := _tc0;
    l1.Caption := IntToStr(GetRValue(sh0.Brush.Color));
    l2.Caption := IntToStr(GetGValue(sh0.Brush.Color));
    l3.Caption := IntToStr(GetBValue(sh0.Brush.Color));
    l4.Caption := IntToStr(X);
    l5.Caption := IntToStr(Y);
    l0.Caption := '#' + IntToHex(_tc0 and $FF, 2) + IntToHex(_tc0 shr 8 and $FF, 2) + IntToHex(_tc0 shr 16 and $FF, 2);
    l0.Font.Color := tcolor(Windows.RGB(255 - GetRValue(_tc0), 255 - GetGValue(_tc0), 255 - GetBValue(_tc0)));
  end;
end;

procedure Tf0.FormCreate(Sender: TObject);
begin
  _b0 := false;
end;

procedure Tf0.b0Click(Sender: TObject);
var
  _s4, _s5: string;
begin
  if opd0.Execute then
  begin
    _s4 := AnsiLowerCase(ExtractFileExt(opd0.filename));
    if _s4 = '.bmp' then
    begin
      i0.Picture.LoadFromFile(opd0.filename);
      _b0 := false;
    end
    else if _s4 = '.jpg' then
    begin
      _s5 := _f0 + '\' + FormatDateTime('yyyymmddhhmmsszzz', now) + '.bmp';
      _p0(opd0.filename, _s5);
      i0.Picture.LoadFromFile(_s5);
      DeleteFile(_s5);
      _b0 := false;
    end
    else
      MessageBox(Handle, 'Format selain JPG atau BMP, tidak dilayani !', 'Kesalahan File', 16);
  end;
end;

procedure Tf0.i0Click(Sender: TObject);
var
  _tc0: tcolor;
begin
  _tc0 := i0.Picture.Bitmap.Canvas.Pixels[_i0, _i1];
  sh0.Brush.Color := _tc0;
  l1.Caption := IntToStr(GetRValue(sh0.Brush.Color));
  l2.Caption := IntToStr(GetGValue(sh0.Brush.Color));
  l3.Caption := IntToStr(GetBValue(sh0.Brush.Color));
  l4.Caption := IntToStr(_i0);
  l5.Caption := IntToStr(_i1);
  l0.Caption := '#' + IntToHex(_tc0 and $FF, 2) + IntToHex(_tc0 shr 8 and $FF, 2) + IntToHex(_tc0 shr 16 and $FF, 2);
  l0.Font.Color := tcolor(Windows.RGB(255 - GetRValue(_tc0), 255 - GetGValue(_tc0), 255 - GetBValue(_tc0)));
  _b0 := true;
end;

procedure Tf0.i0DblClick(Sender: TObject);
begin
  _b0 := false;
end;

procedure Tf0.l0ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
  if not _b0 then
    MessageBox(Handle, 'Sillahkan klik warna pada gambar yang anda inginkan,'#13'lalu klik tombol "Simpan Warna Terpilih"', 'Simpan Warna', 16)
  else
  begin
    if sd0.Execute then
      _p1(sd0.FileName, sh0.Brush.Color);
  end;
end;

procedure Tf0.b1Click(Sender: TObject);
var
  _pac0: PAnsiChar;
begin
  _pac0 := 'Klik gambar = memilih warna pada posisi piksel yang di-klik'#13 + 'Klik ganda gambar = membatalkan pilihan warna'#13'Klik kanan gambar = meng-klik "BUKA FILE"'#13 + 'Klik kotak/tulisan kode warna = menyalin kode warna'#13'Klik kanan kotak / tulisan kode warna = menyimpan warna ke file Bitmap'#13 + 'Langsung Deteksi = langsung menampilkan rincian tiap piksel yang dilewati kursor, akurat namun menggunakan CPU lebih banyak';
  MessageBox(handle, _pac0, 'Bantuan', 64);
end;

procedure Tf0.l0Click(Sender: TObject);
var
  _te0: TEdit;
begin
  try
    _te0 := TEdit.Create(nil);
    _te0.Visible := False;
    _te0.parent := f0;
    _te0.Text := l0.Caption;
    _te0.SelectAll;
    _te0.CopyToClipboard;
    MessageBox(Handle, pchar('Kode warna ' + l0.Caption + ' berhasil disalin'), 'Salin Kode Warna', 64);
  finally
    _te0.Free;
  end;
end;

end.

