inherited frmPlazasTurnos: TfrmPlazasTurnos
  Caption = 'Turnos'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    ExplicitWidth = 645
    ExplicitHeight = 224
    inherited cxGrid: TcxGrid
      ExplicitWidth = 645
      ExplicitHeight = 224
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPlazaTurno: TcxGridDBColumn
          DataBinding.FieldName = 'IdPlazaTurno'
          Visible = False
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
        end
        object tvMasterHoraEntrada: TcxGridDBColumn
          DataBinding.FieldName = 'HoraEntrada'
        end
        object tvMasterHoraSalida: TcxGridDBColumn
          DataBinding.FieldName = 'HoraSalida'
        end
        object tvMasterHoraAlimentosInicio: TcxGridDBColumn
          DataBinding.FieldName = 'HoraAlimentosInicio'
        end
        object tvMasterHoraAlimentosFin: TcxGridDBColumn
          DataBinding.FieldName = 'HoraAlimentosFin'
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    ExplicitTop = 346
    ExplicitWidth = 645
  end
  inherited pnlDetail2: TPanel
    ExplicitTop = 302
    ExplicitWidth = 645
  end
  inherited pnlDetail1: TPanel
    ExplicitTop = 258
    ExplicitWidth = 645
  end
  inherited pnlClose: TPanel
    ExplicitTop = 387
    ExplicitWidth = 645
    inherited btnClose: TButton
      ExplicitLeft = 560
    end
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      31
      0)
  end
  inherited cxStyleRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxcplGrid: TdxGridReportLink
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
