function eatHamburgers(string _name, uint _amount) {

}
//This is a function named eatHamburgers that takes 2 parameters: a string and a uint. For now the body of the function is empty.

//Note: It's convention (but not required) to start function parameter variable names with an underscore (_) in order to differentiate them from global variables. We'll use that convention throughout our tutorial.


// private function

function _addToArray(uint _number) private {
  numbers.push(_number);
}

// view function only reading from the blockchain
string greeting = "What's up dog";

function sayHello() public view returns (string) {
  return greeting;
}

// pure functions: no reading and no writing to blockhain
// also note that below is a private func with a diff naming convention
function _multiply(uint a, uint b) private pure returns (uint) {
  return a * b;
}

// internal and external functions

// internal is same as private function : the difference is making the function "internal" will allow you to call the function
// ...from outside contracts too

// external is same as public: the diff is, it can be ONLY called from outside the contract

// SIMPLY put:
// public: visible, calls allowed everywhere
// private: not visible, calls allowed only inside the contract
// internal: private, calls allowed externally too
// external: public, calls allowed ONLY externally

// multiple returns
// multiple returns are just like a tupple is being returned
// example if there is a function named "foo" that has return like this..
// return(uint a, uint b, string c, address d)
// (alpha, beta, gama, delta) = foo();

// We have visibility modifiers that control when and where the function can be called from:
// private means it's only callable from other functions inside the contract;
// internal is like private but can also be called by contracts that inherit from this one;
// external can only be called outside the contract;
// and finally public can be called anywhere, both internally and externally.

//We also have state modifiers, which tell us how the function interacts with the
//  BlockChain: view tells us that by running the function, no data will be saved/changed.
//  pure tells us that not only does the function not save any data to the blockchain, but it
//  also doesn't read any data from the blockchain. Both of these don't cost any gas to call
//  if they're called externally from outside the contract (but they do cost gas if called
//  internally by another function).

// Then we have custom modifiers, which we learned about in Lesson 3: onlyOwner and aboveLevel,
//  for example. For these we can define custom logic to determine how they affect a function.