inherited frmPlazasTurnos: TfrmPlazasTurnos
  Caption = 'frmPlazasTurnos'
  OnCreate = FormCreate
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
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
end
