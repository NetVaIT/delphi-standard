inherited frmPersonas: TfrmPersonas
  BorderStyle = bsToolWindow
  Caption = 'frmPersonas'
  ClientHeight = 433
  ClientWidth = 645
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
    Top = 108
    Width = 645
    ExplicitTop = 132
  end
  inherited splDetail2: TSplitter
    Top = 342
    Width = 645
    ExplicitTop = 366
  end
  inherited pnlMaster: TPanel
    Width = 645
    Height = 77
    ExplicitHeight = 101
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 77
      ExplicitHeight = 101
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterRFC: TcxGridDBColumn
          DataBinding.FieldName = 'RFC'
        end
        object tvMasterIdPersonaTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaTipo'
          Visible = False
        end
        object tvMasterIdRazonSocialTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdRazonSocialTipo'
          Visible = False
        end
        object tvMasterIdSexo: TcxGridDBColumn
          DataBinding.FieldName = 'IdSexo'
          Visible = False
        end
        object tvMasterIdEstadoCivil: TcxGridDBColumn
          DataBinding.FieldName = 'IdEstadoCivil'
          Visible = False
        end
        object tvMasterIdPais: TcxGridDBColumn
          DataBinding.FieldName = 'IdPais'
          Visible = False
        end
        object tvMasterIdPoblacion: TcxGridDBColumn
          DataBinding.FieldName = 'IdPoblacion'
          Visible = False
        end
        object tvMasterRazonSocial: TcxGridDBColumn
          Caption = 'Nombre / Razon Social'
          DataBinding.FieldName = 'RazonSocial'
          Width = 800
        end
        object tvMasterPersonaTipo: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'PersonaTipo'
        end
        object tvMasterRazonSocialTipo: TcxGridDBColumn
          DataBinding.FieldName = 'RazonSocialTipo'
          Visible = False
        end
        object tvMasterNombre: TcxGridDBColumn
          DataBinding.FieldName = 'Nombre'
          Visible = False
        end
        object tvMasterApellidoPaterno: TcxGridDBColumn
          DataBinding.FieldName = 'ApellidoPaterno'
          Visible = False
        end
        object tvMasterApellidoMaterno: TcxGridDBColumn
          DataBinding.FieldName = 'ApellidoMaterno'
          Visible = False
        end
        object tvMasterFechaNacimiento: TcxGridDBColumn
          DataBinding.FieldName = 'FechaNacimiento'
          Visible = False
        end
        object tvMasterSexo: TcxGridDBColumn
          DataBinding.FieldName = 'Sexo'
          Visible = False
        end
        object tvMasterEstadoCivil: TcxGridDBColumn
          DataBinding.FieldName = 'EstadoCivil'
          Visible = False
        end
        object tvMasterPais: TcxGridDBColumn
          DataBinding.FieldName = 'Pais'
          Visible = False
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 392
    Width = 645
  end
  inherited pnlDetail2: TPanel
    Top = 345
    Width = 645
    Height = 44
    ExplicitTop = 369
    ExplicitHeight = 44
  end
  inherited pnlDetail1: TPanel
    Top = 111
    Width = 645
    Height = 231
    ExplicitTop = 135
    ExplicitHeight = 231
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