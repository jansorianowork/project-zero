//SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    // function deploy() public returns (address) {
    //     address simpleStorage = address(new SimpleStorage());
    //     return simpleStorage;
    // }
    function run() external returns (SimpleStorage) {
        vm.startBroadcast();
        SimpleStorage simpleStorage = new SimpleStorage();
        vm.stopBroadcast();
        return simpleStorage;
        // console.log("SimpleStorage deployed at:", address(simpleStorage));
    }
}
