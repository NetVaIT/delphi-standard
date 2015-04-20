inherited frmInstrucciones: TfrmInstrucciones
  Caption = 'Instrucciones'
  OnCreate = FormCreate
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    ExplicitWidth = 651
    ExplicitHeight = 253
    inherited cxGrid: TcxGrid
      ExplicitWidth = 651
      ExplicitHeight = 253
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdInstruccion: TcxGridDBColumn
          DataBinding.FieldName = 'IdInstruccion'
          Visible = False
        end
        object tvMasterIdInstruccionTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdInstruccionTipo'
          Visible = False
        end
        object tvMasterIdPersonaSolicita: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaSolicita'
          Visible = False
        end
        object tvMasterIdDocumentoAdjunto: TcxGridDBColumn
          DataBinding.FieldName = 'IdDocumentoAdjunto'
          Visible = False
        end
        object tvMasterIdPeriodicidad: TcxGridDBColumn
          DataBinding.FieldName = 'IdPeriodicidad'
          Visible = False
        end
        object tvMasterConcepto: TcxGridDBColumn
          DataBinding.FieldName = 'Concepto'
          Width = 304
        end
        object tvMasterIntruccionTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IntruccionTipo'
        end
        object tvMasterNombreArchivo: TcxGridDBColumn
          DataBinding.FieldName = 'NombreArchivo'
          Width = 304
        end
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    ExplicitTop = 375
    ExplicitWidth = 651
  end
  inherited pnlDetail2: TPanel
    ExplicitTop = 331
    ExplicitWidth = 651
  end
  inherited pnlDetail1: TPanel
    ExplicitTop = 287
    ExplicitWidth = 651
  end
  inherited pnlClose: TPanel
    inherited btnClose: TButton
      ExplicitLeft = 566
    end
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
          ItemName = 'dxbbProcessXLS'
        end>
    end
    object dxbbProcessXLS: TdxBarButton
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
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
