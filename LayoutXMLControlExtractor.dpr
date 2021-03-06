﻿program LayoutXMLControlExtractor;

uses
  EMemLeaks,
  Vcl.Forms,
  Form.LayoutXMLControlExtractorMain in 'Form.LayoutXMLControlExtractorMain.pas' {FormLayoutXMLControlExtractorMain};

{$R *.res}

begin
  {$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown := True;
  {$ENDIF}

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'LayoutXML Control Extractor v1.1';
  Application.CreateForm(TFormLayoutXMLControlExtractorMain, FormLayoutXMLControlExtractorMain);
  Application.Run;
end.
