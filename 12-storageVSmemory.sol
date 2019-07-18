pragma solidity ^0.5.8;

// storage is permanent in the blockchain
// memory is something that is stored temporarily, like variables in the function, which are cleared as soon the function call ends

// example given in the tut
contract SandwichFac {
    struct Sandwich {
        string name;
        string status;
    }
    Sandwich[] sandwiches ;// an array of Sandwich structs

    function eatSandwich(uint _index) public {
        Sandwich mySandwich = sandwiches[_index];
        // the above will throw an error, asking ...
        // it to be declared either storage or memory

        Sandwich storage mySandwich = sandwiches[_index];
        // the above will mySandwich is a pointer to the sandwiches[_index]
        // if u do something like this
        mySandwich.status = "eaten";
        // it will be changed in the array also; since its a pointer not a copy


        // now if choose the memory path
        // we will just a copy in this case
        Sandwich memory memoryMySandwich = sandwiches[_index];

        // if u do something like
        memoryMySandwich.status = "eaten";
        // it will be modified in the copy not in the original array
        // but later u can always do, if you desire change in the array too;
        sandwiches[_index] = memoryMySanwich;

    }
}