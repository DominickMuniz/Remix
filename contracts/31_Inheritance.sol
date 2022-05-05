// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract A {
    function foo() public pure virtual returns (string memory) {
        return "A";
    }

    function bar() public pure virtual returns (string memory) {
        return "A";
    }
    // more code here
}


    contract B is A {
    function foo() public pure override returns (string memory) {
        return "A";
    }

    function bar() public pure override returns (string memory) {
        return "A";
    }
    // more code here        
}