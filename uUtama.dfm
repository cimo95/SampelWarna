object f0: Tf0
  Left = 459
  Top = 222
  BorderIcons = [biSystemMenu, biHelp]
  BorderStyle = bsSingle
  Caption = 'Sampel Warna'
  ClientHeight = 314
  ClientWidth = 466
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object gb0: TGroupBox
    Left = 8
    Top = 8
    Width = 300
    Height = 300
    Caption = 'Gambar '
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object scb0: TScrollBox
      Left = 2
      Top = 15
      Width = 296
      Height = 283
      Cursor = crHandPoint
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnContextPopup = i0ContextPopup
      object i0: TImage
        Left = 0
        Top = 0
        Width = 100
        Height = 100
        Cursor = crHandPoint
        AutoSize = True
        ParentShowHint = False
        ShowHint = True
        OnClick = i0Click
        OnDblClick = i0DblClick
        OnMouseMove = i0MouseMove
      end
    end
  end
  object gb1: TGroupBox
    Left = 312
    Top = 8
    Width = 150
    Height = 273
    Caption = 'Rincian'
    TabOrder = 1
    object gb2: TGroupBox
      Left = 2
      Top = 15
      Width = 146
      Height = 146
      Align = alTop
      Caption = 'Sampel'
      TabOrder = 0
      object sh0: TShape
        Left = 2
        Top = 15
        Width = 142
        Height = 129
        Align = alClient
        OnContextPopup = l0ContextPopup
      end
      object l0: TLabel
        Left = 2
        Top = 15
        Width = 142
        Height = 129
        Cursor = crHandPoint
        Hint = 'Klik untuk menyallin kode HTML-nya'
        Align = alClient
        Alignment = taCenter
        Caption = '#000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Layout = tlCenter
        OnClick = l0Click
        OnContextPopup = l0ContextPopup
      end
    end
    object gb3: TGroupBox
      Left = 0
      Top = 163
      Width = 50
      Height = 40
      Caption = 'R'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object l1: TLabel
        Left = 2
        Top = 15
        Width = 46
        Height = 23
        Align = alClient
        Alignment = taCenter
        Caption = '255'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
    end
    object gb4: TGroupBox
      Left = 50
      Top = 163
      Width = 50
      Height = 40
      Caption = 'G'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object l2: TLabel
        Left = 2
        Top = 15
        Width = 46
        Height = 23
        Align = alClient
        Alignment = taCenter
        Caption = '255'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
    end
    object gb5: TGroupBox
      Left = 100
      Top = 163
      Width = 50
      Height = 40
      Caption = 'B'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object l3: TLabel
        Left = 2
        Top = 15
        Width = 46
        Height = 23
        Align = alClient
        Alignment = taCenter
        Caption = '255'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
    end
    object gb6: TGroupBox
      Left = 0
      Top = 203
      Width = 75
      Height = 40
      Caption = 'Koord. X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object l4: TLabel
        Left = 2
        Top = 15
        Width = 71
        Height = 23
        Align = alClient
        Alignment = taCenter
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
    end
    object gb7: TGroupBox
      Left = 75
      Top = 203
      Width = 75
      Height = 40
      Caption = 'Koord. Y'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      object l5: TLabel
        Left = 2
        Top = 15
        Width = 71
        Height = 23
        Align = alClient
        Alignment = taCenter
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
    end
    object cb0: TCheckBox
      Left = 8
      Top = 248
      Width = 137
      Height = 17
      Caption = 'Langsung deteksi'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 6
    end
  end
  object b0: TButton
    Left = 312
    Top = 282
    Width = 73
    Height = 25
    Caption = 'BUKA FILE'
    TabOrder = 2
    OnClick = b0Click
  end
  object b1: TButton
    Left = 386
    Top = 282
    Width = 73
    Height = 25
    Caption = 'BANTUAN'
    TabOrder = 3
    OnClick = b1Click
  end
  object opd0: TOpenPictureDialog
    Filter = 
      'Semua yang didukung (*.bmp; *.jpg)|*.bmp;*.jpg|Bitmap (*.bmp)|*.' +
      'bmp|Citra JPEG (*.jpg)|*.jpg'
    Options = [ofHideReadOnly, ofFileMustExist, ofNoNetworkButton, ofDontAddToRecent, ofForceShowHidden]
    Title = 'Buka file gambar'
    Left = 226
    Top = 55
  end
  object sd0: TSaveDialog
    Filter = 'Bitmap (32 bit) (*.bmp)|*.bmp'
    Options = [ofHideReadOnly, ofDontAddToRecent, ofForceShowHidden]
    Title = 'Simpan warna sebagai'
    Left = 226
    Top = 95
  end
end
