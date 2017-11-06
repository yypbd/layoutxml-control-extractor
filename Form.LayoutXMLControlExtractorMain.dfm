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
    Left = 493
    Top = 45
    Height = 599
    ExplicitLeft = 544
    ExplicitTop = 292
    ExplicitHeight = 100
  end
  object MemoLayoutXML: TMemo
    Left = 0
    Top = 45
    Width = 493
    Height = 599
    Align = alLeft
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object MemoOutput: TMemo
    Left = 496
    Top = 45
    Width = 577
    Height = 599
    Align = alClient
    ScrollBars = ssBoth
    TabOrder = 1
  end
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 1073
    Height = 45
    Align = alTop
    TabOrder = 2
    object ButtonExtract: TButton
      Left = 24
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Extract'
      TabOrder = 0
      OnClick = ButtonExtractClick
    end
    object ComboBoxLanguage: TComboBox
      Left = 156
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
      Left = 324
      Top = 13
      Width = 97
      Height = 17
      Caption = 'CamelCase'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object CheckBoxPrivate: TCheckBox
      Left = 416
      Top = 13
      Width = 97
      Height = 17
      Caption = 'Private'
      TabOrder = 3
    end
  end
end
