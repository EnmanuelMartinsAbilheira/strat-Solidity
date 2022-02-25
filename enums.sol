pragma solidity >= 0.8.1;

/*
Los enums restringuen una variable a uno de los pocos valores predefinidos.
Los valores de esta lista enumerada se denominan enums.

Con el uso de enums es posible reducir el numero de errores en su codigo.

Por ejemplo, si consideramos una aplicacion para uuna tienda de zumos frescos, sera possible restringir el tamaño del vaso a pequeño, mediano y grande.
Esto aseguraria que no permitiria a nadie pedir cualquier tamaño que no sea pequeño, mediano o grande.

*/

contract enums{

    enum tamanoPapasFritas {GRANDE, MEDIANO, PEQUENO}
    tamanoPapasFritas choice;
    tamanoPapasFritas constant defaultChoice = tamanoPapasFritas.GRANDE;

    function setSmall() public {
        choice = tamanoPapasFritas.PEQUENO;
    }

    function getChoice() public view returns(tamanoPapasFritas){
        return choice;
    }

    function getDefaultChoice() public view returns (uint){
        return uint(defaultChoice);
    }

}