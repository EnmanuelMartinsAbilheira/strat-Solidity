pragma solidity >= 0.8.1;

contract especiales{

    /*
    Las variables especiales son variables disponibles globalmente y proporcuionan informacion sobre el blockchain.
    La siguiente es la lista de variables especiales*/

    mapping(address => uint) balance;

    function updateBalance(uint newBalance) public {
        balance[msg.sender] = newBalance;
    }

}