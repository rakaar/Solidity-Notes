pragma solidity ^0.5.8;

// modifiers are functions like things that allows to modify the functions
// an example would  be ...

contract Sample {

    address owner;

    modifier sampleMod { // note modifiers can also take arguments
        require(msg.sender == owner);
        _;
        // the _; thing will tell to execute the rest of the code of the function after the require is successful
    }

    function SomeAnotherFun(uint _id)  public sampleMod {
        // function code here
        // this function code will execute if and only if tbe sampleMod is successful
    }


}

// some key points
//  So it's important to remember that just because a DApp is on Ethereum does not
//  automatically mean it's decentralized — you have to actually read the full source
//  code to make sure it's free of special controls by the owner that you need to
//  potentially worry about. There's a careful balance as a developer between maintaining
//  control over a DApp such that you can fix potential bugs, and building an owner-less
//   platform that your users can trust to secure their data.

