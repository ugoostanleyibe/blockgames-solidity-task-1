// SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

contract HelloWorld {
    string public name;

    constructor(string memory startingName) {
        name = startingName;
    }

    function setName(string memory newName) public {
        name = newName;
    }

    function getName() public view returns (string memory) {
        return name;
    }

    function getGreeting() public view returns (string memory) {
        return string(abi.encodePacked("Hello, ", name, "!"));
    }
}