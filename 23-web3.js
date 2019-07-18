// boiler plate for users to tell to have metamask to use our DAPP

function startApp() {
  var theContract = new web3js.eth.Contract(ABI, AddressOFtheContract);
}

window.addEventListener('load', function() {
  // Checking if Web3 has been injected by the browser (Mist/MetaMask)
  if (typeof web3 !== 'undefined') {
    // Use Mist/MetaMask's provider
    web3js = new Web3(web3.currentProvider);
  } else {
    // Handle the case where the user doesn't have web3. Probably
    // show them a message telling them to install Metamask in
    // order to use our app.
  }

  // Now you can start your app & access web3js freely:
  startApp();
});

// for your browser to talk to blockchain u need something called "providers", which is
// provided by many services like infura or metamask

// u need to give 2 things to ur web3 provider -
// 1. Contract Address: address on the ethereum blockchain
// 2. ABI: Application Binary Interface: which is something given by ethereum when  u  compile ur solidity code
