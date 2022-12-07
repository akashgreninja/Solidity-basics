//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;




contract SimpleContract{
    uint256 public HelloWorld;
    People public person=People({
        favnumber:2,name:"akash"
    });
    mapping(string =>uint256) public nametofavnumber;

    function store(uint256 _favnumber)public virtual{
        HelloWorld=_favnumber;
        // HelloWorld=HelloWorld+1;
        retrieve();
    }
 
    struct People{
        uint256 favnumber;
        string name;
    }

    //Arraya
    // uint256[] public favnumber;
    People[] public people;

    function retrieve() public view returns(uint256){
        return HelloWorld;
    }
       function addperson (string memory _name,uint256 _favnumber)public{
        people.push(People({favnumber:_favnumber,name:_name}));
        // nametofavnumber[_name]=_favnumber;
      

    }
}

//0xd9145CCE52D386f254917e481eB44e9943F39138