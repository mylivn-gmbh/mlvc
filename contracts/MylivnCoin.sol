// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";

/// @custom:security-contact support@mylivn.com
contract MylivnCoin is ERC20, ERC20Burnable, ERC20Permit {
    constructor() ERC20("Mylivn Coin", "MLVC") ERC20Permit("Mylivn Coin") {
        _mint(msg.sender, 1000000000 * 10 ** decimals());
    }
}
