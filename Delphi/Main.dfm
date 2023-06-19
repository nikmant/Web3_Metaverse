object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 569
  ClientWidth = 1154
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  ClientEvents.ExtEvents.Strings = (
    
      'window.activate=async function window.activate(sender, eOpts)'#13#10'{' +
      #13#10'//   result = '#39#1056#1077#1079#1091#1083#1100#1090#1072#1090#1048#1050#39';'#13#10#13#10#13#10'__FM.ajaxRequest({'#13#10'    url:' +
      ' '#39'default?event=__FM.MyAjaxEvent'#39','#13#10'    method: '#39'POST'#39','#13#10'    par' +
      'ams: {'#13#10'        Param1: '#39#1047#1085#1072#1095#1077#1085#1080#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1072' 1'#39','#13#10'        Param2:' +
      ' '#39#1047#1085#1072#1095#1077#1085#1080#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1072' 2'#39#13#10'    },'#13#10'    success: function(response)' +
      '{'#13#10'        console.log(response.responseText);'#13#10'    }'#13#10'});'#13#10' '#13#10'}')
  OnAjaxEvent = UniFormAjaxEvent
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniMemo1: TUniMemo
    Left = 136
    Top = 272
    Width = 185
    Height = 89
    Hint = ''
    Lines.Strings = (
      'UniMemo1')
    TabOrder = 0
  end
  object UniButton3: TUniButton
    Left = 136
    Top = 196
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'UniButton3'
    TabOrder = 1
    OnClick = UniButton3Click
  end
  object UniButton1: TUniButton
    Left = 416
    Top = 200
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'UniButton1'
    TabOrder = 2
    ClientEvents.ExtEvents.Strings = (
      
        'click=async function click(sender, e, eOpts)'#13#10'{'#13#10'  ress = await ' +
        'simple_func_async(); '#13#10'  ajaxRequest(MainForm.window, "getFile",' +
        ' [ "filePath="+ress, "param1=B" ]);'#13#10'}'
      
        'disable=async function disable(sender, eOpts)'#13#10'{'#13#10'  ress = await' +
        ' simple_func_async(); '#13#10'  ajaxRequest(MainForm.window, "getFile"' +
        ', [ "filePath="+ress, "param1=B" ]);'#13#10'}')
  end
  object UniButton2: TUniButton
    Left = 416
    Top = 156
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'UniButton2'
    TabOrder = 3
    OnClick = UniButton2Click
  end
  object UniButton4: TUniButton
    Left = 704
    Top = 165
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'UniButton4'
    TabOrder = 4
    OnClick = UniButton4Click
  end
  object UniButton5: TUniButton
    Left = 704
    Top = 200
    Width = 75
    Height = 25
    Hint = ''
    Visible = False
    Caption = 'UniButton5'
    TabOrder = 5
    ClientEvents.ExtEvents.Strings = (
      
        'textchange=async function textchange(sender, oldText, newText, e' +
        'Opts)'#13#10'{'#13#10'   ress = await simple_func_async(); '#13#10'   ajaxRequest(' +
        'MainForm.window, "getFile", [ "filePath="+ress, "param1=B" ]);'#13#10 +
        '}')
  end
end
