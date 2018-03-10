pragma solidity ^0.4.0;
import "./safee.sol";
contract Token 
{
     using SafeMath for uint256;
	string public tokenname;
	string public tokensymbol;
	uint256  totalsupply ;
	address public Owner;

	//uint public TokenDecimal;
	mapping(address => uint256)  balances;
	//mapping(address => mapping(address => uint256))  Allowance;
    
 	//event Transfer(address  from, address  to, uint256 value);
 	//event Approval(address  owner, address  spender, uint256 value);
	function Token() public
	{
    	Owner = msg.sender;
    	tokenname = "ACD";
    	tokensymbol = "$^$";
    	//TokenDecimal = 18;
    	totalsupply = 5000 ;
    	balances[Owner] = totalsupply;
    	}
   
 
	/*function Deposit(uint256 amo) public
	{
    	if(totalsupply > amo && (balances[Owner] + amo) <= totalsupply && amo > 0){
    	balances[Owner] = SafeMath.add(balances[Owner],amo);
    	}
	}*/
 	function totalSupply() public view returns (uint256)
 	{
     	return totalsupply = balances[Owner];
 	}
	 
 	function balanceOf(address add) public view returns (uint256)
 	{
    	 
     	return balances[add];
 	}
 	function transfer(address to,uint256 amo)public
 	{
 	      if(amo > 0 && balances[msg.sender] >= amo)

        balances[msg.sender] = balances[msg.sender].sub(amo);
        balances[to] = balances[to].add(amo);
        //totalsupply=balances[msg.sender].sub(amo);
    
    }
 	}

