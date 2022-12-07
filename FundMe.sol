//SPDX-License-Identifier: MIT


pragma solidity ^0.8.0;


contract FundMe{
    //payable added to take and recieve etherium
    function fund() public payable{
        
        require(msg.value > 1e18 ,"Didnt send that much eth");
    }
    // function withdraw(){}
}