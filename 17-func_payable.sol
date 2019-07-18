pragma solidity ^0.5.8;

// payable is the key word here
function foo(uint _name) external payable {
    require(msg.sender == 0.1 ether);
    // execute some code
}

// contract to withdraw Money

contract WithDraw is Ownable{
    function getMoney() external onlyOwner {
        owner().transfer(address(this).balance);
        // will send all the ether in the contract to the owner
        // that transfer should have been receive :P
    }

    // if u want to return
    msg.sender.transfer(0.01 ether);
}