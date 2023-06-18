async function textchange(sender, oldText, newText, eOpts)
{
  balanceInWei   = await web3.eth.getBalance(acc0); 
  balanceInEther = web3.utils.fromWei(balanceInWei.toString(), 'ether');      
  window.accBalance0 = balanceInEther;
  FrameMetaverse1.UniEditBalance.setValue(accBalance0);
}