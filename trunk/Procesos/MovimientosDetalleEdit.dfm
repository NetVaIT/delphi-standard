inherited frmMovimientosDetalleEdit: TfrmMovimientosDetalleEdit
  Caption = 'Movimiento detalle'
  ClientHeight = 281
  ClientWidth = 558
  ExplicitWidth = 564
  ExplicitHeight = 310
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 558
    Height = 240
    ExplicitWidth = 558
    ExplicitHeight = 240
    ClientRectBottom = 238
    ClientRectRight = 556
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 554
      ExplicitHeight = 210
      object Label1: TLabel
        Left = 24
        Top = 24
        Width = 97
        Height = 13
        Caption = 'Persona relacionada'
        FocusControl = DBLookupComboBox1
      end
      object Label2: TLabel
        Left = 24
        Top = 64
        Width = 20
        Height = 13
        Caption = 'Tipo'
        FocusControl = DBLookupComboBox2
      end
      object Label3: TLabel
        Left = 24
        Top = 104
        Width = 38
        Height = 13
        Caption = 'Importe'
        FocusControl = cxDBTextEdit1
      end
      object Label4: TLabel
        Left = 24
        Top = 144
        Width = 36
        Height = 13
        Caption = 'Estatus'
        FocusControl = DBLookupComboBox3
        Visible = False
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 24
        Top = 40
        Width = 514
        Height = 21
        DataField = 'PersonaRelacionada'
        DataSource = DataSource
        Enabled = False
        ReadOnly = True
        TabOrder = 0
        TabStop = False
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 24
        Top = 80
        Width = 304
        Height = 21
        DataField = 'Tipo'
        DataSource = DataSource
        Enabled = False
        ReadOnly = True
        TabOrder = 1
        TabStop = False
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 24
        Top = 120
        DataBinding.DataField = 'Importe'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 24
        Top = 160
        Width = 304
        Height = 21
        DataField = 'Estatus'
        DataSource = DataSource
        TabOrder = 3
        Visible = False
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 240
    Width = 558
    ExplicitTop = 240
    ExplicitWidth = 558
    inherited btnOk: TButton
      Left = 395
      ExplicitLeft = 395
    end
    inherited btnCancel: TButton
      Left = 476
      ExplicitLeft = 476
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
