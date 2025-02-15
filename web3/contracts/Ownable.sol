//SPDX-License- Identifier: UNLICENSED
// pragma solidity ^0.8.9;
pragma solidity >=0.4.0 <0.9.0;

import "./Context.sol";

abstract contract Ownable is Context {
    address private _owner ; 

    event OwnershipTransfered(address indexed previousOwner , address indexed newOwner);

    constructor() {
        _transferOwnership(_msgSender());
    }


    modifier onlyOwner(){
        _checkOwneer();
        _;
    } 



    


    function owner() public view virtual returns (address){
        return _owner;
    }



    function _checkOwner() internal view virtual {
        require(owner() == _msgSender() , "Ownable: caller is not the owner");
    }


    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owneer is the zero address");
        _transferOwnership(newOwner);
    }

    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransfered(oldOwner , newOwner);
    }


}

