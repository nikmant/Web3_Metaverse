
function simple_func()
{
    console.log("какая-то строчка полезная 1");
    return "какая-то строчка полезная 2";
}

function simple_func_async()
{    
    console.log("какая-то строчка полезная 1");
    return new Promise((resolve, _) => {
        resolve("какая-то строчка полезная 2");
    });     
}

function connect_to_contract_mv2()
{    
    console.log("какая-то строчка полезная 1");
    return new Promise((resolve, _) => {
        resolve("какая-то строчка полезная 2");
    });     
}


function connect_to_contract_mv()
{
	console.log("какая-то строчка полезная 1");
    return new Promise((resolve, _) => {
      
  console.log('Start Начало лога');
 
  const accounts = await web3.eth.getAccounts();   
  const acc0 = accounts[0];
  
  console.log('Лог-01');

  window.contract_mv = new web3.eth.Contract(
    contractABI, 
    contractAddress); 

  console.log('Лог-02');
  console.log(contract_mv);
       
  contract_mv.methods.GetName(1,1).call((error, result) => {
  if (error) {
      console.error(error);
    } else {  
      console.error(result);      
      FrameMetaverse1.UniEdit12.setValue(result);
    }
  });
  
  console.log('Лог-03'); 
 
     }); 
	 
}



