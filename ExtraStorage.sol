//SPDX-License-Identifier: MIT


pragma solidity ^0.8.0;


import './simpleStorage.sol';
contract ExtraStorageContract is SimpleContract{
    function store(uint256 _favnumber)public override{
        HelloWorld=_favnumber+5;
        // HelloWorld=HelloWorld+1;
        // retrive();
    }
}