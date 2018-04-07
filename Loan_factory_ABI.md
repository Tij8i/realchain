[
	{
		"constant": false,
		"inputs": [
			{
				"name": "amount",
				"type": "uint256"
			},
			{
				"name": "interest",
				"type": "uint256"
			}
		],
		"name": "createLoan",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": true,
				"name": "loan",
				"type": "address"
			},
			{
				"indexed": true,
				"name": "amount",
				"type": "uint256"
			},
			{
				"indexed": true,
				"name": "interest",
				"type": "uint256"
			},
			{
				"indexed": false,
				"name": "borrower",
				"type": "address"
			}
		],
		"name": "NewLoan",
		"type": "event"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "",
				"type": "uint256"
			}
		],
		"name": "loans",
		"outputs": [
			{
				"name": "",
				"type": "address"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	}
]