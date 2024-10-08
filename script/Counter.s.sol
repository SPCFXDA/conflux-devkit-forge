// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract CounterScript is Script {
    Counter public counter;

    function setUp() public {}

    function run() public {
        // uint256 deployerPrivateKey = vm.envUint("PK");
        // vm.startBroadcast(deployerPrivateKey);
        vm.startBroadcast();
        counter = new Counter();
        console.log("Counter address: ", address(counter));
        counter.setNumber(69420);
        console.log("Counter number: ", counter.number());

        vm.stopBroadcast();
    }
}
