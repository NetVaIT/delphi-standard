inherited frmPrestamosPagoEdit: TfrmPrestamosPagoEdit
  Caption = 'Prestamos - Pago '
  ClientHeight = 316
  ClientWidth = 383
  ExplicitWidth = 389
  ExplicitHeight = 345
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 383
    Height = 275
    ExplicitWidth = 383
    ExplicitHeight = 240
    ClientRectBottom = 273
    ClientRectRight = 381
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 379
      ExplicitHeight = 210
      object Label1: TLabel
        Left = 32
        Top = 64
        Width = 92
        Height = 13
        Caption = 'Tipo de movimiento'
      end
      object Label2: TLabel
        Left = 32
        Top = 104
        Width = 23
        Height = 13
        Caption = 'Base'
        FocusControl = cxDBTextEdit1
      end
      object Label3: TLabel
        Left = 32
        Top = 144
        Width = 52
        Height = 13
        Caption = 'Porcentaje'
        FocusControl = cxDBTextEdit2
      end
      object Label4: TLabel
        Left = 32
        Top = 184
        Width = 100
        Height = 13
        Caption = 'Importe del peridodo'
        FocusControl = cxDBTextEdit3
      end
      object Label5: TLabel
        Left = 32
        Top = 18
        Width = 39
        Height = 13
        Caption = 'Persona'
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 32
        Top = 120
        DataBinding.DataField = 'ImporteCalculo'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 2
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 32
        Top = 160
        DataBinding.DataField = 'Porcentaje'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 3
        Width = 121
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 32
        Top = 200
        DataBinding.DataField = 'ImportePeriodo'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 121
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 32
        Top = 83
        DataBinding.DataField = 'MovimientoTipo'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 1
        Width = 304
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 32
        Top = 37
        DataBinding.DataField = 'Persona'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 0
        Width = 304
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 275
    Width = 383
    ExplicitTop = 240
    ExplicitWidth = 383
    inherited btnCancel: TButton
      Left = 301
      ExplicitLeft = 301
    end
    inherited btnOk: TButton
      Left = 220
      ExplicitLeft = 220
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
