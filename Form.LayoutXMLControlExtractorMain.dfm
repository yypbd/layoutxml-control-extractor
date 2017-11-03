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
    Lines.Strings = (
      '<?xml version="1.0" encoding="utf-8"?>'
      
        '<LinearLayout xmlns:android="http://schemas.android.com/apk/res/' +
        'android"'
      '    xmlns:app="http://schemas.android.com/apk/res-auto"'
      '    xmlns:tools="http://schemas.android.com/tools"'
      '    android:layout_width="match_parent"'
      '    android:layout_height="match_parent"'
      '    android:orientation="vertical"'
      
        '    tools:context="com.yypbd.lunaranniversary.LunarEventDetailAc' +
        'tivity">'
      ''
      '    <LinearLayout'
      '        android:layout_width="match_parent"'
      '        android:layout_height="match_parent"'
      '        android:layout_weight="1"'
      '        android:orientation="vertical">'
      ''
      '        <TextView'
      '            android:id="@+id/textViewLunarEventDetailInfo"'
      '            android:layout_width="match_parent"'
      '            android:layout_height="wrap_content"'
      '            android:layout_marginLeft="8dp"'
      '            android:layout_marginTop="24dp"'
      '            android:text="TextView" />'
      ''
      '        <TextView'
      '            android:id="@+id/textViewLunarEventDetailTitle"'
      '            android:layout_width="match_parent"'
      '            android:layout_height="wrap_content"'
      '            android:layout_marginLeft="8dp"'
      '            android:layout_marginTop="8dp"'
      '            android:text="TextView" />'
      ''
      '        <LinearLayout'
      '            android:layout_width="match_parent"'
      '            android:layout_height="wrap_content"'
      '            android:layout_marginTop="10dp"'
      '            android:orientation="horizontal">'
      ''
      '            <TextView'
      '                android:layout_width="wrap_content"'
      '                android:layout_height="wrap_content"'
      '                android:layout_marginLeft="10dp"'
      '                android:layout_weight="1"'
      '                android:text="'#52628#44032#54624' '#50672#46020'"'
      '                android:textSize="16sp"'
      '                android:textStyle="bold" />'
      ''
      '            <Spinner'
      
        '                android:id="@+id/spinnerLunarEventDetailSolarYea' +
        'rStart"'
      '                android:layout_width="wrap_content"'
      '                android:layout_height="wrap_content" />'
      ''
      '            <Spinner'
      
        '                android:id="@+id/spinnerLunarEventDetailSolarYea' +
        'rEnd"'
      '                android:layout_width="wrap_content"'
      '                android:layout_height="wrap_content" />'
      ''
      '        </LinearLayout>'
      '        <LinearLayout'
      '            android:layout_width="match_parent"'
      '            android:layout_height="wrap_content"'
      '            android:orientation="horizontal">'
      ''
      '            <TextView'
      '                android:layout_width="wrap_content"'
      '                android:layout_height="wrap_content"'
      '                android:layout_marginLeft="10dp"'
      '                android:layout_weight="1"'
      '                android:text="'#52888#47536#45908' '#49440#53469'"'
      '                android:textSize="16sp"'
      '                android:textStyle="bold" />'
      ''
      '            <Spinner'
      
        '                android:id="@+id/spinnerLunarEventDetailCalendar' +
        '"'
      '                android:layout_width="wrap_content"'
      '                android:layout_height="wrap_content" />'
      '        </LinearLayout>'
      ''
      '        <LinearLayout'
      '            android:layout_width="match_parent"'
      '            android:layout_height="wrap_content"'
      '            android:layout_marginBottom="32dp"'
      '            android:layout_marginLeft="32dp"'
      '            android:layout_marginRight="32dp"'
      '            android:layout_marginTop="16dp"'
      '            android:orientation="horizontal">'
      ''
      '            <Button'
      '                android:id="@+id/buttonLunarEventDetailPreview"'
      
        '                style="@style/Widget.AppCompat.Button.Borderless' +
        '"'
      '                android:layout_width="wrap_content"'
      '                android:layout_height="wrap_content"'
      '                android:layout_weight="1"'
      '                android:text="'#49325#51228'" />'
      ''
      '            <Button'
      '                android:id="@+id/buttonLunarEventDetailAdd"'
      
        '                style="@style/Widget.AppCompat.Button.Borderless' +
        '"'
      '                android:layout_width="wrap_content"'
      '                android:layout_height="wrap_content"'
      '                android:layout_weight="1"'
      '                android:text="'#50577#47141#51004#47196' '#48320#54872'" />'
      ''
      '            <Button'
      '                android:id="@+id/buttonLunarEventDetailDelete"'
      
        '                style="@style/Widget.AppCompat.Button.Borderless' +
        '"'
      '                android:layout_width="wrap_content"'
      '                android:layout_height="wrap_content"'
      '                android:layout_weight="1"'
      '                android:text="'#52888#47536#45908#50640' '#52628#44032'" />'
      ''
      '        </LinearLayout>'
      '        <LinearLayout'
      '            android:layout_width="match_parent"'
      '            android:layout_height="match_parent"'
      '            android:orientation="vertical">'
      ''
      '            <ListView'
      '                android:id="@+id/listViewLunarEventDetail"'
      '                android:layout_width="match_parent"'
      '                android:layout_height="match_parent" />'
      '        </LinearLayout>'
      '    </LinearLayout>'
      '</LinearLayout>')
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
    ExplicitLeft = 520
    ExplicitTop = 100
    ExplicitWidth = 525
    ExplicitHeight = 389
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
        'kotlin (bind)'
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
  end
end
