unit UFrameMetaverse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniLabel, uniEdit, uniGUIBaseClasses, uniButton,
  uniPanel, uniMemo, uniPageControl, uniCheckBox, uniTimer;

type
  TLandInfo = record
    Owner: string;
    Name: string;
    Price: string;
    IsForSale: string;
  end;

type
  TFrameMetaverse = class(TUniFrame)
    UniPanel1: TUniPanel;
    UniEditAccount: TUniEdit;
    UniEditBalance: TUniEdit;
    UniLabel2: TUniLabel;
    UniLabel1: TUniLabel;
    PanelMain: TUniPanel;
    UniButtonConnect: TUniButton;
    UniHiddenPanel1: TUniHiddenPanel;
    EditContract: TUniEdit;
    ButtonBlockChainReadState: TUniButton;
    eNameSet: TUniEdit;
    ePriceMySet: TUniEdit;
    eIsForSaleSet: TUniEdit;
    bBalanceUpdate: TUniButton;
    UniLabel6: TUniLabel;
    PanelLog: TUniPanel;
    UniButton1: TUniButton;
    MemoLog: TUniMemo;
    UniPanel3: TUniPanel;
    UniPanel4: TUniPanel;
    UniPanel5: TUniPanel;
    SimplePanelNone: TUniSimplePanel;
    UniLabel3: TUniLabel;
    SimplePanelMy: TUniSimplePanel;
    cbForSale: TUniCheckBox;
    eName: TUniEdit;
    bSetName: TUniButton;
    bSetPrice: TUniButton;
    ePriceMy: TUniEdit;
    SimplePanelBusy: TUniSimplePanel;
    UniLabel4: TUniLabel;
    SimplePanelForSale: TUniSimplePanel;
    bBuy: TUniButton;
    ePriceForBuy: TUniEdit;
    UniLabel5: TUniLabel;
    PanelWorld: TUniPanel;
    PanelLand: TUniPanel;
    PanelResizable: TUniPanel;
    PanelBorder: TUniPanel;
    procedure UniFrameAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure EditContractChange(Sender: TObject);
    procedure ButtonBlockChainReadStateAjaxEvent(Sender: TComponent;
      EventName: string; Params: TUniStrings);
    procedure PanelLandClick(Sender: TObject);
    procedure bSetNameClick(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure bSetPriceClick(Sender: TObject);
    procedure PanelResizableResize(Sender: TUniControl; OldWidth,
      OldHeight: Integer);
    procedure cbForSaleChange(Sender: TObject);
    procedure bBuyClick(Sender: TObject);
  private
    { Private declarations }
    x_selected, y_selected: integer;
    P: Array[0..4,0..9] of TUniPanel;
    LandInfo: Array[0..4,0..9] of TLandInfo;
    procedure PanelCommandRefreshFor(x,y: integer);
  public
    { Public declarations }
    procedure PanelLandReLocate;
    procedure PanelLandsDetailCreate;
    procedure UniSessionEventsJSInvoke(Sender: TObject;
      const EventName: string; Params: TUniStrings);
  end;

implementation

{$R *.dfm}

uses USystemCola;

const world_sixe_y = 5;
      world_sixe_x = 10;

procedure TFrameMetaverse.bSetNameClick(Sender: TObject);
var js: string;
begin
  js := 'contract_mv.methods.SetName('+inttostr(x_selected)+', '+inttostr(y_selected)+', "'+eName.Text+'").send({from: "'+UniEditAccount.Text+'", gas:3000000});';
  UniSession.AddJS(js);
end;

procedure TFrameMetaverse.bSetPriceClick(Sender: TObject);
var js: string;
begin
  js := 'contract_mv.methods.SetPrice('+inttostr(x_selected)+', '+inttostr(y_selected)+', web3.utils.toWei("'+ePriceMy.Text+'", ''ether'')).send({from: "'+UniEditAccount.Text+'", gas:3000000});';
  UniSession.AddJS(js);
end;

procedure TFrameMetaverse.cbForSaleChange(Sender: TObject);
var js: string;
begin
  js := 'contract_mv.methods.SetIsForSale('+inttostr(x_selected)+', '+inttostr(y_selected)+', "'+ifthenstr(cbForSale.Checked,'true','false')+'").send({from: "'+UniEditAccount.Text+'", gas:3000000});';
  UniSession.AddJS(js);
end;

procedure TFrameMetaverse.bBuyClick(Sender: TObject);
var js: string;
begin
  js := 'contract_mv.methods.Buy('+inttostr(x_selected)+', '+inttostr(y_selected)+').send({value: web3.utils.toWei("'+ePriceForBuy.Text+'", "ether"), from: "'+UniEditAccount.Text+'", gas:3000000});';
  UniSession.AddJS(js);
end;

procedure TFrameMetaverse.ButtonBlockChainReadStateAjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
var param_name, param_value, title, sline, s, sx,sy: string;
    pn, m, x, y: integer;
begin

  if EventName='BC_One' then
  begin
    MemoLog.Lines.add( Params.Values['returnValues'] );
  end;


  if EventName='BC_Info' then
    for m:=0 to Params.Count-1 do
    begin
      sline:=Params.Strings[m];
      if  (pos('Name', sline)<>1)
      and (pos('Owner', sline)<>1)
      and (pos('Price', sline)<>1)
      and (pos('IsForSale', sline)<>1)
      then Continue;
      MemoLog.Lines.Add(sline);
      pn:=pos('_', sline);
      title := copy(sline, 1, pn-1);
      delete(sline,1,pn);
      sy:=sline[1];
      y:=strtoint(sy);
      sx:=sline[3];
      x:=strtoint(sx);
      delete(sline,1,4);
      if (title='Name') then
      begin
        LandInfo[y,x].Name := sline;
        P[y,x].Caption     := sline;
      end;
      if (title='Owner') then
        LandInfo[y,x].Owner := sline;
      if (title='Price') then LandInfo[y,x].Price := sline;
      if (title='IsForSale') then LandInfo[y,x].IsForSale := sline;

      if LandInfo[y,x].Owner=UniEditAccount.Text then
      begin
        if LandInfo[y,x].IsForSale='true'
          then P[y,x].Color := 16711394
          else P[y,x].Color := 12713952;
      end
      else
      begin
        if LandInfo[y,x].IsForSale='true'
          then P[y,x].Color := 13553407
          else P[y,x].Color := 13434879;
      end;

      PanelCommandRefreshFor(x_selected,y_selected);
      bBalanceUpdate.Caption := TimeToStr(Now());
    end;


{
  if SameText(EventName, 'BC_Info') then
  begin
    for y:=0 to world_sixe_y-1 do
    for x:=0 to world_sixe_x-1 do
    begin
      LandInfo[y,x].Name      := Params.Values['Name_'+inttostr(y)+'_'+inttostr(x)];
      LandInfo[y,x].Owner     := Params.Values['Owner_'+inttostr(y)+'_'+inttostr(x)];
      LandInfo[y,x].Price     := Params.Values['Price_'+inttostr(y)+'_'+inttostr(x)];
      LandInfo[y,x].IsForSale := Params.Values['IsForSale_'+inttostr(y)+'_'+inttostr(x)];
      P[y,x].Caption := LandInfo[y,x].Name;
    end;
  end;
}
end;

procedure TFrameMetaverse.EditContractChange(Sender: TObject);
begin
  UniEditAccount.ReadOnly := True;
  PanelMain.Visible := (EditContract.Text<>'');
  PanelLandsDetailCreate;
end;

procedure TFrameMetaverse.UniFrameAjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
begin
  if EventName = 'MyFunction' then
  begin
    ShowMessage(Params.Values['0']);
  end;
end;

procedure TFrameMetaverse.UniFrameCreate(Sender: TObject);
begin
  x_selected:=-1;
  y_selected:=-1;
end;

procedure TFrameMetaverse.PanelResizableResize(Sender: TUniControl; OldWidth,
  OldHeight: Integer);
begin
  PanelLandReLocate;
end;

procedure TFrameMetaverse.UniSessionEventsJSInvoke(Sender: TObject;
  const EventName: string; Params: TUniStrings);
begin
  if EventName = 'MyFunction' then
    ShowMessage(Params.Values['0']);
end;

procedure TFrameMetaverse.PanelLandsDetailCreate;
var y,x: integer;
begin
  PanelWorld.BorderStyle := ubsNone;

  PanelResizable.Free;
  PanelResizable := TUniPanel.Create(Self);
  PanelResizable.BorderStyle := ubsNone;
  PanelResizable.Parent := PanelWorld;
  PanelResizable.OnResize := PanelResizableResize;
  PanelResizable.Align := alClient;

  PanelBorder.Free;
  PanelBorder := TUniPanel.Create(Self);
  PanelBorder.BorderStyle := ubsDefault;
  PanelBorder.Parent := PanelResizable;

  for y:=0 to world_sixe_y-1 do
    for x:=0 to world_sixe_x-1 do
    begin
      P[y,x] := TUniPanel.Create(Self);
      P[y,x].Parent := PanelBorder;
      P[y,x].ClientEvents.ExtEvents := PanelLand.ClientEvents.ExtEvents;
      P[y,x].Caption := 'Land '+inttostr(y)+' '+inttostr(x);
      P[y,x].Tag := y*10+x;
      P[y,x].OnClick := PanelLandClick;
    end;
  PanelLandReLocate;
  ButtonBlockChainReadState.Caption := TimeToStr(Now());
  if PanelLog.Tag<>1 then
  begin
    PanelLog.Collapsed := True;
    PanelLog.Tag := 1;
  end;
end;


procedure TFrameMetaverse.PanelLandClick(Sender: TObject);
var tt: integer;
begin
  tt := (Sender as TUniPanel).Tag;
  x_selected := tt mod world_sixe_x;
  y_selected := tt div world_sixe_x;
  PanelCommandRefreshFor(x_selected,y_selected);
end;

procedure TFrameMetaverse.PanelCommandRefreshFor(x,y: integer);
begin
  if (x<0)or(y<0) then exit;
  SimplePanelMy.Visible := (LandInfo[y,x].Owner=UniEditAccount.Text);
  SimplePanelForSale.Visible := (LandInfo[y,x].Owner<>UniEditAccount.Text) AND (LandInfo[y,x].IsForSale='true');
  SimplePanelBusy.Visible := (LandInfo[y,x].Owner<>UniEditAccount.Text) AND (LandInfo[y,x].IsForSale='false');
  SimplePanelNone.Visible := False;
  SimplePanelMy.Align := alClient;
  SimplePanelForSale.Align := alClient;
  SimplePanelBusy.Align := alClient;
  eName.Text := LandInfo[y,x].Name;
  ePriceMy.Text := LandInfo[y,x].Price;
  ePriceForBuy.Text := LandInfo[y,x].Price;
  cbForSale.Checked := (LandInfo[y,x].IsForSale='true');
end;

procedure TFrameMetaverse.PanelLandReLocate;
var y,x, xst,yst: integer;
begin
  xst := (PanelWorld.ClientWidth-3) div world_sixe_x;
  yst := (PanelWorld.ClientHeight-3) div world_sixe_y;
  PanelBorder.Width := xst*world_sixe_x + 2;
  PanelBorder.Height := yst*world_sixe_y + 2;
  for y:=0 to world_sixe_y-1 do
    for x:=0 to world_sixe_x-1 do
      if P[y,x]<>nil then
      begin
        P[y,x].Top := yst*y;
        P[y,x].Left := xst*x;
        P[y,x].Width := xst;
        P[y,x].Height := yst;
      end;
end;

end.
