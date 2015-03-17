inherited frmEstablecimiento: TfrmEstablecimiento
  Caption = 'Establecimiento'
  ClientHeight = 803
  ClientWidth = 681
  ExplicitWidth = 687
  ExplicitHeight = 831
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 681
    Height = 762
    ExplicitWidth = 681
    ExplicitHeight = 496
    ClientRectBottom = 760
    ClientRectRight = 679
    inherited tsGeneral: TcxTabSheet
      object Label1: TLabel
        Left = 24
        Top = 24
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 24
        Top = 64
        Width = 54
        Height = 13
        Caption = 'Descripcion'
        FocusControl = cxDBTextEdit2
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 24
        Top = 40
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 24
        Top = 79
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 441
      end
      object gbDomicilio: TGroupBox
        Left = 24
        Top = 120
        Width = 633
        Height = 553
        Caption = 'Domicilio'
        TabOrder = 2
        object Label3: TLabel
          Left = 16
          Top = 24
          Width = 60
          Height = 13
          Caption = 'DomicilioTipo'
          FocusControl = DBLookupComboBox1
        end
        object Label4: TLabel
          Left = 16
          Top = 64
          Width = 19
          Height = 13
          Caption = 'Pais'
          FocusControl = DBLookupComboBox2
        end
        object Label5: TLabel
          Left = 16
          Top = 104
          Width = 33
          Height = 13
          Caption = 'Estado'
          FocusControl = DBLookupComboBox3
        end
        object Label6: TLabel
          Left = 16
          Top = 144
          Width = 43
          Height = 13
          Caption = 'Municipio'
          FocusControl = DBLookupComboBox4
        end
        object Label7: TLabel
          Left = 16
          Top = 184
          Width = 45
          Height = 13
          Caption = 'Poblacion'
          FocusControl = DBLookupComboBox5
        end
        object Label8: TLabel
          Left = 16
          Top = 224
          Width = 35
          Height = 13
          Caption = 'Colonia'
          FocusControl = cxDBTextEdit3
        end
        object Label9: TLabel
          Left = 16
          Top = 264
          Width = 23
          Height = 13
          Caption = 'Calle'
          FocusControl = cxDBTextEdit4
        end
        object Label10: TLabel
          Left = 16
          Top = 304
          Width = 51
          Height = 13
          Caption = 'NoExterior'
          FocusControl = cxDBTextEdit5
        end
        object Label11: TLabel
          Left = 16
          Top = 344
          Width = 49
          Height = 13
          Caption = 'NoInterior'
          FocusControl = cxDBTextEdit6
        end
        object Label12: TLabel
          Left = 16
          Top = 384
          Width = 52
          Height = 13
          Caption = 'Referencia'
          FocusControl = cxDBTextEdit7
        end
        object Label13: TLabel
          Left = 16
          Top = 424
          Width = 62
          Height = 13
          Caption = 'CodigoPostal'
          FocusControl = cxDBTextEdit8
        end
        object Label14: TLabel
          Left = 16
          Top = 464
          Width = 76
          Height = 13
          Caption = 'Predeterminado'
          FocusControl = cxDBSpinEdit1
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 16
          Top = 40
          Width = 664
          Height = 21
          DataField = 'DomicilioTipo'
          DataSource = dsDomicilio
          TabOrder = 0
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 16
          Top = 80
          Width = 1314
          Height = 21
          DataField = 'Pais'
          DataSource = dsDomicilio
          TabOrder = 1
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 16
          Top = 120
          Width = 534
          Height = 21
          DataField = 'Estado'
          DataSource = dsDomicilio
          TabOrder = 2
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 16
          Top = 160
          Width = 664
          Height = 21
          DataField = 'Municipio'
          DataSource = dsDomicilio
          TabOrder = 3
        end
        object DBLookupComboBox5: TDBLookupComboBox
          Left = 16
          Top = 200
          Width = 1964
          Height = 21
          DataField = 'Poblacion'
          DataSource = dsDomicilio
          TabOrder = 4
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 16
          Top = 240
          DataBinding.DataField = 'Colonia'
          DataBinding.DataSource = dsDomicilio
          TabOrder = 5
          Width = 121
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 16
          Top = 280
          DataBinding.DataField = 'Calle'
          DataBinding.DataSource = dsDomicilio
          TabOrder = 6
          Width = 121
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 16
          Top = 320
          DataBinding.DataField = 'NoExterior'
          DataBinding.DataSource = dsDomicilio
          TabOrder = 7
          Width = 121
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 16
          Top = 360
          DataBinding.DataField = 'NoInterior'
          DataBinding.DataSource = dsDomicilio
          TabOrder = 8
          Width = 121
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 16
          Top = 400
          DataBinding.DataField = 'Referencia'
          DataBinding.DataSource = dsDomicilio
          TabOrder = 9
          Width = 121
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 16
          Top = 440
          DataBinding.DataField = 'CodigoPostal'
          DataBinding.DataSource = dsDomicilio
          TabOrder = 10
          Width = 121
        end
        object cxDBSpinEdit1: TcxDBSpinEdit
          Left = 16
          Top = 480
          DataBinding.DataField = 'Predeterminado'
          DataBinding.DataSource = dsDomicilio
          TabOrder = 11
          Width = 121
        end
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 762
    Width = 681
    ExplicitTop = 496
    ExplicitWidth = 681
    inherited btnOk: TButton
      Left = 518
      ExplicitLeft = 518
    end
    inherited btnCancel: TButton
      Left = 599
      ExplicitLeft = 599
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  object dsDomicilio: TDataSource
    DataSet = dmDomicilios.adodsMaster
    Left = 634
    Top = 100
  end
end
