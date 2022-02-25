pragma solidity >= 0.8.1;

/*
Un array es una estructura de datos que almacena una coleccion secuencial de tamaño fijo de elementos del mismo tipo.
Un array se utiliza para almacenar una coleccion de datos, pero a menbudo es mas util pensar en un array como una coleccion de variables del mismo tipo.

En lugar de declarar variables individuales, como numer0, number1, ..., y number99, se declara una variable de matriz como numbers y se utiliza numbers[0], numbers[1], y ..., numbers[99] para representar variables individuales. 
Se accede a un elemento especifico de una matriz mediante un indice.

En Solidity, un array puede ser de tamaño fijo en tiempo de compilacion no de tamaño dinamico. en el caso de las matrices de almacenamiento, tambien pueden tener diferentes tipos de elementos.
En el caso de los arreglos de memoria, el tipo de elemento no puede ser mapeado y en caso de que sea usado como parametro de function, entonces el tipo de elemento debe ser un tipo ABI.

Todos los arrays estan formados para posiciones de memoria contiguas. 
La direccion bmas baja corresponde al primer elemento y la mas alta al ultimo.
*/

contract matrices{

    uint[] public miMatriz;
    uint[] public miMatriz2;
    uint[200] public miMatrizDeTamanoFijo;

    //push
    function push(uint number) public{
        miMatriz.push(number);
    }

    //pop.           // pop elimina el ultimo elemento del indice de la matriz ejemplo: si es[1,2,3,4,5] ahora es [1,2,3,4]
    function pop() public{
        miMatriz.pop();
    }

    //length        //
    function getLength() public view returns(uint) {
        return miMatriz.length;
    }

    //delete
    //borrar elemento de una matriz
    // 1 . Crear matriz vacia 
    // 2 . Crear una funcion llamada removerElemento, se encarga de configurar el indice al ultimo elemento de la matriz

    uint[] public cambiarMatriz;

    function removerElemento(uint i) public {
        cambiarMatriz[i] = cambiarMatriz[cambiarMatriz.length - 1];
        cambiarMatriz.pop();
    }

    function test() public {
        cambiarMatriz.push(1);
        cambiarMatriz.push(2);
        cambiarMatriz.push(3);
        cambiarMatriz.push(4);
        cambiarMatriz.push(5);
    }

    function getArray() public view returns (uint) {
        return cambiarMatriz.length;
    }


}