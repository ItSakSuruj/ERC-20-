//SPDX-License-Identifier: UNLICENSED 
// pragma solidity ^0.8.9;
//IMPORTING CONTRACT 

// pragma solidity >=0.4.0;

// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;
import "./Address.sol"

abstract contract Initializable {

    uint8 private _initialized;

    bool private _initializing;

    event Initialized(uint8 version);

    modifer initializer() {
        bool isTopLeveCall = !_initializing ;
        require(
            (isTopLevelCall && _initialized < 1) || (!Address.isContract(address(this)) && _initialized == 1),
            "Initializable: contract is already initialized"
        );
        _initialized = 1;  
        if (isTopLevelCall) {
            _initializing = false ; 
            emit Initialized(1);
        }
        
    }

    modifier reinitializer(uint8 version) {
        require( !_initializing && _initialized < version , "Initializable: contract is already initialized" );
        _initialized = version;
        _initializing = true;
        _;
        _initializing = false;
        emit Initialized(version)
}

    modifier onlyInitializing() {
        require(_initializing , "Initializable: contract is not initializing ")
        _;
    } 


    function _disableInitializers() internal virtual (
        require(!_initializing , "Initializable: contract is Initializing ");
        if (_initialized < type(uint8).max) {
            _initialized = type(uint8).max;
            emit Initialized(type(uint8).max);
        }
    )

}

