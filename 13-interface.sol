pragma solidity ^0.5.8;

// for our contract to talk to other contract
// we need something called interface

contract AnInterface {
    function A_func_in_contract(uint _something) public returns (string somethng);
}

contract MyCon {
    // lets the the address of the contract that we want to use
    address contAddress = 0xe.....;
    // the above is the address of the contract in the etherem blockchain
    // Update: in general, this isn't hardcoded. Because it can happen that the address may be obsoltee


    AnInterface InstaceOfContract = AnInterface(0xe...);
    //Update :
    AnInterface InstanceOfContract

    // function to set it;
    function setAdress (address _address) external {
        InstanceOfContract  = AnInterface(_address);
    }

    // now InstanceOfContract will be used by us to access functions
    string SomethingFromFunc = InstanceOfContract.A_func_in_contract(123);

    // to summarise things
    // we create an instance of the contract using its address through an interface we created;
    // the interface contains the names of the functions we need;
}