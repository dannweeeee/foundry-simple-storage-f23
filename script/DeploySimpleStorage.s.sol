//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol"; // from the forge-std script library to let the contract know that it is a script
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    function run() external returns (SimpleStorage) {
        // the main function command that gets called when we deploy our contract
        // vm is a special keyword in the forge-std library, only able to use in Foundry. It is considered a cheatcode
        vm.startBroadcast(); // startBroadcast() means everything after this line inside the function will be sent to the RPC
        SimpleStorage simpleStorage = new SimpleStorage(); // broadcast sends transaction to create a new SimpleStorage contract
        vm.stopBroadcast(); //  stopBroadcast() means everything before this line will be sent to the RPC, and the broadcast stops here
        return simpleStorage;
    }
}
