// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// ** to write or update a state variable we ned to send a transaction
// can wriet state variables for free
contract ModifyState {
    // state variable
    uint256 public num;

    // not free, requires transaction
    function set(uint256 _num) public {
        num = _num;
    }

    function get() public view returns (uint256) {
        return num;
    }
}
