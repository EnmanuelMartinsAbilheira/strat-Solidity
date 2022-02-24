pragma solidity >= 0.8.1;

/*El contructor es una funcion especial declarada con la palabra clave constructor.
Es una funcion opcional y se utiliza para inicializar las variables de estado de un contrato.
Las siguientes son las caracteristicas principales de un contructor.

- Un contrato solo puede tener un contructor.
- un codigo contructor se ejecuta una vez cuando se crea el contratro y se utiliza para inicializar el estado del contrato.

-despues de la ejecucion del codigo incluye funciones publicas y codigo accesible a traves de funciones publicas.
    El codigo del constructor o cualquier metodo interno utilizado solo por el constructor no se incluye en el codigo final.

- Un contructor puede ser publico o interno.

- Un contructor interno marca el contrato como abstracto.

- En caso de que no se defina ningun constructor, el contrato incluye un constructor por defecto.
*/

contract Member{

    string name;
    uint age;

    //iniciar variables 
    constructor(string memory _name, uint _age) public {
        name = _name;
        age = _age;
    }

}
//informacion pre escrita
/*
contract Instructor is Member ('Enmanuel', 22){
    function getName() public view returns(string memory){
        return name;
    }
}
*/

//informacion dinamica
contract Instructor is Member{

    constructor(string memory n, uint a) Member(n, a) public {}

    function getName() public view returns(string memory){
        return name;
    }
}