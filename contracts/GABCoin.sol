pragma solidity ^0.5.0; 

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Mintable.sol";

/// @author Sergio Casizzone

contract GABCoin is ERC20, ERC20Detailed, ERC20Mintable {
	uint private INITIAL_SUPPLY = 1e9;
	
	constructor() ERC20Mintable() ERC20Detailed("GabCoin Token", "GAB", 2) ERC20() public {
	    _mint(msg.sender, INITIAL_SUPPLY);
	}
}
