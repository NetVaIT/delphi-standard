inherited frmRolesTitular: TfrmRolesTitular
  Caption = 'Modifica los porcentajes de los solidarios'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        DataController.KeyFieldNames = 'IdPersonaRol'
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = tvMasterPorcentajeCalculo
          end>
        OptionsData.Editing = True
        OptionsView.Footer = True
        object tvMasterIdPersonaRol: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaRol'
          Visible = False
        end
        object tvMasterIdRol: TcxGridDBColumn
          DataBinding.FieldName = 'IdRol'
          Visible = False
        end
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterPersona: TcxGridDBColumn
          DataBinding.FieldName = 'Persona'
          Width = 200
        end
        object tvMasterRol: TcxGridDBColumn
          DataBinding.FieldName = 'Rol'
          Width = 100
        end
        object tvMasterPersonaRelacionada: TcxGridDBColumn
          DataBinding.FieldName = 'PersonaRelacionada'
          Visible = False
          GroupIndex = 0
          Width = 200
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
        end
        object tvMasterPorcentajeCalculo: TcxGridDBColumn
          DataBinding.FieldName = 'PorcentajeCalculo'
        end
      end
    end
  end
  inherited DataSource: TDataSource
    AutoEdit = True
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
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
