inherited frmCuentasXPagarEdit: TfrmCuentasXPagarEdit
  Caption = 'Pago'
  ClientHeight = 435
  ClientWidth = 764
  ExplicitWidth = 770
  ExplicitHeight = 464
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 764
    Height = 394
    ParentBackground = False
    ParentColor = False
    ExplicitWidth = 764
    ExplicitHeight = 394
    ClientRectBottom = 392
    ClientRectRight = 762
    inherited tsGeneral: TcxTabSheet
      Tag = -1
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 760
      ExplicitHeight = 364
      object Label14: TLabel
        Left = 20
        Top = 66
        Width = 38
        Height = 13
        Caption = 'Moneda'
        FocusControl = DBLookupComboBox9
        Visible = False
      end
      object Label7: TLabel
        Left = 20
        Top = 15
        Width = 63
        Height = 13
        Caption = 'Estatus Pago'
        FocusControl = DBLookupComboBox2
      end
      object Label4: TLabel
        Left = 271
        Top = 62
        Width = 27
        Height = 13
        Caption = 'Total '
        FocusControl = cxDBTextEdit3
      end
      object Label26: TLabel
        Left = 272
        Top = 20
        Width = 63
        Height = 13
        Caption = 'M'#233'todo Pago'
        FocusControl = DBLkpCmbBxMetPago
      end
      object DBLookupComboBox9: TDBLookupComboBox
        Left = 20
        Top = 82
        Width = 144
        Height = 21
        DataField = 'Moneda'
        DataSource = DataSource
        TabOrder = 0
        Visible = False
      end
      object PnlEstadosCxp: TPanel
        Left = 0
        Top = 116
        Width = 760
        Height = 248
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object ToolBar1: TToolBar
          Left = 0
          Top = 0
          Width = 760
          Height = 29
          ButtonHeight = 25
          ButtonWidth = 37
          Caption = 'ToolBar1'
          Images = cxImageList
          TabOrder = 0
          object TlBtnPrograma: TToolButton
            Tag = 1
            Left = 0
            Top = 0
            Hint = 'Programar Pago'
            Action = ActPrograma
          end
          object TlBtnAutoriza: TToolButton
            Tag = 2
            Left = 37
            Top = 0
            Hint = 'Autorizar Pago'
            Action = ActAutoriza
          end
          object TlBtnPaga: TToolButton
            Tag = 3
            Left = 74
            Top = 0
            Hint = 'Pagar'
            Action = ActPaga
          end
          object TlBtnConcilia: TToolButton
            Tag = 4
            Left = 111
            Top = 0
            Hint = 'Conciliar'
            Action = ActConcilia
            Visible = False
          end
        end
        object PgCntrlStatus: TPageControl
          Left = 0
          Top = 29
          Width = 760
          Height = 219
          ActivePage = TbShtProgramar
          Align = alClient
          TabOrder = 1
          Visible = False
          object TbShtProgramar: TTabSheet
            Caption = 'Programaci'#243'n'
            ImageIndex = 2
            object Label15: TLabel
              Left = 24
              Top = 16
              Width = 97
              Height = 13
              Caption = 'Fecha Programaci'#243'n'
            end
            object Label17: TLabel
              Left = 24
              Top = 65
              Width = 117
              Height = 13
              Caption = 'Fecha Programada Pago'
              FocusControl = cxDBDateEdit3
            end
            object Label18: TLabel
              Left = 165
              Top = 65
              Width = 91
              Height = 13
              Caption = 'Monto Programado'
              FocusControl = cxDBTxtEdtPago
            end
            object Label16: TLabel
              Left = 165
              Top = 13
              Width = 85
              Height = 13
              Caption = 'Usuario Programa'
            end
            object Label10: TLabel
              Left = 24
              Top = 114
              Width = 111
              Height = 13
              Caption = 'Cuenta Bancaria Retiro'
            end
            object Label11: TLabel
              Left = 360
              Top = 114
              Width = 124
              Height = 13
              Caption = 'Cuenta Bancaria Dep'#243'sito'
            end
            object SpdBtnParteProg: TSpeedButton
              Left = 308
              Top = 80
              Width = 117
              Height = 22
              Caption = 'Programar Parcial'
              Enabled = False
              Glyph.Data = {
                AA030000424DAA03000000000000360000002800000011000000110000000100
                18000000000074030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF00FFFFFFFFFFFFFFFFFFFFFFFF0000000000004CB1224CB1224CB1224CB122
                4CB122000000000000FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF00
                00000000004CB1224CB1224CB1220000004CB1224CB1224CB1224CB122000000
                FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF00000000F2FF00F2FF0000004CB1224C
                B1220000000000004CB1224CB1224CB1224CB122000000FFFFFFFFFFFF00FFFF
                FFFFFFFF00000000F2FF00F2FF00F2FF0000004CB1220000004CB1220000004C
                B1224CB1224CB122000000FFFFFFFFFFFF00FFFFFF00000000F2FF00F2FF00F2
                FF00F2FF0000004CB1220000000000000000004CB1224CB1224CB1224CB12200
                0000FFFFFF00FFFFFF00000000F2FF00000000F2FF00F2FF00F2FF0000004CB1
                224CB1224CB1224CB1224CB1224CB1224CB122000000FFFFFF00FFFFFF000000
                00F2FF00000000000000F2FF00F2FF00F2FF0000000000000000000000000000
                00000000000000000000FFFFFF00FFFFFF00000000F2FF00000000F2FF000000
                00F2FF000000E8A200000000241CED241CED241CED241CED241CED000000FFFF
                FF00FFFFFF00000000F2FF000000000000000000000000E8A200E8A200000000
                241CED241CED241CED241CED241CED000000FFFFFF00FFFFFFFFFFFF00000000
                F2FF00F2FF000000E8A200000000E8A200E8A200000000241CED241CED241CED
                000000FFFFFFFFFFFF00FFFFFFFFFFFF00000000F2FF000000E8A200E8A20000
                0000000000E8A200000000241CED241CED241CED000000FFFFFFFFFFFF00FFFF
                FFFFFFFFFFFFFF000000E8A200E8A200E8A200000000E8A200000000E8A20000
                0000241CED000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF0000
                00000000E8A200000000000000000000E8A200000000000000FFFFFFFFFFFFFF
                FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
                00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFF00}
              Visible = False
              OnClick = SpdBtnParteProgClick
            end
            object cxDBDateEdit3: TcxDBDateEdit
              Left = 23
              Top = 81
              DataBinding.DataField = 'FechaProgramada'
              DataBinding.DataSource = DataSource
              TabOrder = 0
              Width = 121
            end
            object cxDBTxtEdtPago: TcxDBTextEdit
              Left = 165
              Top = 84
              DataBinding.DataField = 'MontoProgramado'
              DataBinding.DataSource = DataSource
              TabOrder = 1
              OnEditing = cxDBTxtEdtPagoEditing
              Width = 121
            end
            object cxDBLabel1: TcxDBLabel
              Left = 24
              Top = 32
              DataBinding.DataField = 'FechaProgramacion'
              DataBinding.DataSource = DataSource
              Height = 21
              Width = 121
            end
            object cxDBLabel2: TcxDBLabel
              Left = 165
              Top = 32
              DataBinding.DataField = 'UsuarioPrograma'
              DataBinding.DataSource = DataSource
              Height = 21
              Width = 236
            end
            object cxDBLookupComboBox1: TcxDBLookupComboBox
              Left = 24
              Top = 133
              DataBinding.DataField = 'CuentaBanPagador'
              DataBinding.DataSource = DataSource
              Properties.ListColumns = <>
              TabOrder = 4
              Width = 300
            end
            object cxDBLookupComboBox2: TcxDBLookupComboBox
              Left = 360
              Top = 133
              DataBinding.DataField = 'CuentaBanCobrador'
              DataBinding.DataSource = DataSource
              Properties.ListColumns = <
                item
                  FieldName = 'CuentaCompleta'
                end
                item
                  FieldName = 'Perfil'
                end>
              TabOrder = 5
              Width = 350
            end
          end
          object TbShtAutorizar: TTabSheet
            Tag = 2
            Caption = 'Autorizaci'#243'n'
            ImageIndex = 3
            object Label19: TLabel
              Left = 165
              Top = 62
              Width = 85
              Height = 13
              Caption = 'Monto Autorizado'
              FocusControl = cxDBTextEdit6
            end
            object Label20: TLabel
              Left = 24
              Top = 16
              Width = 91
              Height = 13
              Caption = 'Fecha Autorizaci'#243'n'
            end
            object Label21: TLabel
              Left = 163
              Top = 16
              Width = 79
              Height = 13
              Caption = 'Usuario Autoriza'
            end
            object Label5: TLabel
              Left = 24
              Top = 65
              Width = 111
              Height = 13
              Caption = 'Fecha Autorizada Pago'
              FocusControl = cxDBDateEdit1
            end
            object Label6: TLabel
              Left = 24
              Top = 114
              Width = 111
              Height = 13
              Caption = 'Cuenta Bancaria Retiro'
            end
            object Label8: TLabel
              Left = 360
              Top = 114
              Width = 124
              Height = 13
              Caption = 'Cuenta Bancaria Dep'#243'sito'
            end
            object DBLookupComboBox4: TDBLookupComboBox
              Left = 360
              Top = 130
              Width = 300
              Height = 21
              DataField = 'CuentaBanCobrador'
              DataSource = DataSource
              TabOrder = 3
            end
            object cxDBLabel11: TcxDBLabel
              Tag = 10
              Left = 359
              Top = 129
              DataBinding.DataField = 'CuentaBanCobrador2'
              DataBinding.DataSource = DataSource
              Height = 22
              Width = 301
            end
            object cxDBTextEdit6: TcxDBTextEdit
              Left = 163
              Top = 81
              DataBinding.DataField = 'MontoAutorizado'
              DataBinding.DataSource = DataSource
              TabOrder = 0
              Width = 121
            end
            object cxDBDateEdit1: TcxDBDateEdit
              Left = 24
              Top = 81
              DataBinding.DataField = 'FechaAutorizaPago'
              DataBinding.DataSource = DataSource
              TabOrder = 1
              Width = 121
            end
            object DBLookupComboBox3: TDBLookupComboBox
              Left = 24
              Top = 130
              Width = 300
              Height = 21
              DataField = 'CuentaBanPagador'
              DataSource = DataSource
              TabOrder = 2
            end
            object cxDBLabel3: TcxDBLabel
              Left = 24
              Top = 32
              DataBinding.DataField = 'FechaAutorizacion'
              DataBinding.DataSource = DataSource
              Height = 20
              Width = 121
            end
            object cxDBLabel4: TcxDBLabel
              Left = 165
              Top = 32
              DataBinding.DataField = 'UsuarioAutoriza'
              DataBinding.DataSource = DataSource
              Height = 22
              Width = 236
            end
            object cxDBLabel10: TcxDBLabel
              Tag = 10
              Left = 23
              Top = 129
              DataBinding.DataField = 'CuentaBanPagador'
              DataBinding.DataSource = DataSource
              Height = 22
              Width = 301
            end
            object cxDBLabel14: TcxDBLabel
              Left = 162
              Top = 80
              DataBinding.DataField = 'MontoAutorizado'
              DataBinding.DataSource = DataSource
              Height = 22
              Width = 124
            end
          end
          object TbShtPagar: TTabSheet
            Tag = 3
            Caption = 'Pago'
            ImageIndex = 4
            object Label22: TLabel
              Left = 24
              Top = 8
              Width = 56
              Height = 13
              Caption = 'Fecha Pago'
            end
            object Label23: TLabel
              Left = 172
              Top = 16
              Width = 63
              Height = 13
              Caption = 'Usuario Paga'
            end
            object Label9: TLabel
              Left = 24
              Top = 106
              Width = 111
              Height = 13
              Caption = 'Cuenta Bancaria Retiro'
            end
            object Label12: TLabel
              Left = 360
              Top = 106
              Width = 124
              Height = 13
              Caption = 'Cuenta Bancaria Dep'#243'sito'
            end
            object Label13: TLabel
              Left = 26
              Top = 55
              Width = 69
              Height = 13
              Caption = 'Monto Pagado'
              FocusControl = cxDBTextEdit4
            end
            object DBLookupComboBox7: TDBLookupComboBox
              Left = 24
              Top = 125
              Width = 300
              Height = 21
              DataField = 'CuentaBanPagador'
              DataSource = DataSource
              TabOrder = 0
            end
            object DBLookupComboBox8: TDBLookupComboBox
              Left = 357
              Top = 125
              Width = 300
              Height = 21
              DataField = 'CuentaBanCobrador'
              DataSource = DataSource
              TabOrder = 1
            end
            object cxDBLabel5: TcxDBLabel
              Left = 24
              Top = 32
              DataBinding.DataField = 'FechaPago'
              DataBinding.DataSource = DataSource
              Height = 21
              Width = 121
            end
            object cxDBLabel6: TcxDBLabel
              Left = 172
              Top = 32
              DataBinding.DataField = 'UsuarioPaga'
              DataBinding.DataSource = DataSource
              Height = 21
              Width = 236
            end
            object cxDBDtEdtFecPago: TcxDBDateEdit
              Left = 24
              Top = 27
              DataBinding.DataField = 'FechaPago'
              DataBinding.DataSource = DataSource
              TabOrder = 4
              Width = 121
            end
            object cxDBTextEdit4: TcxDBTextEdit
              Left = 24
              Top = 74
              DataBinding.DataField = 'MontoPagado'
              DataBinding.DataSource = DataSource
              TabOrder = 5
              Width = 121
            end
            object cxDBLabel12: TcxDBLabel
              Tag = 10
              Left = 23
              Top = 125
              DataBinding.DataField = 'CuentaBanPagador'
              DataBinding.DataSource = DataSource
              Height = 22
              Width = 301
            end
            object cxDBLabel13: TcxDBLabel
              Tag = 10
              Left = 357
              Top = 125
              DataBinding.DataField = 'CuentaBanCobrador2'
              DataBinding.DataSource = DataSource
              Height = 22
              Width = 300
            end
            object cxDBLabel15: TcxDBLabel
              Left = 24
              Top = 74
              DataBinding.DataField = 'MontoPagado'
              DataBinding.DataSource = DataSource
              Height = 22
              Width = 124
            end
          end
          object TbShtConciliar: TTabSheet
            Tag = 4
            Caption = 'Conciliaci'#243'n'
            ImageIndex = 5
            object Label24: TLabel
              Left = 172
              Top = 16
              Width = 75
              Height = 13
              Caption = 'Usuario Concilia'
            end
            object Label25: TLabel
              Left = 24
              Top = 16
              Width = 65
              Height = 13
              Caption = 'FechaConcilia'
            end
            object cxDBLabel7: TcxDBLabel
              Left = 24
              Top = 32
              DataBinding.DataField = 'FechaConcilia'
              DataBinding.DataSource = DataSource
              Height = 21
              Width = 121
            end
            object cxDBLabel8: TcxDBLabel
              Left = 172
              Top = 32
              DataBinding.DataField = 'UsuarioConcilia'
              DataBinding.DataSource = DataSource
              Height = 21
              Width = 236
            end
          end
        end
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 272
        Top = 36
        Width = 89
        Height = 21
        DataField = 'EstatusCXP'
        DataSource = DataSource
        TabOrder = 2
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 271
        Top = 81
        DataBinding.DataField = 'TotalMonedaNacional'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 3
        Width = 121
      end
      object PnlMonedaExtranjera: TPanel
        Left = 489
        Top = 16
        Width = 325
        Height = 103
        BevelOuter = bvNone
        TabOrder = 4
        Visible = False
        object Label3: TLabel
          Left = 192
          Top = 8
          Width = 119
          Height = 13
          Caption = 'Total Moneda Extranjera'
          FocusControl = cxDBTextEdit2
        end
        object Label2: TLabel
          Left = 24
          Top = 48
          Width = 55
          Height = 13
          Caption = 'TipoCambio'
          FocusControl = cxDBTextEdit1
        end
        object Label1: TLabel
          Left = 25
          Top = 8
          Width = 54
          Height = 13
          Caption = 'MonedaExt'
          FocusControl = DBLookupComboBox1
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 192
          Top = 24
          DataBinding.DataField = 'TotalMonedaExtranjera'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 121
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 24
          Top = 65
          DataBinding.DataField = 'TipoCambio'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          Width = 81
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 25
          Top = 24
          Width = 144
          Height = 21
          DataField = 'MonedaExt'
          DataSource = DataSource
          TabOrder = 2
        end
      end
      object cxDBLabel9: TcxDBLabel
        Left = 18
        Top = 35
        DataBinding.DataField = 'EstatusCXP'
        DataBinding.DataSource = DataSource
        ParentColor = False
        Height = 21
        Width = 236
      end
      object DBLkpCmbBxMetPago: TDBLookupComboBox
        Left = 272
        Top = 36
        Width = 236
        Height = 21
        DataField = 'MetodoPago'
        DataSource = DataSource
        TabOrder = 6
      end
      object cxDBLblMetodoPago: TcxDBLabel
        Tag = 10
        Left = 271
        Top = 35
        Hint = 'MP'
        DataBinding.DataField = 'MetodoPago'
        DataBinding.DataSource = DataSource
        ParentColor = False
        Height = 23
        Width = 237
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 394
    Width = 764
    ExplicitTop = 394
    ExplicitWidth = 764
    inherited btnCancel: TButton
      Left = 682
      ExplicitLeft = 682
    end
    inherited btnOk: TButton
      Left = 601
      ExplicitLeft = 601
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmCuentasXPagar.adodsPagos
    OnDataChange = DataSourceDataChange
    Left = 168
  end
  inherited ActionList: TActionList
    object ActPrograma: TAction
      Tag = 1
      Category = 'EstatusCXP'
      Caption = 'Programar'
      ImageIndex = 2
      OnExecute = ActCambioEstatusExecute
    end
    object ActAutoriza: TAction
      Tag = 2
      Category = 'EstatusCXP'
      Caption = 'Autorizar'
      ImageIndex = 3
      OnExecute = ActCambioEstatusExecute
    end
    object ActPaga: TAction
      Tag = 3
      Category = 'EstatusCXP'
      Caption = 'Pagar'
      ImageIndex = 4
      OnExecute = ActCambioEstatusExecute
    end
    object ActConcilia: TAction
      Tag = 4
      Category = 'EstatusCXP'
      Caption = 'Conciliar'
      ImageIndex = 5
      OnExecute = ActCambioEstatusExecute
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000FFFF0000FBFF0000F1FF0000E0FF0000C47F
          0000CE3F0000FF1F0000FF8F0000FFC70000FFE70000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000FFFF0000F3E70000F1C70000F88F0000FC1F
          0000FE3F0000FC1F0000F88F0000F1C70000F3E70000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000A449A300A449
          A300A449A300A449A300A449A300A449A300A449A300A449A300A449A300A449
          A300A449A300A449A300A449A300A449A300A449A300A449A300A4A2A0007877
          7600797877007978770079787700797877007978770079787700797877007978
          7700797877007A7979007A7979007A79790078777700A4A2A00088878500FFFF
          FF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F9F9F900F8F8F800F8F8
          F800F7F7F700F4F1EB00FDFAE900F7F3E900FFFFFF00888786008E8D8C00F8F8
          F800C7C7C700DADADA00DCDCDC00DCDCDC00DBDBDB00C4C4C400CFCFCF00CACA
          CA00DADADA009E9292004E45C9007C71A400F8F5EB008F8E8D0092918F00F7F7
          F800DADADA00FAFAFA00FCFCFC00FCFCFC00FBFBFB00CFCFCF00E6E6E600DBDB
          DB00FAFAFA009D919D000200FF006056C100FEFAEB009392900096959400FAFA
          FA00C8C8C800CFCFCF00CFCFCF00CFCFCF00CFCFCF00CACACA00CDCDCD00CBCB
          CB00CFCFCF00BBB0A200D7CCA900C3B7A100F6F4F100979694009C9B9900FAFB
          FB00E4E4E400FFFFFF00FFFFFF00FFFFFF00FFFFFF00D9D9D900EDEDED00E3E3
          E300FFFFFF00D0C3B800FFF5E800E3D6CA00FAF6F4009C9C9A00A09F9D00F7F7
          F700BBBBBB00C1C1C100C1C1C100D4D4D400D2D2D200D1D1D100D2D2D200D1D1
          D100D2D2D200D2C5BA00D4C9BF00CFC3B900FDF9F7009F9E9E00A4A3A100F4F4
          F500CDCDCD00E5E5E500E6E6E600FFFFFF00FFFFFF00DEDEDE00F0F0F000E7E7
          E700FFFFFF00D4C9BC00FFF7E900E6DACD00FAF8F500A3A3A100A9A8A600F5F5
          F500C1C1C100CDCDCD00CDCDCD00E9E9E900E7E7E700D8D8D800E0E0E000DCDC
          DC00E6E6E600D5C8BB00E8DBCF00DACDC100FBF8F500A7A7A500ADB2B700FFFF
          FF00F3FDFF00F4FDFF00F3FDFF00F8FFFF00F8FFFF00F9FFFF00F9FFFF00F9FF
          FF00F7FFFF00FAFFFF00F8FFFF00F8FFFF00FFFFFF00ACB2B600965C2A00E992
          4900E2873C00DF843900E2873C00E1873C00DF843A00E0853A00E1863C00E085
          3A00DF843A00E1863C00E1863C00DF843900E9924900965C2A00A1693400F09F
          5500C37E3D008A6C510094693E00D08540008E6C4B00926A4400DE8E4300926A
          44008E6C4B00ED97460094673F008A6C5100F09F5500A1693400A9743E00F4AF
          6A00B6824F00DDDBD900917C6800CC905500C4BCB400AB9C8E00E29E5B00AB9C
          8E00C4BCB400FAAD6200917C6900DDDBD900F5AF6A00A8733E00C4A48300BB80
          43009B704300DCD8D30092806C00A7764300C4BAB000AA9D8F00B37C4200AA9D
          8F00C4BAB000C183420092806C00DCD8D300BB814300C4A48400A449A300A449
          A300A449A3009E9D9B00A8A6A200A449A300A19F9E00A3A2A000A449A300A4A2
          A000A19F9E00A449A300A8A6A2009E9D9B00A449A300A449A300}
        MaskColor = 10766755
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          200000000000000400000000000000000000000000000000000000F2FF000040
          0000004000000040000000400000004000000040000000400000004000000040
          0000004000000040000000400000004000004CB1220000F2FF00004000004CB1
          22004CB122004CB122004CB122004CB122004CB122004CB12200008000000080
          00004CB122004CB122004CB122004CB12200004000004CB1220000400000FFFF
          ED00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBE4B200A66A2200C3A6
          7700FFFFFF00FFFFFF00FFFFFF00FFFFF900008000004CB1220000400000EAEB
          E000FFFFFF00FFFFFF00FFFFFF00FDFCFB00DBBEA100924E1100692000007943
          1E00D4C8BC00FFFFFF00FFFFFF00EEEEED00008000004CB1220000400000ECEC
          E000FFFFFF00FFFFFF00F2EDE800CCAB8B009D59180084430000864C0C007E3E
          0000A07D5900ECEAE600FFFFFF00EEEFED00008000004CB1220000400000ECED
          E000FAF8F400D9D1C900A6805F00854407008846060090531500945716009250
          0D008C501300C5B09D00FFFFFF00F1F1EF00008000004CB1220000400000E3E1
          CF00BC997800894E25008D4907009B581400A05D19009B540E00A15A1300AD68
          2200A6601600A5713C00E7DCD100F4F5F500008000004CB1220000400000E5E5
          D300BD9069008E360000A7540800AF590B00A45C1D00AA825700AF6A2C00B968
          1D00CA813500B5651600C29B7100EAF1F500008000004CB1220000400000F6F9
          EA00FFFEF800C29F7D0092562700A16A3C00CBB2A200ECF0F100C68E6600B456
          0500CE833700D17F2D00C4772400C0AC9300008000004CB1220000800000E4E5
          D400F6F8F300E2E8EA00C4C3C200C9CED200E3EBF200EBF4FB00C8B29F00B563
          1200C4732000CC813600CF792000B76D1D000040000000800000008000000080
          00004CB12200E2E4DC00FFFFFD00F5FAF500E5E5E300E0E5E900E1E5E800CE9F
          6400C7721700C4742500C2732500C16D0F0093542800B9A19B0000F2FF000080
          0000008000004CB12200FFFFFF00FFFFFF00FFFFFF00E9E8E200E6ECEA00A99F
          A3009F5E2E00C26F1C00BD6D1D00BB6E1500BE6D0700BA70180000F2FF0000F2
          FF0000F2FF0000800000008000004CB12200FFFFFF00D5D5DA00B5B7CA000080
          00004CB12200B66F2600B46B1900BB721800C47C1600C668000000F2FF0000F2
          FF0000F2FF0000F2FF00008000000080000000800000A9ACC300008000004CB1
          220000F2FF00C59D7100A0581000B76B1100CF882100D476000000F2FF0000F2
          FF0000F2FF0000F2FF0000F2FF0000F2FF004CB12200008000004CB1220000F2
          FF0000F2FF0000F2FF00C0906000AC540000D1831700E885000000F2FF0000F2
          FF0000F2FF0000F2FF0000F2FF0000F2FF0000F2FF0000F2FF0000F2FF0000F2
          FF0000F2FF0000F2FF0000F2FF00C9945C00BC4B0000DC570000}
        MaskColor = 62207
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000000000000000000000000000000000007F7F7F00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC483F00CC483F00CC483F00CC48
          3F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007F7F7F007F7F7F00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC483F0000F2FF0000F2FF00CC48
          3F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007F7F7F007F7F7F00FFFF
          FF00FFFFFF00BE927000CC483F00CC483F00CC483F0000F2FF0000F2FF00CC48
          3F00CC483F00FFFFFF00FFFFFF00FFFFFF00FFFFFF007F7F7F007F7F7F00FFFF
          FF00FFFFFF00CC483F0000F2FF0000F2FF0000F2FF0000F2FF0000F2FF0000F2
          FF00CC483F00CC483F00CC483F00FFFFFF00FFFFFF007F7F7F007F7F7F00FFFF
          FF00FFFFFF00CC483F0000F2FF0000F2FF0000F2FF0000F2FF0000F2FF0000F2
          FF0000F2FF0000F2FF00CC483F00FFFFFF00FFFFFF007F7F7F007F7F7F00FFFF
          FF00FFFFFF00CC483F0000F2FF00CC483F00CC483F0000F2FF00CC483F0000F2
          FF0000F2FF0000F2FF00CC483F00FFFFFF00FFFFFF007F7F7F007F7F7F00FFFF
          FF00FFFFFF00CC483F00CC483F00CC483F00CC483F0000F2FF0000F2FF0000F2
          FF0000F2FF0000F2FF00CC483F00FFFFFF00FFFFFF007F7F7F007F7F7F00FFFF
          FF00FFFFFF00CC483F0000F2FF0000F2FF0000F2FF0000F2FF0000F2FF0000F2
          FF0000F2FF0000F2FF00CC483F00FFFFFF00FFFFFF007F7F7F007F7F7F00FFFF
          FF00FFFFFF00CC483F0000F2FF0000F2FF0000F2FF0000F2FF0000F2FF00CC48
          3F00CC483F00CC483F00CC483F00FFFFFF00FFFFFF007F7F7F007F7F7F00FFFF
          FF00FFFFFF00CC483F0000F2FF0000F2FF00CC483F00CC483F0000F2FF00CC48
          3F00CC483F00CC483F00FFFFFF00FFFFFF00FFFFFF007F7F7F007F7F7F00FFFF
          FF00FFFFFF00CC483F0000F2FF0000F2FF0000F2FF0000F2FF0000F2FF0000F2
          FF0000F2FF00CC483F00FFFFFF00FFFFFF00FFFFFF007F7F7F007F7F7F00FFFF
          FF00FFFFFF00CC483F00CC483F0000F2FF0000F2FF0000F2FF0000F2FF0000F2
          FF0000F2FF00CC483F00FFFFFF00FFFFFF00FFFFFF007F7F7F007F7F7F00FFFF
          FF00FFFFFF00FFFFFF00CC483F00CC483F00CC483F0000F2FF0000F2FF00CC48
          3F00CC483F00CC483F00FFFFFF00FFFFFF00FFFFFF007F7F7F007F7F7F00FFFF
          FF00FFFFFF00FFFFFF00D8EEFF00D6FDFF00CC483F0000F2FF0000F2FF00CC48
          3F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007F7F7F007F7F7F00F1F5
          E900FFFFFF00FFFFFF00FDFCFF00F1FBF500CC483F00CC483F00CC483F00CC48
          3F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007F7F7F007F7F7F007F7F
          7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
          7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00}
        MaskColor = 8355711
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0079C4C6005BB3B40056ADAD0050A5A6004A9D9E004A9D9E00459593003F8D
          8C0039858300337D7B002D757300286E6C00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF007DC1C30096CFD20093CECF008ECBCC008AC9CA008AC9CA0085C6C70081C5
          C4007DC2C00079C0BE0074BDBB0025696600FFFFFF00FFFFFF00FFFFFF00FFFF
          FF007DC1C30096CFD20093CECF008ECBCC008AC9CA008AC9CA0085C6C70081C5
          C4007DC2C00079C0BE0074BDBB0025696600FFFFFF00FFFFFF00FFFFFF00FFFF
          FF007DC1C3005DACAC00489A9900429292003C8A89003C8A890036828100317A
          77002B727000266B6900226562001E605D00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0079C4C6005BB3B40056ADAD0050A5A6004A9D9E004A9D9E00459593003F8D
          8C0039858300337D7B002D757300286E6C00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF007DC1C30096CFD20093CECF008ECBCC008AC9CA008AC9CA0085C6C70081C5
          C4007DC2C00079C0BE0074BDBB0025696600FFFFFF00FFFFFF00FFFFFF00FFFF
          FF007DC1C30096CFD20093CECF008ECBCC008AC9CA008AC9CA0085C6C70081C5
          C4007DC2C00079C0BE0074BDBB0025696600FFFFFF00FFFFFF00FFFFFF00FFFF
          FF007DC1C3005DACAC00489A9900429292003C8A89003C8A890036828100317A
          77002B727000266B6900226562001E605D00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000577AB900577AB900577AB900BE927000EAD99900EAD9
          9900EAD99900EAD99900EAD99900EAD99900EAD99900EAD99900000000000000
          0000000000004080C000C9AEFF00C9AEFF00C9AEFF00BE927000EAD99900EAD9
          9900EAD99900EAD99900EAD99900EAD99900EAD99900EAD99900000000000000
          0000C1C1C1004080C000C9AEFF00C9AEFF00C9AEFF00BE927000EAD99900EAD9
          9900EAD99900EAD99900EAD99900EAD99900EAD99900EAD99900000000001D82
          B5001B81B3004080C000C9AEFF00C9AEFF00C9AEFF00BE927000EAD99900EAD9
          9900EAD99900EAD99900EAD99900EAD99900EAD99900EAD999002287BA0099FF
          FF006FD4FF004080C000C9AEFF00C9AEFF00C9AEFF00BE927000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00258ABD0099FF
          FF0075DBFF00577AB900C9AEFF00C9AEFF00C9AEFF00BE927000E8A20000E8A2
          0000E8A20000E8A20000E8A20000E8A20000E8A20000BE927000288DC00099FF
          FF007FE4FF00577AB900C9AEFF00C9AEFF00C9AEFF00C9AEFF00BE927000FFFF
          FF00FFFFFF00FFFFFF00EAD99900EAD99900BE927000C9AEFF002A8FC20099FF
          FF0089EFFF00577AB900C9AEFF00C9AEFF00C9AEFF00C9AEFF00C9AEFF00BE92
          7000BE927000BE927000BE927000BE927000C9AEFF00C9AEFF002D92C50099FF
          FF0093F8FF00577AB900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002F94C70099FF
          FF0099FFFF00577AB90080C0E000577AB900577AB900577AB900577AB900577A
          B90080C0E000577AB900577AB900577AB900577AB900577AB9003196C90099FF
          FF009CFFFF009CFFFF00577AB900FFFFFF00FFFFFF00FFFFFF00C9AEFF00C9AE
          FF004080C0009CFFFF0099FFFF000F75A700B7B7B700000000003398CB00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00577AB900577AB900577AB900577AB900577A
          B900FFFFFF00FFFFFF00FFFFFF00147AAC0000000000000000003499CC0071B7
          DB0052B7DB0052B7DB0052B7DB0052B7DB0052B7DB0071B7DB00258ABD002287
          BA001F84B7001D82B5001B81B300000000000000000000000000000000003499
          CC00FFFFFF00FFFFFF00FFFFFF00BAFFFF00BAFFFF002A8FC200000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003499CC003499CC003398CB003196C9003095C80000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        MaskColor = clBlack
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000000000000000000000000000000000001DE6B5001DE6
          B5001DE6B500E4E4E4006A6A6A00464646004A4A4A004A4A4A004A4A4A004A4A
          4A004A4A4A004B4A4A00444849002E3E4000585858001DE6B5001DE6B5001DE6
          B5001DE6B500CCCCCC003D3D3D00383838003030300036363600373737003737
          370036363600FFFFFF003C3C3C0038353500352B29001DE6B5001DE6B5001DE6
          B5001DE6B500CECECE003C3C3C00FFFFFF0071717100FFFFFF00414141003939
          390034343400424242004F4F4F0033333300323232001DE6B5001DE6B5005858
          580058585800CECECE003C3C3C0062626200FFFFFF00ACACAC00343434003434
          3400FFFFFF00FFFFFF00FFFFFF007F7F7F00313131001DE6B50058585800B0E4
          EF00B0E4EF00CECECE0038383800FFFFFF0086868600FFFFFF00494949003636
          3600484848004B4B4B004A4A4A0041414100323232001DE6B50058585800B0E4
          EF00B0E4EF00CECECE00434343002D2D2D00313131002E2E2E00383838003B3B
          3B0037373700FFFFFF005555550035353500323232001DE6B50058585800B0E4
          EF00B0E4EF00CECECE00434343002C2C2C00FFFFFF0044444400333333003B3B
          3B00303030002E2E2E002D2D2D0035353500323232001DE6B50058585800B0E4
          EF00B0E4EF00CECECE003B3B3B00FFFFFF00FFFFFF00FFFFFF006A6A6A002B2B
          2B00FFFFFF00FFFFFF00FFFFFF00575757002F2F2F001DE6B50058585800B0E4
          EF0058585800CECECE004040400049494900FFFFFF0076767600434343003535
          350055555500555555005757570040404000313030001DE6B50058585800B0E4
          EF00B0E4EF00CDCDCD003F3F3F002E2E2E00484848003F3F3F00323232003636
          360032323200343232003833330039343300585858001DE6B50058585800B0E4
          EF0058585800E4E4E40071717100545454005555550056565600585858005858
          58005A5858004A5456005858580058585800585858001DE6B50058585800B0E4
          EF00B0E4EF00B0E4EF00EFEFEF00DFDFDF00E1E1E100E1E1E100E1E1E100E1E1
          E100E3E2E100D4DEDF00C3C3C300C3C3C300C3C3C3001DE6B50058585800B0E4
          EF00CC483F00CC483F00B0E4EF00B0E4EF00B0E4EF00B0E4EF00B0E4EF00B0E4
          EF00B0E4EF00585858001DE6B5001DE6B5001DE6B5001DE6B50058585800B0E4
          EF00CC483F00CC483F00B0E4EF00B0E4EF00B0E4EF00B0E4EF00585858005858
          5800B0E4EF00585858001DE6B5001DE6B5001DE6B5001DE6B50058585800B0E4
          EF00B0E4EF00B0E4EF00B0E4EF00B0E4EF00B0E4EF00B0E4EF00B0E4EF00B0E4
          EF00B0E4EF00585858001DE6B5001DE6B5001DE6B5001DE6B5001DE6B5005858
          5800585858005858580058585800585858005858580058585800585858005858
          5800585858001DE6B5001DE6B5001DE6B5001DE6B5001DE6B500}
        MaskColor = 1959605
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF000000930000009300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF000000930000009300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0000009B000033FF000033FF0000009300FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000093000033FF000033FF0000009300FFFFFF00FFFFFF00FFFFFF000000
          93000029FF000029FF000033FF000033FF0000009300FFFFFF00FFFFFF000000
          93000033FF000033FF000033FF000033FF0000009300FFFFFF00FFFFFF000029
          CA00FFCCFF000029FF000029FF000033FF000033FF0000009300000093000033
          FF000033FF000033FF000029FF00FFCCFF000029CA00FFFFFF00FFFFFF00FFFF
          FF000029CA00FFCCFF000029FF000033FF000033FF000033FF000033FF000033
          FF000033FF000029FF00FFCCFF000029CA00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF000029CA00FFCCFF000033FF000033FF000033FF000033FF000033
          FF000033FF00FFCCFF000029CA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000029CA00023AFF00023AFF00023AFF00023AFF00023A
          FF00023AFF000029CA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00000093000C4CFF000C4CFF000C4CFF000C4CFF000C4C
          FF000C4CFF0000009300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00000093001560FF001560FF000B5AFF000B5AFF000B5AFF000B5A
          FF001560FF001560FF0000009300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000093001E73FF001E73FF00146CFF00146CFF00FFCCFF00FFCCFF00146C
          FF00146CFF001E73FF001E73FF0000009300FFFFFF00FFFFFF00FFFFFF000000
          93002083FF002083FF001C7EFF001C7EFF00FFCCFF000029CA000029CA00FFCC
          FF001C7EFF001C7EFF002083FF002083FF0000009300FFFFFF00FFFFFF000029
          CA00FFCCFF002083FF002083FF00FFCCFF000029CA00FFFFFF00FFFFFF000029
          CA00FFCCFF002083FF002083FF00FFCCFF000029CA00FFFFFF00FFFFFF00FFFF
          FF000029CA00FFCCFF00FFCCFF000029CA00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF000029CA00FFCCFF00FFCCFF000029CA00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF000029CA000029CA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF000029CA000029CA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF000000930000009300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF000000930000009300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0000009B000033FF000033FF0000009300FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000093000033FF000033FF0000009300FFFFFF00FFFFFF00FFFFFF000000
          93000029FF000029FF000033FF000033FF0000009300FFFFFF00FFFFFF000000
          93000033FF000033FF000033FF000033FF0000009300FFFFFF00FFFFFF000029
          CA00277FFF000029FF000029FF000033FF000033FF0000009300000093000033
          FF000033FF000033FF000029FF00277FFF000029CA00FFFFFF00FFFFFF00FFFF
          FF000029CA00277FFF000029FF000033FF000033FF000033FF000033FF000033
          FF000033FF000029FF00277FFF000029CA00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF000029CA00277FFF000033FF000033FF000033FF000033FF000033
          FF000033FF00277FFF000029CA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000029CA00023AFF00023AFF00023AFF00023AFF00023A
          FF00023AFF000029CA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00000093000C4CFF000C4CFF000C4CFF000C4CFF000C4C
          FF000C4CFF0000009300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00000093001560FF001560FF000B5AFF000B5AFF000B5AFF000B5A
          FF001560FF001560FF0000009300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000093001E73FF001E73FF00146CFF00146CFF00277FFF00277FFF00146C
          FF00146CFF001E73FF001E73FF0000009300FFFFFF00FFFFFF00FFFFFF000000
          93002083FF002083FF001C7EFF001C7EFF00277FFF000029CA000029CA00277F
          FF001C7EFF001C7EFF002083FF002083FF0000009300FFFFFF00FFFFFF000029
          CA00277FFF002083FF002083FF00277FFF000029CA00FFFFFF00FFFFFF000029
          CA00277FFF002083FF002083FF00277FFF000029CA00FFFFFF00FFFFFF00FFFF
          FF000029CA00277FFF00277FFF000029CA00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF000029CA00277FFF00277FFF000029CA00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF000029CA000029CA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF000029CA000029CA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end>
  end
  object cxStylRepCambioEstado: TcxStyleRepository
    Left = 632
    Top = 8
    PixelsPerInch = 96
    object cxStlPendiente: TcxStyle
      AssignedValues = [svColor]
      Color = 16776176
    end
    object cxStlPrecarga: TcxStyle
      Tag = -1
      AssignedValues = [svColor]
      Color = 10467261
    end
    object cxStlAutoriza: TcxStyle
      Tag = 1
      AssignedValues = [svColor]
      Color = 11597817
    end
    object cxStlPrograma: TcxStyle
      Tag = 2
      AssignedValues = [svColor]
      Color = 13489662
    end
    object cxStlPagado: TcxStyle
      Tag = 3
      AssignedValues = [svColor]
      Color = 12385471
    end
    object cxStlConciliado: TcxStyle
      Tag = 4
      AssignedValues = [svColor]
      Color = 9094655
    end
    object cxStlClasificado: TcxStyle
      Tag = 5
      AssignedValues = [svColor]
      Color = 16372142
    end
    object cxStlCancelado: TcxStyle
      Tag = 7
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13026531
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clRed
    end
    object cxStlContabilizado: TcxStyle
      Tag = 6
      AssignedValues = [svColor]
      Color = 16759739
    end
    object cxStlPendienteSel: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 9783808
      TextColor = clWhite
    end
    object cxStlPrecargaSel: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4216411
      TextColor = clWhite
    end
    object cxStlAutorizaSel: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 310229
      TextColor = clWhite
    end
    object cxStlProgramaSel: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 1526980
      TextColor = clWhite
    end
    object cxStlPagadoSel: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clGreen
      TextColor = clWhite
    end
    object cxStlConciliadoSel: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clMaroon
      TextColor = clWhite
    end
    object cxStlClasificadoSel: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clNavy
      TextColor = clWhite
    end
    object cxStlCanceladoSel: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clRed
      TextColor = clWhite
    end
    object cxStlContabilizaSel: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16728642
      TextColor = clWhite
    end
  end
  object DSTotales: TDataSource
    AutoEdit = False
    DataSet = dmCuentasXPagar.ADODtStTotales
    OnDataChange = DataSourceDataChange
    Left = 464
    Top = 216
  end
end
