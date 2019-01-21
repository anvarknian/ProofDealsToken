pragma solidity ^0.4.24;

import "./ERC721.sol";

contract Item is ERC721{
    
    struct Item{
        string name; // Name of the Item
        uint price; // Item price
        uint date;  // id for now is date
        string company;
        string paymentCheck;
    }
    
    Item[] public items; // First Item has Index 0
    address public owner;
    
    function Item() public {
        owner = msg.sender; // The Sender is the Owner; Ethereum Address of the Owner
    }
    
    function createItem(string _name, uint _price, uint _date, string _company, string _paymentCheck ,address _to) public{
        require(owner == msg.sender); // Only the Owner can create Items
        uint id = items.length; // Item ID = Length of the Array Items
        items.push(Item(_name,_price,_date,_company,paymentCheck));// Item ("Каток",200$,4122018)
        _mint(_to,id); // Assigns the Token to the Ethereum Address that is specified
    }
    
}