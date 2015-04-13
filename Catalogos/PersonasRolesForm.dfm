inherited frmPersonasRoles: TfrmPersonasRoles
  BorderStyle = bsToolWindow
  Caption = 'Roles Asociados'
  ClientHeight = 433
  ClientWidth = 645
  Visible = True
  OnCreate = FormCreate
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 348
    Width = 645
    ExplicitTop = 389
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 260
    Width = 645
    ExplicitTop = 301
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    Top = 304
    Width = 645
    ExplicitTop = 345
    ExplicitWidth = 645
  end
  inherited pnlMaster: TPanel
    Width = 645
    Height = 229
    ExplicitWidth = 645
    ExplicitHeight = 229
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 229
      ExplicitWidth = 645
      ExplicitHeight = 229
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
    Top = 351
    Width = 645
    ExplicitTop = 351
    ExplicitWidth = 645
  end
  inherited pnlDetail2: TPanel
    Top = 307
    Width = 645
    ExplicitTop = 307
    ExplicitWidth = 645
  end
  inherited pnlDetail1: TPanel
    Top = 263
    Width = 645
    ExplicitTop = 263
    ExplicitWidth = 645
  end
  inherited pnlClose: TPanel
    Top = 392
    Width = 645
    ExplicitTop = 392
    ExplicitWidth = 645
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
