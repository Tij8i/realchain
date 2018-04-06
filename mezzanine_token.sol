pragma solidity ^0.4.0;
contract LoanFactory {
    Loan[] loans;
    event NewLoan(address loan);
    function createLoan(uint amount,uint interest) public {
        Loan loan=new Loan(amount, interest,msg.sender);
        loans.length++;
        loans[loans.length-1]=loan;
        emit NewLoan(loan);
    }
}

contract Loan {
    uint private amount; 
    uint interest;
    uint totalethersent;
    address[] lenders;
    address borrower;
    mapping (address=>uint256) addressSent;
    function Loan(uint _amount,uint _interest,address _borrower)public{
        amount=_amount;
        interest=_interest;
        borrower=_borrower;
    }
    
    function lend()public payable{
        addressSent[msg.sender]+=msg.value;
        totalethersent+=msg.value;
        borrower.transfer(msg.value);
        for ( uint i=0; i<lenders.length;i++){
            if(lenders[i]==msg.sender){
                return;
            }
        }
        lenders.length++;
        lenders[lenders.length-1]=msg.sender;
    }
    
    

    function payBack()public payable{
        if (msg.value >= totalethersent*(100+interest)/100){
            for ( uint i=0; i<lenders.length;i++){
                address lender= lenders[i];
                uint amountLended= addressSent[lender];
                uint amountWithInterest= amountLended*(100+interest)/100;
                lender.transfer(amountWithInterest);
            }
            borrower.transfer(address(this).balance);
        }
        else revert();
    }
    
}