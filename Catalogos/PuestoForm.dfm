inherited frmPuesto: TfrmPuesto
  Caption = 'Puesto'
  ClientHeight = 432
  ClientWidth = 705
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 711
  ExplicitHeight = 460
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 705
    Height = 391
    ExplicitWidth = 474
    ExplicitHeight = 263
    ClientRectBottom = 389
    ClientRectRight = 703
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 470
      ExplicitHeight = 233
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 64
        Height = 13
        Caption = 'Identificacion'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 56
        Width = 54
        Height = 13
        Caption = 'Descripcion'
        FocusControl = cxDBTextEdit2
      end
      object Label3: TLabel
        Left = 16
        Top = 96
        Width = 142
        Height = 13
        Caption = 'Fecha de Creacion del Puesto'
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
        Width = 100
        Height = 13
        Caption = 'Categoria del Puesto'
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 32
        DataBinding.DataField = 'Identificacion'
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
        DataBinding.DataField = 'FechaCreacionPuesto'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 142
      end
    end
    object tsPerfil: TcxTabSheet
      Caption = 'Perfil del Puesto'
      ImageIndex = 1
      ExplicitWidth = 470
      ExplicitHeight = 233
    end
    object tsBateriaCapacitacion: TcxTabSheet
      Caption = 'Bateria de Capacitacion'
      ImageIndex = 2
      ExplicitWidth = 470
      ExplicitHeight = 233
    end
    object tsPlazas: TcxTabSheet
      Caption = 'Plazas'
      ImageIndex = 3
      ExplicitWidth = 470
      ExplicitHeight = 233
    end
  end
  inherited pmlMain: TPanel
    Top = 391
    Width = 705
    ExplicitTop = 263
    ExplicitWidth = 474
    inherited btnOk: TButton
      Left = 542
      ExplicitLeft = 311
    end
    inherited btnCancel: TButton
      Left = 623
      ExplicitLeft = 392
    end
  end
  inherited DataSource: TDataSource
    Left = 304
  end
  inherited ActionList: TActionList
    Left = 336
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
    DesignInfo = 65904
  end
end
