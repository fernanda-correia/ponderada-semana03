pragma solidity ^0.4.26; // A versão do compilador é 0.4.26+commit.4563c3fc

contract Anac {
    uint public idade = 18; // É criada a variável de estado idade
    address public dono; // É criada a variável do endereço do dono

    modifier onlyOwner() {
        require(msg.sender == dono);
        _;
    }

     constructor() public {
        dono = msg.sender; 
    }

    function setIdade(uint novaIdade) public onlyOwner {
    idade = novaIdade;
    }

    function getIdade() constant public returns (uint) {
    return idade;
    }
}
