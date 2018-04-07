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
				"indexed": false,
				"name": "loan",
				"type": "address"
			}
		],
		"name": "NewLoan",
		"type": "event"
	}
]