var ClevelandCoin = artifacts.require("../contracts/ClevelandCoin.sol");

module.exports = function(deployer, network) {
  deployer.deploy(ClevelandCoin, process.env.ORACLE_ADDRESS);
};
