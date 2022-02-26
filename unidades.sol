pragma solidity >= 0.8.1;

contract unidades{

    //wei es la denominacion mas pequeña de ether
    assert(100000000000000000 wei == 1 ether); // 10^18wei = 1eth
    assert(1 wei == 1); // 1 wei = 1

    assert(1 ether == 1e18);

}