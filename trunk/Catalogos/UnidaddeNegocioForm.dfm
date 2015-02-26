inherited frmUnidaddeNegocio: TfrmUnidaddeNegocio
  Caption = 'Unidad de Negocio'
  ClientHeight = 215
  ClientWidth = 416
  ExplicitWidth = 422
  ExplicitHeight = 243
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 416
    Height = 174
    ClientRectBottom = 172
    ClientRectRight = 414
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 434
      ExplicitHeight = 295
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 56
        Width = 54
        Height = 13
        Caption = 'Descripcion'
        FocusControl = cxDBTextEdit2
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 32
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 81
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 72
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 377
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 174
    Width = 416
    inherited btnOk: TButton
      Left = 253
    end
    inherited btnCancel: TButton
      Left = 334
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmUnidadesdeNegocio.adodsMaster
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
