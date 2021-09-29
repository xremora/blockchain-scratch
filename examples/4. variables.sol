// there are 3 types of variables in solidity
// 1. local - declared inside a function, not stored on the blockchain
// 2. state - declared outside the function, stored on blockchain
// 3. global (provides info about the blockchain)

pragma solidity ^0.8.3;

contract Variables {
    // state variables are stores on blockchain
    string public text = "hello world";
    uint256 public num = 123;

    function someTask() public view {
        // Local variables are not saved to blockchain
        uint256 i = 456;

        // here are some of the global variables
        uint256 timestamp = block.timestamp;
        address sender = msg.sender;
    }
}
