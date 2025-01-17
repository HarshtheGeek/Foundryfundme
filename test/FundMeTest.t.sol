// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {FundMe} from "../src/FundMe.sol";

contract FundMeTest is Test {
    FundMe fundme;

    function setUp() external {
        fundme = new FundMe();
    }

    function MinimumDollarIsEqualToFive() public view {
        console.log("Test is running");
        assertEq(fundme.MINIMUM_USD(), 5e18);
    }
}
