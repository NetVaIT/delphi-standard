inherited frmRptMovimientos: TfrmRptMovimientos
  Caption = 'Seleccione un Periodo'
  ClientHeight = 230
  ClientWidth = 361
  OnShow = FormShow
  ExplicitWidth = 367
  ExplicitHeight = 258
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 361
    Height = 189
    ExplicitWidth = 361
    ExplicitHeight = 189
    ClientRectBottom = 187
    ClientRectRight = 359
    inherited tsGeneral: TcxTabSheet
      ExplicitWidth = 357
      ExplicitHeight = 159
      object Label1: TLabel
        Left = 24
        Top = 24
        Width = 36
        Height = 13
        Caption = 'Periodo'
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 189
    Width = 361
    ExplicitTop = 189
    ExplicitWidth = 361
    inherited btnOk: TButton
      Left = 198
      ExplicitLeft = 198
    end
    inherited btnCancel: TButton
      Left = 279
      ExplicitLeft = 279
    end
  end
  object lcbPeriodo: TcxDBLookupComboBox [2]
    Left = 26
    Top = 71
    DataBinding.DataField = 'IdPeriodo'
    DataBinding.DataSource = dsParams
    Properties.KeyFieldNames = 'IdPeriodo'
    Properties.ListColumns = <
      item
        FieldName = 'Descripcion'
      end>
    Properties.ListSource = dsPeriodo
    TabOrder = 2
    Width = 304
  end
  inherited dsParams: TDataSource
    Left = 160
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  object dsPeriodo: TDataSource
    Left = 304
  end
end
