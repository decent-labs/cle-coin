var ConvertLib = artifacts.require("./ConvertLib.sol");
var ClevelandCoin = artifacts.require("./ClevelandCoin.sol");

module.exports = function(deployer) {
  deployer.deploy(ConvertLib);
  deployer.link(ConvertLib, ClevelandCoin);
  deployer.deploy(ClevelandCoin);
};
