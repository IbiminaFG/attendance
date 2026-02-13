// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {StudentAttendance} from "../src/StudentAttendance.sol";

contract CounterScript is Script {
    StudentAttendance public attendance;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        attendance = new StudentAttendance();

        vm.stopBroadcast();
    }
}
