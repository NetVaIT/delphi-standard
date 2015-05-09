inherited frmRptMovimientos: TfrmRptMovimientos
  Caption = 'frmRptMovimientos'
  ExplicitWidth = 444
  ExplicitHeight = 395
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 434
      ExplicitHeight = 295
      object Label1: TLabel
        Left = 24
        Top = 24
        Width = 36
        Height = 13
        Caption = 'Periodo'
      end
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
        FieldName = 'IdPeriodo'
      end
      item
        FieldName = 'Descripcion'
      end>
    Properties.ListSource = dsPeriodo
    TabOrder = 2
    Width = 304
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  object dsPeriodo: TDataSource
    Left = 304
  end
end
