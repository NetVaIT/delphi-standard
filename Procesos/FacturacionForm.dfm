inherited frmFacturacion: TfrmFacturacion
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Facturacion'
  ClientHeight = 472
  ClientWidth = 747
  ExplicitWidth = 753
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 387
    Width = 747
    ExplicitTop = 348
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 299
    Width = 747
    ExplicitTop = 260
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    Top = 343
    Width = 747
    ExplicitTop = 304
    ExplicitWidth = 645
  end
  inherited pnlMaster: TPanel
    Width = 747
    Height = 268
    ExplicitWidth = 645
    ExplicitHeight = 268
    inherited cxGrid: TcxGrid
      Width = 747
      Height = 268
      ExplicitWidth = 645
      ExplicitHeight = 268
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdCuentaXCobrarEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaXCobrarEstatus'
          Visible = False
        end
        object tvMasterEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
        end
        object tvMasterConceptoGenerico: TcxGridDBColumn
          Caption = 'Concepto'
          DataBinding.FieldName = 'ConceptoGenerico'
        end
        object tvMasterSumaSubtotal: TcxGridDBColumn
          DataBinding.FieldName = 'SumaSubtotal'
        end
        object tvMasterSumaTotal: TcxGridDBColumn
          DataBinding.FieldName = 'SumaTotal'
        end
        object tvMasterSumaDescuentos: TcxGridDBColumn
          DataBinding.FieldName = 'SumaDescuentos'
        end
        object tvMasterTotalIVATrasladado: TcxGridDBColumn
          DataBinding.FieldName = 'TotalIVATrasladado'
        end
        object tvMasterTotalISRTrasladado: TcxGridDBColumn
          DataBinding.FieldName = 'TotalISRTrasladado'
        end
        object tvMasterTotalIEPSTrasladado: TcxGridDBColumn
          DataBinding.FieldName = 'TotalIEPSTrasladado'
        end
        object tvMasterTotalLocalesTrasladado: TcxGridDBColumn
          DataBinding.FieldName = 'TotalLocalesTrasladado'
        end
        object tvMasterTotalIVARetenido: TcxGridDBColumn
          DataBinding.FieldName = 'TotalIVARetenido'
        end
        object tvMasterTotalISRRetenido: TcxGridDBColumn
          DataBinding.FieldName = 'TotalISRRetenido'
        end
        object tvMasterTotalLocalesRetenido: TcxGridDBColumn
          DataBinding.FieldName = 'TotalLocalesRetenido'
        end
        object tvMasterFacturar: TcxGridDBColumn
          DataBinding.FieldName = 'Facturar'
        end
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterRegimenFiscal: TcxGridDBColumn
          DataBinding.FieldName = 'RegimenFiscal'
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 390
    Width = 747
    ExplicitTop = 390
    ExplicitWidth = 645
  end
  inherited pnlDetail2: TPanel
    Top = 346
    Width = 747
    ExplicitTop = 346
    ExplicitWidth = 645
  end
  inherited pnlDetail1: TPanel
    Top = 302
    Width = 747
    ExplicitTop = 302
    ExplicitWidth = 645
  end
  inherited pnlClose: TPanel
    Top = 431
    Width = 747
    Visible = True
    ExplicitTop = 431
    ExplicitWidth = 645
    inherited btnClose: TButton
      Left = 662
      ExplicitLeft = 560
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
          ItemName = 'dxbbProcesar'
        end>
    end
    object dxbbProcesar: TdxBarButton
      Category = 0
      Hint = 'Procesar Facturas'
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
