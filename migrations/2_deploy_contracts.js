const gN = artifacts.require("generateRandomNumber");

module.exports = function (deployer) {
  deployer.deploy(gN);
};
