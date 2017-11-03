unit Form.LayoutXMLControlExtractorMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, XMLDoc, XMLIntf,
  Vcl.ExtCtrls;

type
  TFormLayoutXMLControlExtractorMain = class(TForm)
    MemoLayoutXML: TMemo;
    MemoOutput: TMemo;
    PanelTop: TPanel;
    ButtonExtract: TButton;
    ComboBoxLanguage: TComboBox;
    CheckBoxCamelCase: TCheckBox;
    Splitter1: TSplitter;
    procedure ButtonExtractClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FList1: TStringList;
    FList2: TStringList;

    procedure ReadChildNodes( const AXMLNodeList: IXMLNodeList );
    procedure ProcessNode( const AXMLNode: IXMLNode );
  public
    { Public declarations }
  end;

var
  FormLayoutXMLControlExtractorMain: TFormLayoutXMLControlExtractorMain;

implementation


{$R *.dfm}

procedure TFormLayoutXMLControlExtractorMain.ButtonExtractClick(Sender: TObject);
var
  XML: TXMLDocument;
begin
  XML := TXMLDocument.Create( Application );
  try
    MemoOutput.Clear;
    FList1.Clear;
    FList2.Clear;

    XML.LoadFromXML( MemoLayoutXML.Lines.Text );
    XML.Active := True;

    ReadChildNodes( XML.ChildNodes );

    if FList1.Count > 0 then
      MemoOutput.Lines.Add( FList1.Text );
    if FList2.Count > 0 then
      MemoOutput.Lines.Add( FList2.Text );
  finally
    XML.Free;
  end;
end;

procedure TFormLayoutXMLControlExtractorMain.FormCreate(Sender: TObject);
begin
  Caption := Application.Title;

  FList1 := TStringList.Create;
  FList2 := TStringList.Create;
end;

procedure TFormLayoutXMLControlExtractorMain.FormDestroy(Sender: TObject);
begin
  FList1.Free;
  FList2.Free;
end;

procedure TFormLayoutXMLControlExtractorMain.ProcessNode(const AXMLNode: IXMLNode);
  function GetId(const AXMLNodeList: IXMLNodeList): string;
  var
    I: Integer;
  begin
    Result := '';
    try
      for I := 0 to AXMLNodeList.Count - 1 do
      begin
        if AXMLNodeList.Get(I).NodeName = 'android:id' then
        begin
          Result := AXMLNodeList.Get(I).NodeValue;
          Exit;
        end;
      end;
    except
    end;
  end;

  function GetCuttedName(const AId: string): string;
  var
    PosSlash: Integer;
  begin
    Result := '';

    PosSlash := Pos( '/', AId );
    if PosSlash > 0 then
      Result := Copy( AId, PosSlash + 1, Length(AId) - PosSlash );
  end;

  function GetCamelName(const AName: string): string;
  var
    FirstChar: string;
  begin
    FirstChar := UpperCase( Copy( AName, 1, 1 ) );
    Result := 'm' + FirstChar + Copy( AName, 2, Length(AName) - 1 );
  end;
var
  Id: string;
  Line1, Line2: string;

  CuttedName: string;
  TypeName: string;
  ControlName: string;
begin
  if AXMLNode.NodeName = '' then Exit;
  if AXMLNode.NodeName = 'xml' then Exit;
  if Copy( AXMLNode.NodeName, Length(AxMLNode.NodeName) - 5, 6 ) = 'Layout' then Exit;

  // @+id/spinnerDialogLunarEventAddLunarYear
  Id := GetId(AXMLNode.AttributeNodes);
  if Id = '' then Exit;

  TypeName := AXMLNode.NodeName;
  // spinnerDialogLunarEventAddLunarYear
  CuttedName := GetCuttedName(Id);

  if CheckBoxCamelCase.Checked then
    ControlName := GetCamelName( CuttedName )
  else
    ControlName := CuttedName;


  Line1 := '';
  Line2 := '';
  case ComboBoxLanguage.ItemIndex of
    0: Line1 := Format( 'private val %s = findViewById(R.id.%s) as %s', [ControlName, CuttedName, TypeName] );
    1: LIne1 := Format( 'private val %s: %s by bind(R.id.%s)', [ControlName, TypeName, CuttedName] );
    2:
    begin
      Line1 := Format( 'private %s %s;', [TypeName, ControlName] );
      Line2 := Format( '%s = (%s) findViewById(R.id.%s);', [ControlName, TypeName, CuttedName] );
    end;
  end;

  if Line1 <> '' then
    FList1.Add( Line1 );
  if Line2 <> '' then
    FList2.Add( Line2 );
end;

procedure TFormLayoutXMLControlExtractorMain.ReadChildNodes(const AXMLNodeList: IXMLNodeList);
var
  I: Integer;
begin
  for I := 0 to AXMLNodeList.Count - 1 do
  begin
    ProcessNode( AXMLNodeList[I] );

    if AXMLNodeList[I].ChildNodes.Count > 0 then
    begin
      ReadChildNodes( AXMLNodeList[I].ChildNodes );
    end
  end;
end;

end.
