//SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.8.0 <0.9.0;


import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';

contract Naitie is ERC20 {
        address admin;

    constructor() ERC20('NaitikToken', 'NAT')
    {

        _mint(msg.sender, 1000cf00 * 10 ** 18);
        admin = msg.sender;
        
    }
    function mint(address to, uint amount) external 
    {
        require (msg.sender == admin, 'only admin');      /*this was supposed to make this function secure only admin adccess but showing error as undeclared identifier**/
        
        _mint(to, amount);
    }
    function burn(uint amount) external {
        _burn(msg.sender, amount);
    }
    //function transfer_() external payable
    function transfer_(address payable acc_1, address payable acc_2) public payable

    {

        //address payable user = payable(msg.sender);
        //uint _amount =  msg.value / 2;
        //user.transfer(_amount);
        //user.transfer(_amount);
        //acc_1.transfer(_amount);
        //acc_2.transfer(_amount);
        acc_1.transfer(msg.value / 2);

            acc_2.transfer(address(this).balance);
        

    }
}
