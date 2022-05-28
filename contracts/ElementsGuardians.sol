//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract ElementsGuardians is ERC1155 {
    uint256 public constant WIND = 1;
    uint256 public constant FLAME = 2;
    uint256 public constant ICE = 3;
    uint256 public constant NATURE = 4;
    
    constructor() public ERC1155("https://ipsf.io/ipfs/bafybeifndxk2ofzzso2lduydslhzizly4wlk7zmyvxe3ok7f52pvdsjtaa/{id}.json") {
        _mint(msg.sender, WIND, 1, "");
        _mint(msg.sender, FLAME, 1, "");
        _mint(msg.sender, ICE, 1, "");
        _mint(msg.sender, NATURE, 1, "");
   }

   function uri(uint256 _tokenid) override public pure returns (string memory) {
        return string(
            abi.encodePacked(
                "https://ipfs.io/ipfs/bafybeifndxk2ofzzso2lduydslhzizly4wlk7zmyvxe3ok7f52pvdsjtaa/",
                Strings.toString(_tokenid),".json"
            )
        );
    }
}