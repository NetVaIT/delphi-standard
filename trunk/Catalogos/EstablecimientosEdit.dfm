inherited frmEstablecimientosEdit: TfrmEstablecimientosEdit
  Caption = 'Establecimiento'
  ClientHeight = 298
  ClientWidth = 537
  ExplicitWidth = 543
  ExplicitHeight = 327
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 537
    Height = 257
    ExplicitWidth = 681
    ExplicitHeight = 762
    ClientRectBottom = 255
    ClientRectRight = 535
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 677
      ExplicitHeight = 732
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
        Caption = 'Descripci'#243'n'
        FocusControl = cxDBTextEdit2
      end
      object Label3: TLabel
        Left = 24
        Top = 104
        Width = 40
        Height = 13
        Caption = 'Domicilio'
      end
      object btnUpdate: TSpeedButton
        Left = 494
        Top = 123
        Width = 23
        Height = 22
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
        Width = 493
      end
      object cxDBLabel1: TcxDBLabel
        Left = 24
        Top = 123
        DataBinding.DataField = 'Domicilio'
        DataBinding.DataSource = DataSource
        Height = 79
        Width = 471
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 257
    Width = 537
    ExplicitTop = 762
    ExplicitWidth = 681
    inherited btnOk: TButton
      Left = 374
      ExplicitLeft = 518
    end
    inherited btnCancel: TButton
      Left = 455
      ExplicitLeft = 599
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
