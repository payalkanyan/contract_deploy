// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

// pragma solidity ^0.8.0;
// pragma solidity >=0.8.0 <0.9.0;

contract SimpleStorage {
    uint256 FavNumber;

    struct Person {
        uint256 favNumber;
        string name;
    }
    // uint256[] public anArray;
    Person[] public list_of_people;

    mapping(string => uint256) public name_to_fav_number;

    function store(uint256 _favNumber) public virtual {
        FavNumber = _favNumber;
    }

    function retrieve() public view returns (uint256) {
        return FavNumber;
    }

    function addPerson(string memory _name, uint256 _favNumber) public {
        list_of_people.push(Person(_favNumber, _name));
        name_to_fav_number[_name] = _favNumber;
    }
}
