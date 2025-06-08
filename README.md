## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/DeployBasicNft.s.sol
$ forge script script/DeployMoodNft.s.sol
```

## Base64

To get the base64 of an image, you can use the following command:

```
echo "data:image/svg+xml;base64,$(base64 -i ./images/happy.svg)"
```

Then, you can get the base64 encoding of the json object by placing the imageURI into `happy_image_uri.json` then running:

```
echo "data:application/json;base64,$(base64 -i ./images/happy_image_uri.json)"
```

## Estimate gas

You can estimate how much gas things cost by running:

```
forge snapshot
```

And you'll see and output file called `.gas-snapshot`
