pragma solidity ^0.4.4;
import "./zeppelin/StandardToken.sol";


contract ClevelandCoin is StandardToken {
  string public name = 'ClevelandCoin';
  string public symbol = 'CLE';
  uint public decimals = 0;
  uint public INITIAL_SUPPLY = 216000000;

  function ClevelandCoin() {
    totalSupply = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
  }
}
