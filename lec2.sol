// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract lec2 {

        receive() external payable { }
        address payable owner = payable (msg.sender); //jo smart contract ko deploy krega uska address save hoga.
    
    function sendEther() public payable {
        require(msg.value >= 1 ether, "Not enough money" ); //msg.value is the value that is attached w the function during its being called.
        payable(owner).transfer(address(this).balance); //msg.sender is the one that triggers the transaction. //transfer the balance in owners account.
    }
}