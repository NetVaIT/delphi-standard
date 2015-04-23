inherited frmPersonaRolesEdit: TfrmPersonaRolesEdit
  Caption = 'Rol Asociado'
  ClientHeight = 430
  ClientWidth = 621
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 627
  ExplicitHeight = 459
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 621
    Height = 389
    ExplicitWidth = 621
    ExplicitHeight = 389
    ClientRectBottom = 387
    ClientRectRight = 619
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 617
      ExplicitHeight = 359
      object Label1: TLabel
        Left = 16
        Top = 19
        Width = 15
        Height = 13
        Caption = 'Rol'
      end
      object Label2: TLabel
        Left = 16
        Top = 59
        Width = 97
        Height = 13
        Caption = 'Persona relacionada'
      end
      object Label3: TLabel
        Left = 16
        Top = 99
        Width = 36
        Height = 13
        Caption = 'Estatus'
      end
      object Label4: TLabel
        Left = 16
        Top = 139
        Width = 26
        Height = 13
        Caption = 'Clase'
      end
      object Label5: TLabel
        Left = 16
        Top = 181
        Width = 82
        Height = 13
        Caption = 'Fecha de ingreso'
        FocusControl = cxDBDateEdit1
      end
      object Label6: TLabel
        Left = 15
        Top = 224
        Width = 68
        Height = 13
        Caption = 'Fecha de baja'
        FocusControl = cxDBDateEdit2
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 15
        Top = 34
        DataBinding.DataField = 'Rol'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 0
        Width = 210
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 15
        Top = 74
        DataBinding.DataField = 'PersonaRelacionada'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 1
        Width = 522
      end
      object cxDBLookupComboBox3: TcxDBLookupComboBox
        Left = 15
        Top = 114
        DataBinding.DataField = 'RolEstatus'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 2
        Width = 210
      end
      object cxDBLookupComboBox4: TcxDBLookupComboBox
        Left = 15
        Top = 154
        DataBinding.DataField = 'RolClase'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 3
        Width = 210
      end
      object dbchkFacturar: TcxDBCheckBox
        Left = 416
        Top = 36
        Caption = 'Facturar'
        DataBinding.DataField = 'Facturar'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 121
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 16
        Top = 197
        DataBinding.DataField = 'FechaIngreso'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Width = 121
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 15
        Top = 240
        DataBinding.DataField = 'FechaBaja'
        DataBinding.DataSource = DataSource
        TabOrder = 6
        Width = 121
      end
    end
    object tsKardex: TcxTabSheet
      Caption = 'Kardex'
      ImageIndex = 1
      TabVisible = False
    end
    object tsEmpleado: TcxTabSheet
      Caption = 'Empleado'
      ImageIndex = 1
      TabVisible = False
    end
    object tsCuentas: TcxTabSheet
      Caption = 'Cuentas'
      ImageIndex = 2
      TabVisible = False
    end
    object tsEsquemaPago: TcxTabSheet
      Caption = 'Esquema de Pago'
      ImageIndex = 3
      TabVisible = False
    end
    object tsCuentasBancarias: TcxTabSheet
      Caption = 'Cuentas Bancarias'
      ImageIndex = 1
      TabVisible = False
    end
    object tsArchivosFacturar: TcxTabSheet
      Caption = 'Archivos para Facturar'
      ImageIndex = 1
      TabVisible = False
    end
  end
  inherited pmlMain: TPanel
    Top = 389
    Width = 621
    ExplicitTop = 389
    ExplicitWidth = 621
    inherited btnOk: TButton
      Left = 458
      ExplicitLeft = 458
    end
    inherited btnCancel: TButton
      Left = 539
      ExplicitLeft = 539
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
