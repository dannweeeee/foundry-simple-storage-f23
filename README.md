# Foundry Simple Storage
This is a Foundry Simple Storage Project that is part of Cyfrin Solidity Blockchain Course.

## Setup
Clone this Repository
```
git clone https://github.com/Cyfrin/foundry-simple-storage-f23
cd foundry-simple-storage-f23
```
## Deployment to a Testnet
Make sure you have a metamask or other wallet, and export the private key.

**IMPORTANT**

* USE A METAMASK THAT DOESNT HAVE ANY REAL FUNDS IN IT. Just in case you accidentally push your private key to a public place. I highly recommend you use a different metamask or wallet when developing.

* Export your private key and place it in your .env file, as done above.

* Go to Alchemy and create a new project on the testnet of choice (ie, Goerli)

* Grab your URL associated with the testnet, and place it into your .env file.

* Make sure you have testnet ETH in your account. You can get some here. You should get testnet ETH for the same testnet that you made a project in Alchemy (ie, Goerli)

**Run**
```
forge create --private-key <PRIVATE_KEY> --rpc-url <ALCHEMY_URL>
```
**Or, you can use a deploy script!**
```
forge script script/DeploySimpleStorage.s.sol --private-key <PRIVATE_KEY> --rpc-url <ALCHEMY_URL>
```