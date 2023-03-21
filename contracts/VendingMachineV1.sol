// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract VendingMachineV1 is Initializable {
    uint public numSodas;
    address public owner;

    function initialize(uint _numSodas) public initializer {
        numSodas = _numSodas;
        owner = msg.sender;
    }

    function purchaseSoda() public payable {
        require(msg.value >= 1000 wei, "You must pay 1000 wei for a soda!");
        numSodas--;
    }
}

// proxy: 0x4273072be0A43243D138a26aFaA01f907E0e2495
// implementation: 0xbe9A5066860D5F3A3B129d5E1529E14cFDd28b13
