inherited frmIncidencias: TfrmIncidencias
  Caption = 'Incidencias'
  OnCreate = FormCreate
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail1: TSplitter
    Top = 141
  end
  inherited pnlMaster: TPanel
    Height = 110
    inherited cxGrid: TcxGrid
      Height = 110
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdIncidencia: TcxGridDBColumn
          DataBinding.FieldName = 'IdIncidencia'
          Visible = False
        end
        object tvMasterIdInstruccion: TcxGridDBColumn
          DataBinding.FieldName = 'IdInstruccion'
          Visible = False
        end
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterIdPersonaRelacionada: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaRelacionada'
          Visible = False
        end
        object tvMasterInstruccion: TcxGridDBColumn
          DataBinding.FieldName = 'Instruccion'
          Width = 400
        end
        object tvMasterPersona: TcxGridDBColumn
          DataBinding.FieldName = 'Persona'
          Width = 400
        end
        object tvMasterPersonaRelacionada: TcxGridDBColumn
          DataBinding.FieldName = 'PersonaRelacionada'
          Width = 400
        end
      end
    end
  end
  inherited pnlDetail1: TPanel
    Top = 144
    Height = 225
    ExplicitTop = 144
    ExplicitHeight = 225
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
