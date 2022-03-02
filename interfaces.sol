pragma solidity >= 0.8.1;

/*
La interfaces son similares a los contratos y se crean utilizando la palabra clave interface
Las siguientes son las caracteristicas clave de una interfaz.

- La interfaz no puede tener ninguna funcion con implementacion.
- Las funciones de una interfaz solo pueden ser de tipo externo.
- La interfaz no puede tener un constructor.
- La interfaz no puede tener variables de estado.
- La interfaz puede tener enum, structs a los que se puede acceder utilizando la notacion de puntos
de nombre de la interfaz.
*/

contract Counter {

    uint public count;

    function increment() external {
        count += 1;
    }
}

// como inteactuamos con este contrato? - Interfaces!!

interface ICounter {
    function count() external view returns(uint);
    function increment() external;
}

contract MiContrato {

    function incrementCounter(address _counter) external{
        ICounter(_counter).increment();
    }
    
    function getCount(address _counter)external view returns (uint){
        return ICounter(_counter).count();
    }

}