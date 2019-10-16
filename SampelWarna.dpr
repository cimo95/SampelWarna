program SampelWarna;

uses
  Forms,
  uUtama in 'uUtama.pas' {f0};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Sampel Gambar';
  Application.CreateForm(Tf0, f0);
  Application.Run;
end.
