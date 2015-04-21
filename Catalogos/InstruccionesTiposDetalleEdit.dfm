inherited frmInstruccionesTiposDetalleEdit: TfrmInstruccionesTiposDetalleEdit
  Caption = 'Detalle del tipo de instrucci'#243'n'
  ClientHeight = 252
  ClientWidth = 552
  ExplicitWidth = 558
  ExplicitHeight = 281
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 552
    Height = 211
    ExplicitWidth = 552
    ExplicitHeight = 175
    ClientRectBottom = 209
    ClientRectRight = 550
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 548
      ExplicitHeight = 145
      object Label1: TLabel
        Left = 24
        Top = 24
        Width = 92
        Height = 13
        Caption = 'Tipo de movimiento'
      end
      object Label2: TLabel
        Left = 24
        Top = 64
        Width = 24
        Height = 13
        Caption = 'Valor'
        FocusControl = cxDBTextEdit1
      end
      object Label3: TLabel
        Left = 24
        Top = 104
        Width = 38
        Height = 13
        Caption = 'Moneda'
        FocusControl = cxDBLookupComboBox2
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 24
        Top = 40
        DataBinding.DataField = 'MovimientoTipo'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 0
        Width = 500
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 24
        Top = 80
        Hint = 
          '[:Hoja N'#250'mero] Primera celda-'#218'ltima celda'#13#10'Ejemplo'#13#10'[Hoja1] A1-A' +
          '10'#9'Desde A1 hasta A10 en la hoja denominada Hoja1'#13#10'[:3] A1-A10'#9'D' +
          'esde A1 hasta A10 en el n'#250'mero de la hoja 3'#13#10#13#10'COLSTART-A10'#9'de l' +
          'a primera celda con los datos en la columna A hasta A10'#13#10'A10-COL' +
          'START'#9'Desde abajo a la primera celda con datos de la columna A'#13#10 +
          'A10-COLFINISH'#9'De A10 hasta la '#250'ltima celda con datos de la colum' +
          'na A'#13#10'COLFINISH-A10'#9'Desde la '#250'ltima celda con los datos en la co' +
          'lumna A hasta A10'#13#10'A-COLFINISH'#9'Desde la primera hasta la '#250'ltima ' +
          'celda con datos de la columna A'#13#10'A-COLSTART'#9'Desde la '#250'ltima hast' +
          'a la primera celda con datos de la columna A'
        DataBinding.DataField = 'Valor'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 500
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 24
        Top = 120
        DataBinding.DataField = 'Moneda'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 2
        Width = 500
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 211
    Width = 552
    ExplicitTop = 175
    ExplicitWidth = 552
    inherited btnOk: TButton
      Left = 389
      ExplicitLeft = 389
    end
    inherited btnCancel: TButton
      Left = 470
      ExplicitLeft = 470
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
