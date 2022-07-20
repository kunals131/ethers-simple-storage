//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract SimpleStorage {
    uint256 favouriteNumber; //stored in storage by default

    //mappings by default all string keys have value 0
    mapping(string => uint256) public nameToFavouriteNumber;

    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }

    //view functions doent require any gas fee
    //view functions dont allow moidification of data

    function retrieve() public view returns (uint256) {
        return favouriteNumber;
    }

    //There is another type called pure, they dont even allow reading the data also doesnt require gas fee
    //they dont allow customization they are indenedent function dont change anything dnt read anything

    function add() public pure returns (uint256) {
        return (1 + 1);
    }

    People[] public people;

    struct People {
        uint256 favouriteNumber;
        string name;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        people.push(People({favouriteNumber: _favouriteNumber, name: _name}));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }

    //Mappings :
}
