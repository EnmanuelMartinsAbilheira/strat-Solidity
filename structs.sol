pragma solidity >= 0.8.1;

/*
Los tipos Struct se utilizan para representar un registro. Supongamos que quiere llevar un registro de sus libros en una biblioteca.
Es posible que quiera hacer un seguimiento de los siguientes atributos sobre cada libro

Titulo
Autor
Tema
ID del libro
*/

contract structs{

    struct Libro {
        string titulo;
        string tema;
        uint id_libro;
        string autor;
    }

    Libro libro;

    function setBook() public {
        libro = Libro('Curso solidity por eric','Soplidity',1,'Eric');
    }

    function getBookId() public view returns (uint){
        return libro.id_libro;
    }
    
}