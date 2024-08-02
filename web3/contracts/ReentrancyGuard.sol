//SPDX-License- Identifier: UNLICENSED
// pragma solidity ^0.8.9;
pragma solidity >=0.4.0 <0.9.0;

abstract contract ReentrancyGuard {
    
    uint256 private constant _NOT_ENTERED = 1 ; 
    uint256 private constant _ENTERED  = 2 ; 

    uint256 private _status;

    constructor() {
        _status = NOT_ENTERED;

    }

    modifier nonReentrant() {
        require(_status != ENTERED , "ReentrancyGuard: reentrant call"); 

        _status = ENTERED ; 

        _;

        _status = _NOT ENTERED ; 

    }


}

