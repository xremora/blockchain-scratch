// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// custom data type

// can be declared outside of a contract and imported in another conract.
// eg: import './examples/structDefiination.sol'

contract Todos {
    struct Todo {
        string text;
        bool completed;
    }

    // an array of `Todo` struct
    Todo[] public todos;

    function create(string memory _text) public {
        // 3 ways to initialize a struct

        // 1st method
        todos.push(Todo(_text, false));

        // 2nd method
        todos.push(Todo({text: _text, completed: false}));

        // 3rd method
        // initize an empty struct and then update it
        Todo memory todo;
        todo.text = _text;
        // todo.completed initizlied to false
        todos.push(todo);
    }
}
