inherited frmPersonasRoles: TfrmPersonasRoles
  Caption = 'frmPersonasRoles'
  OnCreate = FormCreate
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPersonaRol: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaRol'
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
        object tvMasterIdRol: TcxGridDBColumn
          DataBinding.FieldName = 'IdRol'
          Visible = False
        end
        object tvMasterIdRolEsquemaPago: TcxGridDBColumn
          DataBinding.FieldName = 'IdRolEsquemaPago'
          Visible = False
        end
        object tvMasterIdRolEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdRolEstatus'
          Visible = False
        end
        object tvMasterIdRolClase: TcxGridDBColumn
          DataBinding.FieldName = 'IdRolClase'
          Visible = False
        end
        object tvMasterRol: TcxGridDBColumn
          DataBinding.FieldName = 'Rol'
          Width = 200
        end
        object tvMasterPersonaRelacionada: TcxGridDBColumn
          Caption = 'Persona Relacionada'
          DataBinding.FieldName = 'PersonaRelacionada'
          Width = 400
        end
        object tvMasterRolEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'RolEstatus'
          Width = 120
        end
        object tvMasterRolClase: TcxGridDBColumn
          DataBinding.FieldName = 'RolClase'
          Width = 100
        end
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmPersona.adodsPersonaRoles
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
