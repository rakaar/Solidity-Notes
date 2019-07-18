pragma solidity ^0.4.25;

// SafeMath is a openZeplin's library to prevent "overflows" and "underflows"

// Overflow
// unit8 a; suppose a exceeds the value 2^8 - 1; ITS AN OVERFLOW

//Underflow
// unit8 a = 0; unit8 b = a-1; its an underflow

using SafeMath for unit8;

unit8 a = 3;

unit8 b = a.add(2); //5
unit8 b = a.sub(2); //1
unit8 b = a.mul(2); //6
unit8 b = a.div(2); //1.5

