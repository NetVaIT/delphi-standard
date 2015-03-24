inherited frmPersonasEdit: TfrmPersonasEdit
  Caption = 'Personas'
  ClientHeight = 505
  ClientWidth = 588
  ExplicitWidth = 594
  ExplicitHeight = 533
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 588
    Height = 464
    ExplicitWidth = 588
    ExplicitHeight = 464
    ClientRectBottom = 462
    ClientRectRight = 586
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 584
      ExplicitHeight = 434
      object pnlPersona: TPanel
        Left = 0
        Top = 0
        Width = 584
        Height = 67
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 24
          Top = 24
          Width = 20
          Height = 13
          Caption = 'RFC'
          FocusControl = cxDBTextEdit1
        end
        object Label2: TLabel
          Left = 232
          Top = 24
          Width = 20
          Height = 13
          Caption = 'Tipo'
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 24
          Top = 40
          DataBinding.DataField = 'RFC'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 161
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 232
          Top = 39
          DataBinding.DataField = 'PersonaTipo'
          DataBinding.DataSource = DataSource
          Properties.ListColumns = <>
          TabOrder = 1
          Width = 233
        end
      end
      object pnlPersonaMoral: TPanel
        Left = 0
        Top = 67
        Width = 584
        Height = 86
        Align = alTop
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        object Label3: TLabel
          Left = 23
          Top = 3
          Width = 60
          Height = 13
          Caption = 'Razon Social'
          FocusControl = cxDBTextEdit2
        end
        object Label10: TLabel
          Left = 23
          Top = 45
          Width = 54
          Height = 13
          Caption = 'Pais Origen'
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 23
          Top = 18
          DataBinding.DataField = 'RazonSocial'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 538
        end
        object cxDBLookupComboBox4: TcxDBLookupComboBox
          Left = 23
          Top = 59
          DataBinding.DataField = 'Pais'
          DataBinding.DataSource = DataSource
          Properties.ListColumns = <>
          TabOrder = 1
          Width = 234
        end
      end
      object pnlPersonaFisica: TPanel
        Left = 0
        Top = 153
        Width = 584
        Height = 172
        Align = alTop
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        object Label7: TLabel
          Left = 24
          Top = 87
          Width = 24
          Height = 13
          Caption = 'Sexo'
        end
        object Label4: TLabel
          Left = 23
          Top = 3
          Width = 50
          Height = 13
          Caption = 'Nombre(s)'
          FocusControl = cxDBTextEdit3
        end
        object Label5: TLabel
          Left = 24
          Top = 46
          Width = 78
          Height = 13
          Caption = 'Apellido Paterno'
          FocusControl = cxDBTextEdit4
        end
        object Label6: TLabel
          Left = 296
          Top = 46
          Width = 80
          Height = 13
          Caption = 'Apellido Materno'
          FocusControl = cxDBTextEdit5
        end
        object Label8: TLabel
          Left = 23
          Top = 130
          Width = 99
          Height = 13
          Caption = 'Fecha de Nacimiento'
          FocusControl = cxDBDateEdit1
        end
        object Label9: TLabel
          Left = 199
          Top = 87
          Width = 55
          Height = 13
          Caption = 'Estado Civil'
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 23
          Top = 18
          DataBinding.DataField = 'Nombre'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 234
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 24
          Top = 61
          DataBinding.DataField = 'ApellidoPaterno'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          Width = 233
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 296
          Top = 61
          DataBinding.DataField = 'ApellidoMaterno'
          DataBinding.DataSource = DataSource
          TabOrder = 2
          Width = 233
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 23
          Top = 146
          DataBinding.DataField = 'FechaNacimiento'
          DataBinding.DataSource = DataSource
          TabOrder = 3
          Width = 146
        end
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 24
          Top = 102
          DataBinding.DataField = 'Sexo'
          DataBinding.DataSource = DataSource
          Properties.ListColumns = <>
          TabOrder = 4
          Width = 145
        end
        object cxDBLookupComboBox3: TcxDBLookupComboBox
          Left = 199
          Top = 102
          DataBinding.DataField = 'EstadoCivil'
          DataBinding.DataSource = DataSource
          Properties.ListColumns = <>
          TabOrder = 5
          Width = 145
        end
      end
      object pnlRoles: TPanel
        Left = 0
        Top = 325
        Width = 584
        Height = 109
        Align = alClient
        BevelOuter = bvNone
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 3
        object Label11: TLabel
          Left = 24
          Top = 5
          Width = 100
          Height = 13
          Caption = 'Persona Relacionada'
        end
        object Label12: TLabel
          Left = 24
          Top = 48
          Width = 36
          Height = 13
          Caption = 'Estatus'
        end
        object Label13: TLabel
          Left = 265
          Top = 48
          Width = 26
          Height = 13
          Caption = 'Clase'
        end
        object cxDBLookupComboBox5: TcxDBLookupComboBox
          Left = 24
          Top = 21
          DataBinding.DataField = 'PersonaRelacionada'
          DataBinding.DataSource = dmPersona.dsPersonasRoles
          Properties.ListColumns = <>
          TabOrder = 0
          Width = 386
        end
        object cxDBLookupComboBox6: TcxDBLookupComboBox
          Left = 24
          Top = 64
          Properties.ListColumns = <>
          TabOrder = 1
          Width = 201
        end
        object cxDBLookupComboBox7: TcxDBLookupComboBox
          Left = 265
          Top = 64
          Properties.ListColumns = <>
          TabOrder = 2
          Width = 145
        end
      end
    end
    object tsDomicilio: TcxTabSheet
      Caption = 'Domicilio'
      ImageIndex = 1
    end
    object tsTelefonos: TcxTabSheet
      Caption = 'Telefonos'
      ImageIndex = 2
    end
    object tsEmail: TcxTabSheet
      Caption = 'Email'
      ImageIndex = 3
    end
    object tsKardex: TcxTabSheet
      Caption = 'Kardex'
      ImageIndex = 4
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'cxTabSheet2'
      ImageIndex = 5
    end
  end
  inherited pmlMain: TPanel
    Top = 464
    Width = 588
    ExplicitTop = 464
    ExplicitWidth = 588
    inherited btnOk: TButton
      Left = 425
      ExplicitLeft = 425
    end
    inherited btnCancel: TButton
      Left = 506
      ExplicitLeft = 506
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmPersona.adodsMaster
    Left = 496
    Top = 56
  end
  inherited ActionList: TActionList
    Left = 528
    Top = 56
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
    DesignInfo = 3736112
  end
end
