inherited frmPersonasRoles: TfrmPersonasRoles
  BorderStyle = bsToolWindow
  Caption = 'Roles'
  ClientHeight = 433
  ClientWidth = 645
  Visible = True
  OnCreate = FormCreate
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 389
    Width = 645
  end
  inherited splDetail1: TSplitter
    Top = 301
    Width = 645
  end
  inherited splDetail2: TSplitter
    Top = 345
    Width = 645
  end
  inherited pnlMaster: TPanel
    Width = 645
    Height = 270
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 270
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
  inherited pnlDetail3: TPanel
    Top = 392
    Width = 645
  end
  inherited pnlDetail2: TPanel
    Top = 348
    Width = 645
  end
  inherited pnlDetail1: TPanel
    Top = 304
    Width = 645
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
