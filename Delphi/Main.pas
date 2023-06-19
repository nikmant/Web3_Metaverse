unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniEdit, uniGUIBaseClasses,
  uniButton, uniLabel, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  uniBasicGrid, uniDBGrid, uniMemo, uniBitBtn, uniPanel, uniGUIFrame,
  UFrameMetaverse;

type
  TMainForm = class(TUniForm)
    UniMemo1: TUniMemo;
    UniButton3: TUniButton;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton4: TUniButton;
    UniButton5: TUniButton;
    procedure UniFormCreate(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniFormAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, Math;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniBitBtn1Click(Sender: TObject);
begin
  UniSession.AddJS('simple_func();');
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin
  UniButton1.Enabled := False;
end;

procedure TMainForm.UniButton3Click(Sender: TObject);
begin
  UniSession.AddJS('async func777(); { ress = await simple_func_async(); '
  +' ajaxRequest(MainForm.window, "getFile", [ "filePath="+ress, "param1=B" ]); } ');
end;

procedure TMainForm.UniButton4Click(Sender: TObject);
begin
  UniButton5.Caption := timetostr(now());
end;

procedure TMainForm.UniFormAjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
begin
  if EventName='getFile' then
    showmessage(Params.Values['filePath']);
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
var fr: TFrameMetaverse;
begin
  fr := TFrameMetaverse.Create(Self);
  fr.Parent := Self;
  fr.Name := 'FrameMetaverse1';
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
