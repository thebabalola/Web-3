// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;
 //stating our solidity version

contract SimpleStorage {

    // -- BASIC VARIABLE TYPE:  BOOLEAN, UINT, INT, ADDRESS, BTYES --
    bool isFavouriteNumber = true;  //this is a boolean variable
    uint256 favouriteNum = 88;

    int256 favourNum = -56;
    string favornum = "string num";

    address myAddress = 0x2e7e2f04285Ae3D08ec78836107715EE49E8885e;
    bytes32 fovouriteBytes32 = "cat";   //strings and bytes are literally the same thing
    

    // ARRAY
    uint256[] listofFavNum; //arrays of data
    // Person[3] private numOfPeople;  //static array of struct Person(i.e not more than 3 persons to be added)

    // Struct
    struct Person {
        uint256 age;
        string name;
    }

    Person public personPat = Person(2, "pat"); //instance of struct Person
    Person public personJohn = Person(15, "john");
    Person public personGift = Person({age: 9, name: "gift"});


    //dynamuc array & arrays of struct
    Person[] public listOfPersons; 



    // -- PUBLIC VIEW VARIABLE & FUNCTIONS --
    uint256 public favouriteNumber ; //help view changes or data store into the variable, under the deployed contract section


    function store(uint256 _favNum) public {
        favouriteNumber = _favNum;
    } 

    //pure view
    function retrieve() public view returns (uint256) {
        return favouriteNumber;
    }

    /// function to add persons (arrays of struct)
    function addPersons(uint256 _age, string memory _name) public { 
        listOfPersons.push(Person(_age, _name));
    }


}

// 0xd9145CCE52D386f254917e481eB44e9943F39138

/*  Recommended AI engines 
    - Chatgpt
    - phind

    - Github Discussion

    - Stack Exchange Ethereum
    - Peeranha
*/