inherited frmPuesto: TfrmPuesto
  Caption = 'Puesto'
  ClientHeight = 301
  ClientWidth = 705
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 711
  ExplicitHeight = 330
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 705
    Height = 260
    ExplicitWidth = 705
    ExplicitHeight = 391
    ClientRectBottom = 258
    ClientRectRight = 703
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 701
      ExplicitHeight = 361
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 56
        Width = 54
        Height = 13
        Caption = 'Descripci'#243'n'
        FocusControl = cxDBTextEdit2
      end
      object Label3: TLabel
        Left = 16
        Top = 96
        Width = 29
        Height = 13
        Caption = 'Fecha'
      end
      object Label5: TLabel
        Left = 16
        Top = 134
        Width = 76
        Height = 13
        Caption = 'Puesto Superior'
      end
      object Label6: TLabel
        Left = 16
        Top = 174
        Width = 47
        Height = 13
        Caption = 'Categoria'
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 32
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 72
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 425
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 16
        Top = 149
        DataBinding.DataField = 'PuestoSuperior'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 3
        Width = 425
      end
      object cxDBLookupComboBox3: TcxDBLookupComboBox
        Left = 16
        Top = 189
        DataBinding.DataField = 'PuestoCategoria'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 4
        Width = 241
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 16
        Top = 109
        DataBinding.DataField = 'FechaCreacion'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 142
      end
    end
    object tsPerfil: TcxTabSheet
      Caption = 'Perfil del Puesto'
      ImageIndex = 1
      ExplicitHeight = 361
    end
    object tsBateriaCapacitacion: TcxTabSheet
      Caption = 'Bateria de Capacitacion'
      ImageIndex = 2
      ExplicitHeight = 361
    end
    object tsPlazas: TcxTabSheet
      Caption = 'Plazas'
      ImageIndex = 3
      ExplicitHeight = 361
    end
  end
  inherited pmlMain: TPanel
    Top = 260
    Width = 705
    ExplicitTop = 391
    ExplicitWidth = 705
    inherited btnOk: TButton
      Left = 542
      ExplicitLeft = 542
    end
    inherited btnCancel: TButton
      Left = 623
      ExplicitLeft = 623
    end
  end
  inherited ActionList: TActionList
    Left = 336
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
    DesignInfo = 65904
  end
end
