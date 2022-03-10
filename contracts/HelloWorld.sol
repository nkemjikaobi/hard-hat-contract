//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract HelloWorld {
    string private name;

    constructor(string memory _name) {
        console.log("Deploying a Hello World Contract with name:", _name);
        name = _name;
    }

    function sayName() public view returns (string memory) {
        return name;
    }

    function setName(string memory _name) public {
        console.log("Changing name from '%s' to '%s'", name, _name);
        name = _name;
    }
}
