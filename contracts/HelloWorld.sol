//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract HelloWorld {
    string private name;

    constructor(string memory _name) {
        name = _name;
    }

    function sayName() public view returns (string memory) {
        return name;
    }

    function setName(string memory _name) public {
        name = _name;
    }
}
