pragma solidity >= 0.8.1;

/*
El patron de retirada garantiza que no se realice una llamada de transferencia directa, 
lo que supone una amenaza para la seguridad.

Fallas , Hackers

Las transacciones sonn atomicas (ocurre en el mismo instante  / todo o nada )

Usaremos el metodo send para enviar en lugar de transfer, esto evita hackers
*/

contract security{

    function sendRefund() public onlyOwner returns(bool success){
        if(!persona.send(amount)){
            // ejecutar codigo
        }
    }

}