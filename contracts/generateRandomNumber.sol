pragma solidity >=0.4.22 <0.9.0;

import "ethereum-api/oraclizeAPI_0.5.sol";

contract generateNumber is usingOraclize{
    uint public randomNumber;

    constructor() payable public{
        oraclize_setProof(proofType_Android | proofStorage_IPFS);
    }

    function __callback(bytes32 queryId, string memory result, bytes memory proof) public {
        require(msg.sender == oraclize_cbAddress());
        randomNumber = parseInt(result);
    }

    function getRandomNumber() public payable{
        oraclize_query("Comp", "IPFS Hash");
    }
}