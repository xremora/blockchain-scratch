// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// fixed
// dynamic arrays

contract Array {
    // intialize

    uint256[] public arr;
    uint256[] public arr2 = [1, 2, 3];

    // fixed
    uint256[10] public myfixedArr;

    function get(uint256 i) public view returns (uint256) {
        return arr[i];
    }

    // append
    function push_and_pop(uint256 i) public {
        arr.push(i);
        // arr.pop();
    }

    function getLength() public view returns (uint256) {
        return arr.length;
    }

    function remove(uint256 index) public {
        // does not change the lenght of array
        // resets the value at index to it's default value(0th index).
        delete arr[index];
    }
}

contract CompactArray {
    uint[] public arr;

    // deleteing an element creates a gap in the array
    // one trick to keep the array compact is to move the last element into palce to detele
    function remove (uint index) public {
        // move the last element into the place to delete
        arr[index] = arr[arr.length - 1];
        arr.pop();
    }

    function test() public {
        arr.push(1);
        arr.push(2);
        arr.push(3);
        arr.push(4);
        // [1,2,3,4]

        remove(1);
        // [1,4,3]
        remove(2);
    
    }
}