pragma solidity >= 0.8.1;

/*

Una funcion hash criptografica (CHF) es un algoritmo matematico que asigna datos de tamaño arbitrario
(a menudo llamado "mensaje") a una matriz de bits de un tamaño fijo (el "valor hash", "hash" o "cpmpendio de
es una funcion unidireccional, es decir, una funcion en la que es practicamente inviable invertir o invetir

Solidity tambien ofrecen funciones criptograficas incorporadas. Los Siguientes son metodos importantes:

keccak256(bytes memmory) devuelve (bytes32) - calcula el hash keccak-256 de la entrada.

sha256(bytes memory) devuelve (bytes32) - calcula el hash SHA-256 de la entrada.

ripemd160(bytes memory) devuelve (bytes20) - calcula el hash RIPEMD-160 de la entrada.

Keccak es una funcion de hash lider, diseñada por diseñadores no pertenecientes a la NSA. Keccak gano el 
Kennak es una famiilia de funciones de esponja criptograficas y esta diseñada como alternativa a SHA-256.

Ejercicio (asegurar la funcionalidad aleatoria de lña manipulacion de los mineros):

1.  Cree un contrato Oracle con un tipo de datos direccion llamado admin y un entero publico llamado rand.
2.  Cree un constructor y establezca el admin al llamador actual.
3.  Escribe una funcion que tome la entrada de un entero y establezca la variable de estado rand a ese entero
4.  Exigir que el llamador actual sea igual al admin
5.  Establecer el contrato oracle a una nueva variable llamada oracle en el contratro GenerateRandomNumber (
6.  Escribir un contructor en el contrato GenerateRandomNumber que establezca el oraculo a una direccion de  
7.  Modifica el retorno de hash para que los mineros de gran leccion la manipulacion de controil a la generac
8.  Despliegue con exito y pruebe los resultados.
.*/


contract Oracle {
    address admin;
    uint public rand;

    constructor() public {
        admin = msg.sender;
    }

    function feedRand(uint _rand) external {
        require(msg.sender == admin);
        rand = _rand;
    }

}


contract GenerateRandomNumber {
    Oracle oracle;

    constructor(address oracleAddress) {
        oracle = Oracle(oracleAddress);
    }

    // crear numero aleatorio
    // modulo (%) - por lo que calculando contra el resto seremos capaces de reproducir un numero aleatorio dentro de un rango
    function randMod(uint range) external view returns(uint){
        return uint(keccak256(abi.encodePacked(oracle.rand(), block.timestamp, block.difficulty, msg.sender))) % range;

    }

}