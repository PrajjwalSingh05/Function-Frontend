// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract NewAssigment {

    address public owner;
    mapping(address => uint256) public balances;

    constructor() {
        owner = msg.sender;
    }

    function deposit_toeken() external payable {
        balances[msg.sender] += msg.value;
    }

    function gettoken(address account) public view returns (uint256) {
        return balances[account];
    }

    function withdraw(uint256 amount) external {
        require(amount <= balances[msg.sender], "Not Enough Balance");
        payable(msg.sender).transfer(amount);
        balances[msg.sender] -= amount;
    }
}
