unit CuentasXPagarPagosEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _EditForm, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Data.DB, Vcl.ExtCtrls, cxPC, cxLabel, cxDBLabel,
  cxStyles, cxClasses, Vcl.Buttons,Data.Win.ADODB, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TfrmCuentasXPagarEdit = class(T_frmEdit)
    Label14: TLabel;
    DBLookupComboBox9: TDBLookupComboBox;
    PnlEstadosCxp: TPanel;
    ToolBar1: TToolBar;
    TlBtnPrograma: TToolButton;
    TlBtnAutoriza: TToolButton;
    TlBtnPaga: TToolButton;
    TlBtnConcilia: TToolButton;
    PgCntrlStatus: TPageControl;
    TbShtProgramar: TTabSheet;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label16: TLabel;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBTxtEdtPago: TcxDBTextEdit;
    TbShtAutorizar: TTabSheet;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    TbShtPagar: TTabSheet;
    Label22: TLabel;
    Label23: TLabel;
    TbShtConciliar: TTabSheet;
    Label24: TLabel;
    Label25: TLabel;
    ActPrograma: TAction;
    ActAutoriza: TAction;
    ActPaga: TAction;
    ActConcilia: TAction;
    Label7: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    Label5: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DBLookupComboBox8: TDBLookupComboBox;
    PnlMonedaExtranjera: TPanel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    cxDBLabel6: TcxDBLabel;
    Label9: TLabel;
    Label12: TLabel;
    cxDBLabel7: TcxDBLabel;
    cxDBLabel8: TcxDBLabel;
    cxDBLabel9: TcxDBLabel;
    cxDBDtEdtFecPago: TcxDBDateEdit;
    cxStylRepCambioEstado: TcxStyleRepository;
    cxStlPendiente: TcxStyle;
    cxStlPrecarga: TcxStyle;
    cxStlAutoriza: TcxStyle;
    cxStlPrograma: TcxStyle;
    cxStlPagado: TcxStyle;
    cxStlConciliado: TcxStyle;
    cxStlClasificado: TcxStyle;
    cxStlCancelado: TcxStyle;
    cxStlContabilizado: TcxStyle;
    cxStlPendienteSel: TcxStyle;
    cxStlPrecargaSel: TcxStyle;
    cxStlAutorizaSel: TcxStyle;
    cxStlProgramaSel: TcxStyle;
    cxStlPagadoSel: TcxStyle;
    cxStlConciliadoSel: TcxStyle;
    cxStlClasificadoSel: TcxStyle;
    cxStlCanceladoSel: TcxStyle;
    cxStlContabilizaSel: TcxStyle;
    Label13: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBLabel10: TcxDBLabel;
    cxDBLabel11: TcxDBLabel;
    cxDBLabel12: TcxDBLabel;
    cxDBLabel13: TcxDBLabel;
    Label26: TLabel;
    DBLkpCmbBxMetPago: TDBLookupComboBox;
    cxDBLblMetodoPago: TcxDBLabel;
    SpdBtnParteProg: TSpeedButton;
    DSTotales: TDataSource;
    cxDBLabel14: TcxDBLabel;
    cxDBLabel15: TcxDBLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    procedure actPostExecute(Sender: TObject);
    procedure ActCambioEstatusExecute(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure SpdBtnParteProgClick(Sender: TObject);
    procedure cxDBTxtEdtPagoEditing(Sender: TObject; var CanEdit: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    fTotalPago: Double; //May 12/15     //Se cambio por Pago jul 22/15
    FIdUsu: Integer;
    feditando: Boolean;
    procedure SetIDUsuAct(const Value: Integer);
    function VerificaTotales(ValAntPago, valNuevoPago: Double; IDCXP,
      idpago: integer; var Resulta: String): Boolean;//May 13/15
    property ATotalPago: Double read fTotalPago write FTotalPago; //May 12/15
    property IdUsuAct:Integer read FIdUsu write SetIDUsuAct;//May 13/15
    property Editando:Boolean read feditando write feditando;
  public
    { Public declarations }
    procedure HabilitarOpciones;
  end;

implementation

{$R *.dfm}

uses CuentasXPagarDM, _ConectionDmod;

procedure TfrmCuentasXPagarEdit.actPostExecute(Sender: TObject);
var  seguir:Boolean;
    Resultado:String; //Jun 16/15

 // Jul 24/15
   montoRes, Total, VAlAux:Double;
   FecProg:TDAteTime;
   idCXP,idPerRol,idCtaBanPag,IDCtaBanCob, IDMetPag:Integer;
   valTxtAux:String;
   PorMetPago:Boolean; //Ago 25/15
begin
  seguir:=True;
  if datasource.DataSet.FieldByName('IDCuentaXPagarEstatus').AsInteger= 2 then  //Verificar que en el ambio este guardado
  begin
    seguir:= not (datasource.DataSet.FieldByName('IDCuentaBAncariaPagador').IsNull or
            ( (datasource.DataSet.FieldByName('IDMetodoPago').asInteger=1) and datasource.DataSet.FieldByName('IDCuentaBAncariaCobrador').IsNull )  or
                  datasource.DataSet.FieldByName('IDMetodoPago').IsNull );  //Jun 3/15
  end;
  PorMetPago:= (datasource.DataSet.FieldByName('IDMetodoPago').asInteger=1) and datasource.DataSet.FieldByName('IDCuentaBAncariaCobrador').IsNull ;  //Ago 25/15

  if (not seguir) or PorMetPago then  //Ago 25/15
  begin
    if PorMetPago then//Ago 25/15
      Showmessage('Método de Pago requiere Cuenta Bancaria Cobrador') //Ago 25/15
    else
      Showmessage('Faltan parámetros requeridos. No se puede autorizar sin ellos ');
  end
  else
  begin
    if dataSource.DataSet.State in [dsEdit, dsInsert] then  //Asegurarse que sea programado no en otro estado Jul 24/15
    begin
      valTxtAux:=cxDBTxtEdtPago.Text;
      delete(valTxtAux,pos('$',valTxtAux),1);
      while pos(',',valTxtAux)>0 do
         delete(valTxtAux,pos(',',valTxtAux),1);
      valaux:= strToFloat(valTxtAux);
                             //ValAntPago, valNuevoPago  //Verificar total con respecto al CXP Jun 15/15
      Seguir:=VerificaTotales(ATotalPago,valaux, DataSource.DataSet.fieldbyname('IDCuentaXPagar').AsInteger,
                                  DataSource.DataSet.fieldbyname('IDCuentaXPagarPago').AsInteger,resultado);

      if not Seguir then  //Jul 22/15
        Showmessage(resultado)
      else
      begin
        IDCtaBanCob:=-1; //Porque puede haber sin valor Ago 24/15
        datasource.DataSet.FieldByName('TotalMonedaNacional').AsFloat:=valaux; //Para que se ajuste //jul 27/15
        Total:= datasource.DataSet.FieldByName('TotalMonedaNacional').AsFloat;  //Copiado de programacion parcial //Jul 27/15
        idCXP:= datasource.DataSet.FieldByName('IDCuentaXPagar').AsInteger ;
        idPerRol:=datasource.DataSet.FieldByName('IDPersonaRol').AsInteger;
        idCtaBanPag:=DataSource.DataSet.fieldbyname('IDCuentaBancariaPagador').AsInteger;
        if not DataSource.DataSet.fieldbyname('IDCuentaBancariaCobrador').isnull then //Porque puede haber sin valor Ago 24/15
           IDCtaBanCob:=DataSource.DataSet.fieldbyname('IDCuentaBancariaCobrador').AsInteger;
        IDMetPag:=DataSource.DataSet.fieldbyname('IDMetodoPago').asInteger;
        FecProg:=datasource.DataSet.FieldByName('FechaProgramada').asDateTime;
        inherited;  //Se mueve al primero
        if DataSource.DataSet.fieldbyname('IDCuentaXPagarEstatus').AsInteger=1 then //Jul 24/15
        begin
          if resultado='Completo' then
            close
          else //Menor
          begin
                   // datasource.DataSet.FieldByName('TotalMonedaNacional').AsFloat
            montoRes:= ATotalPago - Total; //StrToFloat(cxDBTxtEdtPago.Text);//datasource.DataSet.FieldByName('MontoProgramado').AsFloat;
            if montoRes>0 then
            begin
              datasource.DataSet.insert;
              DataSource.DataSet.fieldbyname('IDCuentaXPagar').AsInteger:=idCXP;
              DataSource.DataSet.fieldbyname('IDCuentaXPagarEstatus').AsInteger:=1;//  siempre este
              DataSource.DataSet.fieldbyname('IDPersonaRol').AsInteger:=idPerRol;
              DataSource.DataSet.fieldbyname('FechaProgramacion').asdatetime:=date;
              DataSource.DataSet.fieldbyname('FechaProgramada').asdatetime:=FecProg;
              DataSource.DataSet.fieldbyname('IDUsuarioPrograma').asinteger:=IdUsuAct;
              DataSource.DataSet.fieldbyname('IDCuentaBancariaPagador').AsInteger:= idCtaBanPag;
              if IDCtaBanCob<>-1 then //Porque puede haber sin valor Ago 24/15
                DataSource.DataSet.fieldbyname('IDCuentaBancariaCobrador').AsInteger:=IDCtaBanCob;
              DataSource.DataSet.fieldbyname('Montoprogramado').asfloat:=montoRes;
              DataSource.DataSet.fieldbyname('TotalMonedaNacional').asfloat:=montoRes;//Total; //Jul 22/15 Debe cambiar por el valor del Pago Programado
              DataSource.DataSet.fieldbyname('TotalMonedaExtranjera').asfloat:=0;
              DataSource.DataSet.fieldbyname('IDMetodoPago').asInteger:= IDMetPag;
              DataSource.DataSet.post;
              Close;
            end;
          end;
        end;
      end;
    end;
  end;
  //Si el monto programado o Autorizado no corresponde al total hay que generar un pago nuevo con el resto

  cxDBTxtEdtPago.enabled:= DataSource.DataSet.fieldbyname('IDCuentaXPagarEstatus').AsInteger<=1;

end;

procedure TfrmCuentasXPagarEdit.cxDBTxtEdtPagoEditing(Sender: TObject;
  var CanEdit: Boolean);

begin
  inherited;
  if not editando then
  begin
  //VEr si se pone una variable par determinar que se esta editando.
   ATotalPago:= datasource.DataSet.FieldByName('MontoProgramado').AsFloat; //Para la edicion inicial
   editando:=true;
  end;

end;

procedure TfrmCuentasXPagarEdit.DataSourceDataChange(Sender: TObject; Field: TField);
var i:Integer;
begin
  inherited;
  //Verificar si aca
  if Active then

  for I:=0 to componentCount-1 do
  begin
    if Components[i] is TToolButton then
    begin
      (Components[i] as TToolButton).Enabled:= datasource.DataSet.FieldByName('IDCuentaXPagarEstatus').AsInteger<(Components[i] as TToolButton).Tag ;
    end
    else
      if (Components[i] is TTabSheet) and ((Components[i] as TTabSheet).tag>-1) then
      begin
        (Components[i] as TTabSheet).TabVisible:= datasource.DataSet.FieldByName('IDCuentaXPagarEstatus').AsInteger>= (Components[i] as TTabSheet).tag;
      end;

      if (Components[i] is TcxDBLabel) and ((Components[i] as TcxDBLabel).tag=10) then
      begin
        (Components[i] as TcxDBLabel).Visible:= (Components[i] as TcxDBLabel).Caption<>''; //Para que muestre solo los que traen valor
      end;

  end;

end;

procedure TfrmCuentasXPagarEdit.FormCreate(Sender: TObject);
begin
  inherited;
  IdUsuAct:= _dmConection.IdUsuario;
end;

procedure TfrmCuentasXPagarEdit.FormShow(Sender: TObject);
begin
  inherited;
  editando:=False; //Verificar si se puede usar sin cerrar si no esto no va a ca
  if Active then
    HabilitarOpciones;
  case datasource.DataSet.FieldByName('IDCuentaXPagarEstatus').AsInteger of
   1: ATotalPago:= datasource.DataSet.FieldByName('MontoProgramado').AsFloat; //Programado
 //  2: ATotalCXP:= datasource.DataSet.FieldByName('MontoAutorizado').AsFloat; //Autorizado  //No se va a usar  Jun 24/15
 //  3: ATotalCXP:= datasource.DataSet.FieldByName('MontoPagado').AsFloat; //Pagado //No se va a usar   Jun 24/15
   else
      ATotalPago:= 0; //Cuando no se puede repartir
  end;
  PgCntrlStatus.Visible:= datasource.DataSet.FieldByName('IDCuentaXPagarEstatus').AsInteger>=1; //Ago 27/15
  //Jul 23/15 DEsde
  //SpdBtnParteProg.Visible:= datasource.DataSet.FieldByName('IDCuentaXPagarEstatus').AsInteger<=1;  //Deshabilitado Jul 28/15
  cxDBTxtEdtPago.enabled:= datasource.DataSet.FieldByName('IDCuentaXPagarEstatus').AsInteger<=1;//jul 24/15
  TbShtProgramar.Enabled:=datasource.DataSet.FieldByName('IDCuentaXPagarEstatus').AsInteger<=1;
  TbShtAutorizar. Enabled:=datasource.DataSet.FieldByName('IDCuentaXPagarEstatus').AsInteger<=2;
  TbShtPagar.Enabled:=datasource.DataSet.FieldByName('IDCuentaXPagarEstatus').AsInteger<=3;
  //Jul 23/15 Hasta
end;

procedure TfrmCuentasXPagarEdit.HabilitarOpciones;
var i:integer;
begin
  if Assigned(DataSource.DataSet) then
  begin
    for I:=0 to componentCount-1 do
    begin
      if Components[i] is TToolButton then
      begin
        (Components[i] as TToolButton).Enabled:= datasource.DataSet.FieldByName('IDCuentaXPagarEstatus').AsInteger<(Components[i] as TToolButton).Tag ;
      end
      else
        if (Components[i] is TTabSheet) and ((Components[i] as TTabSheet).tag>-1) then
        begin
          (Components[i] as TTabSheet).tabVisible:= datasource.DataSet.FieldByName('IDCuentaXPagarEstatus').AsInteger>= (Components[i] as TTabSheet).tag;
        end;
        if (Components[i] is TcxDBLabel) and ((Components[i] as TcxDBLabel).tag=10) then
        begin
          (Components[i] as TcxDBLabel).Visible:= (Components[i] as TcxDBLabel).Caption<>''; //Para que muestre solo los que traen valor
           if (Components[i] as TcxDBLabel).Hint ='MP' then  //Jun 1/15
             (Components[i] as TcxDBLabel).Visible:= (datasource.DataSet.FieldByName('IDCuentaXPagarEstatus').AsInteger>1);
        end;
    end;
  end;
end;

procedure TfrmCuentasXPagarEdit.SetIDUsuAct(const Value: Integer);
begin
  FIdUsu := Value;
end;

procedure TfrmCuentasXPagarEdit.SpdBtnParteProgClick(Sender: TObject);
var
   montoRes, Total:Double;

   FecProg:TDAteTime;
   idCXP,idPerRol,idCtaBanPag,IDCtaBanCob, IDMetPag:Integer;


begin   //Solo habilitado para programados Jun 8/15
////  inherited;
//    //No se actualiza  datasource.DataSet.FieldByName('MontoProgramado').AsFloat                                                           //  datasource.DataSet.FieldByName('TotalMonedaNacional').AsFloat
//  if editando then //Jul 21/15
//  begin
//    if StrToFloat(cxDBTxtEdtPago.Text) < ATotalPago then
//    begin
//      Total:= datasource.DataSet.FieldByName('TotalMonedaNacional').AsFloat;
//      idCXP:= datasource.DataSet.FieldByName('IDCuentaXPagar').AsInteger ;
//      idPerRol:=datasource.DataSet.FieldByName('IDPersonaRol').AsInteger;
//      idCtaBanPag:=DataSource.DataSet.fieldbyname('IDCuentaBancariaPagador').AsInteger;
//      IDCtaBanCob:=DataSource.DataSet.fieldbyname('IDCuentaBancariaCobrador').AsInteger;//Jul 21/15   tenia el de Pagador
//      IDMetPag:=DataSource.DataSet.fieldbyname('IDMetodoPago').asInteger;
//      FecProg:=datasource.DataSet.FieldByName('FechaProgramada').asDateTime;
//                 // datasource.DataSet.FieldByName('TotalMonedaNacional').AsFloat
//      montoRes:= ATotalPago - StrToFloat(cxDBTxtEdtPago.Text);//datasource.DataSet.FieldByName('MontoProgramado').AsFloat;
//      DataSource.DataSet.fieldbyname('TotalMonedaNacional').asfloat:=StrToFloat(cxDBTxtEdtPago.Text); //Jul 22/15
//      datasource.DataSet.post;
//      if montoRes>0 then   //jul 22/15
//      begin
//        datasource.DataSet.insert;
//        DataSource.DataSet.fieldbyname('IDCuentaXPagar').AsInteger:=idCXP;
//        DataSource.DataSet.fieldbyname('IDCuentaXPagarEstatus').AsInteger:=1;//  siempre este
//        DataSource.DataSet.fieldbyname('IDPersonaRol').AsInteger:=idPerRol;
//        DataSource.DataSet.fieldbyname('FechaProgramacion').asdatetime:=date;
//        DataSource.DataSet.fieldbyname('FechaProgramada').asdatetime:=FecProg;
//        DataSource.DataSet.fieldbyname('IDUsuarioPrograma').asinteger:=IdUsuAct;
//        DataSource.DataSet.fieldbyname('IDCuentaBancariaPagador').AsInteger:= idCtaBanPag;
//        DataSource.DataSet.fieldbyname('IDCuentaBancariaCobrador').AsInteger:=IDCtaBanCob;
//        DataSource.DataSet.fieldbyname('Montoprogramado').asfloat:=montoRes;
//        DataSource.DataSet.fieldbyname('TotalMonedaNacional').asfloat:=montoRes;//Total; //Jul 22/15 Debe cambiar por el valor del Pago Programado
//        DataSource.DataSet.fieldbyname('TotalMonedaExtranjera').asfloat:=0;
//        DataSource.DataSet.fieldbyname('IDMetodoPago').asInteger:= IDMetPag;
//         datasource.DataSet.post;//Jun 15/15
//      end;
//
//
//    end        //   datasource.DataSet.FieldByName('MontoProgramado').AsFloat
//    else  if StrToFloat(cxDBTxtEdtPago.Text)= ATotalPago then//datasource.DataSet.FieldByName('TotalMonedaNacional').AsFloat then
//       actPostExecute(btnOk) //llamar al normal
//   else // es mayor no es posible
//     showmessage('No es posible programar un valor mayor');
//
// end;
//
end;

procedure TfrmCuentasXPagarEdit.ActCambioEstatusExecute(Sender: TObject);
var EstAct:integer;
    CampoFecha,CampoIDUsuario:String;
    PagActiva:TTabSheet;
begin

  inherited;
  //Tag del action tiene valor del estatus..
  EstAct:=datasource.DataSet.FieldByName('idCuentaXPagarEstatus').ASinteger;

  if  ( (EstAct+1) =(sender as Taction).Tag )then   //Va en orden
  begin
    //Verificar si sólo se habilitan los botones que siguen en proceso.
    case (sender as Taction).Tag of
    1:begin
        CampoIDUsuario:='IDUsuarioPrograma';
        CampoFecha:='FechaProgramacion';
        PagActiva:= TbShtProgramar;
        datasource.DataSet.FieldByName('FechaProgramada').AsDateTime:=date+1; //Mañana?
        datasource.DataSet.FieldByName('MontoProgramado').AsFloat:=datasource.DataSet.FieldByName('TotalMonedaNacional').AsFloat;

      end;
    2:begin
        CampoIDUsuario:='IDUsuarioautoriza';
        CampoFecha:='FechaAutorizacion';

        PagActiva:= TbShtAutorizar;
        datasource.DataSet.FieldByName('FechaAutorizaPago').AsDateTime:= datasource.DataSet.FieldByName('FechaProgramada').AsDateTime;   //May 14/15
        datasource.DataSet.FieldByName('MontoAutorizado').AsFloat:=datasource.DataSet.FieldByName('MontoProgramado').AsFloat;
        cxDBLblMetodoPago.Visible:=False; //Para que cuando lo cambie pueda cambiar el metodo de pago pero luego ya no
        //SpdBtnParteProg.visible:=False; //Jul 24/15 //Deshabilitado Jul 28/15
        cxDBTxtEdtPago.enabled:=False; //Jul 24/15
      end;
    3:begin
        CampoFecha:='FechaPago';
        CampoIDUsuario:='IDUsuarioPago';
        PagActiva:= TbShtPagar;
        datasource.DataSet.FieldByName('MontoPagado').AsFloat:= datasource.DataSet.FieldByName('MontoAutorizado').AsFloat;   //May 14/15
      end;
    4:begin
        CampoFecha:='FechaConcilia' ;
        CampoIDUsuario:='IDUsuarioConcilia';
        PagActiva:= TbShtConciliar;
      end;
    end;
    datasource.DataSet.FieldByName('idCuentaXPagarEstatus').Asinteger:= (sender as Taction).Tag;
    datasource.DataSet.FieldByName(CampoFecha).Asdatetime:=date; //Cambio por Date para asegurar igualdad con estdos de cuenta
    datasource.DataSet.FieldByName(CampoIDUsuario).Asinteger:=IdUsuAct;
    PagActiva.TabVisible:=True;
    PgCntrlStatus.ActivePage:=  PagActiva;
    PgCntrlStatus.Visible:=True;
    //datasource.DataSet.FieldByName(CampoIDUsuario).AsString:=IDUsuarioAct; //Ver cual es
  end
  else
    showmessage('Verificar Autorizacion para cambio ');
end;

function TfrmCuentasXPagarEdit.VerificaTotales(ValAntPago, valNuevoPago: Double; IDCXP,idpago:integer;
  var Resulta: String): Boolean;
var TotCXP, TotParc:Double;
begin
  Result:=True;
  if DSTotales.DataSet.Active then
    DSTotales.DataSet.close;
  if DataSource.State<>dsinsert then//Ago 21/15
  begin
    (DSTotales.DataSet as TadoDataSet).CommandText:= 'Select C.SumaTotal from CuentasXPagar C where C.IdCuentaXPagar='+intTosTR(IDCXP);//Ago 24/15 Total CXP
    DSTotales.DataSet.Open;
    TotCxP:= DSTotales.DataSet.FieldByName('SumaTotal').AsFloat;   //Movido aca Ago 24/15

    DSTotales.DataSet.Close;
     (DSTotales.DataSet as TadoDataSet).CommandText:='Select C.IDCuentaXPagar, C.SumaTotal,sum(P.MontoProgramado) Prog , Sum(P.TotalMonedaNacional) Total'+
                                ' from CuentasXPagarPagos P  inner join CuentasXPagar C on C.IdCuentaXPagar=P.IdCuentaXPagar where C.IdCuentaXPagar='+intTosTR(IDCXP)+
                                ' and P.IdCuentaXPagarPago<>'+intTostr(idpago)+' group by C.IDCuentaXPagar,c.SumaTotal';
    DSTotales.DataSet.Open;

    TotParc:=DSTotales.DataSet.FieldByName('Total').AsFloat;
                                       //AGo 24/15
    if (valNuevoPago+TotParc= TotCxP) or (abs(valNuevoPago+TotParc - TotCxP)< 0.1) then
      Resulta:='Completo'
    else
      if valNuevoPago+TotParc> TotCxP then
      begin
        Resulta:='Sobrepasa el total de la Cuenta X Pagar';
        Result:=False;
      end
      else
        Resulta:='Menor';

  end
  else //Esta insertando
  begin
    (DSTotales.DataSet as TadoDataSet).CommandText:='Select C.IDCuentaXPagar, C.SumaTotal,sum(P.MontoProgramado) Prog , Sum(P.TotalMonedaNacional) Total'+
                                ' from CuentasXPagarPagos P  right join CuentasXPagar C on C.IdCuentaXPagar=P.IdCuentaXPagar where c.IdCuentaXPagar='+intTosTR(IDCXP)+
                                ' group by C.IDCuentaXPagar,c.SumaTotal';
    DSTotales.DataSet.Open;
    TotCxP:= DSTotales.DataSet.FieldByName('SumaTotal').AsFloat;
    TotParc:=DSTotales.DataSet.FieldByName('Total').AsFloat;
     if (valNuevoPago+TotParc= TotCxP) or (abs(valNuevoPago+TotParc - TotCxP)< 0.1)  then//diferencia <10 ctv     //Ago 25/15
      Resulta:='Completo'
    else
      if valNuevoPago+TotParc> TotCxP then
      begin
        Resulta:='Sobrepasa el total de la Cuenta X Pagar';
        Result:=False;
      end
      else
        Resulta:='Menor';


  end;
end;

end.
