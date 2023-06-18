async function click(sender, e, eOpts)
{

  console.log('Начало подключения');
  
  window.web3 = new Web3(window.ethereum);  
  await window.ethereum.request({ method: 'eth_requestAccounts' });
  
  console.log('Точка 1');

  window.accounts = await web3.eth.getAccounts();  
  window.acc0 = accounts[0];
  FrameMetaverse1.UniEditAccount.setValue(acc0);  
  
  balanceInWei   = await web3.eth.getBalance(acc0); 
  balanceInEther = web3.utils.fromWei(balanceInWei.toString(), 'ether');      
  window.accBalance0 = balanceInEther;
  FrameMetaverse1.UniEditBalance.setValue(accBalance0);
  
  console.log('Точка 2');
                 
  window.contractOwnerAddress = '0xBE8156D5a346c8099deac7b226A75c12c4dab035';
  window.contractAddress      = '0x477fcc8a41c1eEC9De86f60c6093685bdE531B5C';
               
  window.contractABI = [
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "x",
				"type": "uint256"
			},
			{
				"internalType": "uint256",
				"name": "y",
				"type": "uint256"
			}
		],
		"name": "Buy",
		"outputs": [],
		"stateMutability": "payable",
		"type": "function"
	},
	{
		"inputs": [],
		"stateMutability": "nonpayable",
		"type": "constructor"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": true,
				"internalType": "uint256",
				"name": "x",
				"type": "uint256"
			},
			{
				"indexed": true,
				"internalType": "uint256",
				"name": "y",
				"type": "uint256"
			},
			{
				"indexed": true,
				"internalType": "uint256",
				"name": "dt",
				"type": "uint256"
			},
			{
				"indexed": false,
				"internalType": "address",
				"name": "owner",
				"type": "address"
			},
			{
				"indexed": false,
				"internalType": "string",
				"name": "name",
				"type": "string"
			},
			{
				"indexed": false,
				"internalType": "bool",
				"name": "isForSale",
				"type": "bool"
			},
			{
				"indexed": false,
				"internalType": "uint256",
				"name": "price",
				"type": "uint256"
			}
		],
		"name": "EventDeal",
		"type": "event"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "x",
				"type": "uint256"
			},
			{
				"internalType": "uint256",
				"name": "y",
				"type": "uint256"
			},
			{
				"internalType": "bool",
				"name": "isForSale",
				"type": "bool"
			}
		],
		"name": "SetIsForSale",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "x",
				"type": "uint256"
			},
			{
				"internalType": "uint256",
				"name": "y",
				"type": "uint256"
			},
			{
				"internalType": "string",
				"name": "name",
				"type": "string"
			}
		],
		"name": "SetName",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "x",
				"type": "uint256"
			},
			{
				"internalType": "uint256",
				"name": "y",
				"type": "uint256"
			},
			{
				"internalType": "uint256",
				"name": "price",
				"type": "uint256"
			}
		],
		"name": "SetPrice",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "x",
				"type": "uint256"
			},
			{
				"internalType": "uint256",
				"name": "y",
				"type": "uint256"
			}
		],
		"name": "GetIsForSale",
		"outputs": [
			{
				"internalType": "bool",
				"name": "",
				"type": "bool"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "x",
				"type": "uint256"
			},
			{
				"internalType": "uint256",
				"name": "y",
				"type": "uint256"
			}
		],
		"name": "GetName",
		"outputs": [
			{
				"internalType": "string",
				"name": "_name",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "x",
				"type": "uint256"
			},
			{
				"internalType": "uint256",
				"name": "y",
				"type": "uint256"
			}
		],
		"name": "GetOwner",
		"outputs": [
			{
				"internalType": "address",
				"name": "",
				"type": "address"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "x",
				"type": "uint256"
			},
			{
				"internalType": "uint256",
				"name": "y",
				"type": "uint256"
			}
		],
		"name": "GetPrice",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			},
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"name": "Lands",
		"outputs": [
			{
				"internalType": "bool",
				"name": "isForSale",
				"type": "bool"
			},
			{
				"internalType": "uint256",
				"name": "price",
				"type": "uint256"
			},
			{
				"internalType": "string",
				"name": "name",
				"type": "string"
			},
			{
				"internalType": "address",
				"name": "owner",
				"type": "address"
			}
		],
		"stateMutability": "view",
		"type": "function"
	}
];









  console.log('Начало подключения контракта');
 
  window.contract_mv = new web3.eth.Contract(
    contractABI, 
    contractAddress); 

  console.log('Лог-02');
  console.log(contract_mv);
       
  console.log('Лог-03');


  contract_mv.methods.GetOwner(0,0).call((error, result) => {
  if (error) {
      console.error(error);
    } else {  
      console.log(result); 
      
      vn = web3.currentProvider.networkVersion;
      if (vn=1115111)
      {      
        FrameMetaverse1.EditContract.setValue(result);
      }                  
    }
  });

 
 /*
  result = await contract_mv.methods.returnArray.call({gas: 30000000000});
  console.log('result-1:');
  console.log(result);
 
  result = await contract_mv.methods.GetIsForSale(1,2).call({gas: 30000000000});
  console.log('result-2:');
  console.log(result);

  console.log('Лог-04');
*/

}