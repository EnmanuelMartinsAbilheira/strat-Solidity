pragma solidity >= 0.8.1;

/*
Solidity proporciona una opcion para utilizar el lenguaje ensamblador para escribir ensamblador en linea dentro del codigo
funete de Solidity. Tambien podemos escribir un codigo ansemblador autonomo que luego se convierta en bytecode.
Standalone Assembly es un lenguaje intermedio para un compilador de Solidity y convierte el codigo de Solidity en un 
Standalone Assembly y luego en codigo de bytes. Podemos utilizar el mismo lenguaje utilizado en Inline Assembly para escribir 
codigo en un Standalone Assembly.
*/

contract aprendeAssembly {

    function agregarEVM() external {
        uint x;
        uint y;

        assembly{
            // := es coomo decir =
            let z := add(x,y)
        }
    }

    function agregarEVM2() public view returns(bool success){
        uint size;
        address addr;

        assembly {
            size:= extcodesize(addr)
        }

        if(size <= 0) {return true;
        } else {
            return false;
        }
    }

    // correr assembly para hacer una convercion de bytes 
    /*
    automatica mente tiene un tipo de bytes 
    nosotros lo pasamos a bytes32 y es con assembly que lo convertimos a bytes 32*/
    function agregarEVM3() external view {
        bytes memory data = new bytes(10);
        bytes32 dataB32;
        assembly {
            dataB32 := mload(add(data, 32))
        }
    }

}