pragma solidity >= 0.8.1;

/*
El contrato abstracto es aquel que contiene al menso una funcion sin ninguna implementacion.
Este tipo de contrato se utiliza como contrato base. Generalmente un contrato abstracto contiene tanto funciones
implementadas como abstractas. El contrato derivado implementara la funcion abstracta y utilizara las funciones
existentes cuando sea necesario.

En caso de que un contrato derivado no implemente la funcion abstracta, este contrato derivado se marcara
como abstracto.
*/

// contrato abstracto BASE
abstract contract X {
    // la funcion no tiene implementacion, debemos marcarla como 'virtual
    function y() public view virtual returns(string memory);
}


// contrato DERIVADO 
contract Y is X{
    function y() public override view returns(string memory){
        return 'Hola';
    }
}
