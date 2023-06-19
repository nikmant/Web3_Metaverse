object FrameCryptoPro: TFrameCryptoPro
  Left = 0
  Top = 0
  Width = 928
  Height = 603
  TabOrder = 0
  object UniDBGrid1: TUniDBGrid
    Left = 16
    Top = 280
    Width = 525
    Height = 113
    Hint = ''
    DataSource = DS_MTC
    WebOptions.Paged = False
    LoadMask.Message = 'Loading data...'
    TabOrder = 0
    Columns = <
      item
        FieldName = 'thumbPrint'
        Title.Caption = 'thumbPrint'
        Width = 150
      end
      item
        FieldName = 'issuerCompany'
        Title.Caption = 'issuerCompany'
        Width = 150
      end
      item
        FieldName = 'ownerName'
        Title.Caption = 'ownerName'
        Width = 150
      end>
  end
  object UniButton7: TUniButton
    Left = 16
    Top = 404
    Width = 213
    Height = 25
    Hint = ''
    Caption = #1055#1086#1076#1087#1080#1089#1072#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1086#1081' '#1087#1086#1076#1087#1080#1089#1100#1102
    TabOrder = 1
    ClientEvents.ExtEvents.Strings = (
      
        'click=async function click(sender, e, eOpts)'#13#10'{                 ' +
        '                                                      '#13#10#13#10'  myst' +
        'r = MainForm.UniEdit7.getValue();'#13#10'  mykey = MainForm.UniEdit11.' +
        'getValue();'#13#10#13#10'  console.log(mystr);  '#13#10'  console.log(mykey);'#13#10' ' +
        '   '#13#10'  const hash = await window.cryptoPro.createHash(mystr);  '#13 +
        #10'  const sssss = await window.cryptoPro.createDetachedSignature(' +
        'mykey, hash);'#13#10'                                                 ' +
        '         '#13#10'  MainForm.UniEdit9.setValue( sssss );'#13#10'}')
  end
  object UniEdit9: TUniEdit
    Left = 16
    Top = 435
    Width = 525
    Hint = ''
    Text = 'UniEdit9'
    TabOrder = 2
  end
  object UniEdit11: TUniEdit
    Left = 544
    Top = 399
    Width = 273
    Hint = ''
    Text = 'UniEdit11'
    TabOrder = 3
  end
  object UniMemo1: TUniMemo
    Left = 544
    Top = 280
    Width = 273
    Height = 113
    Hint = ''
    Lines.Strings = (
      'UniMemo1')
    TabOrder = 4
    OnChange = UniMemo1Change
  end
  object UniEdit10: TUniEdit
    Left = 16
    Top = 229
    Width = 525
    Hint = ''
    Text = 'UniEdit10'
    TabOrder = 5
  end
  object UniEdit8: TUniEdit
    Left = 16
    Top = 201
    Width = 525
    Hint = ''
    Text = ''
    TabOrder = 6
    OnChange = UniEdit8Change
  end
  object UniEdit7: TUniEdit
    Left = 16
    Top = 173
    Width = 297
    Hint = ''
    Text = #1089#1090#1088#1086#1082#1072', '#1082#1086#1090#1086#1088#1091#1102' '#1093#1086#1090#1080#1084' '#1087#1086#1076#1087#1080#1089#1099#1074#1072#1090#1100
    TabOrder = 7
  end
  object UniButton6: TUniButton
    Left = 16
    Top = 136
    Width = 293
    Height = 25
    Hint = ''
    Caption = #1055#1086#1076#1087#1080#1089#1072#1090#1100' '#1074' '#1050#1088#1080#1087#1090#1086#1055#1088#1086' '#1089#1090#1088#1086#1082#1091' '#1087#1086#1076#1087#1080#1089#1100#1102' '#1085#1072' '#1074#1099#1073#1086#1088
    TabOrder = 8
    ClientEvents.ExtEvents.Strings = (
      
        'click=async function click(sender, e, eOpts)'#13#10'{'#13#10'  const certS =' +
        ' await window.cryptoPro.getUserCertificates();'#13#10'  const newArr =' +
        ' [];  '#13#10'  const propertyCompany = "'#1050#1086#1084#1087#1072#1085#1080#1103'";'#13#10'  const propertyC' +
        'enter = "'#1059#1076#1086#1089#1090#1086#1074#1077#1088#1103#1102#1097#1080#1081' '#1094#1077#1085#1090#1088'";'#13#10'  const propertyOwner = "'#1042#1083#1072#1076#1077#1083 +
        #1077#1094'";'#13#10'        '#13#10'  for (const cert of certS) {           '#13#10'      ' +
        '    const issuerInfo = ((await cert.getIssuerInfo()) || []).filt' +
        'er('#13#10'            (item) =>'#13#10'              item?.title !== proper' +
        'tyCompany || item?.title !== propertyCenter'#13#10'          );'#13#10#13#10'   ' +
        '       const ownerInfo = await cert.getOwnerInfo();'#13#10#13#10'         ' +
        ' newArr.push({'#13#10'            ...cert,'#13#10'            ownerInfo: {'#13#10 +
        '              name:'#13#10'                ownerInfo?.find('#13#10'         ' +
        '         (item) => item?.title === propertyOwner'#13#10'              ' +
        '  )?.description  || "",'#13#10'            },'#13#10'            issuerInfo' +
        ': {'#13#10'              company:'#13#10'                issuerInfo.find('#13#10' ' +
        '                 (item) => item.title === propertyCompany'#13#10'     ' +
        '           )?.description  || "",'#13#10'              center:'#13#10'      ' +
        '          issuerInfo.find('#13#10'                  (item) => item.tit' +
        'le === propertyCenter'#13#10'                )?.description || "",'#13#10'  ' +
        '          },'#13#10'          });'#13#10#13#10'        }'#13#10'                 '#13#10'  c' +
        'onsole.log(newArr);      '#13#10#13#10'  console.log(newArr.length);'#13#10'  co' +
        'nsole.log(newArr[0].thumbprint);'#13#10'  console.log(newArr[0].issuer' +
        'Info.company);        '#13#10'  console.log(newArr[0].ownerInfo.name);' +
        '   '#13#10'          '#13#10#13#10'  const sssss = await window.cryptoPro.create' +
        'Hash(MainForm.UniEdit5.getValue);  '#13#10'  MainForm.UniEdit8.setValu' +
        'e( sssss );  '#13#10#13#10'  '#13#10'  dataList = "";'#13#10'  for (let i = 0; i < new' +
        'Arr.length; i++) '#13#10'  {  '#13#10'    dataList = dataList + newArr[0].th' +
        'umbprint + '#39'\n'#39' + newArr[0].issuerInfo.company + '#39'\n'#39' + newArr[0' +
        '].ownerInfo.name;    '#13#10'  }  '#13#10'  MainForm.UniMemo1.setValue(dataL' +
        'ist);  '#13#10#13#10'}')
  end
  object UniEdit5: TUniEdit
    Left = 16
    Top = 77
    Width = 525
    Hint = ''
    Text = ''
    TabOrder = 9
  end
  object UniEdit4: TUniEdit
    Left = 16
    Top = 49
    Width = 297
    Hint = ''
    Text = #1089#1090#1088#1086#1082#1072', '#1082#1086#1090#1086#1088#1091#1102' '#1093#1086#1090#1080#1084' '#1087#1086#1076#1087#1080#1089#1099#1074#1072#1090#1100
    TabOrder = 10
  end
  object UniButton4: TUniButton
    Left = 16
    Top = 20
    Width = 293
    Height = 25
    Hint = ''
    Caption = #1055#1086#1076#1087#1080#1089#1072#1090#1100' '#1074' '#1050#1088#1080#1087#1090#1086#1055#1088#1086' '#1089#1090#1088#1086#1082#1091' '#1090#1077#1082#1091#1097#1077#1081' '#1087#1086#1076#1087#1080#1089#1100#1102
    TabOrder = 11
    ClientEvents.ExtEvents.Strings = (
      
        'click='#13#10'async function click(sender, e, eOpts)'#13#10'{'#13#10'  kkk = MainF' +
        'orm.UniEdit4.getValue();'#13#10'  console.log(kkk);'#13#10'  const sssss = a' +
        'wait window.cryptoPro.createHash(MainForm.UniEdit4.getValue);  '#13 +
        #10'  MainForm.UniEdit5.setValue( sssss );'#13#10'}')
  end
  object MTC: TFDMemTable
    AfterOpen = MTCAfterScroll
    AfterScroll = MTCAfterScroll
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 660
    Top = 128
    object MTCthumbPrint: TStringField
      FieldName = 'thumbPrint'
      Size = 300
    end
    object MTCissuerCompany: TStringField
      FieldName = 'issuerCompany'
      Size = 300
    end
    object MTCownerName: TStringField
      FieldName = 'ownerName'
      Size = 300
    end
  end
  object DS_MTC: TDataSource
    DataSet = MTC
    Left = 660
    Top = 180
  end
end
