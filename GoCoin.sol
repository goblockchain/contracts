pragma solidity ^0.4.13;

contract GoCoin {
    
    address deployer;
    mapping(address=>uint) balancesAddress;
    
    function GoCoin() public {
        deployer = msg.sender;
    }
    
    function giveGoCoins(uint amount, address receiver) public {
        require (msg.sender == deployer);
            balancesAddress[receiver] += amount;
    }
    
    function viewBalance() public returns (uint){
        return balancesAddress[msg.sender];
    }
    
}
