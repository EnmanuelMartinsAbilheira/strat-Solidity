pragma solidity >= 0.8.1;

/*
Manejo de Errores
Solidity proporciona varias para el manejo de errores.
Generalmente, cuando se produce error, e estado se revierte a su estado original.
Otras comprobaciones son para prevenir el acceso de codigo no autorizado. Los siguientes son
algunos de los metodos importantes utilizados en el manejo de errores - 

- assert(bool condition) - En caso de que la condicion no se cumpla, la llamada a este 
metodo provoca un opcode invalido y cualquier cambio realizado en el estado se revierte.
Este metodo se utiliza para los errorres internos.

- require(bool condition) - En caso de que la condicion no se cumpla, este llamada al 
metodo revierte al estado original. - Este metodo se utiliza para los errorres en la entrada
o en los componentes externos.

- require(bool condition, string memory message) - Si no se cumple la condicion, esta llamada 
al metodo vuelve al estado original. - Este metodo se debe utilizar para los errores en las 
entradas o los componentes externos. Proporciona una opcion para proporcionar n mensaje
personalizado.

- revert() - Este metodo aborta la ejecucuion y revierte cualquier cambio realizado en el estado.

revert(string memory reason) - Este metodo aborta la ejecucion y revierte cualquier cambio realizado en el estado.
Ofrece una opcion para porporcionar un mensaje personalizado.
*/

contract manejoErrores{

    bool public sunny = true;
    bool public umbrella = false;
    uint finalCalc = 0;

    function solarCalc() public {
        require(sunny, 'It is not sunny today!');
        finalCalc += 3;
        assert(finalCalc != 6);
    }

    function internalTestUnits() public view {
        assert(finalCalc != 6);
    }

    function weatherChanger() public {
        sunny = !sunny;
    }

    function getCalc() public view returns (uint) {
        return finalCalc;
    }

    function bringUmbrella() public {
        if(!sunny) {
            umbrella = true;
        } else {
            revert('No need to bring an umbrella today!');
        }
    }

}

contract Vendedor {

    address seller;

    modifier onlySeller() {
        require(msg.sender == seller,
        'Only the seller can sell this!');
        _;
    }

    function becameSeller() public{
        seller = msg.sender;
    }

    function sell(uint amount) payable public onlySeller{
        if(amount > msg.value){
            revert('There is not enought ether provided');
        }
    }
}