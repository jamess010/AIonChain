const ModelRepo = artifacts.require("ModelRepo");

module.exports = function(deployer) {
  deployer.deploy(ModelRepo);
};
