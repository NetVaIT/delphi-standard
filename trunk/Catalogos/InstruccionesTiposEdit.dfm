inherited frmInstruccionesTiposEdit: TfrmInstruccionesTiposEdit
  Caption = 'Tipo de instrucci'#243'n'
  ClientHeight = 241
  ClientWidth = 367
  ExplicitWidth = 373
  ExplicitHeight = 270
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 367
    Height = 200
    ExplicitWidth = 367
    ExplicitHeight = 200
    ClientRectBottom = 198
    ClientRectRight = 365
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 363
      ExplicitHeight = 170
      object Label1: TLabel
        Left = 32
        Top = 16
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 32
        Top = 56
        Width = 54
        Height = 13
        Caption = 'Descripci'#243'n'
        FocusControl = cxDBTextEdit2
      end
      object Label3: TLabel
        Left = 32
        Top = 96
        Width = 37
        Height = 13
        Caption = 'Nombre'
        FocusControl = cxDBTextEdit3
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 32
        Top = 32
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 32
        Top = 72
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 304
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 32
        Top = 112
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
        DataBinding.DataField = 'Nombre'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 304
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 200
    Width = 367
    ExplicitTop = 200
    ExplicitWidth = 367
    inherited btnOk: TButton
      Left = 204
      ExplicitLeft = 204
    end
    inherited btnCancel: TButton
      Left = 285
      ExplicitLeft = 285
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
