pragma solidity >= 0.8.1;

contract Subasta{

    address payable public beneficiary;
    uint public auctionEndTime;

    //estado actual de la subasta
    address public highestBidder;
    uint public highestbid;
    bool ended;

    mapping(address => uint) pendingReturns;

    event highestBidIncreased(address bidder, uint amount);
    event auctionEnded(address winner, uint amount);

    constructor(uint _biddingTime, address payable _beneficiary){
        beneficiary = _beneficiary;
        auctionEndTime = block.timestamp + _biddingTime;
    }

}