// call and send are two methods in web3 which can be used to read and write data to the blockchain

// lets say there is a  sampleContract(a contract) and u want to call a function foo in the contract
sampleContract.methods.foo('random params').call();

// if it was to send some data
sampleContract.methods.baz('some random params').send();

// suppose u want to view something
// if a variable is named public there is a function created by its name to fetch details

sampleContract.methods
  .variableArr(id)
  .call()
  .then(res => console.log(res));

// to see the account used in meta mask
var userAcc = web3.eth.accounts[0];
