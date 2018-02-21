pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Monto is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Monto(address _owner)  UpgradeableToken(_owner) {
    name = "Monto";
    symbol = "MOT";
    totalSupply = 25000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}