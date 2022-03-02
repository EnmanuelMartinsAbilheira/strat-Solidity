pragma solidity >= 0.8.1;

/*

*/

contract eventos {

    event NewTrade(
        uint indexed date;
        address from;
        address indexed to;
        uint indexed amount;
    )

    function trade(address to, uint amount) external{
        //p´rogram,as externos pueden leer este contrato a tarvez de web3.js
        emit NewTrade(block.timestamp, to, amount)
    }

}