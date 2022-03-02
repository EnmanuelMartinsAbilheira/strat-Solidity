pragma solidity >= 0.8.1;

/*
Las librerias son similares a los contratos, pero estan pensadas principalmente parea su rreutilizacion.

-   Las funciones de la biblioteca pueden ser llamadas directamente si no modifican el estado. esto significa
-   La biblioteca no puede ser destruida ya que se asume que no tiene estado
-   Una biblioteca no puede tener variables de estado
-   Una biblioteca no puede heredar ningun elemento
-   Una biblioteca no puede ser heredada.
*/

library Search{
    //queremos loopear para retornar el valor de indice de un elemneto que estado buscando
    function indexOf(uint[] storage self, uint value) public view return(uint) {
        for(uint i=0;i<self.length; i++) if(self[i]==value) return i;
    }
}

contract Test{
    // usamos A (libreria) para B (otro elemento)
    uint[] data;
    constructor() public{
        data.push(1);
        data.push(2);
        data.push(3);
        data.push(4);
        data.push(5);
    }

    function isValuePresent(uint val) external view returns(uint){
        uint value = val;
        uint index = Search.indexOf(data, value);
        return index;
    }
}