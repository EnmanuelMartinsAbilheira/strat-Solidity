pragma solidity >= 0.8.1;

// Operadores Aritmeticos + - / *

contract Operadores {

    function operacion() public view returns (uint){

        uint a = 3;
        uint b = 5;
        
        // [ == comparacion] , [ != diferente] , [ && y ] , [ || o ]
        if (a==3 || b==5){ 

            //uint c = a + b; 

            //a += 1;   //asignacion
            //return a;

            uint a = 3;
            uint b = 5;

            //.              CONDICIONAL 
            // uint resultado = (a == 3?a:b); /// si a  es igual a 3 = entonces a es igual a 3
            // uint resultado = (a != 3?a:b); /// si a  es diferente a 3 = entonces a es pasara al valor de b que es 5
            uint resultado = (a == 3?a:b);
            return resultado;
        }

    }
}