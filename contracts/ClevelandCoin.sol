pragma solidity 0.4.24;

import "./zeppelin/StandardToken.sol";


contract ClevelandCoin is StandardToken {
  string public name = "ClevelandCoin";
  string public symbol = "CLE";
  uint public decimals = 18;
  uint public totalSupply = 216000000 * (10 ** decimals);

  constructor () public {
    balances[msg.sender] = totalSupply;
  }
}
