inherited frmConfiguracionesEdit: TfrmConfiguracionesEdit
  Caption = 'Configuraci'#243'n'
  ClientHeight = 435
  ClientWidth = 391
  ExplicitWidth = 397
  ExplicitHeight = 463
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 391
    Height = 394
    ExplicitWidth = 391
    ExplicitHeight = 362
    ClientRectBottom = 392
    ClientRectRight = 389
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 387
      ExplicitHeight = 332
      object Label1: TLabel
        Left = 32
        Top = 24
        Width = 19
        Height = 13
        Caption = 'Pa'#237's'
        FocusControl = DBLookupComboBox1
      end
      object Label2: TLabel
        Left = 32
        Top = 64
        Width = 38
        Height = 13
        Caption = 'Moneda'
        FocusControl = DBLookupComboBox2
      end
      object Label3: TLabel
        Left = 32
        Top = 104
        Width = 139
        Height = 13
        Caption = 'Tipo movimiento para nomina'
        FocusControl = DBLookupComboBox3
      end
      object Label4: TLabel
        Left = 32
        Top = 144
        Width = 150
        Height = 13
        Caption = 'Tipo movimiento para retenci'#243'n'
        FocusControl = DBLookupComboBox4
      end
      object Label5: TLabel
        Left = 32
        Top = 184
        Width = 150
        Height = 13
        Caption = 'Tipo movimiento para prestamo'
        FocusControl = DBLookupComboBox5
      end
      object Label6: TLabel
        Left = 32
        Top = 224
        Width = 194
        Height = 13
        Caption = 'Metodo de pago para cuentas por pagar'
        FocusControl = DBLookupComboBox6
      end
      object Label7: TLabel
        Left = 32
        Top = 264
        Width = 145
        Height = 13
        Caption = 'Metodo de pago para facturar'
        FocusControl = DBLookupComboBox7
      end
      object Label8: TLabel
        Left = 32
        Top = 304
        Width = 119
        Height = 13
        Caption = 'Ruta Base para Facturas'
        FocusControl = cxDBTextEdit1
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 32
        Top = 40
        Width = 304
        Height = 21
        DataField = 'Pais'
        DataSource = DataSource
        TabOrder = 0
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 32
        Top = 80
        Width = 304
        Height = 21
        DataField = 'Moneda'
        DataSource = DataSource
        TabOrder = 1
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 32
        Top = 120
        Width = 304
        Height = 21
        DataField = 'MovimientoTipoNomina'
        DataSource = DataSource
        TabOrder = 2
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 32
        Top = 160
        Width = 304
        Height = 21
        DataField = 'MovimientoTipoRetencion'
        DataSource = DataSource
        TabOrder = 3
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 32
        Top = 200
        Width = 304
        Height = 21
        DataField = 'MovimientoTipoPrestamo'
        DataSource = DataSource
        TabOrder = 4
      end
      object DBLookupComboBox6: TDBLookupComboBox
        Left = 32
        Top = 240
        Width = 304
        Height = 21
        DataField = 'MetodoPagoCuentasXPagar'
        DataSource = DataSource
        TabOrder = 5
      end
      object DBLookupComboBox7: TDBLookupComboBox
        Left = 32
        Top = 280
        Width = 304
        Height = 21
        DataField = 'MetodoPagoFactura'
        DataSource = DataSource
        TabOrder = 6
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 32
        Top = 320
        DataBinding.DataField = 'RutaBaseFacturas'
        DataBinding.DataSource = DataSource
        TabOrder = 7
        Width = 304
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 394
    Width = 391
    ExplicitTop = 362
    ExplicitWidth = 391
    inherited btnCancel: TButton
      Left = 309
      ExplicitLeft = 309
    end
    inherited btnOk: TButton
      Left = 228
      ExplicitLeft = 228
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
