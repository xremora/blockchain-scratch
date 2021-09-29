// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// for loop
// while loop
// do while loop

// infinite loop can hit gas limit

contract Loop {
    function loop() public pure {
        // for loop
        for (uint256 i = 0; i < 10; i++) {
            if (i == 3) {
                // skip to the next iteration
                continue;
            }
            if (i == 5) {
                // exit the loop
                break;
            }
        }
        // while loop
        uint256 j;
        while (j < 10) {
            j++;
        }
    }
}
