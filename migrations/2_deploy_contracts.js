var ClevelandCoin = artifacts.require("./ClevelandCoin.sol");

module.exports = function(deployer) {
  deployer.deploy(ClevelandCoin);
};
