// Primitive data types in sol are
// 1. `bool`
// 2. uint
// 3. int
// 4. address

pragma solidity ^0.8.3;

contract Primitives { 
    bool public boo = true;

    uint8 public u8 = 1;
    uint public u256 = 456;
    uint public u = 123; // unit is alias for uint

    // for negative numbers;
    int8 public i8 = -1;
    int public i256 = 256;
    int public i = -123;

    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c; // 20 bytes

    // default values
    // unassigned variables have a default value

    bool public defaultBoo; // false
    uint public defaultUint; // 0
    int public defaultInt; // 0
    address public defaultAddress; // 0x0000000000000000000000000000000000000000

}