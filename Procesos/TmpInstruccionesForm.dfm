inherited frmTmpInstrucciones: TfrmTmpInstrucciones
  Caption = 'frmTmpInstrucciones'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        OptionsData.Editing = True
        object tvMasterIdTmpInstruccion: TcxGridDBColumn
          DataBinding.FieldName = 'IdTmpInstruccion'
          Visible = False
        end
        object tvMasterIdInstruccionTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdInstruccionTipo'
          Visible = False
        end
        object tvMasterIdDocumento: TcxGridDBColumn
          DataBinding.FieldName = 'IdDocumento'
          Visible = False
        end
        object tvMasterInstruccionTipo: TcxGridDBColumn
          DataBinding.FieldName = 'InstruccionTipo'
          Width = 200
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 200
        end
        object tvMasterInicio: TcxGridDBColumn
          Caption = 'Empieza el'
          DataBinding.FieldName = 'Inicio'
        end
        object tvMasterArchivo: TcxGridDBColumn
          DataBinding.FieldName = 'Archivo'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Width = 204
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
