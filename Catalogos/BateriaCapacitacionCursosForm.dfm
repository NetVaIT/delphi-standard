inherited frmBateriaCapacitacionCursos: TfrmBateriaCapacitacionCursos
  BorderStyle = bsToolWindow
  Caption = 'Bateria de Capacitacion - Cursos'
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
    ExplicitTop = 389
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 301
    Width = 645
    ExplicitTop = 301
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    Top = 345
    Width = 645
    ExplicitTop = 345
    ExplicitWidth = 645
  end
  inherited pnlMaster: TPanel
    Width = 645
    Height = 270
    ExplicitWidth = 645
    ExplicitHeight = 270
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 270
      ExplicitWidth = 645
      ExplicitHeight = 270
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdBateriaCapacitacionCurso: TcxGridDBColumn
          DataBinding.FieldName = 'IdBateriaCapacitacionCurso'
          Visible = False
        end
        object tvMasterIdBateriaCapacitacion: TcxGridDBColumn
          DataBinding.FieldName = 'IdBateriaCapacitacion'
          Visible = False
        end
        object tvMasterBateriaCapacitacion: TcxGridDBColumn
          DataBinding.FieldName = 'BateriaCapacitacion'
          Width = 250
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
        end
        object tvMasterValorCurricular: TcxGridDBColumn
          DataBinding.FieldName = 'ValorCurricular'
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 392
    Width = 645
    ExplicitTop = 392
    ExplicitWidth = 645
  end
  inherited pnlDetail2: TPanel
    Top = 348
    Width = 645
    ExplicitTop = 348
    ExplicitWidth = 645
  end
  inherited pnlDetail1: TPanel
    Top = 304
    Width = 645
    ExplicitTop = 304
    ExplicitWidth = 645
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
