//Define a versão do compilador
pragma solidity ^0.4.0;

//Criação do contrato
contract StorageAge {
    uint idade = 18; //Variável para armazenar a idade

    address dono;  // Variável para armazenar o endereço do dono do contrato

    // Construtor do contrato
    function StorageAge2() public {
        dono = msg.sender;
    }

    // Modificador para restringir o acesso às funções somente ao dono do contrato
    modifier apenasDono() {
        require(msg.sender == dono);
        _;
    }


    // Função pública que recebe um valor e o atribui à variável 'idade'
    function setIdade(uint novaIdade) public apenasDono{  
        idade = novaIdade; 
    }

    // Função para consultar o valor atual da idade
    function getIdade() public constant returns (uint) {
        return idade;
    }
}