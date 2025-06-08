// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {MoodNft} from "../src/MoodNft.sol";
import {console} from "forge-std/console.sol";
import {Base64} from "@openzeppelin/contracts/utils/Base64.sol";

contract DeployMoodNft is Script {
    function run() external returns (MoodNft) {
        string memory sadSvgUri = vm.readFile("./images/sad.svg");
        string memory happySvgUri = vm.readFile("./images/happy.svg");

        vm.startBroadcast();
        MoodNft moodNft = new MoodNft(
            svgToImageURI(sadSvgUri),
            svgToImageURI(happySvgUri)
        );
        vm.stopBroadcast();
        console.log("MoodNft deployed to:", address(moodNft));
        return moodNft;
    }

    function svgToImageURI(string memory svg) internal pure returns (string memory) {
        string memory base64Svg = Base64.encode(bytes(string(abi.encodePacked(svg))));
        return string(abi.encodePacked("data:image/svg+xml;base64,", base64Svg));
    }
}
