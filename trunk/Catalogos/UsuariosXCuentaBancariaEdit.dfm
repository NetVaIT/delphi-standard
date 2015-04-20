inherited frmUsuariosXCuentaBancariaEdit: TfrmUsuariosXCuentaBancariaEdit
  Caption = 'Usuario de Cuenta Bancaria'
  ClientWidth = 460
  ExplicitWidth = 466
  ExplicitHeight = 394
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 460
    ExplicitWidth = 460
    ClientRectRight = 458
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 456
      ExplicitHeight = 295
      object Label1: TLabel
        Left = 32
        Top = 67
        Width = 36
        Height = 13
        Caption = 'Usuario'
        FocusControl = DBLookupComboBox1
      end
      object Label2: TLabel
        Left = 32
        Top = 122
        Width = 96
        Height = 13
        Caption = 'N'#250'mero Serie Token'
        FocusControl = cxDBTextEdit1
      end
      object Label3: TLabel
        Left = 32
        Top = 178
        Width = 80
        Height = 13
        Caption = 'Observaciones 1'
        FocusControl = cxDBTextEdit2
      end
      object Label4: TLabel
        Left = 32
        Top = 234
        Width = 80
        Height = 13
        Caption = 'Observaciones 2'
        FocusControl = cxDBTextEdit3
      end
      object Label5: TLabel
        Left = 32
        Top = 20
        Width = 79
        Height = 13
        Caption = 'Cuenta Bancaria'
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 32
        Top = 86
        Width = 300
        Height = 21
        DataField = 'Persona'
        DataSource = DataSource
        TabOrder = 0
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 32
        Top = 141
        DataBinding.DataField = 'NumeroSerieToken'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 300
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 32
        Top = 196
        DataBinding.DataField = 'Observaciones1'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 385
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 32
        Top = 252
        DataBinding.DataField = 'Observaciones2'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 385
      end
      object lblCuenta: TcxLabel
        Left = 32
        Top = 39
        Caption = 'lblCuenta'
      end
    end
  end
  inherited pmlMain: TPanel
    Width = 460
    ExplicitWidth = 460
    inherited btnOk: TButton
      Left = 297
      ExplicitLeft = 297
    end
    inherited btnCancel: TButton
      Left = 378
      ExplicitLeft = 378
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmCuentasBancarias.adodsUsuariosXCtaBan
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
