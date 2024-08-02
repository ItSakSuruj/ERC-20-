const hre = require("hardhat");

async function main() {

  //staking contract
  const tokenStaking = await hre.ethers.deployContract("TokenStaking");
  await tokenStaking.waitForDeployment();

  //staking contract
  const theblockchaincoders = await hre.ethers.deployContract("@theblockchaincoders");
  await theblockchaincoders.waitForDeployment();


 

  console.log(` STACKING: ${tokenStaking.target}`);
  console.log(` TOKEN: ${theblockchaincoders.target}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});


