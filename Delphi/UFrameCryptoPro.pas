unit UFrameCryptoPro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, uniMemo, uniEdit, uniButton, uniGUIBaseClasses,
  uniBasicGrid, uniDBGrid, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrameCryptoPro = class(TUniFrame)
    MTC: TFDMemTable;
    MTCthumbPrint: TStringField;
    MTCissuerCompany: TStringField;
    MTCownerName: TStringField;
    DS_MTC: TDataSource;
    UniDBGrid1: TUniDBGrid;
    UniButton7: TUniButton;
    UniEdit9: TUniEdit;
    UniEdit11: TUniEdit;
    UniMemo1: TUniMemo;
    UniEdit10: TUniEdit;
    UniEdit8: TUniEdit;
    UniEdit7: TUniEdit;
    UniButton6: TUniButton;
    UniEdit5: TUniEdit;
    UniEdit4: TUniEdit;
    UniButton4: TUniButton;
    procedure MTCAfterScroll(DataSet: TDataSet);
    procedure UniEdit8Change(Sender: TObject);
    procedure UniMemo1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TFrameCryptoPro.MTCAfterScroll(DataSet: TDataSet);
begin
  UniEdit11.Text := MTCthumbPrint.AsString;
end;

procedure TFrameCryptoPro.UniEdit8Change(Sender: TObject);
begin
  UniEdit10.Text := UniEdit8.Text;
end;

procedure TFrameCryptoPro.UniMemo1Change(Sender: TObject);
var n, ncount: integer;
begin
  MTC.Active := False;
  MTC.Active := True;
  ncount := UniMemo1.Lines.Count div 3;
  for n:=0 to ncount-1 do
  begin
    MTC.Append;
    MTCthumbPrint.Value := UniMemo1.Lines.Strings[3*n+0];
    MTCissuerCompany.Value := UniMemo1.Lines.Strings[3*n+1];
    MTCownerName.Value := UniMemo1.Lines.Strings[3*n+2];
    MTC.CheckBrowseMode;
  end;
end;

end.
