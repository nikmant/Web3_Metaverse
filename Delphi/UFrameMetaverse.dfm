object FrameMetaverse: TFrameMetaverse
  Left = 0
  Top = 0
  Width = 955
  Height = 658
  OnCreate = UniFrameCreate
  OnAjaxEvent = UniFrameAjaxEvent
  Align = alClient
  Anchors = [akLeft, akTop, akRight, akBottom]
  TabOrder = 0
  object UniLabel6: TUniLabel
    Left = 11
    Top = 104
    Width = 303
    Height = 13
    Hint = ''
    Caption = 'The site works only on the Sepolia  network (NetID=11155111)'
    TabOrder = 2
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 955
    Height = 97
    Hint = ''
    Align = alTop
    TabOrder = 0
    Caption = ' '
    ExplicitWidth = 932
    object UniEditAccount: TUniEdit
      Left = 60
      Top = 38
      Width = 268
      Hint = ''
      Text = ''
      TabOrder = 1
    end
    object UniEditBalance: TUniEdit
      Left = 60
      Top = 66
      Width = 268
      Hint = ''
      Text = ''
      TabOrder = 2
      ReadOnly = True
    end
    object UniLabel2: TUniLabel
      Left = 11
      Top = 70
      Width = 35
      Height = 13
      Hint = ''
      Caption = #1041#1072#1083#1072#1085#1089
      TabOrder = 3
    end
    object UniLabel1: TUniLabel
      Left = 11
      Top = 42
      Width = 25
      Height = 13
      Hint = ''
      Caption = #1057#1095#1105#1090
      TabOrder = 4
    end
    object UniButtonConnect: TUniButton
      Left = 11
      Top = 7
      Width = 133
      Height = 25
      Hint = ''
      Caption = 'Connect to Metamask'
      TabOrder = 5
      ClientEvents.ExtEvents.Strings = (
        
          'click=async function click(sender, e, eOpts)'#13#10'{'#13#10#13#10'  console.log' +
          '('#39#1053#1072#1095#1072#1083#1086' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103#39');'#13#10'  '#13#10'  window.web3 = new Web3(window.eth' +
          'ereum);  '#13#10'  await window.ethereum.request({ method: '#39'eth_reques' +
          'tAccounts'#39' });'#13#10'  '#13#10'  console.log('#39#1058#1086#1095#1082#1072' 1'#39');'#13#10#13#10'  window.accoun' +
          'ts = await web3.eth.getAccounts();  '#13#10'  window.acc0 = accounts[0' +
          '];'#13#10'  FrameMetaverse1.UniEditAccount.setValue(acc0);  '#13#10'  '#13#10'  ba' +
          'lanceInWei   = await web3.eth.getBalance(acc0); '#13#10'  balanceInEth' +
          'er = web3.utils.fromWei(balanceInWei.toString(), '#39'ether'#39');      ' +
          #13#10'  window.accBalance0 = balanceInEther;'#13#10'  FrameMetaverse1.UniE' +
          'ditBalance.setValue(accBalance0);'#13#10'  '#13#10'  console.log('#39#1058#1086#1095#1082#1072' 2'#39');' +
          #13#10'                 '#13#10'  window.contractOwnerAddress = '#39'0xBE8156D5' +
          'a346c8099deac7b226A75c12c4dab035'#39';'#13#10'  window.contractAddress    ' +
          '  = '#39'0x477fcc8a41c1eEC9De86f60c6093685bdE531B5C'#39';'#13#10'             ' +
          '  '#13#10'  window.contractABI = ['#13#10#9'{'#13#10#9#9'"inputs": ['#13#10#9#9#9'{'#13#10#9#9#9#9'"inte' +
          'rnalType": "uint256",'#13#10#9#9#9#9'"name": "x",'#13#10#9#9#9#9'"type": "uint256"'#13#10 +
          #9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "uint256",'#13#10#9#9#9#9'"name": "y",'#13#10#9 +
          #9#9#9'"type": "uint256"'#13#10#9#9#9'}'#13#10#9#9'],'#13#10#9#9'"name": "Buy",'#13#10#9#9'"outputs":' +
          ' [],'#13#10#9#9'"stateMutability": "payable",'#13#10#9#9'"type": "function"'#13#10#9'},' +
          #13#10#9'{'#13#10#9#9'"inputs": [],'#13#10#9#9'"stateMutability": "nonpayable",'#13#10#9#9'"ty' +
          'pe": "constructor"'#13#10#9'},'#13#10#9'{'#13#10#9#9'"anonymous": false,'#13#10#9#9'"inputs": ' +
          '['#13#10#9#9#9'{'#13#10#9#9#9#9'"indexed": true,'#13#10#9#9#9#9'"internalType": "uint256",'#13#10#9 +
          #9#9#9'"name": "x",'#13#10#9#9#9#9'"type": "uint256"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"indexe' +
          'd": true,'#13#10#9#9#9#9'"internalType": "uint256",'#13#10#9#9#9#9'"name": "y",'#13#10#9#9#9 +
          #9'"type": "uint256"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"indexed": true,'#13#10#9#9#9#9'"inte' +
          'rnalType": "uint256",'#13#10#9#9#9#9'"name": "dt",'#13#10#9#9#9#9'"type": "uint256"'#13 +
          #10#9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"indexed": false,'#13#10#9#9#9#9'"internalType": "addres' +
          's",'#13#10#9#9#9#9'"name": "owner",'#13#10#9#9#9#9'"type": "address"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13#10#9 +
          #9#9#9'"indexed": false,'#13#10#9#9#9#9'"internalType": "string",'#13#10#9#9#9#9'"name":' +
          ' "name",'#13#10#9#9#9#9'"type": "string"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"indexed": fals' +
          'e,'#13#10#9#9#9#9'"internalType": "bool",'#13#10#9#9#9#9'"name": "isForSale",'#13#10#9#9#9#9'"' +
          'type": "bool"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"indexed": false,'#13#10#9#9#9#9'"internal' +
          'Type": "uint256",'#13#10#9#9#9#9'"name": "price",'#13#10#9#9#9#9'"type": "uint256"'#13#10 +
          #9#9#9'}'#13#10#9#9'],'#13#10#9#9'"name": "EventDeal",'#13#10#9#9'"type": "event"'#13#10#9'},'#13#10#9'{'#13#10 +
          #9#9'"inputs": ['#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "uint256",'#13#10#9#9#9#9'"name":' +
          ' "x",'#13#10#9#9#9#9'"type": "uint256"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "' +
          'uint256",'#13#10#9#9#9#9'"name": "y",'#13#10#9#9#9#9'"type": "uint256"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13 +
          #10#9#9#9#9'"internalType": "bool",'#13#10#9#9#9#9'"name": "isForSale",'#13#10#9#9#9#9'"typ' +
          'e": "bool"'#13#10#9#9#9'}'#13#10#9#9'],'#13#10#9#9'"name": "SetIsForSale",'#13#10#9#9'"outputs": ' +
          '[],'#13#10#9#9'"stateMutability": "nonpayable",'#13#10#9#9'"type": "function"'#13#10#9 +
          '},'#13#10#9'{'#13#10#9#9'"inputs": ['#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "uint256",'#13#10#9#9#9 +
          #9'"name": "x",'#13#10#9#9#9#9'"type": "uint256"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"internal' +
          'Type": "uint256",'#13#10#9#9#9#9'"name": "y",'#13#10#9#9#9#9'"type": "uint256"'#13#10#9#9#9'}' +
          ','#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "string",'#13#10#9#9#9#9'"name": "name",'#13#10#9#9#9 +
          #9'"type": "string"'#13#10#9#9#9'}'#13#10#9#9'],'#13#10#9#9'"name": "SetName",'#13#10#9#9'"outputs"' +
          ': [],'#13#10#9#9'"stateMutability": "nonpayable",'#13#10#9#9'"type": "function"'#13 +
          #10#9'},'#13#10#9'{'#13#10#9#9'"inputs": ['#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "uint256",'#13#10#9 +
          #9#9#9'"name": "x",'#13#10#9#9#9#9'"type": "uint256"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"intern' +
          'alType": "uint256",'#13#10#9#9#9#9'"name": "y",'#13#10#9#9#9#9'"type": "uint256"'#13#10#9#9 +
          #9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "uint256",'#13#10#9#9#9#9'"name": "price",'#13 +
          #10#9#9#9#9'"type": "uint256"'#13#10#9#9#9'}'#13#10#9#9'],'#13#10#9#9'"name": "SetPrice",'#13#10#9#9'"ou' +
          'tputs": [],'#13#10#9#9'"stateMutability": "nonpayable",'#13#10#9#9'"type": "func' +
          'tion"'#13#10#9'},'#13#10#9'{'#13#10#9#9'"inputs": ['#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "uint25' +
          '6",'#13#10#9#9#9#9'"name": "x",'#13#10#9#9#9#9'"type": "uint256"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"' +
          'internalType": "uint256",'#13#10#9#9#9#9'"name": "y",'#13#10#9#9#9#9'"type": "uint25' +
          '6"'#13#10#9#9#9'}'#13#10#9#9'],'#13#10#9#9'"name": "GetIsForSale",'#13#10#9#9'"outputs": ['#13#10#9#9#9'{'#13 +
          #10#9#9#9#9'"internalType": "bool",'#13#10#9#9#9#9'"name": "",'#13#10#9#9#9#9'"type": "bool' +
          '"'#13#10#9#9#9'}'#13#10#9#9'],'#13#10#9#9'"stateMutability": "view",'#13#10#9#9'"type": "function' +
          '"'#13#10#9'},'#13#10#9'{'#13#10#9#9'"inputs": ['#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "uint256",'#13 +
          #10#9#9#9#9'"name": "x",'#13#10#9#9#9#9'"type": "uint256"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"inte' +
          'rnalType": "uint256",'#13#10#9#9#9#9'"name": "y",'#13#10#9#9#9#9'"type": "uint256"'#13#10 +
          #9#9#9'}'#13#10#9#9'],'#13#10#9#9'"name": "GetName",'#13#10#9#9'"outputs": ['#13#10#9#9#9'{'#13#10#9#9#9#9'"int' +
          'ernalType": "string",'#13#10#9#9#9#9'"name": "_name",'#13#10#9#9#9#9'"type": "string' +
          '"'#13#10#9#9#9'}'#13#10#9#9'],'#13#10#9#9'"stateMutability": "view",'#13#10#9#9'"type": "function' +
          '"'#13#10#9'},'#13#10#9'{'#13#10#9#9'"inputs": ['#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "uint256",'#13 +
          #10#9#9#9#9'"name": "x",'#13#10#9#9#9#9'"type": "uint256"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"inte' +
          'rnalType": "uint256",'#13#10#9#9#9#9'"name": "y",'#13#10#9#9#9#9'"type": "uint256"'#13#10 +
          #9#9#9'}'#13#10#9#9'],'#13#10#9#9'"name": "GetOwner",'#13#10#9#9'"outputs": ['#13#10#9#9#9'{'#13#10#9#9#9#9'"in' +
          'ternalType": "address",'#13#10#9#9#9#9'"name": "",'#13#10#9#9#9#9'"type": "address"'#13 +
          #10#9#9#9'}'#13#10#9#9'],'#13#10#9#9'"stateMutability": "view",'#13#10#9#9'"type": "function"'#13 +
          #10#9'},'#13#10#9'{'#13#10#9#9'"inputs": ['#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "uint256",'#13#10#9 +
          #9#9#9'"name": "x",'#13#10#9#9#9#9'"type": "uint256"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"intern' +
          'alType": "uint256",'#13#10#9#9#9#9'"name": "y",'#13#10#9#9#9#9'"type": "uint256"'#13#10#9#9 +
          #9'}'#13#10#9#9'],'#13#10#9#9'"name": "GetPrice",'#13#10#9#9'"outputs": ['#13#10#9#9#9'{'#13#10#9#9#9#9'"inte' +
          'rnalType": "uint256",'#13#10#9#9#9#9'"name": "",'#13#10#9#9#9#9'"type": "uint256"'#13#10#9 +
          #9#9'}'#13#10#9#9'],'#13#10#9#9'"stateMutability": "view",'#13#10#9#9'"type": "function"'#13#10#9 +
          '},'#13#10#9'{'#13#10#9#9'"inputs": ['#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "uint256",'#13#10#9#9#9 +
          #9'"name": "",'#13#10#9#9#9#9'"type": "uint256"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"internalT' +
          'ype": "uint256",'#13#10#9#9#9#9'"name": "",'#13#10#9#9#9#9'"type": "uint256"'#13#10#9#9#9'}'#13#10 +
          #9#9'],'#13#10#9#9'"name": "Lands",'#13#10#9#9'"outputs": ['#13#10#9#9#9'{'#13#10#9#9#9#9'"internalTyp' +
          'e": "bool",'#13#10#9#9#9#9'"name": "isForSale",'#13#10#9#9#9#9'"type": "bool"'#13#10#9#9#9'},' +
          #13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "uint256",'#13#10#9#9#9#9'"name": "price",'#13#10#9#9 +
          #9#9'"type": "uint256"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"internalType": "string",'#13 +
          #10#9#9#9#9'"name": "name",'#13#10#9#9#9#9'"type": "string"'#13#10#9#9#9'},'#13#10#9#9#9'{'#13#10#9#9#9#9'"in' +
          'ternalType": "address",'#13#10#9#9#9#9'"name": "owner",'#13#10#9#9#9#9'"type": "addr' +
          'ess"'#13#10#9#9#9'}'#13#10#9#9'],'#13#10#9#9'"stateMutability": "view",'#13#10#9#9'"type": "funct' +
          'ion"'#13#10#9'}'#13#10'];'#13#10#13#10#13#10#13#10#13#10#13#10#13#10#13#10#13#10#13#10'  console.log('#39#1053#1072#1095#1072#1083#1086' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080 +
          #1103' '#1082#1086#1085#1090#1088#1072#1082#1090#1072#39');'#13#10' '#13#10'  window.contract_mv = new web3.eth.Contract(' +
          #13#10'    contractABI, '#13#10'    contractAddress); '#13#10#13#10'  console.log('#39#1051#1086 +
          #1075'-02'#39');'#13#10'  console.log(contract_mv);'#13#10'       '#13#10'  console.log('#39#1051#1086 +
          #1075'-03'#39');'#13#10#13#10#13#10'  contract_mv.methods.GetOwner(0,0).call((error, re' +
          'sult) => {'#13#10'  if (error) {'#13#10'      console.error(error);'#13#10'    } e' +
          'lse {  '#13#10'      console.log(result); '#13#10'      '#13#10'      vn = web3.cu' +
          'rrentProvider.networkVersion;'#13#10'      if (vn=1115111)'#13#10'      {   ' +
          '   '#13#10'        FrameMetaverse1.EditContract.setValue(result);'#13#10'   ' +
          '   }                  '#13#10'    }'#13#10'  });'#13#10#13#10' '#13#10' /*'#13#10'  result = await' +
          ' contract_mv.methods.returnArray.call({gas: 30000000000});'#13#10'  co' +
          'nsole.log('#39'result-1:'#39');'#13#10'  console.log(result);'#13#10' '#13#10'  result = a' +
          'wait contract_mv.methods.GetIsForSale(1,2).call({gas: 3000000000' +
          '0});'#13#10'  console.log('#39'result-2:'#39');'#13#10'  console.log(result);'#13#10#13#10'  c' +
          'onsole.log('#39#1051#1086#1075'-04'#39');'#13#10'*/'#13#10#13#10'}')
    end
    object UniHiddenPanel1: TUniHiddenPanel
      Left = 394
      Top = 7
      Width = 515
      Height = 66
      Hint = ''
      Visible = True
      object EditContract: TUniEdit
        Left = 4
        Top = 5
        Width = 94
        Hint = ''
        Text = 'EditContract'
        TabOrder = 1
        ReadOnly = True
        OnChange = EditContractChange
      end
      object ButtonBlockChainReadState: TUniButton
        Left = 4
        Top = 33
        Width = 169
        Height = 25
        Hint = ''
        Caption = 'ButtonBlockChainReadState'
        TabOrder = 2
        ClientEvents.ExtEvents.Strings = (
          
            'textchange=async function textchange(sender, oldText, newText, e' +
            'Opts)'#13#10'{'#13#10#13#10'  arr = [];'#13#10#13#10'  /*  '#13#10'  '#13#10'  '#1055#1086#1083#1091#1095#1077#1085#1080#1077' '#1076#1072#1085#1085#1099#1093' '#1089' '#1087#1086#1084#1086 +
            #1097#1100#1102' '#1092#1091#1085#1082#1094#1080#1081#13#10'  '#13#10'  const funcGetInfo = async(x, y) => {'#13#10#13#10'    r' +
            'esult = await contract_mv.methods.GetName(y, x).call();'#13#10'    str' +
            ' = "Name_"+y+"_"+x+"="+result;'#13#10'    arr.push(str);'#13#10#13#10'    result' +
            ' = await contract_mv.methods.GetOwner(y, x).call();'#13#10'    str = "' +
            'Owner_"+y+"_"+x+"="+result;'#13#10'    arr.push(str);'#13#10'    '#13#10'    resul' +
            't = await contract_mv.methods.GetPrice(y, x).call();'#13#10'    str = ' +
            '"Price_"+y+"_"+x+"="+result;'#13#10'    arr.push(str);'#13#10'    '#13#10'    resu' +
            'lt = await contract_mv.methods.GetIsForSale(y, x).call();'#13#10'    s' +
            'tr = "IsForSale_"+y+"_"+x+"="+result;'#13#10'    arr.push(str);'#13#10'    '#13 +
            #10'  };'#13#10'  '#13#10'  '#13#10'  for (y=0; y<=2; y++)'#13#10'    for (x=0; x<=4; x++)'#13 +
            #10'      await funcGetInfo(y,x);'#13#10'  '#13#10'  console.log("arr:");'#13#10'  co' +
            'nsole.log(arr);'#13#10'  ajaxRequest(FrameMetaverse1.ButtonBlockChainR' +
            'eadState, "BC_Info", arr);   '#13#10'  '#13#10'  */'#13#10'  '#13#10'  '#13#10'  // Filter for' +
            ' Events'#13#10'  filter_options = {'#13#10'    fromBlock: 0,'#13#10'    toBlock: '#39 +
            'latest'#39#13#10'  };'#13#10'      '#13#10'  // Declare array'#13#10'  const landArray = [' +
            '];'#13#10'  for (let i = 0; i < 10; i++) {'#13#10'    landArray.push([]);'#13#10' ' +
            '   for (let j = 0; j < 5; j++) {'#13#10'      landArray[i][j] = {'#13#10'   ' +
            '     isForSale: false,'#13#10'        price: 0,'#13#10'        name: '#39#39','#13#10'  ' +
            '      owner: '#39#39#13#10'      };'#13#10'    }'#13#10'  }'#13#10'  '#13#10'         '#13#10'  '#13#10'  // G' +
            'et all OLD events'#13#10'  const events = await contract_mv.getPastEve' +
            'nts('#39'EventDeal'#39', filter_options); '#13#10'  sline = '#39#39';      '#13#10'       ' +
            '       '#13#10'  // '#1054#1073#1088#1072#1073#1072#1090#1099#1074#1072#1102' '#1089#1086#1073#1099#1090#1080#1103'  '#13#10'  events.forEach((event) =>' +
            ' '#13#10'  {   '#13#10'        rr = event.returnValues; '#13#10'        var sdate ' +
            '= new Date(rr.dt*1000);'#13#10'        sline = sline + sdate.toISOStri' +
            'ng() '#13#10'        + '#39'  Land['#39' + rr.y +'#39';'#39'+ rr.x+'#39']'#39#13#10'        + '#39'  O' +
            'wner: '#39'+rr.owner'#13#10'        + '#39'  Name: '#39'+rr.name'#13#10'        + '#39'  IsF' +
            'orSale: '#39'+rr.isForSale'#13#10'        + '#39'  Price: '#39'+rr.price'#13#10'        ' +
            '+'#39'\n'#39';         '#13#10'        landArray[rr.x][rr.y].isForSale = rr.is' +
            'ForSale;'#13#10'        landArray[rr.x][rr.y].price = rr.price;'#13#10'     ' +
            '   landArray[rr.x][rr.y].name  = rr.name;'#13#10'        landArray[rr.' +
            'x][rr.y].owner = rr.owner;'#13#10'  });  '#13#10'  for (y=0; y<=4; y++)'#13#10'   ' +
            ' for (x=0; x<=9; x++)'#13#10'    {'#13#10#13#10'    str = "Name_"+y+"_"+x+"="+la' +
            'ndArray[x][y].name;'#13#10'    arr.push(str);     '#13#10'    '#13#10'    ow = lan' +
            'dArray[x][y].owner;'#13#10'    if (ow=='#39#39') '#13#10'      ow=contractOwnerAdd' +
            'ress;'#13#10'    str = "Owner_"+y+"_"+x+"="+ow;'#13#10'    arr.push(str);'#13#10' ' +
            '   '#13#10'    priceInWei = landArray[x][y].price;'#13#10'    priceInEther =' +
            ' web3.utils.fromWei(priceInWei.toString(), '#39'ether'#39');'#13#10'    str = ' +
            '"Price_"+y+"_"+x+"="+priceInEther;'#13#10'    arr.push(str);'#13#10'    '#13#10'  ' +
            '  str = "IsForSale_"+y+"_"+x+"="+landArray[x][y].isForSale;'#13#10'   ' +
            ' arr.push(str);'#13#10'    '#13#10'    }             '#13#10'  console.log("arr:")' +
            ';'#13#10'  console.log(arr);'#13#10'  ajaxRequest(FrameMetaverse1.ButtonBloc' +
            'kChainReadState, "BC_Info", arr);'#13#10'        '#13#10'                  '#13 +
            #10'       '#13#10'          '#13#10'  // '#1055#1086#1076#1087#1080#1089#1099#1074#1072#1102#1089#1100' '#1085#1072' '#1073#1091#1076#1091#1097#1080#1077' '#1089#1086#1073#1099#1090#1080#1103' '#13#10'  c' +
            'urrentBlock = await web3.eth.getBlockNumber();'#13#10'  filter_options' +
            ' = {fromBlock: currentBlock};'#13#10'  contract_mv.events.EventDeal(fi' +
            'lter_options)'#13#10'    .on('#39'data'#39', event => {'#13#10'    '#13#10'        rr = ev' +
            'ent.returnValues;  '#13#10'        y = rr.y;'#13#10'        x = rr.x;       ' +
            #13#10'        arr = [];'#13#10'        '#13#10'        str = "Name_"+y+"_"+x+"="' +
            '+rr.name;'#13#10'        arr.push(str);'#13#10'        '#13#10'        ow = rr.own' +
            'er;'#13#10'        if (ow=='#39#39') '#13#10'          ow=contractOwnerAddress;'#13#10' ' +
            '       str = "Owner_"+y+"_"+x+"="+ow;'#13#10'        arr.push(str);'#13#10' ' +
            '       '#13#10'        priceInWei = rr.price;'#13#10'        priceInEther = ' +
            'web3.utils.fromWei(priceInWei.toString(), '#39'ether'#39');'#13#10'        str' +
            ' = "Price_"+y+"_"+x+"="+priceInEther;'#13#10'        arr.push(str);'#13#10' ' +
            '       '#13#10'        str = "IsForSale_"+y+"_"+x+"="+rr.isForSale;'#13#10' ' +
            '       arr.push(str);  '#13#10'        '#13#10'        console.log("BC_One.a' +
            'rr:");'#13#10'        console.log(arr);'#13#10'        '#13#10'        ajaxRequest' +
            '(FrameMetaverse1.ButtonBlockChainReadState, "BC_Info", arr);    ' +
            '      '#13#10'          '#13#10'    }  )'#13#10'    .on('#39'changed'#39', changed => cons' +
            'ole.log(changed))'#13#10'    .on('#39'error'#39', err => console.error(err))'#13#10 +
            '    .on('#39'connected'#39', str => console.log(str));'#13#10'           '#13#10'}')
        OnAjaxEvent = ButtonBlockChainReadStateAjaxEvent
      end
      object eNameSet: TUniEdit
        Left = 187
        Top = 1
        Width = 94
        Hint = ''
        Text = 'eNameSet'
        TabOrder = 3
      end
      object ePriceMySet: TUniEdit
        Left = 187
        Top = 22
        Width = 94
        Hint = ''
        Text = 'ePriceMySet'
        TabOrder = 4
      end
      object eIsForSaleSet: TUniEdit
        Left = 187
        Top = 43
        Width = 94
        Hint = ''
        Text = 'eIsForSaleSet'
        TabOrder = 5
      end
      object bBalanceUpdate: TUniButton
        Left = 287
        Top = 1
        Width = 98
        Height = 22
        Hint = ''
        Caption = 'bBalanceUpdate'
        TabOrder = 6
        ClientEvents.ExtEvents.Strings = (
          
            'textchange=async function textchange(sender, oldText, newText, e' +
            'Opts)'#13#10'{'#13#10'  balanceInWei   = await web3.eth.getBalance(acc0); '#13#10 +
            '  balanceInEther = web3.utils.fromWei(balanceInWei.toString(), '#39 +
            'ether'#39');      '#13#10'  window.accBalance0 = balanceInEther;'#13#10'  FrameM' +
            'etaverse1.UniEditBalance.setValue(accBalance0);'#13#10'}')
      end
    end
  end
  object PanelMain: TUniPanel
    Left = 0
    Top = 97
    Width = 955
    Height = 561
    Hint = ''
    Visible = False
    Align = alClient
    TabOrder = 1
    BorderStyle = ubsNone
    Caption = ' '
    ExplicitLeft = 248
    ExplicitTop = 142
    ExplicitWidth = 932
    ExplicitHeight = 495
    object PanelLog: TUniPanel
      Left = 0
      Top = 411
      Width = 955
      Height = 150
      Hint = ''
      Align = alBottom
      TabOrder = 1
      Title = 'Blockchain log'
      Caption = 'PanelLog'
      Collapsible = True
      CollapseDirection = cdBottom
      ExplicitTop = 308
      DesignSize = (
        955
        150)
      object UniButton1: TUniButton
        Left = 11
        Top = 10
        Width = 90
        Height = 25
        Hint = ''
        Caption = 'Get all Events'
        TabOrder = 1
        ClientEvents.ExtEvents.Strings = (
          
            'click=async function click(sender, e, eOpts)'#13#10'{      '#13#10'  const f' +
            'ilter_options = {'#13#10'    fromBlock: 0,'#13#10'    toBlock: '#39'latest'#39#13#10'  }' +
            ';'#13#10'  '#13#10#13#10'  // Declare array'#13#10'  const landArray = [];'#13#10'  for (let' +
            ' i = 0; i < 10; i++) {'#13#10'    landArray.push([]);'#13#10'    for (let j ' +
            '= 0; j < 5; j++) {'#13#10'      landArray[i][j] = {'#13#10'        isForSale' +
            ': false,'#13#10'        price: 0,'#13#10'        name: '#39#39','#13#10'        owner: '#39 +
            #39#13#10'      };'#13#10'    }'#13#10'  }'#13#10'  '#13#10'  contract_mv.getPastEvents('#39'EventD' +
            'eal'#39', filter_options, '#13#10'  (error, events) => '#13#10'  {'#13#10'    if (erro' +
            'r) '#13#10'    {'#13#10'      console.log(error);'#13#10'    } '#13#10'    else '#13#10'    {'#13 +
            #10'      sline = '#39#39';'#13#10'      events.forEach((event) => {   '#13#10'      ' +
            '  rr = event.returnValues; '#13#10'        //console.log(rr.dt);'#13#10'    ' +
            '    var sdate = new Date(rr.dt*1000);'#13#10'        sline = sline + s' +
            'date.toISOString() '#13#10'        + '#39'  Land['#39' + rr.y +'#39';'#39'+ rr.x+'#39']'#39#13#10 +
            '        + '#39'  Owner: '#39'+rr.owner'#13#10'        + '#39'  Name: '#39'+rr.name'#13#10'  ' +
            '      + '#39'  IsForSale: '#39'+rr.isForSale'#13#10'        + '#39'  Price: '#39'+rr.p' +
            'rice'#13#10'        +'#39'\n'#39';'#13#10'        //console.log(sline);'#13#10'        '#13#10' ' +
            '       landArray[rr.x][rr.y].isForSale = rr.isForSale;'#13#10'        ' +
            'landArray[rr.x][rr.y].price = rr.price;'#13#10'        landArray[rr.x]' +
            '[rr.y].name  = rr.name;'#13#10'        landArray[rr.x][rr.y].owner = r' +
            'r.owner;'#13#10'        '#13#10'      });'#13#10'      console.log(landArray);'#13#10'  ' +
            '    FrameMetaverse1.MemoLog.setValue(sline);  '#13#10'    }'#13#10'  }'#13#10'  );' +
            #13#10'  '#13#10'  '#13#10'  '#13#10'    '#13#10'  '#13#10'  '#13#10'}')
      end
      object MemoLog: TUniMemo
        Left = 107
        Top = 10
        Width = 837
        Height = 107
        Hint = ''
        Lines.Strings = (
          'Log')
        Anchors = [akLeft, akTop, akRight, akBottom]
        ReadOnly = True
        TabOrder = 2
      end
    end
    object UniPanel3: TUniPanel
      Left = 0
      Top = 0
      Width = 955
      Height = 411
      Hint = ''
      Align = alClient
      TabOrder = 2
      Caption = ' '
      ExplicitLeft = 98
      ExplicitTop = 38
      ExplicitWidth = 857
      ExplicitHeight = 261
      DesignSize = (
        955
        411)
      object UniPanel4: TUniPanel
        Left = 11
        Top = 12
        Width = 252
        Height = 386
        Hint = ''
        Anchors = [akLeft, akTop, akBottom]
        TabOrder = 1
        Caption = ' '
        object UniPanel5: TUniPanel
          Left = 1
          Top = 1
          Width = 250
          Height = 384
          Hint = ''
          Align = alClient
          TabOrder = 1
          Caption = ' '
          ExplicitWidth = 251
          ExplicitHeight = 420
          object SimplePanelNone: TUniSimplePanel
            Left = 3
            Top = 3
            Width = 244
            Height = 47
            Hint = ''
            ParentColor = False
            TabOrder = 1
            object UniLabel3: TUniLabel
              Left = 12
              Top = 10
              Width = 80
              Height = 13
              Hint = ''
              Caption = 'Click on any land'
              TabOrder = 1
            end
          end
          object SimplePanelMy: TUniSimplePanel
            Left = 3
            Top = 56
            Width = 244
            Height = 109
            Hint = ''
            Visible = False
            ParentColor = False
            TabOrder = 2
            object cbForSale: TUniCheckBox
              Left = 9
              Top = 68
              Width = 78
              Height = 17
              Hint = ''
              Caption = 'For Save'
              TabOrder = 1
              OnChange = cbForSaleChange
            end
            object eName: TUniEdit
              Left = 9
              Top = 12
              Width = 160
              Hint = ''
              Text = ''
              TabOrder = 2
            end
            object bSetName: TUniButton
              Left = 177
              Top = 12
              Width = 59
              Height = 22
              Hint = ''
              Caption = 'Set name'
              TabOrder = 3
              OnClick = bSetNameClick
            end
            object bSetPrice: TUniButton
              Left = 177
              Top = 40
              Width = 59
              Height = 22
              Hint = ''
              Caption = 'Set price'
              TabOrder = 4
              OnClick = bSetPriceClick
            end
            object ePriceMy: TUniEdit
              Left = 9
              Top = 40
              Width = 160
              Hint = ''
              Text = ''
              TabOrder = 5
            end
          end
          object SimplePanelBusy: TUniSimplePanel
            Left = 3
            Top = 176
            Width = 244
            Height = 58
            Hint = ''
            Visible = False
            ParentColor = False
            TabOrder = 3
            object UniLabel4: TUniLabel
              Left = 16
              Top = 14
              Width = 175
              Height = 13
              Hint = ''
              Caption = 'The land is occupied and not for sale'
              TabOrder = 1
            end
          end
          object SimplePanelForSale: TUniSimplePanel
            Left = 3
            Top = 248
            Width = 244
            Height = 65
            Hint = ''
            Visible = False
            ParentColor = False
            TabOrder = 4
            object bBuy: TUniButton
              Left = 177
              Top = 28
              Width = 59
              Height = 22
              Hint = ''
              Caption = 'Buy'
              TabOrder = 1
              OnClick = bBuyClick
            end
            object ePriceForBuy: TUniEdit
              Left = 11
              Top = 27
              Width = 160
              Hint = ''
              Text = ''
              TabOrder = 2
              ReadOnly = True
            end
            object UniLabel5: TUniLabel
              Left = 9
              Top = 8
              Width = 62
              Height = 13
              Hint = ''
              Caption = 'Land for sale'
              TabOrder = 3
            end
          end
        end
      end
      object PanelWorld: TUniPanel
        Left = 274
        Top = 11
        Width = 669
        Height = 386
        Hint = ''
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 2
        BorderStyle = ubsNone
        Caption = ' '
        object PanelLand: TUniPanel
          Left = 12
          Top = 12
          Width = 121
          Height = 57
          Hint = ''
          Visible = False
          TabOrder = 1
          ClientEvents.ExtEvents.Strings = (
            
              'click=async function click(sender, e, eOpts)'#13#10'{'#13#10'      '#13#10'  contr' +
              'act_mv.methods.GetName(1,1).call((error, result) => {'#13#10'  if (err' +
              'or) {'#13#10'      console.error(error);'#13#10'    } else {  '#13#10'      consol' +
              'e.error(result);      '#13#10'      FrameMetaverse1.EditContract.setVa' +
              'lue(result);'#13#10'    }'#13#10'  });'#13#10'  '#13#10'  console.log('#39#1051#1086#1075'-03'#39');'#13#10' '#13#10'}')
          Caption = 'PanelLand'
          OnClick = PanelLandClick
        end
        object PanelResizable: TUniPanel
          Left = 32
          Top = 84
          Width = 537
          Height = 213
          Hint = ''
          TabOrder = 2
          Caption = ' '
          OnResize = PanelResizableResize
          object PanelBorder: TUniPanel
            Left = 1
            Top = 1
            Width = 535
            Height = 211
            Hint = ''
            Align = alClient
            TabOrder = 1
            Caption = ' '
            ExplicitLeft = 20
            ExplicitTop = 20
            ExplicitWidth = 305
            ExplicitHeight = 173
          end
        end
      end
    end
  end
end
