inherited frmPersonasSeleccionRol: TfrmPersonasSeleccionRol
  Caption = 'Listado de roles activos para disperci'#243'n'
  ClientWidth = 928
  ExplicitWidth = 928
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Width = 928
    ExplicitWidth = 852
  end
  inherited splDetail1: TSplitter
    Width = 928
    ExplicitWidth = 852
  end
  inherited splDetail2: TSplitter
    Width = 928
    ExplicitWidth = 852
  end
  inherited pnlMaster: TPanel
    Width = 928
    ExplicitWidth = 852
    inherited cxGrid: TcxGrid
      Width = 928
      ExplicitWidth = 852
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPersonaRol: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaRol'
          Visible = False
        end
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterIdRol: TcxGridDBColumn
          DataBinding.FieldName = 'IdRol'
          Visible = False
        end
        object tvMasterIdPersonaRelacionada: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaRelacionada'
          Visible = False
        end
        object tvMasterPersona: TcxGridDBColumn
          DataBinding.FieldName = 'Persona'
          Width = 303
        end
        object tvMasterRol: TcxGridDBColumn
          DataBinding.FieldName = 'Rol'
          Width = 195
        end
        object tvMasterPersonaRelacionada: TcxGridDBColumn
          DataBinding.FieldName = 'PersonaRelacionada'
          Width = 281
        end
        object tvMasterEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
          Visible = False
        end
        object tvMasterClase: TcxGridDBColumn
          DataBinding.FieldName = 'Clase'
          Visible = False
        end
        object tvMasterCalcular: TcxGridDBColumn
          DataBinding.FieldName = 'Calcular'
          Width = 43
        end
        object tvMasterPorcentajeCalculo: TcxGridDBColumn
          DataBinding.FieldName = 'PorcentajeCalculo'
          Width = 68
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Width = 928
    ExplicitWidth = 852
  end
  inherited pnlDetail2: TPanel
    Width = 928
    ExplicitWidth = 852
  end
  inherited pnlDetail1: TPanel
    Width = 928
    ExplicitWidth = 852
  end
  inherited pnlClose: TPanel
    Width = 928
    ExplicitWidth = 852
    inherited btnClose: TButton
      Left = 843
      ExplicitLeft = 767
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmPersonasSeleccionRol.adodsMaster
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      31
      0)
    inherited dxbTools: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxbbPreview'
        end
        item
          Visible = True
          ItemName = 'btnDispercion'
        end>
    end
    object btnDispercion: TdxBarButton
      Caption = 'Dispersi'#243'n'
      Category = 0
      Visible = ivAlways
      ImageIndex = 13
    end
  end
  inherited cxStyleRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxcplGrid: TdxGridReportLink
      ReportDocument.CreationDate = 43643.415032488420000000
      BuiltInReportLink = True
    end
  end
end
