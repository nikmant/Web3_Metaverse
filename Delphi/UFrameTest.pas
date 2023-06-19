unit UFrameTest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniLabel, uniEdit, uniGUIBaseClasses, uniButton;

type
  TFrameTest = class(TUniFrame)
    UniButton1: TUniButton;
    UniEdit1: TUniEdit;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniLabel1: TUniLabel;
    UniEdit2: TUniEdit;
    UniLabel2: TUniLabel;
    UniEdit3: TUniEdit;
    UniButton5: TUniButton;
    UniEdit6: TUniEdit;
    UniButton8: TUniButton;
    UniEdit12: TUniEdit;
    UniButton4: TUniButton;
    procedure UniButton4AjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrameTest.UniButton4AjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
begin
  if EventName='MyEvent' then
  begin
    UniButton1.Caption:=Params.Values['param0'] + Params.Values['param1'];
    showmessage(Params.Values['param0'] + Params.Values['param1']);
  end;
end;

end.
