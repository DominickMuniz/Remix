//Harmony ZKU - Background Assignment - Question B1

// SPDX-License-Identifier: MIT
//solidity version.
pragma solidity 0.8.7;
 

//create contract.
contract ZKU_Hello_World {

//declare variable called info.  
    uint256 info; 

//created function called setInfo which will use user
// input to initialize value of info variable.
    function setInfo( uint256 _info) public {
        info = _info;
    }

//created function that once called returns the stored value of
// the info variable. 
    function getInfo() public view returns (uint256) {
        return info;
    }


}
