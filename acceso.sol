pragma solidity >= 0.8.1;

/*
El acceso re1stringido a un contrarto es una practica comun.

Por defecto, el estado de un contrato es de solo lectura a menos que se especifique como publico.

Podemos restringir quien puede modificar el estado del contrato o llamar a las funciones de un contrato utilizando

Contruyamos un contrato con acceso restringido modificando con las siguientes escrituras comunes

    onlyBy - solo la persona mencionada puede llamar a esta funcion.
 
    onlyAfter - llamada despues de cierto periodo de tiempo.

    costs - llama a esta funcion dsolo si se proporciona cierto valor.
*/

contract RestrictedAcces{

    address public owner = msg.sender;
    uint public creationTime = block.timestamp;

    modifier onlyBy(address _account){
        require(msg.sender == _account,
        'Sender not authorized');
        _;    
    }

    modifier onlyAfter(uint _time){
        require(block.timestamp >= _time,
        'function is called too early!');
        _;
    }

    // Escribir funcion que cambiara la direccion del dueño
    function changeOwnerAddress(address _newAddress) onlyBy(owner) public {
        owner = _newAddress;
    }

    // cEscribe una funcion para elñiminar el dueño
    function disown() onlyBy(owner) onlyAfter(creationTime + 5 weeks) public{
        delete owner;
    }

    modifier costs(uint _amount) {
        require(msg.value >= _amount,
        'Not enough Ether provided');
        _;
    }

    function forceChangerOwner(address newOwner) payable public costs(100 ether) {
        owner = _newOwner;
    }

}