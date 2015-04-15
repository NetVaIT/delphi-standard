unit DocumentosAdjuntosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, Vcl.Dialogs,
  System.IOUtils,
  Winapi.ShellAPI;

  const
  FileExts: array[0..6] of string = ('.xml', '.doc', '.docx', '.xls', '.xlsx', '.txt', '.csv');

type
  TFileAllowed = (faXML, faDOC, faDOCx, faXLS, faXLSx, faTXT, faCSV);
  TFilesAllowed = set of TFileAllowed;

  TdmDocumentosAdjuntos = class(T_dmStandar)
    adodsMasterIdDocumentoAdjunto: TAutoIncField;
    adodsMasterIdDocumentoTipo: TIntegerField;
    adodsMasterIdDocumentoClase: TIntegerField;
    adodsMasterDescripcion: TStringField;
    adodsMasterNombreArchivo: TStringField;
    adodsMasterIdArchivo: TGuidField;
    adodsMasterArchivo: TBlobField;
    adodsDocumentoTipo: TADODataSet;
    adodsDocumentoClase: TADODataSet;
    adodsMasterDocumentoTipo: TStringField;
    adodsMasterDocumentoClase: TStringField;
    adodsUpdateIdDocumentoAdjunto: TAutoIncField;
    adodsUpdateIdDocumentoTipo: TIntegerField;
    adodsUpdateIdDocumentoClase: TIntegerField;
    adodsUpdateDescripcion: TStringField;
    adodsUpdateNombreArchivo: TStringField;
    adodsUpdateIdArchivo: TGuidField;
    adodsUpdateArchivo: TBlobField;
    adodsUpdateDocumentoTipo: TStringField;
    adodsUpdateDocumentoClase: TStringField;
    actSaveFile: TAction;
    actLoadFile: TAction;
    actViewFile: TAction;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    procedure DataModuleCreate(Sender: TObject);
    procedure actLoadFileExecute(Sender: TObject);
    procedure actSaveFileExecute(Sender: TObject);
    procedure actSaveFileUpdate(Sender: TObject);
    procedure actViewFileUpdate(Sender: TObject);
    procedure actViewFileExecute(Sender: TObject);
  private
    { Private declarations }
    FFilename: TFileName;
    FFileAllowed: TFileAllowed;
    procedure TuneOpenDialog;
    procedure SetFileAllowed(const Value: TFileAllowed);
  public
    { Public declarations }
    procedure WriteFile(FileName: TFileName);
    procedure ReadFile(FileName: TFileName);
    property FileAllowed: TFileAllowed read FFileAllowed write SetFileAllowed;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses DocumentosAdjuntosForm, DocumentosAdjuntosEdit;

{$R *.dfm}

procedure TdmDocumentosAdjuntos.actLoadFileExecute(Sender: TObject);
begin
  inherited;
  if OpenDialog.Execute then
  begin
    FFilename:= OpenDialog.FileName;
    adodsUpdateNombreArchivo.AsString:= ExtractFileName(FFilename);
    WriteFile(FFilename);
  end;
end;

procedure TdmDocumentosAdjuntos.actSaveFileExecute(Sender: TObject);
begin
  inherited;
  SaveDialog.FileName:= adodsUpdateNombreArchivo.AsString;
  if SaveDialog.Execute then
  begin
    FFilename:= SaveDialog.FileName;
    ReadFile(FFilename);
  end;
end;

procedure TdmDocumentosAdjuntos.actSaveFileUpdate(Sender: TObject);
begin
  inherited;
  if Sender is TAction then
    TAction(Sender).Enabled:= adodsUpdateNombreArchivo.Value <> EmptyStr;
end;

procedure TdmDocumentosAdjuntos.actViewFileExecute(Sender: TObject);
var
  FileName: TFileName;
begin
  inherited;
  FileName:= TPath.GetTempPath + adodsUpdateNombreArchivo.Value;
  ReadFile(FileName);
  ShellExecute(TfrmDocumentosAdjuntosEdit(frmEdit).Handle, 'open', PChar(FileName), nil, nil, 0);
end;

procedure TdmDocumentosAdjuntos.actViewFileUpdate(Sender: TObject);
begin
  inherited;
  if Sender is TAction then
    TAction(Sender).Enabled:= adodsUpdateNombreArchivo.Value <> EmptyStr;
end;

procedure TdmDocumentosAdjuntos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  frmEdit:= TfrmDocumentosAdjuntosEdit.Create(Self);
  TfrmDocumentosAdjuntosEdit(frmEdit).actLoadFile:= actLoadFile;
  TfrmDocumentosAdjuntosEdit(frmEdit).actSaveFile:= actSaveFile;
  TfrmDocumentosAdjuntosEdit(frmEdit).actViewFile:= actViewFile;
  gGridForm := TfrmDocumentosAdjuntos.Create(Self);
  gGridForm.DataSet := adodsMaster;
end;

procedure TdmDocumentosAdjuntos.ReadFile(FileName: TFileName);
var
  Blob : TStream;
  Fs: TFileStream;
begin
  Blob:= adodsUpdate.CreateBlobStream(adodsUpdateArchivo, bmRead);
  try
    Blob.Seek(0, soFromBeginning);
    Fs:= TFileStream.Create(FileName, fmCreate);
    try
      Fs.CopyFrom(Blob, Blob.Size);
    finally
      Fs.Free;
    end;
  finally
    Blob.Free
  end;
end;

procedure TdmDocumentosAdjuntos.SetFileAllowed(const Value: TFileAllowed);
begin
  if FFileAllowed <> Value then
  begin
//    if not (Value in Wizard.AllowedImports) then
//      raise EQImportError.Create(QImportLoadStr(QIE_UnknownImportSource));
    FFileAllowed := Value;
//    rbtXLS.Checked := FImportType = aiXLS;
//    rbtXlsx.Checked := FImportType = aiXlsx;
//    rbtDocx.Checked := FImportType = aiDocx;
//    rbtODS.Checked := FImportType = aiODS;
//    rbtODT.Checked := FImportType = aiODT;
//    rbtDBF.Checked := FImportType = aiDBF;
//    rbtHTML.Checked := FImportType = aiHTML;
//    rbtXML.Checked := FImportType = aiXML;
//    cbXMLDocumentType.Enabled  := FImportType = aiXML;
//    laXMLDocumentType.Enabled  := FImportType = aiXML;
//    rbtXMLDoc.Checked := FImportType = aiXMLDoc;
//    rbtTXT.Checked := FImportType = aiTXT;
//    rbtCSV.Checked := FImportType = aiCSV;
//    rbtAccess.Checked := FImportType = aiAccess;
    //----
    TuneOpenDialog;
//    ChangeExtension;
  end;
end;

procedure TdmDocumentosAdjuntos.WriteFile(FileName: TFileName);
var
  Blob: TStream;
  Fs: TFileStream;
begin
  Blob:= adodsUpdate.CreateBlobStream(adodsUpdateArchivo, bmWrite);
  try
    Blob.Seek(0, soFromBeginning);
    Fs := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
    try
      Blob.CopyFrom(Fs, Fs.Size)
    finally
      Fs.Free
    end;
  finally
    Blob.Free
  end;
end;

procedure TdmDocumentosAdjuntos.TuneOpenDialog;
begin
  case FFileAllowed of
    faXLS: OpenDialog.Filter:= 'Archivo Microsoft Excel|*.xls';
    faXLSx: OpenDialog.Filter:= 'Archivo Microsoft Excel|*.xlsx';
  end;
end;

//function GetTempDir: string;
//var
//  Buffer : Array[0..Max_path] of char;
//begin
//  FillChar(Buffer,Max_Path + 1, 0);
//  GetTempPath(Max_path, Buffer);
//  Result := String(Buffer);
//  if Result[Length(Result)] <> '\' then Result := Result + '\';
//end;

//procedure TQImport3WizardF.ChangeExtension;
//begin
//  if not Wizard.AutoChangeExtension then Exit;
//  if Trim(FileName) = EmptyStr then Exit;
//  FileName := ChangeFileExt(FileName, FileExts[Ord(FImportType)]);
//end;

end.
