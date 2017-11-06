object FormLayoutXMLControlExtractorMain: TFormLayoutXMLControlExtractorMain
  Left = 0
  Top = 0
  Caption = 'FormLayoutXMLControlExtractorMain'
  ClientHeight = 644
  ClientWidth = 1073
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 505
    Top = 45
    Height = 599
    ExplicitLeft = 544
    ExplicitTop = 292
    ExplicitHeight = 100
  end
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 1073
    Height = 45
    Align = alTop
    TabOrder = 0
    object ButtonExtract: TButton
      Left = 21
      Top = 9
      Width = 129
      Height = 25
      Caption = 'Extract'
      TabOrder = 0
      OnClick = ButtonExtractClick
    end
    object ComboBoxLanguage: TComboBox
      Left = 220
      Top = 11
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 1
      Text = 'kotlin'
      Items.Strings = (
        'kotlin'
        'kotlin (BindExt)'
        'java')
    end
    object CheckBoxCamelCase: TCheckBox
      Left = 388
      Top = 13
      Width = 97
      Height = 17
      Caption = 'CamelCase'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object CheckBoxPrivate: TCheckBox
      Left = 480
      Top = 13
      Width = 97
      Height = 17
      Caption = 'Private'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
  end
  object PanelLeft: TPanel
    Left = 0
    Top = 45
    Width = 505
    Height = 599
    Align = alLeft
    TabOrder = 1
    object MemoLayoutXML: TMemo
      Left = 1
      Top = 42
      Width = 503
      Height = 556
      Align = alClient
      ScrollBars = ssBoth
      TabOrder = 0
      ExplicitLeft = -308
      ExplicitTop = 1
      ExplicitWidth = 493
      ExplicitHeight = 597
    end
    object PanelLeftTop: TPanel
      Left = 1
      Top = 1
      Width = 503
      Height = 41
      Align = alTop
      TabOrder = 1
      ExplicitLeft = 160
      ExplicitTop = 280
      ExplicitWidth = 185
      object ButtonXMLClear: TButton
        Left = 20
        Top = 7
        Width = 129
        Height = 25
        Caption = 'Clear XML'
        TabOrder = 0
        OnClick = ButtonXMLClearClick
      end
      object ButtonXMLPasteFromClipBoard: TButton
        Left = 157
        Top = 7
        Width = 129
        Height = 25
        Caption = 'Paste from ClipBoard'
        TabOrder = 1
        OnClick = ButtonXMLPasteFromClipBoardClick
      end
    end
  end
  object PanelClient: TPanel
    Left = 508
    Top = 45
    Width = 565
    Height = 599
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 296
    ExplicitTop = 176
    ExplicitWidth = 385
    ExplicitHeight = 209
    object MemoOutput: TMemo
      Left = 1
      Top = 42
      Width = 563
      Height = 556
      Align = alClient
      ReadOnly = True
      ScrollBars = ssBoth
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitWidth = 383
      ExplicitHeight = 207
    end
    object PanelClientTop: TPanel
      Left = 1
      Top = 1
      Width = 563
      Height = 41
      Align = alTop
      TabOrder = 1
      ExplicitLeft = 192
      ExplicitTop = 280
      ExplicitWidth = 185
      object ButtonCodeClear: TButton
        Left = 20
        Top = 7
        Width = 129
        Height = 25
        Caption = 'Clear Code'
        TabOrder = 0
        OnClick = ButtonCodeClearClick
      end
      object ButtonCodeCopyToClipBoard: TButton
        Left = 157
        Top = 7
        Width = 129
        Height = 25
        Caption = 'Copy to Clipboard'
        TabOrder = 1
        OnClick = ButtonCodeCopyToClipBoardClick
      end
    end
  end
end
