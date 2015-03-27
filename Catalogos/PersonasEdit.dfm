inherited frmPersonaEdit: TfrmPersonaEdit
  Caption = 'Persona'
  ClientHeight = 491
  ClientWidth = 624
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 630
  ExplicitHeight = 519
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 624
    Height = 450
    ExplicitWidth = 624
    ExplicitHeight = 450
    ClientRectBottom = 448
    ClientRectRight = 622
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 620
      ExplicitHeight = 420
      object pnlPersona: TPanel
        Left = 0
        Top = 0
        Width = 620
        Height = 49
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 9
          Width = 20
          Height = 13
          Caption = 'RFC'
        end
        object Label2: TLabel
          Left = 160
          Top = 8
          Width = 20
          Height = 13
          Caption = 'Tipo'
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 16
          Top = 24
          DataBinding.DataField = 'RFC'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 121
        end
        object cmbTipoPersona: TcxDBLookupComboBox
          Left = 160
          Top = 24
          DataBinding.DataField = 'PersonaTipo'
          DataBinding.DataSource = DataSource
          Properties.ListColumns = <>
          Properties.OnChange = cxDBLookupComboBox1PropertiesChange
          TabOrder = 1
          Width = 161
        end
      end
      object pnlPersonaMoral: TPanel
        Left = 0
        Top = 49
        Width = 620
        Height = 88
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        Visible = False
        object Label3: TLabel
          Left = 16
          Top = 8
          Width = 60
          Height = 13
          Caption = 'Razon Social'
          FocusControl = edtRazonSocial
        end
        object Label4: TLabel
          Left = 16
          Top = 48
          Width = 98
          Height = 13
          Caption = 'Tipo de Razon Social'
        end
        object edtRazonSocial: TcxDBTextEdit
          Left = 16
          Top = 24
          DataBinding.DataField = 'RazonSocial'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 585
        end
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 16
          Top = 63
          DataBinding.DataField = 'RazonSocialTipo'
          DataBinding.DataSource = DataSource
          Properties.ListColumns = <>
          TabOrder = 1
          Width = 305
        end
      end
      object pnlPersonaFisica: TPanel
        Left = 0
        Top = 137
        Width = 620
        Height = 170
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        Visible = False
        object Label5: TLabel
          Left = 16
          Top = 6
          Width = 37
          Height = 13
          Caption = 'Nombre'
          FocusControl = edtNombre
        end
        object Label6: TLabel
          Left = 16
          Top = 46
          Width = 78
          Height = 13
          Caption = 'Apellido Paterno'
          FocusControl = edtAPaterno
        end
        object Label7: TLabel
          Left = 319
          Top = 46
          Width = 80
          Height = 13
          Caption = 'Apellido Materno'
          FocusControl = edtAMaterno
        end
        object Label8: TLabel
          Left = 16
          Top = 86
          Width = 99
          Height = 13
          Caption = 'Fecha de Nacimiento'
          FocusControl = cxDBDateEdit1
        end
        object Label9: TLabel
          Left = 16
          Top = 126
          Width = 24
          Height = 13
          Caption = 'Sexo'
        end
        object Label10: TLabel
          Left = 161
          Top = 126
          Width = 55
          Height = 13
          Caption = 'Estado Civil'
        end
        object edtNombre: TcxDBTextEdit
          Left = 16
          Top = 22
          DataBinding.DataField = 'Nombre'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          OnEditing = edtNombreEditing
          Width = 282
        end
        object edtAPaterno: TcxDBTextEdit
          Left = 16
          Top = 62
          DataBinding.DataField = 'ApellidoPaterno'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          OnEditing = edtNombreEditing
          Width = 282
        end
        object edtAMaterno: TcxDBTextEdit
          Left = 319
          Top = 62
          DataBinding.DataField = 'ApellidoMaterno'
          DataBinding.DataSource = DataSource
          TabOrder = 2
          OnEditing = edtNombreEditing
          Width = 282
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 16
          Top = 102
          DataBinding.DataField = 'FechaNacimiento'
          DataBinding.DataSource = DataSource
          TabOrder = 3
          Width = 121
        end
        object cxDBLookupComboBox3: TcxDBLookupComboBox
          Left = 16
          Top = 142
          DataBinding.DataField = 'Sexo'
          DataBinding.DataSource = DataSource
          Properties.ListColumns = <>
          TabOrder = 4
          Width = 121
        end
        object cxDBLookupComboBox4: TcxDBLookupComboBox
          Left = 161
          Top = 142
          DataBinding.DataField = 'EstadoCivil'
          DataBinding.DataSource = DataSource
          Properties.ListColumns = <>
          TabOrder = 5
          Width = 137
        end
      end
      object pnlOrigen: TPanel
        Left = 0
        Top = 307
        Width = 620
        Height = 113
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 3
        Visible = False
        object Label11: TLabel
          Left = 16
          Top = 6
          Width = 19
          Height = 13
          Caption = 'Pais'
          FocusControl = DBLookupComboBox5
        end
        object Label12: TLabel
          Left = 16
          Top = 52
          Width = 45
          Height = 13
          Caption = 'Poblacion'
          FocusControl = DBLookupComboBox6
        end
        object DBLookupComboBox5: TDBLookupComboBox
          Left = 16
          Top = 25
          Width = 300
          Height = 21
          DataField = 'Pais'
          DataSource = DataSource
          TabOrder = 0
        end
        object DBLookupComboBox6: TDBLookupComboBox
          Left = 16
          Top = 70
          Width = 300
          Height = 21
          DataField = 'Poblacion'
          DataSource = DataSource
          TabOrder = 1
        end
      end
    end
    object tsDomicilio: TcxTabSheet
      Caption = 'Domicilio'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 564
    end
    object tsTelefono: TcxTabSheet
      Caption = 'Telefono'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 564
    end
    object tsCorreo: TcxTabSheet
      Caption = 'Correo Electronico'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 564
    end
  end
  inherited pmlMain: TPanel
    Top = 450
    Width = 624
    ExplicitTop = 450
    ExplicitWidth = 624
    inherited btnOk: TButton
      Left = 461
      ExplicitLeft = 461
    end
    inherited btnCancel: TButton
      Left = 542
      ExplicitLeft = 542
    end
  end
  inherited DataSource: TDataSource
    Left = 376
    Top = 8
  end
  inherited ActionList: TActionList
    Left = 432
    Top = 16
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
    DesignInfo = 1114592
  end
end
