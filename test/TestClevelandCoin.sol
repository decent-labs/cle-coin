pragma solidity ^0.4.2;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/ClevelandCoin.sol";

contract TestClevelandCoin {

  function testInitialBalanceUsingDeployedContract() {
    ClevelandCoin cle = ClevelandCoin(DeployedAddresses.ClevelandCoin());

    uint expected = 10000;

    Assert.equal(cle.getBalance(tx.origin), expected, "Owner should have 10000 ClevelandCoin initially");
  }

  function testInitialBalanceWithNewClevelandCoin() {
    ClevelandCoin cle = new ClevelandCoin();

    uint expected = 10000;

    Assert.equal(cle.getBalance(tx.origin), expected, "Owner should have 10000 ClevelandCoin initially");
  }

}
