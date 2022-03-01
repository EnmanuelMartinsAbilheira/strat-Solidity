pragma solidity >= 0.8.1;

/*
La herencia es una forma de extender la funcionalidad de un contrato.
Solidity soporta tanto la herencia simple como la multiple. Acontinuacion , los aspectos mas detstacados.

Observe: El contrato en Solidity es similar a. una Clase en C++ - un plano para un objeto

Las clases pueden heredar y los contratos tambien.

    contructor - Una funcion especial declarada con la palabra clave constructor que sera ejecutara
    una vez por contrato y se invoca cuando se crea un contrato.

    ejercicio Crear dos contratos A y B
    1.  El contrato A debe tener una var de estado llamada innerVal inicializada a 100
    2.  Crear una funcion Totalmente accesible llamada innerAddTen que devuelva 10 a cualquier entrada dada
    3.  El contrato B debe heredar del contrato A
    4.  El contrato B debe tener una funcion llamada outerAddTen que devuelva
        la calculacion de la funcion innerAddTen del contrato A a cualquier entrada dada
    5.  Crear una funcion en el contrato B que devuelva el valor de innerVal del contrato A
*/

contract A {

    uint innerVal = 100;
    function innerAddTen(uint val) public pure returns (uint){
        return val + 10;
    }
}

contract B is A {
    function outerAddTen(uint val) public pure returns (uint){
        return A.innerAddTen(val);
    }

    function getAddTen(uint val) public view returns (uint){
        return A.innerVal;
    }

}

