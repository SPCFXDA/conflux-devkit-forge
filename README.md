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
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
devkit start

cast wallet import ONE --mnemonic "test test test test test test test test test test test junk" --mnemonic-derivation-path "m/44'/60'/0'/0/0"

cast w address --account ONE

result: 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266

devkit faucet 1000 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266

cast balance  0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266

forge script script/Counter.s.sol:CounterScript --rpc-url http://localhost:8545 --broadcast --account ONE --sender 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266