// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

// Data locations - storage, memory and calldata
//storage var is a state var
//call data is like memory but it can pnly be used for function inputs

contract DataLocations {
    struct MyStruct {
        uint foo;
        string text;
    }

    mapping(address => MyStruct) public myStructs;

    function examples(uint[] calldata y, string calldata s) external returns (uint[] memory) {
        myStructs[msg.sender] = MyStruct({foo: 123, text: "bar"});

        MyStruct storage myStruct = myStructs[msg.sender];
        myStruct.text = "foo";

        MyStruct memory readOnly = myStructs[msg.sender];
        readOnly.foo = 456;

        uint[] memory memArr = new uint[](3);
        memArr[0] = 234;
        return memArr;

    }
}