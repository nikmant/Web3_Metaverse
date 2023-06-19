object FrameTest: TFrameTest
  Left = 0
  Top = 0
  Width = 909
  Height = 576
  TabOrder = 0
  object UniButton1: TUniButton
    Left = 20
    Top = 20
    Width = 93
    Height = 25
    Hint = ''
    Caption = 'Props change'
    TabOrder = 0
    ClientEvents.ExtEvents.Strings = (
      
        'click=function click(sender, e, eOpts)'#13#10'{          '#13#10'  MainForm.' +
        'UniEdit1.setValue('#39#1057#1090#1088#1086#1082#1072' '#1087#1077#1088#1077#1076#1072#1085#1072#39');  '#13#10'}')
  end
  object UniEdit1: TUniEdit
    Left = 128
    Top = 21
    Width = 209
    Hint = ''
    Text = ''
    TabOrder = 1
  end
  object UniButton2: TUniButton
    Left = 20
    Top = 68
    Width = 133
    Height = 25
    Hint = ''
    Caption = 'Connect to Metamask'
    TabOrder = 2
    ClientEvents.ExtEvents.Strings = (
      
        'click=function click(sender, e, eOpts)'#13#10'{'#13#10'  window.web3 = new W' +
        'eb3(window.ethereum);  '#13#10'  window.ethereum.request({ method: '#39'et' +
        'h_requestAccounts'#39' });'#13#10'}')
  end
  object UniButton3: TUniButton
    Left = 20
    Top = 99
    Width = 157
    Height = 25
    Hint = ''
    Caption = #1055#1086#1083#1091#1095#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1089#1095#1105#1090#1072
    TabOrder = 3
    ClientEvents.ExtEvents.Strings = (
      
        'click=async function click(sender, e, eOpts)'#13#10'{'#13#10'  const account' +
        's = await web3.eth.getAccounts();      '#13#10'  MainForm.UniEdit2.set' +
        'Value(accounts[0]);  '#13#10'  var accBalance = await web3.eth.getBala' +
        'nce(accounts[0]); '#13#10'  MainForm.UniEdit3.setValue(accBalance);'#13#10'}')
  end
  object UniLabel1: TUniLabel
    Left = 20
    Top = 134
    Width = 25
    Height = 13
    Hint = ''
    Caption = #1057#1095#1105#1090
    TabOrder = 4
  end
  object UniEdit2: TUniEdit
    Left = 69
    Top = 130
    Width = 268
    Hint = ''
    Text = ''
    TabOrder = 5
  end
  object UniLabel2: TUniLabel
    Left = 20
    Top = 162
    Width = 35
    Height = 13
    Hint = ''
    Caption = #1041#1072#1083#1072#1085#1089
    TabOrder = 6
  end
  object UniEdit3: TUniEdit
    Left = 69
    Top = 158
    Width = 268
    Hint = ''
    Text = ''
    TabOrder = 7
  end
  object UniButton5: TUniButton
    Left = 20
    Top = 220
    Width = 121
    Height = 25
    Hint = ''
    Caption = #1042#1099#1079#1086#1074' '#1092#1091#1085#1082#1094#1080#1080
    TabOrder = 8
    ClientEvents.ExtEvents.Strings = (
      
        'click=async function click(sender, e, eOpts)'#13#10'{'#13#10'  const val = a' +
        'wait simple_func_async();    '#13#10'  MainForm.UniEdit6.setValue(val)' +
        ';     '#13#10'}')
  end
  object UniEdit6: TUniEdit
    Left = 20
    Top = 251
    Width = 265
    Hint = ''
    Text = 'UniEdit6'
    TabOrder = 9
  end
  object UniButton8: TUniButton
    Left = 20
    Top = 324
    Width = 253
    Height = 25
    Hint = ''
    Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100#1089#1103' '#1082' '#1082#1086#1085#1090#1088#1072#1082#1090#1091
    TabOrder = 10
    ClientEvents.ExtEvents.Strings = (
      
        'click=async function click(sender, e, eOpts)'#13#10'{'#13#10#13#10'  const accou' +
        'nts = await web3.eth.getAccounts();   '#13#10'  const acc0 = accounts[' +
        '0];'#13#10'  '#13#10'  console.log('#39'Start '#1053#1072#1095#1072#1083#1086' '#1083#1086#1075#1072#39');'#13#10'  console.log('#39#1051#1086#1075 +
        '-01'#39');'#13#10'  '#13#10'  const contractAddress = '#39'0x803c588C9D2632b3E17be5a' +
        'd52eE0b964f0DFf39'#39';'#13#10'  const contractABI = [{'#13#10#9#9'"inputs": ['#13#10#9#9 +
        #9'{'#13#10#9#9#9#9'"internalType": "uint256",'#13#10#9#9#9#9'"name": "x",'#13#10#9#9#9#9'"type"' +
        ': "uint256"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "uint256",'#13#10#9#9#9#9'"n' +
        'ame": "y",'#13#10#9#9#9#9'"type": "uint256"'#13#10#9#9#9'}'#13#10#9#9'],'#13#10#9#9'"name": "Buy",'#13 +
        #10#9#9'"outputs": [],'#13#10#9#9'"stateMutability": "payable",'#13#10#9#9'"type": "f' +
        'unction"'#13#10#9'},'#13#10#9'{'#13#10#9#9'"inputs": [],'#13#10#9#9'"stateMutability": "nonpay' +
        'able",'#13#10#9#9'"type": "constructor"'#13#10#9'},'#13#10#9'{'#13#10#9#9'"anonymous": false,'#13 +
        #10#9#9'"inputs": ['#13#10#9#9#9'{'#13#10#9#9#9#9'"indexed": true,'#13#10#9#9#9#9'"internalType": ' +
        '"uint256",'#13#10#9#9#9#9'"name": "x",'#13#10#9#9#9#9'"type": "uint256"'#13#10#9#9#9'},'#13#10#9#9#9'{' +
        #13#10#9#9#9#9'"indexed": true,'#13#10#9#9#9#9'"internalType": "uint256",'#13#10#9#9#9#9'"nam' +
        'e": "y",'#13#10#9#9#9#9'"type": "uint256"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"indexed": tru' +
        'e,'#13#10#9#9#9#9'"internalType": "uint256",'#13#10#9#9#9#9'"name": "dt",'#13#10#9#9#9#9'"type' +
        '": "uint256"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"indexed": false,'#13#10#9#9#9#9'"internalT' +
        'ype": "uint256",'#13#10#9#9#9#9'"name": "price",'#13#10#9#9#9#9'"type": "uint256"'#13#10#9 +
        #9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"indexed": false,'#13#10#9#9#9#9'"internalType": "address"' +
        ','#13#10#9#9#9#9'"name": "owner",'#13#10#9#9#9#9'"type": "address"'#13#10#9#9#9'}'#13#10#9#9'],'#13#10#9#9'"n' +
        'ame": "EventDeal",'#13#10#9#9'"type": "event"'#13#10#9'},'#13#10#9'{'#13#10#9#9'"inputs": ['#13#10#9 +
        #9#9'{'#13#10#9#9#9#9'"internalType": "uint256",'#13#10#9#9#9#9'"name": "x",'#13#10#9#9#9#9'"type' +
        '": "uint256"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "uint256",'#13#10#9#9#9#9'"' +
        'name": "y",'#13#10#9#9#9#9'"type": "uint256"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"internalTy' +
        'pe": "bool",'#13#10#9#9#9#9'"name": "isForSale",'#13#10#9#9#9#9'"type": "bool"'#13#10#9#9#9'}' +
        #13#10#9#9'],'#13#10#9#9'"name": "SetIsForSale",'#13#10#9#9'"outputs": [],'#13#10#9#9'"stateMut' +
        'ability": "nonpayable",'#13#10#9#9'"type": "function"'#13#10#9'},'#13#10#9'{'#13#10#9#9'"input' +
        's": ['#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "uint256",'#13#10#9#9#9#9'"name": "x",'#13#10#9 +
        #9#9#9'"type": "uint256"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "uint256"' +
        ','#13#10#9#9#9#9'"name": "y",'#13#10#9#9#9#9'"type": "uint256"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"in' +
        'ternalType": "string",'#13#10#9#9#9#9'"name": "name",'#13#10#9#9#9#9'"type": "string' +
        '"'#13#10#9#9#9'}'#13#10#9#9'],'#13#10#9#9'"name": "SetName",'#13#10#9#9'"outputs": [],'#13#10#9#9'"stateM' +
        'utability": "nonpayable",'#13#10#9#9'"type": "function"'#13#10#9'},'#13#10#9'{'#13#10#9#9'"inp' +
        'uts": ['#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "uint256",'#13#10#9#9#9#9'"name": "x",'#13 +
        #10#9#9#9#9'"type": "uint256"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "uint25' +
        '6",'#13#10#9#9#9#9'"name": "y",'#13#10#9#9#9#9'"type": "uint256"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"' +
        'internalType": "uint256",'#13#10#9#9#9#9'"name": "price",'#13#10#9#9#9#9'"type": "ui' +
        'nt256"'#13#10#9#9#9'}'#13#10#9#9'],'#13#10#9#9'"name": "SetPrice",'#13#10#9#9'"outputs": [],'#13#10#9#9'"' +
        'stateMutability": "nonpayable",'#13#10#9#9'"type": "function"'#13#10#9'},'#13#10#9'{'#13#10 +
        #9#9'"inputs": ['#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "uint256",'#13#10#9#9#9#9'"name":' +
        ' "x",'#13#10#9#9#9#9'"type": "uint256"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "' +
        'uint256",'#13#10#9#9#9#9'"name": "y",'#13#10#9#9#9#9'"type": "uint256"'#13#10#9#9#9'}'#13#10#9#9'],'#13#10 +
        #9#9'"name": "GetIsForSale",'#13#10#9#9'"outputs": ['#13#10#9#9#9'{'#13#10#9#9#9#9'"internalTy' +
        'pe": "bool",'#13#10#9#9#9#9'"name": "",'#13#10#9#9#9#9'"type": "bool"'#13#10#9#9#9'}'#13#10#9#9'],'#13#10#9 +
        #9'"stateMutability": "view",'#13#10#9#9'"type": "function"'#13#10#9'},'#13#10#9'{'#13#10#9#9'"i' +
        'nputs": ['#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "uint256",'#13#10#9#9#9#9'"name": "x"' +
        ','#13#10#9#9#9#9'"type": "uint256"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "uint' +
        '256",'#13#10#9#9#9#9'"name": "y",'#13#10#9#9#9#9'"type": "uint256"'#13#10#9#9#9'}'#13#10#9#9'],'#13#10#9#9'"n' +
        'ame": "GetName",'#13#10#9#9'"outputs": ['#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "str' +
        'ing",'#13#10#9#9#9#9'"name": "_name",'#13#10#9#9#9#9'"type": "string"'#13#10#9#9#9'}'#13#10#9#9'],'#13#10#9 +
        #9'"stateMutability": "view",'#13#10#9#9'"type": "function"'#13#10#9'},'#13#10#9'{'#13#10#9#9'"i' +
        'nputs": ['#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "uint256",'#13#10#9#9#9#9'"name": "x"' +
        ','#13#10#9#9#9#9'"type": "uint256"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "uint' +
        '256",'#13#10#9#9#9#9'"name": "y",'#13#10#9#9#9#9'"type": "uint256"'#13#10#9#9#9'}'#13#10#9#9'],'#13#10#9#9'"n' +
        'ame": "GetOwner",'#13#10#9#9'"outputs": ['#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "ad' +
        'dress",'#13#10#9#9#9#9'"name": "",'#13#10#9#9#9#9'"type": "address"'#13#10#9#9#9'}'#13#10#9#9'],'#13#10#9#9'"' +
        'stateMutability": "view",'#13#10#9#9'"type": "function"'#13#10#9'},'#13#10#9'{'#13#10#9#9'"inp' +
        'uts": ['#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "uint256",'#13#10#9#9#9#9'"name": "x",'#13 +
        #10#9#9#9#9'"type": "uint256"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "uint25' +
        '6",'#13#10#9#9#9#9'"name": "y",'#13#10#9#9#9#9'"type": "uint256"'#13#10#9#9#9'}'#13#10#9#9'],'#13#10#9#9'"nam' +
        'e": "GetPrice",'#13#10#9#9'"outputs": ['#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "uint' +
        '256",'#13#10#9#9#9#9'"name": "",'#13#10#9#9#9#9'"type": "uint256"'#13#10#9#9#9'}'#13#10#9#9'],'#13#10#9#9'"st' +
        'ateMutability": "view",'#13#10#9#9'"type": "function"'#13#10#9'},'#13#10#9'{'#13#10#9#9'"input' +
        's": ['#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "uint256",'#13#10#9#9#9#9'"name": "",'#13#10#9#9 +
        #9#9'"type": "uint256"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "uint256",' +
        #13#10#9#9#9#9'"name": "",'#13#10#9#9#9#9'"type": "uint256"'#13#10#9#9#9'}'#13#10#9#9'],'#13#10#9#9'"name": ' +
        '"Lands",'#13#10#9#9'"outputs": ['#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "bool",'#13#10#9#9#9 +
        #9'"name": "isForSale",'#13#10#9#9#9#9'"type": "bool"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"int' +
        'ernalType": "uint256",'#13#10#9#9#9#9'"name": "price",'#13#10#9#9#9#9'"type": "uint2' +
        '56"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "string",'#13#10#9#9#9#9'"name": "na' +
        'me",'#13#10#9#9#9#9'"type": "string"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "ad' +
        'dress",'#13#10#9#9#9#9'"name": "owner",'#13#10#9#9#9#9'"type": "address"'#13#10#9#9#9'}'#13#10#9#9'],' +
        #13#10#9#9'"stateMutability": "view",'#13#10#9#9'"type": "function"'#13#10#9'}];'#13#10'   '#13 +
        #10'  console.log('#39#1051#1086#1075'-01a'#39');'#13#10#13#10'  const contract_mv = new web3.eth' +
        '.Contract('#13#10'    contractABI, '#13#10'    contractAddress); '#13#10#13#10'  conso' +
        'le.log('#39#1051#1086#1075'-02'#39');'#13#10'  console.log(contract_mv);'#13#10'       '#13#10'  contr' +
        'act_mv.methods.GetName(1,1).call((error, result) => {'#13#10'  if (err' +
        'or) {'#13#10'      console.error(error);'#13#10'    } else {'#13#10'      console.' +
        'log(result);'#13#10'      MainForm.UniEdit12.setValue(result);'#13#10'    }'#13 +
        #10'  });'#13#10' '#13#10'  console.log('#39#1051#1086#1075'-03'#39'); '#13#10'    '#13#10'}')
  end
  object UniEdit12: TUniEdit
    Left = 20
    Top = 355
    Width = 253
    Hint = ''
    Text = 'UniEdit12'
    TabOrder = 11
  end
  object UniButton4: TUniButton
    Left = 424
    Top = 20
    Width = 217
    Height = 25
    Hint = ''
    Caption = #1055#1077#1088#1077#1076#1072#1090#1100' '#1087#1077#1088#1077#1084#1077#1085#1085#1091#1102' '#1080#1079' JS '#1074' Delphi'
    TabOrder = 12
    ClientEvents.ExtEvents.Strings = (
      
        'click=async function click(sender, e, eOpts)'#13#10'{'#13#10'  ajaxRequest(s' +
        'ender, '#39'MyEvent'#39', [ '#39'param0=A'#39', '#39'param1=B'#39' ]);'#13#10'}')
    OnAjaxEvent = UniButton4AjaxEvent
  end
end
