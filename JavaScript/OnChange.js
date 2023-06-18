async function textchange(sender, oldText, newText, eOpts)
{

  arr = [];

  /*  
  
  Получение данных с помощью функций
  
  const funcGetInfo = async(x, y) => {

    result = await contract_mv.methods.GetName(y, x).call();
    str = "Name_"+y+"_"+x+"="+result;
    arr.push(str);

    result = await contract_mv.methods.GetOwner(y, x).call();
    str = "Owner_"+y+"_"+x+"="+result;
    arr.push(str);
    
    result = await contract_mv.methods.GetPrice(y, x).call();
    str = "Price_"+y+"_"+x+"="+result;
    arr.push(str);
    
    result = await contract_mv.methods.GetIsForSale(y, x).call();
    str = "IsForSale_"+y+"_"+x+"="+result;
    arr.push(str);
    
  };
  
  
  for (y=0; y<=2; y++)
    for (x=0; x<=4; x++)
      await funcGetInfo(y,x);
  
  console.log("arr:");
  console.log(arr);
  ajaxRequest(FrameMetaverse1.ButtonBlockChainReadState, "BC_Info", arr);   
  
  */
  
  
  // Filter for Events
  filter_options = {
    fromBlock: 0,
    toBlock: 'latest'
  };
      
  // Declare array
  const landArray = [];
  for (let i = 0; i < 10; i++) {
    landArray.push([]);
    for (let j = 0; j < 5; j++) {
      landArray[i][j] = {
        isForSale: false,
        price: 0,
        name: '',
        owner: ''
      };
    }
  }
  
         
  
  // Get all OLD events
  const events = await contract_mv.getPastEvents('EventDeal', filter_options); 
  sline = '';      
              
  // Обрабатываю события  
  events.forEach((event) => 
  {   
        rr = event.returnValues; 
        var sdate = new Date(rr.dt*1000);
        sline = sline + sdate.toISOString() 
        + '  Land[' + rr.y +';'+ rr.x+']'
        + '  Owner: '+rr.owner
        + '  Name: '+rr.name
        + '  IsForSale: '+rr.isForSale
        + '  Price: '+rr.price
        +'\n';         
        landArray[rr.x][rr.y].isForSale = rr.isForSale;
        landArray[rr.x][rr.y].price = rr.price;
        landArray[rr.x][rr.y].name  = rr.name;
        landArray[rr.x][rr.y].owner = rr.owner;
  });  
  for (y=0; y<=4; y++)
    for (x=0; x<=9; x++)
    {

    str = "Name_"+y+"_"+x+"="+landArray[x][y].name;
    arr.push(str);     
    
    ow = landArray[x][y].owner;
    if (ow=='') 
      ow=contractOwnerAddress;
    str = "Owner_"+y+"_"+x+"="+ow;
    arr.push(str);
    
    priceInWei = landArray[x][y].price;
    priceInEther = web3.utils.fromWei(priceInWei.toString(), 'ether');
    str = "Price_"+y+"_"+x+"="+priceInEther;
    arr.push(str);
    
    str = "IsForSale_"+y+"_"+x+"="+landArray[x][y].isForSale;
    arr.push(str);
    
    }             
  console.log("arr:");
  console.log(arr);
  ajaxRequest(FrameMetaverse1.ButtonBlockChainReadState, "BC_Info", arr);
        
                  
       
          
  // Подписываюсь на будущие события 
  currentBlock = await web3.eth.getBlockNumber();
  filter_options = {fromBlock: currentBlock};
  contract_mv.events.EventDeal(filter_options)
    .on('data', event => {
    
        rr = event.returnValues;  
        y = rr.y;
        x = rr.x;       
        arr = [];
        
        str = "Name_"+y+"_"+x+"="+rr.name;
        arr.push(str);
        
        ow = rr.owner;
        if (ow=='') 
          ow=contractOwnerAddress;
        str = "Owner_"+y+"_"+x+"="+ow;
        arr.push(str);
        
        priceInWei = rr.price;
        priceInEther = web3.utils.fromWei(priceInWei.toString(), 'ether');
        str = "Price_"+y+"_"+x+"="+priceInEther;
        arr.push(str);
        
        str = "IsForSale_"+y+"_"+x+"="+rr.isForSale;
        arr.push(str);  
        
        console.log("BC_One.arr:");
        console.log(arr);
        
        ajaxRequest(FrameMetaverse1.ButtonBlockChainReadState, "BC_Info", arr);          
          
    }  )
    .on('changed', changed => console.log(changed))
    .on('error', err => console.error(err))
    .on('connected', str => console.log(str));
           
}