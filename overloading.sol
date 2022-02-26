pragma solidity >= 0.8.1;

/*
Sobrecarga de funciones:

Se puede tener varias definiciones para el msimo nombre de funcion en el mismo ambito.
Ladefinicion de la funcion debe diferir entre si por los tipos y/o el numero de argumentos .
No se pueden sobrecargar las declaraciones de funciones que solo se diferencian por el

*/

contract FunctionOverLoadin {

    /*
    function x(uint lightSwitch, uint wallet) public {
    }

    function x(uint wallet) public{.
    }
    */


    function getSum(uint a, uint b) public pure returns(uint){
        return a + b;
    }

    function getSum(uint a, uint b, uint c) public pure returns(uint){
        return a + b + c;
    }

    function getSumTwoArgs() public pure returns(uint){
        return getSum(2,3);
    }

    function getSumThreeArgs() public pure returns(uint){
        return getSum(3,2,1);
    }
}