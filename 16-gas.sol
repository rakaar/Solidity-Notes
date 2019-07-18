pragma solidity ^0.5.8;

// The creators of Ethereum wanted to make sure someone couldn't clog up the network with an
// infinite loop, or hog all the network resources with really intensive computations. So they
// made it so transactions aren't free, and users have to pay for computation time as well as storage.

// to save gas, one can do the following things:
// 1. inside structs one can use small size uint like uint 32; if there are multiple things of such kind
// 2. clustring things together like
// uint32 a; uint b; uint32 c; requires more gas than uint32 a;uint32 c; uint b;

// gas is free for  "external and view functions"
// the above is true because reading data from the blockchain doesn't create any transaction on blockchain
// however "internal view" costs charges

// another method for saving gas is to use memory variables rather than storage
// sometimes u need to call  a temporary(memory) array to return multiple things
// whose syntax is
uint[] memory arr = new uint[](3);
// 3 is the length of the array