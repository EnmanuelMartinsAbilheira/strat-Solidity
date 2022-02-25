pragma solidity >= 0.8.1;

/*
El mapeo es un tipo de refrerencia como los arrays dy los structs.
La siguiente es la sintaxis pára declarar un tipo de mapeo.
    mapping(_KeyType => _ValueType
Donde

_keyType - puede ser cualquier tipo incorporado, ademas de bytes y cadenas.
No se permite tipos de referencia ni objetos complejos.

_ValueType - puede ser cualquier tipo.

Consideraciones
Los mapeos puede ser marcxado como publico. Solidity crea automaticamente un getter para ello.
*/

contract aprendeMapping {

    mapping(address => uint) public miMap;

    function getAddress(address _addr) public view returns(uint){
        return miMap[_addr];
    }

    function setAddress(address _addr, uint _i) public {
        miMap[_addr] = _i;
    }

    function deleteAddress(address _addr) public {
        delete miMap[_addr];
    }


    mapping(uint => Movie) movie;
    mapping(address => mapping(uint => Movie)) public myMovie;

    struct Movie {
        string title;
        string director;
    }

    function addMovie(uint id, string memory title, string memory director) public{
        movie[id] = Movie(title, director);
    }

    function addMyMovie(uint id, string memory title, string memory director) public{
        myMovie[msg.sender][id] = Movie(title, director);
    }
}