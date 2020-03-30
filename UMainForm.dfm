object MainForm: TMainForm
  Left = 772
  Top = 268
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'MainForm'
  ClientHeight = 556
  ClientWidth = 601
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object inputEdt: TEdit
    Left = 0
    Top = 8
    Width = 353
    Height = 21
    Hint = 'Input word'
    TabOrder = 0
    OnChange = inputEdtChange
    OnKeyPress = inputEdtKeyPress
  end
  object fillTreeBtn: TButton
    Left = 432
    Top = 8
    Width = 81
    Height = 25
    Caption = 'add word'
    TabOrder = 1
    OnClick = fillTreeBtnClick
  end
  object findFormsBtn: TButton
    Left = 520
    Top = 8
    Width = 75
    Height = 25
    Caption = 'find forms'
    TabOrder = 2
    OnClick = findFormsBtnClick
  end
  object grp1: TGroupBox
    Left = 0
    Top = 40
    Width = 321
    Height = 513
    Caption = 'TrieTree'
    TabOrder = 3
    object treeView: TTreeView
      Left = 0
      Top = 16
      Width = 321
      Height = 497
      Indent = 19
      TabOrder = 0
    end
  end
  object grp2: TGroupBox
    Left = 328
    Top = 40
    Width = 273
    Height = 513
    Caption = 'Result'
    TabOrder = 4
    object resultMmo: TMemo
      Left = 0
      Top = 16
      Width = 273
      Height = 505
      Enabled = False
      TabOrder = 0
    end
  end
  object formSe: TSpinEdit
    Left = 360
    Top = 8
    Width = 65
    Height = 22
    MaxValue = 1
    MinValue = 0
    TabOrder = 5
    Value = 0
  end
end
