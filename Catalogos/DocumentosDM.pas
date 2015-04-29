unit DocumentosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, Vcl.Dialogs,
  System.IOUtils,
  Winapi.ShellAPI;

  const
  FileExts: array[0..6] of string = ('.xml', '.doc', '.docx', '.xls', '.xlsx', '.txt', '.csv');

type
  TFileAllowed = (faAll, faXML, faDOC, faDOCx, faXLS, faXLSx, faTXT, faCSV);
  TFilesAllowed = set of TFileAllowed;

  TdmDocumentos = class(T_dmStandar)
    adodsMasterIdDocumento: TAutoIncField;
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
    adodsUpdateIdDocumento: TAutoIncField;
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
    procedure WriteFile(FileName: TFileName);
    procedure ReadFile(FileName: TFileName);
    procedure TuneOpenDialog;
    procedure SetFileAllowed(const Value: TFileAllowed);
  public
    { Public declarations }
    function GetFileName(IdDocumento: Integer): TFileName;
    property FileAllowed: TFileAllowed read FFileAllowed write SetFileAllowed default faXLSx;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses DocumentosForm, DocumentosEdit;

{$R *.dfm}

procedure TdmDocumentos.actLoadFileExecute(Sender: TObject);
begin
  inherited;
  if OpenDialog.Execute then
  begin
    FFilename:= OpenDialog.FileName;
    adodsUpdateNombreArchivo.AsString:= ExtractFileName(FFilename);
    WriteFile(FFilename);
  end;
end;

procedure TdmDocumentos.actSaveFileExecute(Sender: TObject);
begin
  inherited;
  SaveDialog.FileName:= adodsUpdateNombreArchivo.AsString;
  if SaveDialog.Execute then
  begin
    FFilename:= SaveDialog.FileName;
    ReadFile(FFilename);
  end;
end;

procedure TdmDocumentos.actSaveFileUpdate(Sender: TObject);
begin
  inherited;
  if Sender is TAction then
    TAction(Sender).Enabled:= adodsUpdateNombreArchivo.AsString <> EmptyStr;
end;

procedure TdmDocumentos.actViewFileExecute(Sender: TObject);
var
  FileName: TFileName;
begin
  inherited;
  FileName:= TPath.GetTempPath + adodsUpdateNombreArchivo.AsString;
  ReadFile(FileName);
  ShellExecute(TfrmDocumentosEdit(frmEdit).Handle, 'open', PChar(FileName), nil, nil, 0);
end;

procedure TdmDocumentos.actViewFileUpdate(Sender: TObject);
begin
  inherited;
  if Sender is TAction then
    TAction(Sender).Enabled:= adodsUpdateNombreArchivo.AsString <> EmptyStr;
end;

procedure TdmDocumentos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  frmEdit:= TfrmDocumentosEdit.Create(Self);
  TfrmDocumentosEdit(frmEdit).actLoadFile:= actLoadFile;
  TfrmDocumentosEdit(frmEdit).actSaveFile:= actSaveFile;
  TfrmDocumentosEdit(frmEdit).actViewFile:= actViewFile;
  gGridForm := TfrmDocumentos.Create(Self);
  gGridForm.DataSet := adodsMaster;
end;

function TdmDocumentos.GetFileName(IdDocumento: Integer): TFileName;
var
  FileName: TFileName;
begin
  adodsUpdate.Close;
  adodsUpdate.Parameters[0].Value:= IdDocumento;
  adodsUpdate.Open;
  FileName:= TPath.GetTempPath + adodsUpdateNombreArchivo.AsString;
  ReadFile(FileName);
  Result:= FileName;
end;

procedure TdmDocumentos.ReadFile(FileName: TFileName);
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

procedure TdmDocumentos.SetFileAllowed(const Value: TFileAllowed);
begin
  if FFileAllowed <> Value then
  begin
//    if not (Value in Wizard.AllowedImports) then
//      raise EQImportError.Create(QImportLoadStr(QIE_UnknownImportSource));
    FFileAllowed := Value;
//    rbtXLS.Checked := FImportType = aiXLS;
    TuneOpenDialog;
//    ChangeExtension;
  end;
end;

procedure TdmDocumentos.WriteFile(FileName: TFileName);
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

procedure TdmDocumentos.TuneOpenDialog;
begin
  case FFileAllowed of
    faAll: OpenDialog.Filter:= 'Todos los Archivos|*.*';
    faXLS: OpenDialog.Filter:= 'Archivo Microsoft Excel|*.xls';
    faXLSx: OpenDialog.Filter:= 'Archivo Microsoft Excel|*.xlsx';
  end;
end;

//procedure TQImport3WizardF.ChangeExtension;
//begin
//  if not Wizard.AutoChangeExtension then Exit;
//  if Trim(FileName) = EmptyStr then Exit;
//  FileName := ChangeFileExt(FileName, FileExts[Ord(FImportType)]);
//end;

end.
