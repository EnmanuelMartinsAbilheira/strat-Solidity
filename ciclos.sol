pragma solidity >= 0.8.1;

/*
contract Ciclos{

    // while
    function whileFunc() public view returns(uint){
        uint a = 6;
        // while
        while(a < 5){
            a++;
            return a;
        }
        //while

        // do while
        do{
            return a;
            a++;
        } while(a < 5);

        //do while
    }


    
    // for 
    function forFunc() public view returns(uint){
        uint data = [1,2,3,4,5]
        for(x=0;x!=6;x++){

        }
    }


}
*/


contract Ciclos{

    uint [] listaLarga = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,15,17,18,19,20,21,22,23,24,25,26];
    uint [] listaNumeros = [1,4,34,56];

    function loopListasNumeros(uint numero) public view returns (bool){
        bool numeroExiste = false;
        for(uint i = 0; i < listaNumeros.length; i++){
            if(listaNumeros[i] == numero){
                numeroExiste = true;
            }
        }
        return numeroExiste;
    }

    // numeros pares en listalarga
    function numerosPares() public view return(uint){
        uint count = 0;
        for(uint i=0; i < listaLarga.length; i++){
            if(listaLarga[i] % 2 == 0){
                count++;
            }
        }
        return count++;
    }

}