// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//total payment for a transaction =  `gas spent` * `gas price`
// gas spendt is the total amout of `gas` used in transaction
// `gas price` is how much `ether` you are willing to pay per `gas`

// GAS Limit
// `gas limit` - max amount of gas willing to use for tx, (set by us)
// `block gas limit` - max amout of gas allowed in a block  (set by the network)

contract Gas {
    uint256 public i = 0;

    // Using up all of the gas that you send causes transaction to fail.
    // state changes are undone.
    // gas spent are not refunded.

    function forever() public {
        // here we run a loop until all of the gas spend
        while (true) {
            i += 1;
        }
    }
}
