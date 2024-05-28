// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import "../src/Test404.sol";

contract Test404Script is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        address _owner = vm.envAddress("OWNER_ADDRESS");
        Test404 test404 = new Test404(_owner);
        Test404(address(test404)).setDataURI("https://raw.githubusercontent.com/RenKoya1/404/main/");
        Test404(address(test404)).setWhitelist(_owner, true);
        vm.stopBroadcast();
    }
}
