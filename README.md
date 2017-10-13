# Cleveland Coin

ClevelandCoin (`CLE`) is a new Ethereum ERC20 formed in Cleveland, OH, at the
[Crypto Cleveland Meetup](https://www.meetup.com/Crypto-Cleveland/).
It has been developed as a resource to learn how to create Ethereum contracts,
and the goal is to continue researching and adding features until the community
is comfortable releasing the token on the main Ethereum blockchain, by doing an
ICO.

## Getting Started

These instructions will get you a copy of the project up and running on your
local machine for development and testing purposes.

### Prerequisites

What things you need to install the software and how to install them

* NodeJS / NPM:
  * https://nodejs.org/en/download/package-manager/
* Yarn
  * https://yarnpkg.com/en/docs/install
* ethereumjs-testrpc
  * https://github.com/ethereumjs/testrpc
* Truffle:
  * http://truffleframework.com/
* MetaMask
  * https://metamask.io/

### Installing

After cloning this repository and installing the above dependencies, perform

```
$ yarn install
```

to get the `zeppelin-solidity` boilerplate project files installed. In a new
terminal window, start

```
$ testrpc
```

which starts a new local ethereum blockchain running on `localhost:8545`. You'll
see some output like the following:

```
EthereumJS TestRPC v4.1.3 (ganache-core: 1.1.3)

Available Accounts
==================
(0) 0x2a500247d0a0770e0c71d435f4b84d15fe19d7d3
(1) 0x4199984a9385cdda8440c578f07eb5ee0f29a053
...

Private Keys
==================
(0) 3cbd4919c7b143d50b1edbe29110e4ae176a783c81f5b69c6dbb4f939a73b1e0
(1) b10f6b42990de4c3bfb4dc5cdafa63199c0a1d3aac7703298514cf32757f7e57
...

HD Wallet
==================
Mnemonic:      predict abandon immune breeze movie divide seminar frost tragic
grunt lonely monitor
Base HD Path:  m/44'/60'/0'/0/{account_index}

Listening on localhost:8545
```

Take note of the `Mnemonic` seed, you'll need it when you setup MetaMask.

Next, perform

```
$ truffle compile
$ truffle migrate
```

which will deploy the contract onto your local ethereum blockchain.

You should see some output like the following:

```
Running migration: 1_initial_migration.js
  Deploying Migrations...
  ... 0xc5e7ab7a26714c17cacd2c7f1e40a80f1af61f99aeaea37e6375ea9f9a763bc5
  Migrations: 0xa7bed269f540f687e2ce16a028be1d97f710cee0
Saving successful migration to network...
  ... 0xa66a64cd76d4c454ab97f7da754737cf87c280534c13e9a72ec4725ad33d6246
Saving artifacts...
Running migration: 2_deploy_contracts.js
  Deploying ClevelandCoin...
  ... 0x0502076951d556e9e697b3807ea82099d65af7f2df2470b96ee89727aa88eb6c
  ClevelandCoin: 0xe727f76b086e0881809a8d834a6d7947aafbf344
Saving successful migration to network...
  ... 0xf65cafc6f8cdc4ca736d80265152543ca989f1a525d3ea5bc696cfa70458d542
Saving artifacts...
```

Take note of the line `ClevelandCoin: 0xe727f76b086e0881809a8d834a6d7947aafbf344`
This is the address that the `ClevelandCoin` contract was deployed to.

Open Chrome, navigate to `https://wallet.ethereum.org`. Open the MetaMask
extension and "Restore from Seed Phrase", using the Mnemonic seed from above.
Also, make sure that MetaMask is pointing at `localhost:8545`, which can be
configured from the dropdown in the top-left corner of MetaMask's window.

In the ethereum wallet browser in Chrome, navigate to the "Contracts" tab, scroll
to the bottom, and click "Watch Token". Copy the contract address that
`truffle migrate` gave you (`0xe727f76b086e0881809a8d834a6d7947aafbf344` in this
example), and click "OK".

If all went well, you should see the `ClevelandCoin` token with a balance of
216,000,000 CLE!

Use MetaMask to create new accounts (which will match the accounts that `testrpc`
displayed to you upon startup - thank the Mnemonic seed phrase for that), switch
between them, and send tokens back and forth using the Ethereum Web Wallet.

## Running the tests

From the project directory

```
$ truffle test
```

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of
conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](semver.org) for versioning. For the versions available, see the
tags on this repository.

## Authors

* Adam Gall - _Initial work_

See also the list of contributors who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md)
file for details

## Acknowledgments

* [Crypto Cleveland](https://www.meetup.com/Crypto-Cleveland/)
