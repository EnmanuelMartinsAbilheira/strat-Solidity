pragma solidity >= 0.8.1;

/*

VIEW = Retornbar un valor (no permite modificar pero si leer)
PURE = Retorna un calculo (no permite leer ni modigficar el estado)

Las funciones de vista aseguran que no modificaran el estado. 
Una funcion puede ser declarada como vista.
Las siguientes sentencias, si estan presentes en las funcion, se considera que modifican el estado y el compilador lanzara una advertencia en tales casos.

Modificacion de variables de estado.

Emision de eventos.

Crear otros contratos.

Usar las autodestruccion.

Enviar Ether a traves de llamadas.

Llamar a cualquier funcion que no este marcada como vista do pura.

Usar llamadas de bajo nivel.

Usar un esamblaje en linea que contenga ciertos opcodes.

Los metodos Getter son por defecto funciones de la vista.
*/

contract contrato{

    //function getResult() public view returns(uint product, uint sum){
    //    uint a = 1; // local variable
    //    uint b = 2;
    //    product = a * b;
    //    sum = a + b;
    //}


    uint value;

    function getValue() external pure returns(uint){
        return value;
    }

    function getNewValue() external pure returns(uint){
        return 3 + 3;
    }

    function valuePlusThree() external view returns(uint){
        return value + 3;
    }

}