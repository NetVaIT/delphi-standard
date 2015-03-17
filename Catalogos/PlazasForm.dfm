inherited frmPlazas: TfrmPlazas
  Caption = 'frmPlazas'
  OnCreate = FormCreate
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPlaza: TcxGridDBColumn
          DataBinding.FieldName = 'IdPlaza'
          Visible = False
        end
        object tvMasterIdPuesto: TcxGridDBColumn
          DataBinding.FieldName = 'IdPuesto'
          Visible = False
        end
        object tvMasterIdPersonaEmpleado: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaEmpleado'
          Visible = False
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
        end
        object tvMasterSalarioBase: TcxGridDBColumn
          DataBinding.FieldName = 'SalarioBase'
        end
        object tvMasterFechaCreacionPlaza: TcxGridDBColumn
          DataBinding.FieldName = 'FechaCreacionPlaza'
        end
        object tvMasterIdPlazaTurno: TcxGridDBColumn
          DataBinding.FieldName = 'IdPlazaTurno'
          Visible = False
        end
        object tvMasterPlazaTurno: TcxGridDBColumn
          DataBinding.FieldName = 'PlazaTurno'
        end
        object tvMasterIdUbicacion: TcxGridDBColumn
          DataBinding.FieldName = 'IdUbicacion'
          Visible = False
        end
        object tvMasterUbicacion: TcxGridDBColumn
          DataBinding.FieldName = 'Ubicacion'
        end
        object tvMasterIdPlazaTemporalidadTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdPlazaTemporalidadTipo'
          Visible = False
        end
        object tvMasterPlazaTemporalidadTipo: TcxGridDBColumn
          DataBinding.FieldName = 'PlazaTemporalidadTipo'
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
