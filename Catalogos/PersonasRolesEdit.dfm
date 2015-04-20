inherited frmPersonaRolesEdit: TfrmPersonaRolesEdit
  Caption = 'Rol Asociado'
  ClientHeight = 262
  ClientWidth = 555
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 561
  ExplicitHeight = 290
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 555
    Height = 221
    Properties.ActivePage = tsCuentasBancarias
    ExplicitWidth = 555
    ExplicitHeight = 221
    ClientRectBottom = 219
    ClientRectRight = 553
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 551
      ExplicitHeight = 191
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
        Width = 100
        Height = 13
        Caption = 'Persona Relacionada'
      end
      object Label3: TLabel
        Left = 16
        Top = 99
        Width = 71
        Height = 13
        Caption = 'Estatus del Rol'
      end
      object Label4: TLabel
        Left = 16
        Top = 139
        Width = 61
        Height = 13
        Caption = 'Clase del Rol'
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
    end
    object tsKardex: TcxTabSheet
      Caption = 'Kardex'
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
    object tsContactoEmergencia: TcxTabSheet
      Caption = 'Contactos Emergencia'
      ImageIndex = 1
      TabVisible = False
    end
    object tsCuentasBancarias: TcxTabSheet
      Caption = 'Cuentas Bancarias'
      ImageIndex = 1
    end
  end
  inherited pmlMain: TPanel
    Top = 221
    Width = 555
    ExplicitTop = 221
    ExplicitWidth = 555
    inherited btnOk: TButton
      Left = 392
      ExplicitLeft = 392
    end
    inherited btnCancel: TButton
      Left = 473
      ExplicitLeft = 473
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmPersona.adodsPersonaRoles
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
