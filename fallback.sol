pragma solidity >= 0.8.1;

/*
Definir las funciones de reserva:
1.  No puede tener un nombre (anonimo)
2.  No toma ninguna entrada
3.  No devuelve ninguna salida
4.  Debe ser declarado como externo 

¿Por que utilizarlo? Cuando se llama a funciones que no existen - o se envia eter a un contrato mediante send, transfer o call

Enunciado: el metodo de envio y transferencia recibe 2300 gas pero el metodo de llamada recibe mas (todo el gas)

*/

contract Fallback {

    event Log(uint gas);
    fallback () external payable {
        emit Log(gasleft()); //gasleft - funciones de solidity, retorna cuanto gas queda
    }

    function getBalance() public view returns(uint){
        return address(this).balance;
    }

}

// el nuevo contrato enviara el eter al contrarto Fallback que activara las funciones fallback

contract SendToFallBack {

    function transferToFallBack(address payable _to) public payable {
        // enviar ether con metodo transfer
        _to.transfer(msg.value);
    }

    function callFallBack(address payable _to) public payable {
        // enviar ether al metodo fallback
        (bool sent,) = _to.call{value:msg.value}('');
        require(sent, 'Failed to send!');
    }
}