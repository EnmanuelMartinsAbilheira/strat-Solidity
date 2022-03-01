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
    A a = new A();

    function f() public view returns (uint){
        return a.l();
    }

}

contract C{
    // variable de estado privado
    uint private data;

    //variable de estado publica
    uint public info;

    constructor() public{
        info = 10;
    }

    //funcion privada
    function increment(uint a) private pure returns(uint) { return a + 1; }

    //funciones publicas
    function updateData(uint a) public { data = a;}
    function getData() public view returns(uint) { return data; }
    function compute(uint a, uint b) internal pure returns (uint) {return a + b; }
}

contract D{
    C c = new C();

    function readInfo() public view returns(uint){
        return c.info();
    }
}

contract E is C{
    uint private result;
    C private c;

    constructor() public {
        c = new C();
    }

    function getComputedResult() public{
        result = compute(23, 5);
    }
    function getResult() public view returns(uint) { return result; }
    function getNewData() public view returns(uint) { return c.info();}

}


/* 
 10 m,ll eurtos proyecto de 
    
        Kakza 
        3333 * '',7 =233,33 ether
        Italinos
        3333   * 0.08 333,33 ether 
        6666 * 0.1 
        4 666 200. euros 

        25mil = 5% 233.345€
        10mil = 2% 93.300€

*/