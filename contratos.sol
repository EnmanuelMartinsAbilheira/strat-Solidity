pragma solidity >= 0.8.1;

/*
El contrato en Solidity es similar a una clase en C++. Un contrato tiene las siguientes propoiedades.

Contructor -  Una funcion especial declarada con la palabra clave contructor que se ejecutara una ve por contrato
Varibales de estado - Variables por Contrato para almacenar el estado del contrato.
Funciones - Funciones pro contrato que pueden modificar kas variables de estado para alterar el estado de un contrato

Cuantificadores de visibilidad
Acontinucacion se presentan varios cuantificadores de visibilidad para las funciones/variables de estado de un contrato 

externa - Las funciones externas estan destinadas a ser llamadas por otros contratos. nNo pueden ser usadas para llamar 
Public - Las funciones/variables publicas pueden utilizar tanto externa como internamente. Para la variable de estado
Internal - Las funciones/variables internas solo pueden ser utilizadas internamente o por contratos derivados.
Private - Las funciones/variables privadas solo pueden ser utilizadas internamente y ni siquiera por los contratos de
*/


contract A{
    uint public data = 10;
    function x() external pure returns (uint) {
        uint newData = 25;
        return newData;
    }
    function l() public  returns(uint) {
        uint newData = data - 3;
        return newData;
    }
    function y() public returns (uint) {
        return data;
    }
}

contract B{
    
}

contract C{
    
}
