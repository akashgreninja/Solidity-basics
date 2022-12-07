//SPDX-License-Identifier: MIT


pragma solidity ^0.8.0;

import './simpleStorage.sol';




contract StorageFactory{
    SimpleContract[] public newclassArray;
    function createSimpleContract() public{
       SimpleContract  simstor=new SimpleContract();
        newclassArray.push(simstor);
    }

    function sfstore (uint256 _simplestorageindex,uint256 _simpleStorageNumber) public{
        
        // SimpleContract simstor=newclassArray[_simplestorageindex];
        // simstor.store(_simpleStorageNumber);
        return newclassArray[_simplestorageindex].store(_simpleStorageNumber);


    }
    function sfget(uint256 _simpleStorageIndex) public view returns(uint256) {
      return  newclassArray[_simpleStorageIndex].retrieve();
        
    }
}