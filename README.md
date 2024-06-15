# Project Title: Function Frontend

# Overview
The NewAssigment contract is a simple Ethereum smart contract that allows users to deposit and withdraw Ether, while keeping track of individual balances. The contract has an owner, which is the address that deployed the contract.

# Key Features
* Owner Management:

The contract stores the address of the owner who deployed it. This is set during contract deployment.
* Balances Mapping:

The contract uses a mapping to keep track of how much Ether each address has deposited.
* Deposit Function:

Users can deposit Ether into the contract, which increases their balance in the mapping.
G* et Balance Function:

Users can check the balance of any address.
* Withdraw Function:

Users can withdraw Ether from their balance in the contract. The function ensures the user has enough balance to cover the withdrawal amount.
# Detailed Description of Contract Features
* Owner Management:

address public owner;
This variable stores the address of the contract owner.
constructor() { owner = msg.sender; }
This constructor function is called once during contract deployment. It sets the owner variable to the address that deployed the contract (msg.sender).
* Balances Mapping:

mapping(address => uint256) public balances;
This mapping stores the Ether balance of each address that interacts with the contract.
* Deposit Function:

function deposit_toeken() external payable { balances[msg.sender] += msg.value; }
This function allows users to deposit Ether into the contract. The deposited amount (msg.value) is added to the sender's balance in the balances mapping.
* Get Balance Function:

function gettoken(address account) public view returns (uint256) { return balances[account]; }
This function allows anyone to check the Ether balance of any address stored in the balances mapping.
* Withdraw Function:

function withdraw(uint256 amount) external { require(amount <= balances[msg.sender], "Not Enough Balance"); payable(msg.sender).transfer(amount); balances[msg.sender] -= amount; }
This function allows users to withdraw Ether from their balance. It checks if the user has enough balance to withdraw the requested amount. If the user has sufficient balance, the amount is transferred to the user's address and the balance is updated.


# Authors
Prajjwal Singh
# License
This project is licensed under the MIT License - see the LICENSE.md file for details.

