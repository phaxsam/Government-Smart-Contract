pragma solidity 0.7.5;

contract CBN {
    
    struct Banktransaction {
        address from;
        address to;
        uint amount;
        uint txId;
    }
    
    Banktransaction[] transactionlog;
    
    function addTransaction(address _from, address _to, uint _amount) external {
        transactionlog.push(Banktransaction(_from, _to, _amount, transactionlog.length));
        
    }
    
    function getTransaction(uint _index) public view returns(address, address, uint){
        return(transactionlog[_index].from, transactionlog[_index].to, transactionlog[_index].amount);
        
    }
}