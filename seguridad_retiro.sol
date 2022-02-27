pragma solidity >= 0.8.1;

/*
El patron de retirada garantiza que no se realice una llamada de transferencia directa, 
lo que supone una amenaza para la seguridad.

Fallas , Hackers

Las transacciones sonn atomicas (ocurre en el mismo instante  / todo o nada )

Usaremos el metodo send para enviar en lugar de transfer, esto evita hackers
*/

/*
Escribamos una funcion de retirada para que el inversor pueda retirar los fondos por si mismo a traves
de esa funcionalidad,  !!Que lo hagan ellos mismos!!

Escribammos otra funcion para reclamar rembolsos. Escribamos una funcion llamada claimRefundque requiere
que el saldo del msg.sender sea mayor que 0 y transfiere el saldo a la persona que llama actualmente.
Pseudo balance ver llamado
*/

contract security{

    function sendRefund() public onlyOwner returns(bool success){
        if(!persona.send(amount)){
            // ejecutar codigo
        }
    }


    //reclamar los fondos
    function claimRefund() public{
        require(balances[msg.sender] > 0);
        msg.sender.transfer(balances[msg.sender]);
    }

    //funciion para retirar levantar el dinero
    /*
    1.  Escribir una funcion llamada withdrawFunds que tome una cantidad y devuelva bool exito en la firma.
    2.  Exigir que el saldo del emisor actual sea mayor o igual que el importe.
    3.  restar el importe del saldo del emisor actual
    4.  transfderir el importe y devolver el exito de la funcion 
    */

    function withdrawFunds(uint amount) public returns(bool success){
        require(balances[msg.sender] >= amount);
        balances[msg.sender] -= amount;
        msg.sender.transfer(amount);
        return true;
    }

}