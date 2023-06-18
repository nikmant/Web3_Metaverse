program Web3_Metaverse;

uses
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {MainForm: TUniForm},
  UFrameCryptoPro in 'UFrameCryptoPro.pas' {FrameCryptoPro: TUniFrame},
  UFrameMetaverse in 'UFrameMetaverse.pas' {FrameMetaverse: TUniFrame},
  UFrameTest in 'UFrameTest.pas' {FrameTest: TUniFrame},
  USystemCola in '..\..\MedRay\MedUse\MedUse.Site\MedUse.Site.MW\USystemCola.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
end.
